contract main {




// =====================  Runtime code  =====================


#
#  - sub_0146f0fb(?)
#  - sub_2160206c(?)
#  - sub_23caf6ff(?)
#  - sub_3557e558(?)
#  - sub_38301b0d(?)
#  - sub_3c11683d(?)
#  - sub_589ae982(?)
#  - sub_729a9444(?)
#  - sub_777ec2e2(?)
#  - sub_796c8938(?)
#  - sub_80b062a3(?)
#  - sub_8344ad66(?)
#  - sub_8de21c26(?)
#  - sub_95917e7a(?)
#  - sub_b13f272b(?)
#  - sub_bbe4e2eb(?)
#  - sub_e9aab8f1(?)
#  - sub_f5703de1(?)
#  - sub_f6788b5f(?)
#
const getCurrentBlockTimestamp = block.timestamp

const getLastBlockHash = block.hash(block.number - 1)

const getChainId = chainid

const getBlockNumber = block.number

const getCurrentBlockDifficulty = block.difficulty

const getCurrentBlockGasLimit = block.gas_limit

const getCurrentBlockCoinbase = address(block.coinbase)


array of struct stor0;
uint256 sub_65542692;
address sub_ffdf48c5Address;

function sub_65542692(?) payable {
    return sub_65542692
}

function sub_ffdf48c5(?) payable {
    return sub_ffdf48c5Address
}

function _fallback() payable {
    revert
}

function getBlockHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return block.hash(arg1)
}

function sub_087cefaf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (ext_code.size(arg1) > 0)
}

function getCode(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = ceil32(ext_code.size(arg1)) + 97
    mem[96] = ext_code.size(arg1)
    mem[128 len ext_code.size(arg1)] = ext_code.copy(arg1, 0 len ext_code.size(arg1))
    mem[ceil32(ext_code.size(arg1)) + 97] = 32
    mem[ceil32(ext_code.size(arg1)) + 129] = ext_code.size(arg1)
    mem[ceil32(ext_code.size(arg1)) + 161 len ceil32(ext_code.size(arg1))] = mem[128 len ceil32(ext_code.size(arg1))]
    if ceil32(ext_code.size(arg1)) > ext_code.size(arg1):
        mem[ceil32(ext_code.size(arg1)) + ext_code.size(arg1) + 161] = 0
    return memory
      from ceil32(ext_code.size(arg1)) + 97
       len ceil32(ext_code.size(arg1)) + 64
}

function isPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[132] = 0, mem[132 len 28]
    staticcall arg1.mem[132 len 4] with:
            gas gas_remaining wei
    if not return_data.size:
        mem[168] = 0, mem[168 len 28]
        staticcall arg1.mem[168 len 4] with:
                gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                return bool(ext_call.success)
            return not not 4
    else:
        mem[ceil32(return_data.size) + 169] = 0, mem[ceil32(return_data.size) + 169 len 28]
        staticcall arg1.mem[ceil32(return_data.size) + 169 len 4] with:
                gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                return bool(ext_call.success)
            if not return_data.size:
                return not not return_data.size
            return not not 4
    ('bool', 'returndatasize')
    if not ext_call.success:
        return bool(ext_call.success)
    return not not return_data.size
}

function sub_8575770d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if ('cd', 4).length:
        mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = ext_code.size(mem[(32 * idx) + 128]) > 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 32
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = ('cd', 4).length
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < ('cd', 4).length:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len floor32(('cd', 4).length) + (64 * ('cd', 4).length) + -mem[64] + 193
}

function sub_6f112a71(?) payable {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function sub_029528b9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _53 = mem[(32 * idx) + 128]
            _54 = mem[64]
            mem[64] = mem[64] + ceil32(ext_code.size(mem[(32 * idx) + 128])) + 1
            mem[_54] = ext_code.size(mem[(32 * idx) + 128])
            mem[_54 + 32 len ext_code.size(_53)] = ext_code.copy(_53, 0 len ext_code.size(_53))
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _54
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = 32
        _58 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + (32 * _58) + 64
        u = mem[64] + 64
        while idx < _58:
            mem[u] = t + -_52 - 64
            _73 = mem[s]
            _79 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _79:
                mem[t + v + 32] = mem[_73 + v + 32]
                v = v + 32
                continue 
            if ceil32(_79) > _79:
                mem[t + _79 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_79) + 32
            u = u + 32
            continue 
    else:
        mem[floor32(('cd', 4).length) + 129] = 96
        s = floor32(('cd', 4).length) + 129
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _72 = mem[96]
        idx = 0
        while idx < _72:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _76 = mem[(32 * idx) + 128]
            _78 = mem[64]
            mem[64] = mem[64] + ceil32(ext_code.size(mem[(32 * idx) + 128])) + 1
            mem[_78] = ext_code.size(mem[(32 * idx) + 128])
            mem[_78 + 32 len ext_code.size(_76)] = ext_code.copy(_76, 0 len ext_code.size(_76))
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _78
            if idx == -1:
                revert with 'NH{q', 17
            _72 = mem[96]
            idx = idx + 1
            continue 
        _75 = mem[64]
        mem[mem[64]] = 32
        _81 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + (32 * _81) + 64
        u = mem[64] + 64
        while idx < _81:
            mem[u] = t + -_75 - 64
            _88 = mem[s]
            _90 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _90:
                mem[t + v + 32] = mem[_88 + v + 32]
                v = v + 32
                continue 
            if ceil32(_90) > _90:
                mem[t + _90 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_90) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_89c7ea29(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _175 = mem[(32 * idx) + 128]
            _178 = mem[64]
            _179 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_179 + 32] = mem[_179 + 36 len 28] or 0x18160ddd00000000000000000000000000000000000000000000000000000000
            _188 = mem[_179]
            s = 0
            while s < _188:
                mem[_178 + s + 36] = mem[_179 + s + 32]
                s = s + 32
                continue 
            if ceil32(_188) <= _188:
                staticcall address(_175).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _178 + _188 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                    else:
                        if not mem[96]:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                        else:
                            require mem[96] >= 32
                            require mem[128] == mem[128]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[128]
                else:
                    _260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_260] = return_data.size
                    mem[_260 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                    else:
                        if not return_data.size:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                        else:
                            require return_data.size >= 32
                            require mem[_260 + 32] == mem[_260 + 32]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_260 + 32]
            else:
                mem[_178 + _188 + 36] = 0
                staticcall address(_175).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _178 + _188 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                    else:
                        if not mem[96]:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                        else:
                            require mem[96] >= 32
                            require mem[128] == mem[128]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[128]
                else:
                    _264 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_264] = return_data.size
                    mem[_264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                    else:
                        if not return_data.size:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                        else:
                            require return_data.size >= 32
                            require mem[_264 + 32] == mem[_264 + 32]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_264 + 32]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _186 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 64 len 32 * _186] = mem[floor32(('cd', 4).length) + 129 len 32 * _186]
        return 32, mem[mem[64] + 32 len (32 * _186) + 32]
    mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _177 = mem[(32 * idx) + 128]
        _182 = mem[64]
        _183 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_183 + 32] = mem[_183 + 36 len 28] or 0x18160ddd00000000000000000000000000000000000000000000000000000000
        _189 = mem[_183]
        s = 0
        while s < _189:
            mem[_182 + s + 36] = mem[_183 + s + 32]
            s = s + 32
            continue 
        if ceil32(_189) <= _189:
            staticcall address(_177).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _182 + _189 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                else:
                    if not mem[96]:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                    else:
                        require mem[96] >= 32
                        require mem[128] == mem[128]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[128]
            else:
                _262 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_262] = return_data.size
                mem[_262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                else:
                    if not return_data.size:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                    else:
                        require return_data.size >= 32
                        require mem[_262 + 32] == mem[_262 + 32]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_262 + 32]
        else:
            mem[_182 + _189 + 36] = 0
            staticcall address(_177).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _182 + _189 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                else:
                    if not mem[96]:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                    else:
                        require mem[96] >= 32
                        require mem[128] == mem[128]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[128]
            else:
                _265 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_265] = return_data.size
                mem[_265 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                else:
                    if not return_data.size:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = sub_65542692
                    else:
                        require return_data.size >= 32
                        require mem[_265 + 32] == mem[_265 + 32]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_265 + 32]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _187 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _187] = mem[floor32(('cd', 4).length) + 129 len 32 * _187]
    return 32, mem[mem[64] + 32 len (32 * _187) + 32]
}

function sub_fbc92df1(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == bool(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require calldata.size + -cd[36] + -cd[s] - 36 >= 64
        _101 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(cd[36] + cd[s] + 36)] == address(cd[(cd[36] + cd[s] + 36)])
        mem[_101] = cd[(cd[36] + cd[s] + 36)]
        require cd[(cd[36] + cd[s] + 68)] <= test266151307()
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _175 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)])) + 1
        mem[_175] = cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_175 + 32 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]] = call.data[cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 68 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]]
        mem[_175 + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_101 + 32] = _175
        mem[t] = _101
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _99 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _100 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _99) + 32
    if not _99:
        _196 = mem[96]
        idx = 0
        while idx < _196:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _201 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _204 = mem[mem[(32 * idx) + 128] + 32]
            _205 = mem[64]
            _208 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _208:
                mem[_205 + s] = mem[_204 + s + 32]
                _196 = mem[96]
                s = s + 32
                continue 
            if ceil32(_208) <= _208:
                call address(_201).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _205 + _208 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _308 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_308] = bool(ext_call.success)
                        mem[_308 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _308
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _320 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_320] = bool(ext_call.success)
                        mem[_320 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _320
                else:
                    _297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_297] = return_data.size
                    mem[_297 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _310 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_310] = bool(ext_call.success)
                        mem[_310 + 32] = _297
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _310
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_322] = bool(ext_call.success)
                        mem[_322 + 32] = _297
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _322
            else:
                mem[_205 + _208] = 0
                call address(_201).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _205 + _208 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _315 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_315] = bool(ext_call.success)
                        mem[_315 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _315
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _327 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_327] = bool(ext_call.success)
                        mem[_327 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _327
                else:
                    _304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_304] = return_data.size
                    mem[_304 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _317 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_317] = bool(ext_call.success)
                        mem[_317 + 32] = _304
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _317
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _329 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_329] = bool(ext_call.success)
                        mem[_329 + 32] = _304
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _329
            if idx == -1:
                revert with 'NH{q', 17
            _196 = mem[96]
            idx = idx + 1
            continue 
        _199 = mem[64]
        mem[mem[64]] = 32
        _206 = mem[_100]
        mem[mem[64] + 32] = mem[_100]
        t = 0
        t = _100 + 32
        u = mem[64] + (32 * _206) + 64
        v = mem[64] + 64
        while ('cd', 36).length < _206:
            mem[v] = u + -_199 - 64
            _290 = mem[cd[36] + (32 * ('cd', 36).length) + 36]
            mem[u] = bool(mem[mem[cd[36] + (32 * ('cd', 36).length) + 36]])
            _303 = mem[_290 + 32]
            mem[u + 32] = 64
            _312 = mem[_303]
            mem[u + 64] = mem[_303]
            idx = 0
            while idx < _312:
                mem[u + idx + 96] = mem[_303 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_312) > _312:
                mem[u + _312 + 96] = 0
            idx = ('cd', 36).length + 1
            idx = cd[36] + (32 * ('cd', 36).length) + 68
            u = u + ceil32(_312) + 96
            v = v + 32
            continue 
    else:
        mem[64] = _100 + (32 * _99) + 96
        mem[_100 + (32 * _99) + 32] = 0
        mem[_100 + (32 * _99) + 64] = 96
        mem[var40001] = _100 + (32 * _99) + 32
        s = var40001
        idx = var40002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_100 + (32 * _99) + 32] = 0
            mem[_100 + (32 * _99) + 64] = 96
            mem[s + 32] = _100 + (32 * _99) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _371 = mem[96]
        idx = 0
        while idx < _371:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _376 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _379 = mem[mem[(32 * idx) + 128] + 32]
            _380 = mem[64]
            _382 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _382:
                mem[_380 + s] = mem[_379 + s + 32]
                _371 = mem[96]
                s = s + 32
                continue 
            if ceil32(_382) <= _382:
                call address(_376).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _380 + _382 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _427 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_427] = bool(ext_call.success)
                        mem[_427 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _427
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _438 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_438] = bool(ext_call.success)
                        mem[_438 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _438
                else:
                    _423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_423] = return_data.size
                    mem[_423 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_429] = bool(ext_call.success)
                        mem[_429 + 32] = _423
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _429
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _440 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_440] = bool(ext_call.success)
                        mem[_440 + 32] = _423
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _440
            else:
                mem[_380 + _382] = 0
                call address(_376).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _380 + _382 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _434 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_434] = bool(ext_call.success)
                        mem[_434 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _434
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _444 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_444] = bool(ext_call.success)
                        mem[_444 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _444
                else:
                    _426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_426] = return_data.size
                    mem[_426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _436 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_436] = bool(ext_call.success)
                        mem[_436 + 32] = _426
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _436
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _446 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_446] = bool(ext_call.success)
                        mem[_446 + 32] = _426
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _446
            if idx == -1:
                revert with 'NH{q', 17
            _371 = mem[96]
            idx = idx + 1
            continue 
        _374 = mem[64]
        mem[mem[64]] = 32
        _381 = mem[_100]
        mem[mem[64] + 32] = mem[_100]
        s = 0
        t = _100 + 32
        u = mem[64] + (32 * _381) + 64
        v = mem[64] + 64
        while s < _381:
            mem[v] = u + -_374 - 64
            _418 = mem[t]
            mem[u] = bool(mem[mem[t]])
            _425 = mem[_418 + 32]
            mem[u + 32] = 64
            _431 = mem[_425]
            mem[u + 64] = mem[_425]
            w = 0
            while w < _431:
                mem[u + w + 96] = mem[_425 + w + 32]
                w = w + 32
                continue 
            if ceil32(_431) > _431:
                mem[u + _431 + 96] = 0
            s = s + 1
            t = t + 32
            u = u + ceil32(_431) + 96
            v = v + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_0b30d187(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == bool(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require calldata.size + -cd[36] + -cd[s] - 36 >= 64
        _101 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(cd[36] + cd[s] + 36)] == address(cd[(cd[36] + cd[s] + 36)])
        mem[_101] = cd[(cd[36] + cd[s] + 36)]
        require cd[(cd[36] + cd[s] + 68)] <= test266151307()
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _175 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)])) + 1
        mem[_175] = cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_175 + 32 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]] = call.data[cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 68 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]]
        mem[_175 + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_101 + 32] = _175
        mem[t] = _101
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _99 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _100 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _99) + 32
    if not _99:
        _196 = mem[96]
        idx = 0
        while idx < _196:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _201 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _204 = mem[mem[(32 * idx) + 128] + 32]
            _205 = mem[64]
            _208 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _208:
                mem[_205 + s] = mem[_204 + s + 32]
                _196 = mem[96]
                s = s + 32
                continue 
            if ceil32(_208) <= _208:
                staticcall address(_201).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _205 + _208 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _308 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_308] = bool(ext_call.success)
                        mem[_308 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _308
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _320 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_320] = bool(ext_call.success)
                        mem[_320 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _320
                else:
                    _297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_297] = return_data.size
                    mem[_297 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _310 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_310] = bool(ext_call.success)
                        mem[_310 + 32] = _297
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _310
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_322] = bool(ext_call.success)
                        mem[_322 + 32] = _297
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _322
            else:
                mem[_205 + _208] = 0
                staticcall address(_201).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _205 + _208 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _315 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_315] = bool(ext_call.success)
                        mem[_315 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _315
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _327 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_327] = bool(ext_call.success)
                        mem[_327 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _327
                else:
                    _304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_304] = return_data.size
                    mem[_304 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _317 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_317] = bool(ext_call.success)
                        mem[_317 + 32] = _304
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _317
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _329 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_329] = bool(ext_call.success)
                        mem[_329 + 32] = _304
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _329
            if idx == -1:
                revert with 'NH{q', 17
            _196 = mem[96]
            idx = idx + 1
            continue 
        _199 = mem[64]
        mem[mem[64]] = 32
        _206 = mem[_100]
        mem[mem[64] + 32] = mem[_100]
        t = 0
        t = _100 + 32
        u = mem[64] + (32 * _206) + 64
        v = mem[64] + 64
        while ('cd', 36).length < _206:
            mem[v] = u + -_199 - 64
            _290 = mem[cd[36] + (32 * ('cd', 36).length) + 36]
            mem[u] = bool(mem[mem[cd[36] + (32 * ('cd', 36).length) + 36]])
            _303 = mem[_290 + 32]
            mem[u + 32] = 64
            _312 = mem[_303]
            mem[u + 64] = mem[_303]
            idx = 0
            while idx < _312:
                mem[u + idx + 96] = mem[_303 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_312) > _312:
                mem[u + _312 + 96] = 0
            idx = ('cd', 36).length + 1
            idx = cd[36] + (32 * ('cd', 36).length) + 68
            u = u + ceil32(_312) + 96
            v = v + 32
            continue 
    else:
        mem[64] = _100 + (32 * _99) + 96
        mem[_100 + (32 * _99) + 32] = 0
        mem[_100 + (32 * _99) + 64] = 96
        mem[var40001] = _100 + (32 * _99) + 32
        s = var40001
        idx = var40002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_100 + (32 * _99) + 32] = 0
            mem[_100 + (32 * _99) + 64] = 96
            mem[s + 32] = _100 + (32 * _99) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _371 = mem[96]
        idx = 0
        while idx < _371:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _376 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _379 = mem[mem[(32 * idx) + 128] + 32]
            _380 = mem[64]
            _382 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _382:
                mem[_380 + s] = mem[_379 + s + 32]
                _371 = mem[96]
                s = s + 32
                continue 
            if ceil32(_382) <= _382:
                staticcall address(_376).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _380 + _382 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _427 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_427] = bool(ext_call.success)
                        mem[_427 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _427
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _438 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_438] = bool(ext_call.success)
                        mem[_438 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _438
                else:
                    _423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_423] = return_data.size
                    mem[_423 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_429] = bool(ext_call.success)
                        mem[_429 + 32] = _423
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _429
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _440 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_440] = bool(ext_call.success)
                        mem[_440 + 32] = _423
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _440
            else:
                mem[_380 + _382] = 0
                staticcall address(_376).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _380 + _382 + -mem[64] - 4]
                if not return_data.size:
                    if not cd[4]:
                        _434 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_434] = bool(ext_call.success)
                        mem[_434 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _434
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _444 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_444] = bool(ext_call.success)
                        mem[_444 + 32] = 96
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _444
                else:
                    _426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_426] = return_data.size
                    mem[_426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not cd[4]:
                        _436 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_436] = bool(ext_call.success)
                        mem[_436 + 32] = _426
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _436
                    else:
                        if not ext_call.success:
                            revert with 0, 'multicall aggregate: call failed'
                        _446 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_446] = bool(ext_call.success)
                        mem[_446 + 32] = _426
                        if idx >= mem[_100]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _100 + 32] = _446
            if idx == -1:
                revert with 'NH{q', 17
            _371 = mem[96]
            idx = idx + 1
            continue 
        _374 = mem[64]
        mem[mem[64]] = 32
        _381 = mem[_100]
        mem[mem[64] + 32] = mem[_100]
        s = 0
        t = _100 + 32
        u = mem[64] + (32 * _381) + 64
        v = mem[64] + 64
        while s < _381:
            mem[v] = u + -_374 - 64
            _418 = mem[t]
            mem[u] = bool(mem[mem[t]])
            _425 = mem[_418 + 32]
            mem[u + 32] = 64
            _431 = mem[_425]
            mem[u + 64] = mem[_425]
            w = 0
            while w < _431:
                mem[u + w + 96] = mem[_425 + w + 32]
                w = w + 32
                continue 
            if ceil32(_431) > _431:
                mem[u + _431 + 96] = 0
            s = s + 1
            t = t + 32
            u = u + ceil32(_431) + 96
            v = v + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_34743d8e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length and ('cd', 4).length > -1 / ('cd', 36).length:
        revert with 'NH{q', 17
    if ('cd', 36).length * ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 36).length * ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 36).length * ('cd', 4).length) + 130
    if not ('cd', 36).length * ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _413 = mem[floor32(('cd', 4).length) + 97]
            s = 0
            while s < _413:
                _416 = mem[floor32(('cd', 4).length) + 97]
                if mem[floor32(('cd', 4).length) + 97] and idx > -1 / mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 17
                if s > (-1 * mem[floor32(('cd', 4).length) + 97] * idx) - 1:
                    revert with 'NH{q', 17
                if s >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if not mem[(32 * s) + floor32(('cd', 4).length) + 141 len 20]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if s + (mem[floor32(('cd', 4).length) + 97] * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    mem[(32 * s + (mem[floor32(('cd', 4).length) + 97] * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = eth.balance(mem[(32 * idx) + 128])
                else:
                    if s >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _431 = mem[(32 * s) + floor32(('cd', 4).length) + 129]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _439 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                    _441 = mem[64]
                    mem[mem[64]] = 36
                    mem[64] = mem[64] + 68
                    mem[_441 + 32] = mem[_441 + 36 len 28] or 0x70a0823100000000000000000000000000000000000000000000000000000000
                    _447 = mem[_441]
                    t = 0
                    while t < _447:
                        mem[_439 + t + 68] = mem[_441 + t + 32]
                        _413 = mem[floor32(('cd', 4).length) + 97]
                        t = t + 32
                        continue 
                    if ceil32(_447) <= _447:
                        staticcall address(_431).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _439 + _447 + -mem[64] + 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if s + (_416 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                    revert with 'NH{q', 50
                                mem[(32 * s + (_416 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                            else:
                                if not mem[96]:
                                    if s + (_416 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                        revert with 'NH{q', 50
                                    mem[(32 * s + (_416 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                                else:
                                    require mem[96] >= 32
                                    require mem[128] == mem[128]
                                    if s + (_416 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                        revert with 'NH{q', 50
                                    mem[(32 * s + (_416 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = mem[128]
                        else:
                            _511 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_511] = return_data.size
                            mem[_511 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if s + (_416 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                    revert with 'NH{q', 50
                                mem[(32 * s + (_416 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                            else:
                                if not return_data.size:
                                    if s + (_416 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                        revert with 'NH{q', 50
                                    mem[(32 * s + (_416 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                                else:
                                    require return_data.size >= 32
                                    require mem[_511 + 32] == mem[_511 + 32]
                                    if s + (_416 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                        revert with 'NH{q', 50
                                    mem[(32 * s + (_416 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = mem[_511 + 32]
                    else:
                        mem[_439 + _447 + 68] = 0
                        staticcall address(_431).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _439 + _447 + -mem[64] + 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if s + (_416 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                    revert with 'NH{q', 50
                                mem[(32 * s + (_416 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                            else:
                                if not mem[96]:
                                    if s + (_416 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                        revert with 'NH{q', 50
                                    mem[(32 * s + (_416 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                                else:
                                    require mem[96] >= 32
                                    require mem[128] == mem[128]
                                    if s + (_416 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                        revert with 'NH{q', 50
                                    mem[(32 * s + (_416 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = mem[128]
                        else:
                            _515 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_515] = return_data.size
                            mem[_515 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if s + (_416 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                    revert with 'NH{q', 50
                                mem[(32 * s + (_416 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                            else:
                                if not return_data.size:
                                    if s + (_416 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                        revert with 'NH{q', 50
                                    mem[(32 * s + (_416 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                                else:
                                    require return_data.size >= 32
                                    require mem[_515 + 32] == mem[_515 + 32]
                                    if s + (_416 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                        revert with 'NH{q', 50
                                    mem[(32 * s + (_416 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = mem[_515 + 32]
                if s == -1:
                    revert with 'NH{q', 17
                _413 = mem[floor32(('cd', 4).length) + 97]
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _321 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
        mem[mem[64] + 64 len 32 * _321] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * _321]
        return 32, mem[mem[64] + 32 len (32 * _321) + 32]
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * ('cd', 36).length * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 36).length * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        _414 = mem[floor32(('cd', 4).length) + 97]
        s = 0
        while s < _414:
            _418 = mem[floor32(('cd', 4).length) + 97]
            if mem[floor32(('cd', 4).length) + 97] and idx > -1 / mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 17
            if s > (-1 * mem[floor32(('cd', 4).length) + 97] * idx) - 1:
                revert with 'NH{q', 17
            if s >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if not mem[(32 * s) + floor32(('cd', 4).length) + 141 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if s + (mem[floor32(('cd', 4).length) + 97] * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * s + (mem[floor32(('cd', 4).length) + 97] * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = eth.balance(mem[(32 * idx) + 128])
            else:
                if s >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _435 = mem[(32 * s) + floor32(('cd', 4).length) + 129]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _440 = mem[64]
                mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                _444 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_444 + 32] = mem[_444 + 36 len 28] or 0x70a0823100000000000000000000000000000000000000000000000000000000
                _448 = mem[_444]
                t = 0
                while t < _448:
                    mem[_440 + t + 68] = mem[_444 + t + 32]
                    _414 = mem[floor32(('cd', 4).length) + 97]
                    t = t + 32
                    continue 
                if ceil32(_448) <= _448:
                    staticcall address(_435).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _440 + _448 + -mem[64] + 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if s + (_418 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[(32 * s + (_418 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                        else:
                            if not mem[96]:
                                if s + (_418 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                    revert with 'NH{q', 50
                                mem[(32 * s + (_418 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                            else:
                                require mem[96] >= 32
                                require mem[128] == mem[128]
                                if s + (_418 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                    revert with 'NH{q', 50
                                mem[(32 * s + (_418 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = mem[128]
                    else:
                        _513 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_513] = return_data.size
                        mem[_513 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if s + (_418 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[(32 * s + (_418 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                        else:
                            if not return_data.size:
                                if s + (_418 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                    revert with 'NH{q', 50
                                mem[(32 * s + (_418 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                            else:
                                require return_data.size >= 32
                                require mem[_513 + 32] == mem[_513 + 32]
                                if s + (_418 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                    revert with 'NH{q', 50
                                mem[(32 * s + (_418 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = mem[_513 + 32]
                else:
                    mem[_440 + _448 + 68] = 0
                    staticcall address(_435).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _440 + _448 + -mem[64] + 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if s + (_418 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[(32 * s + (_418 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                        else:
                            if not mem[96]:
                                if s + (_418 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                    revert with 'NH{q', 50
                                mem[(32 * s + (_418 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                            else:
                                require mem[96] >= 32
                                require mem[128] == mem[128]
                                if s + (_418 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                    revert with 'NH{q', 50
                                mem[(32 * s + (_418 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = mem[128]
                    else:
                        _516 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_516] = return_data.size
                        mem[_516 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if s + (_418 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                revert with 'NH{q', 50
                            mem[(32 * s + (_418 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                        else:
                            if not return_data.size:
                                if s + (_418 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                    revert with 'NH{q', 50
                                mem[(32 * s + (_418 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = sub_65542692
                            else:
                                require return_data.size >= 32
                                require mem[_516 + 32] == mem[_516 + 32]
                                if s + (_418 * idx) >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                                    revert with 'NH{q', 50
                                mem[(32 * s + (_418 * idx)) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = mem[_516 + 32]
            if s == -1:
                revert with 'NH{q', 17
            _414 = mem[floor32(('cd', 4).length) + 97]
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _322 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
    mem[mem[64] + 64 len 32 * _322] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * _322]
    return 32, mem[mem[64] + 32 len (32 * _322) + 32]
}

function sub_2531ff27(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _272 = mem[(32 * idx) + 128]
            _273 = mem[64]
            mem[64] = mem[64] + 96
            mem[_273] = 0
            mem[_273 + 32] = 0
            mem[_273 + 64] = 0
            _275 = mem[64]
            _276 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_276 + 32] = mem[_276 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
            _283 = mem[_276]
            s = 0
            while s < _283:
                mem[_275 + s + 36] = mem[_276 + s + 32]
                s = s + 32
                continue 
            if ceil32(_283) <= _283:
                staticcall address(_272).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _275 + _283 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        _421 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_421] = 0
                        mem[_421 + 32] = 0
                        mem[_421 + 64] = 0
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _421
                    else:
                        if not mem[96]:
                            _435 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_435] = 0
                            mem[_435 + 32] = 0
                            mem[_435 + 64] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _435
                        else:
                            require mem[96] >= 96
                            require mem[128] == mem[146 len 14]
                            _453 = mem[160]
                            require mem[160] == mem[178 len 14]
                            _473 = mem[192]
                            require mem[192] == mem[220 len 4]
                            _495 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_495] = mem[146 len 14]
                            mem[_495 + 32] = Mask(112, 0, _453)
                            mem[_495 + 64] = uint32(_473)
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _495
                else:
                    _407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_407] = return_data.size
                    mem[_407 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        _422 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_422] = 0
                        mem[_422 + 32] = 0
                        mem[_422 + 64] = 0
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _422
                    else:
                        if not return_data.size:
                            _436 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_436] = 0
                            mem[_436 + 32] = 0
                            mem[_436 + 64] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _436
                        else:
                            require return_data.size >= 96
                            _444 = mem[_407 + 32]
                            require mem[_407 + 32] == mem[_407 + 50 len 14]
                            _454 = mem[_407 + 64]
                            require mem[_407 + 64] == mem[_407 + 82 len 14]
                            _474 = mem[_407 + 96]
                            require mem[_407 + 96] == mem[_407 + 124 len 4]
                            _496 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_496] = Mask(112, 0, _444)
                            mem[_496 + 32] = Mask(112, 0, _454)
                            mem[_496 + 64] = uint32(_474)
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _496
            else:
                mem[_275 + _283 + 36] = 0
                staticcall address(_272).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _275 + _283 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        _428 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_428] = 0
                        mem[_428 + 32] = 0
                        mem[_428 + 64] = 0
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _428
                    else:
                        if not mem[96]:
                            _441 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_441] = 0
                            mem[_441 + 32] = 0
                            mem[_441 + 64] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _441
                        else:
                            require mem[96] >= 96
                            require mem[128] == mem[146 len 14]
                            _457 = mem[160]
                            require mem[160] == mem[178 len 14]
                            _479 = mem[192]
                            require mem[192] == mem[220 len 4]
                            _499 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_499] = mem[146 len 14]
                            mem[_499 + 32] = Mask(112, 0, _457)
                            mem[_499 + 64] = uint32(_479)
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _499
                else:
                    _412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_412] = return_data.size
                    mem[_412 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        _429 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_429] = 0
                        mem[_429 + 32] = 0
                        mem[_429 + 64] = 0
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _429
                    else:
                        if not return_data.size:
                            _442 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_442] = 0
                            mem[_442 + 32] = 0
                            mem[_442 + 64] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _442
                        else:
                            require return_data.size >= 96
                            _448 = mem[_412 + 32]
                            require mem[_412 + 32] == mem[_412 + 50 len 14]
                            _458 = mem[_412 + 64]
                            require mem[_412 + 64] == mem[_412 + 82 len 14]
                            _480 = mem[_412 + 96]
                            require mem[_412 + 96] == mem[_412 + 124 len 4]
                            _500 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_500] = Mask(112, 0, _448)
                            mem[_500 + 32] = Mask(112, 0, _458)
                            mem[_500 + 64] = uint32(_480)
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _500
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _271 = mem[64]
        mem[mem[64]] = 32
        _274 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _274:
            _400 = mem[s]
            mem[t] = mem[mem[s] + 18 len 14]
            mem[t + 32] = mem[_400 + 50 len 14]
            mem[t + 64] = mem[_400 + 92 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _271 + (96 * _274) + -mem[64] + 64
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[var33001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var33001
    idx = var33002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _519 = mem[96]
    idx = 0
    while idx < _519:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _522 = mem[(32 * idx) + 128]
        _523 = mem[64]
        mem[64] = mem[64] + 96
        mem[_523] = 0
        mem[_523 + 32] = 0
        mem[_523 + 64] = 0
        _525 = mem[64]
        _526 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_526 + 32] = mem[_526 + 36 len 28] or 0x902f1ac00000000000000000000000000000000000000000000000000000000
        _529 = mem[_526]
        s = 0
        while s < _529:
            mem[_525 + s + 36] = mem[_526 + s + 32]
            _519 = mem[96]
            s = s + 32
            continue 
        if ceil32(_529) <= _529:
            staticcall address(_522).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _525 + _529 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    _595 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_595] = 0
                    mem[_595 + 32] = 0
                    mem[_595 + 64] = 0
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _595
                else:
                    if not mem[96]:
                        _608 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_608] = 0
                        mem[_608 + 32] = 0
                        mem[_608 + 64] = 0
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _608
                    else:
                        require mem[96] >= 96
                        require mem[128] == mem[146 len 14]
                        _622 = mem[160]
                        require mem[160] == mem[178 len 14]
                        _626 = mem[192]
                        require mem[192] == mem[220 len 4]
                        _630 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_630] = mem[146 len 14]
                        mem[_630 + 32] = Mask(112, 0, _622)
                        mem[_630 + 64] = uint32(_626)
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _630
            else:
                _589 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_589] = return_data.size
                mem[_589 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    _596 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_596] = 0
                    mem[_596 + 32] = 0
                    mem[_596 + 64] = 0
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _596
                else:
                    if not return_data.size:
                        _609 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_609] = 0
                        mem[_609 + 32] = 0
                        mem[_609 + 64] = 0
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _609
                    else:
                        require return_data.size >= 96
                        _617 = mem[_589 + 32]
                        require mem[_589 + 32] == mem[_589 + 50 len 14]
                        _623 = mem[_589 + 64]
                        require mem[_589 + 64] == mem[_589 + 82 len 14]
                        _627 = mem[_589 + 96]
                        require mem[_589 + 96] == mem[_589 + 124 len 4]
                        _631 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_631] = Mask(112, 0, _617)
                        mem[_631 + 32] = Mask(112, 0, _623)
                        mem[_631 + 64] = uint32(_627)
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _631
        else:
            mem[_525 + _529 + 36] = 0
            staticcall address(_522).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _525 + _529 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    _602 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_602] = 0
                    mem[_602 + 32] = 0
                    mem[_602 + 64] = 0
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _602
                else:
                    if not mem[96]:
                        _614 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_614] = 0
                        mem[_614 + 32] = 0
                        mem[_614 + 64] = 0
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _614
                    else:
                        require mem[96] >= 96
                        require mem[128] == mem[146 len 14]
                        _624 = mem[160]
                        require mem[160] == mem[178 len 14]
                        _628 = mem[192]
                        require mem[192] == mem[220 len 4]
                        _634 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_634] = mem[146 len 14]
                        mem[_634 + 32] = Mask(112, 0, _624)
                        mem[_634 + 64] = uint32(_628)
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _634
            else:
                _592 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_592] = return_data.size
                mem[_592 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    _603 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_603] = 0
                    mem[_603 + 32] = 0
                    mem[_603 + 64] = 0
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _603
                else:
                    if not return_data.size:
                        _615 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_615] = 0
                        mem[_615 + 32] = 0
                        mem[_615 + 64] = 0
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _615
                    else:
                        require return_data.size >= 96
                        _621 = mem[_592 + 32]
                        require mem[_592 + 32] == mem[_592 + 50 len 14]
                        _625 = mem[_592 + 64]
                        require mem[_592 + 64] == mem[_592 + 82 len 14]
                        _629 = mem[_592 + 96]
                        require mem[_592 + 96] == mem[_592 + 124 len 4]
                        _635 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_635] = Mask(112, 0, _621)
                        mem[_635 + 32] = Mask(112, 0, _625)
                        mem[_635 + 64] = uint32(_629)
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _635
        if idx == -1:
            revert with 'NH{q', 17
        _519 = mem[96]
        idx = idx + 1
        continue 
    _521 = mem[64]
    mem[mem[64]] = 32
    _524 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _524:
        _584 = mem[s]
        mem[t] = mem[mem[s] + 18 len 14]
        mem[t + 32] = mem[_584 + 50 len 14]
        mem[t + 64] = mem[_584 + 92 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _521 + (96 * _524) + -mem[64] + 64
}

function sub_1628e29c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _559 = mem[(32 * idx) + 128]
            _562 = mem[64]
            _563 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_563 + 32] = mem[_563 + 36 len 28] or 0xdfe168100000000000000000000000000000000000000000000000000000000
            _572 = mem[_563]
            s = 0
            while s < _572:
                mem[_562 + s + 36] = mem[_563 + s + 32]
                s = s + 32
                continue 
            if ceil32(_572) <= _572:
                staticcall address(_559).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _562 + _572 + -mem[64] + 32]
                if not return_data.size:
                    _840 = mem[64]
                    _841 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_841 + 32] = mem[_841 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                    _874 = mem[_841]
                    s = 0
                    while s < _874:
                        mem[_840 + s + 36] = mem[_841 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_874) <= _874:
                        staticcall address(_559).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _840 + _874 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                        else:
                            _1098 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1098] = return_data.size
                            mem[_1098 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                if not mem[96]:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                                else:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
                    else:
                        mem[_840 + _874 + 36] = 0
                        staticcall address(_559).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _840 + _874 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                        else:
                            _1114 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1114] = return_data.size
                            mem[_1114 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                if not mem[96]:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                                else:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
                else:
                    _836 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_836] = return_data.size
                    mem[_836 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _844 = mem[64]
                    _845 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_845 + 32] = mem[_845 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                    _875 = mem[_845]
                    s = 0
                    while s < _875:
                        mem[_844 + s + 36] = mem[_845 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_875) <= _875:
                        staticcall address(_559).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _844 + _875 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                if not mem[_836]:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_836]
                                else:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                        else:
                            _1100 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1100] = return_data.size
                            mem[_1100 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                if not mem[_836]:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_836]
                                else:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
                    else:
                        mem[_844 + _875 + 36] = 0
                        staticcall address(_559).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _844 + _875 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                if not mem[_836]:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_836]
                                else:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                        else:
                            _1115 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1115] = return_data.size
                            mem[_1115 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                if not mem[_836]:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_836]
                                else:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
            else:
                mem[_562 + _572 + 36] = 0
                staticcall address(_559).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _562 + _572 + -mem[64] + 32]
                if not return_data.size:
                    _858 = mem[64]
                    _859 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_859 + 32] = mem[_859 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                    _878 = mem[_859]
                    s = 0
                    while s < _878:
                        mem[_858 + s + 36] = mem[_859 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_878) <= _878:
                        staticcall address(_559).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _858 + _878 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                        else:
                            _1102 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1102] = return_data.size
                            mem[_1102 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                if not mem[96]:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                                else:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
                    else:
                        mem[_858 + _878 + 36] = 0
                        staticcall address(_559).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _858 + _878 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                        else:
                            _1116 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1116] = return_data.size
                            mem[_1116 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                if not mem[96]:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                                else:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
                else:
                    _848 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_848] = return_data.size
                    mem[_848 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _862 = mem[64]
                    _863 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_863 + 32] = mem[_863 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                    _879 = mem[_863]
                    s = 0
                    while s < _879:
                        mem[_862 + s + 36] = mem[_863 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_879) <= _879:
                        staticcall address(_559).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _862 + _879 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                if not mem[_848]:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_848]
                                else:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                        else:
                            _1104 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1104] = return_data.size
                            mem[_1104 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                if not mem[_848]:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_848]
                                else:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
                    else:
                        mem[_862 + _879 + 36] = 0
                        staticcall address(_559).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _862 + _879 + -mem[64] + 32]
                        if not return_data.size:
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                if not mem[_848]:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_848]
                                else:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                        else:
                            _1117 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1117] = return_data.size
                            mem[_1117 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            if not ext_call.success:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                            else:
                                if not mem[_848]:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_848]
                                else:
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _558 = mem[64]
        mem[mem[64]] = 32
        _570 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _570:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _558 + (32 * _570) + -mem[64] + 64
    mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _561 = mem[(32 * idx) + 128]
        _566 = mem[64]
        _567 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_567 + 32] = mem[_567 + 36 len 28] or 0xdfe168100000000000000000000000000000000000000000000000000000000
        _573 = mem[_567]
        s = 0
        while s < _573:
            mem[_566 + s + 36] = mem[_567 + s + 32]
            s = s + 32
            continue 
        if ceil32(_573) <= _573:
            staticcall address(_561).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _566 + _573 + -mem[64] + 32]
            if not return_data.size:
                _849 = mem[64]
                _850 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_850 + 32] = mem[_850 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                _876 = mem[_850]
                s = 0
                while s < _876:
                    mem[_849 + s + 36] = mem[_850 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_876) <= _876:
                    staticcall address(_561).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _849 + _876 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                    else:
                        _1106 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1106] = return_data.size
                        mem[_1106 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            if not mem[96]:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
                else:
                    mem[_849 + _876 + 36] = 0
                    staticcall address(_561).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _849 + _876 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                    else:
                        _1118 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1118] = return_data.size
                        mem[_1118 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            if not mem[96]:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
            else:
                _838 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_838] = return_data.size
                mem[_838 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                _853 = mem[64]
                _854 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_854 + 32] = mem[_854 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                _877 = mem[_854]
                s = 0
                while s < _877:
                    mem[_853 + s + 36] = mem[_854 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_877) <= _877:
                    staticcall address(_561).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _853 + _877 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            if not mem[_838]:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_838]
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                    else:
                        _1108 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1108] = return_data.size
                        mem[_1108 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            if not mem[_838]:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_838]
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
                else:
                    mem[_853 + _877 + 36] = 0
                    staticcall address(_561).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _853 + _877 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            if not mem[_838]:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_838]
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                    else:
                        _1119 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1119] = return_data.size
                        mem[_1119 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            if not mem[_838]:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_838]
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
        else:
            mem[_566 + _573 + 36] = 0
            staticcall address(_561).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _566 + _573 + -mem[64] + 32]
            if not return_data.size:
                _866 = mem[64]
                _867 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_867 + 32] = mem[_867 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                _880 = mem[_867]
                s = 0
                while s < _880:
                    mem[_866 + s + 36] = mem[_867 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_880) <= _880:
                    staticcall address(_561).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _866 + _880 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                    else:
                        _1110 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1110] = return_data.size
                        mem[_1110 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            if not mem[96]:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
                else:
                    mem[_866 + _880 + 36] = 0
                    staticcall address(_561).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _866 + _880 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                    else:
                        _1120 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1120] = return_data.size
                        mem[_1120 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            if not mem[96]:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
            else:
                _857 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_857] = return_data.size
                mem[_857 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                _870 = mem[64]
                _871 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_871 + 32] = mem[_871 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                _881 = mem[_871]
                s = 0
                while s < _881:
                    mem[_870 + s + 36] = mem[_871 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_881) <= _881:
                    staticcall address(_561).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _870 + _881 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            if not mem[_857]:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_857]
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                    else:
                        _1112 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1112] = return_data.size
                        mem[_1112 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            if not mem[_857]:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_857]
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
                else:
                    mem[_870 + _881 + 36] = 0
                    staticcall address(_561).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _870 + _881 + -mem[64] + 32]
                    if not return_data.size:
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            if not mem[_857]:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_857]
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[96]
                    else:
                        _1121 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1121] = return_data.size
                        mem[_1121 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        if not ext_call.success:
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bool(ext_call.success)
                        else:
                            if not mem[_857]:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not mem[_857]
                            else:
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = not not return_data.size
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _560 = mem[64]
    mem[mem[64]] = 32
    _571 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _571:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _560 + (32 * _571) + -mem[64] + 64
}

function sub_e2a587fd(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1980 = mem[(32 * idx) + 128]
            _1981 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1981] = 0
            mem[_1981 + 32] = 0
            _1983 = mem[64]
            _1984 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_1984 + 32] = mem[_1984 + 36 len 28] or 0xfeaf968c00000000000000000000000000000000000000000000000000000000
            _1991 = mem[_1984]
            s = 0
            while s < _1991:
                mem[_1983 + s + 36] = mem[_1984 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1991) <= _1991:
                staticcall address(_1980).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1983 + _1991 + -mem[64] + 32]
                if not return_data.size:
                    _2974 = mem[64]
                    _2975 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_2975 + 32] = mem[_2975 + 36 len 28] or 0x313ce56700000000000000000000000000000000000000000000000000000000
                    _2997 = mem[_2975]
                    s = 0
                    while s < _2997:
                        mem[_2974 + s + 36] = mem[_2975 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2997) <= _2997:
                        staticcall address(_1980).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2974 + _2997 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _3991 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3991] = sub_65542692
                                mem[_3991 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3991
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _4050 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4050] = sub_65542692
                                        mem[_4050 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4050
                                    else:
                                        if not mem[96]:
                                            _4108 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4108] = sub_65542692
                                            mem[_4108 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4108
                                        else:
                                            require mem[96] >= 32
                                            _4151 = mem[128]
                                            require mem[128] == mem[128]
                                            _4204 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4204] = sub_65542692
                                            mem[_4204 + 32] = _4151
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4204
                                else:
                                    require mem[96] >= 160
                                    require mem[128] == mem[150 len 10]
                                    require mem[160] == mem[160]
                                    require mem[192] == mem[192]
                                    require mem[224] == mem[224]
                                    require mem[256] == mem[278 len 10]
                                    if not ext_call.success:
                                        _4519 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4519] = mem[160]
                                        mem[_4519 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4519
                                    else:
                                        if not mem[96]:
                                            _4567 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4567] = mem[160]
                                            mem[_4567 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4567
                                        else:
                                            require mem[96] >= 32
                                            _4627 = mem[128]
                                            require mem[128] == mem[128]
                                            _4687 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4687] = mem[160]
                                            mem[_4687 + 32] = _4627
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4687
                        else:
                            _3953 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3953] = return_data.size
                            mem[_3953 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _3992 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3992] = sub_65542692
                                mem[_3992 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3992
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _4051 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4051] = sub_65542692
                                        mem[_4051 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4051
                                    else:
                                        if not return_data.size:
                                            _4109 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4109] = sub_65542692
                                            mem[_4109 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4109
                                        else:
                                            require return_data.size >= 32
                                            _4152 = mem[_3953 + 32]
                                            require mem[_3953 + 32] == mem[_3953 + 32]
                                            _4206 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4206] = sub_65542692
                                            mem[_4206 + 32] = _4152
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4206
                                else:
                                    require mem[96] >= 160
                                    require mem[128] == mem[150 len 10]
                                    require mem[160] == mem[160]
                                    require mem[192] == mem[192]
                                    require mem[224] == mem[224]
                                    require mem[256] == mem[278 len 10]
                                    if not ext_call.success:
                                        _4520 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4520] = mem[160]
                                        mem[_4520 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4520
                                    else:
                                        if not return_data.size:
                                            _4568 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4568] = mem[160]
                                            mem[_4568 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4568
                                        else:
                                            require return_data.size >= 32
                                            _4628 = mem[_3953 + 32]
                                            require mem[_3953 + 32] == mem[_3953 + 32]
                                            _4688 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4688] = mem[160]
                                            mem[_4688 + 32] = _4628
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4688
                    else:
                        mem[_2974 + _2997 + 36] = 0
                        staticcall address(_1980).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2974 + _2997 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _4009 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4009] = sub_65542692
                                mem[_4009 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4009
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _4076 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4076] = sub_65542692
                                        mem[_4076 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4076
                                    else:
                                        if not mem[96]:
                                            _4128 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4128] = sub_65542692
                                            mem[_4128 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4128
                                        else:
                                            require mem[96] >= 32
                                            _4177 = mem[128]
                                            require mem[128] == mem[128]
                                            _4224 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4224] = sub_65542692
                                            mem[_4224 + 32] = _4177
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4224
                                else:
                                    require mem[96] >= 160
                                    require mem[128] == mem[150 len 10]
                                    require mem[160] == mem[160]
                                    require mem[192] == mem[192]
                                    require mem[224] == mem[224]
                                    require mem[256] == mem[278 len 10]
                                    if not ext_call.success:
                                        _4537 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4537] = mem[160]
                                        mem[_4537 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4537
                                    else:
                                        if not mem[96]:
                                            _4593 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4593] = mem[160]
                                            mem[_4593 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4593
                                        else:
                                            require mem[96] >= 32
                                            _4659 = mem[128]
                                            require mem[128] == mem[128]
                                            _4697 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4697] = mem[160]
                                            mem[_4697 + 32] = _4659
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4697
                        else:
                            _3961 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3961] = return_data.size
                            mem[_3961 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4010 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4010] = sub_65542692
                                mem[_4010 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4010
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _4077 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4077] = sub_65542692
                                        mem[_4077 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4077
                                    else:
                                        if not return_data.size:
                                            _4129 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4129] = sub_65542692
                                            mem[_4129 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4129
                                        else:
                                            require return_data.size >= 32
                                            _4178 = mem[_3961 + 32]
                                            require mem[_3961 + 32] == mem[_3961 + 32]
                                            _4226 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4226] = sub_65542692
                                            mem[_4226 + 32] = _4178
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4226
                                else:
                                    require mem[96] >= 160
                                    require mem[128] == mem[150 len 10]
                                    require mem[160] == mem[160]
                                    require mem[192] == mem[192]
                                    require mem[224] == mem[224]
                                    require mem[256] == mem[278 len 10]
                                    if not ext_call.success:
                                        _4538 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4538] = mem[160]
                                        mem[_4538 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4538
                                    else:
                                        if not return_data.size:
                                            _4594 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4594] = mem[160]
                                            mem[_4594 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4594
                                        else:
                                            require return_data.size >= 32
                                            _4660 = mem[_3961 + 32]
                                            require mem[_3961 + 32] == mem[_3961 + 32]
                                            _4698 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4698] = mem[160]
                                            mem[_4698 + 32] = _4660
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4698
                else:
                    _2969 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2969] = return_data.size
                    mem[_2969 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _2978 = mem[64]
                    _2979 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_2979 + 32] = mem[_2979 + 36 len 28] or 0x313ce56700000000000000000000000000000000000000000000000000000000
                    _2998 = mem[_2979]
                    s = 0
                    while s < _2998:
                        mem[_2978 + s + 36] = mem[_2979 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2998) <= _2998:
                        staticcall address(_1980).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2978 + _2998 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _3995 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3995] = sub_65542692
                                mem[_3995 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3995
                            else:
                                if not mem[_2969]:
                                    if not ext_call.success:
                                        _4056 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4056] = sub_65542692
                                        mem[_4056 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4056
                                    else:
                                        if not mem[96]:
                                            _4112 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4112] = sub_65542692
                                            mem[_4112 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4112
                                        else:
                                            require mem[96] >= 32
                                            _4155 = mem[128]
                                            require mem[128] == mem[128]
                                            _4208 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4208] = sub_65542692
                                            mem[_4208 + 32] = _4155
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4208
                                else:
                                    require mem[_2969] >= 160
                                    require mem[_2969 + 32] == mem[_2969 + 54 len 10]
                                    _4179 = mem[_2969 + 64]
                                    require mem[_2969 + 64] == mem[_2969 + 64]
                                    require mem[_2969 + 96] == mem[_2969 + 96]
                                    require mem[_2969 + 128] == mem[_2969 + 128]
                                    require mem[_2969 + 160] == mem[_2969 + 182 len 10]
                                    if not ext_call.success:
                                        _4523 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4523] = _4179
                                        mem[_4523 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4523
                                    else:
                                        if not mem[96]:
                                            _4571 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4571] = _4179
                                            mem[_4571 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4571
                                        else:
                                            require mem[96] >= 32
                                            _4631 = mem[128]
                                            require mem[128] == mem[128]
                                            _4689 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4689] = _4179
                                            mem[_4689 + 32] = _4631
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4689
                        else:
                            _3955 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3955] = return_data.size
                            mem[_3955 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _3996 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3996] = sub_65542692
                                mem[_3996 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3996
                            else:
                                if not mem[_2969]:
                                    if not ext_call.success:
                                        _4057 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4057] = sub_65542692
                                        mem[_4057 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4057
                                    else:
                                        if not return_data.size:
                                            _4113 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4113] = sub_65542692
                                            mem[_4113 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4113
                                        else:
                                            require return_data.size >= 32
                                            _4156 = mem[_3955 + 32]
                                            require mem[_3955 + 32] == mem[_3955 + 32]
                                            _4210 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4210] = sub_65542692
                                            mem[_4210 + 32] = _4156
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4210
                                else:
                                    require mem[_2969] >= 160
                                    require mem[_2969 + 32] == mem[_2969 + 54 len 10]
                                    _4180 = mem[_2969 + 64]
                                    require mem[_2969 + 64] == mem[_2969 + 64]
                                    require mem[_2969 + 96] == mem[_2969 + 96]
                                    require mem[_2969 + 128] == mem[_2969 + 128]
                                    require mem[_2969 + 160] == mem[_2969 + 182 len 10]
                                    if not ext_call.success:
                                        _4524 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4524] = _4180
                                        mem[_4524 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4524
                                    else:
                                        if not return_data.size:
                                            _4572 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4572] = _4180
                                            mem[_4572 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4572
                                        else:
                                            require return_data.size >= 32
                                            _4632 = mem[_3955 + 32]
                                            require mem[_3955 + 32] == mem[_3955 + 32]
                                            _4690 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4690] = _4180
                                            mem[_4690 + 32] = _4632
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4690
                    else:
                        mem[_2978 + _2998 + 36] = 0
                        staticcall address(_1980).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2978 + _2998 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _4013 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4013] = sub_65542692
                                mem[_4013 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4013
                            else:
                                if not mem[_2969]:
                                    if not ext_call.success:
                                        _4080 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4080] = sub_65542692
                                        mem[_4080 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4080
                                    else:
                                        if not mem[96]:
                                            _4132 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4132] = sub_65542692
                                            mem[_4132 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4132
                                        else:
                                            require mem[96] >= 32
                                            _4181 = mem[128]
                                            require mem[128] == mem[128]
                                            _4230 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4230] = sub_65542692
                                            mem[_4230 + 32] = _4181
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4230
                                else:
                                    require mem[_2969] >= 160
                                    require mem[_2969 + 32] == mem[_2969 + 54 len 10]
                                    _4193 = mem[_2969 + 64]
                                    require mem[_2969 + 64] == mem[_2969 + 64]
                                    require mem[_2969 + 96] == mem[_2969 + 96]
                                    require mem[_2969 + 128] == mem[_2969 + 128]
                                    require mem[_2969 + 160] == mem[_2969 + 182 len 10]
                                    if not ext_call.success:
                                        _4541 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4541] = _4193
                                        mem[_4541 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4541
                                    else:
                                        if not mem[96]:
                                            _4597 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4597] = _4193
                                            mem[_4597 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4597
                                        else:
                                            require mem[96] >= 32
                                            _4661 = mem[128]
                                            require mem[128] == mem[128]
                                            _4701 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4701] = _4193
                                            mem[_4701 + 32] = _4661
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4701
                        else:
                            _3962 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3962] = return_data.size
                            mem[_3962 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4014 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4014] = sub_65542692
                                mem[_4014 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4014
                            else:
                                if not mem[_2969]:
                                    if not ext_call.success:
                                        _4081 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4081] = sub_65542692
                                        mem[_4081 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4081
                                    else:
                                        if not return_data.size:
                                            _4133 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4133] = sub_65542692
                                            mem[_4133 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4133
                                        else:
                                            require return_data.size >= 32
                                            _4182 = mem[_3962 + 32]
                                            require mem[_3962 + 32] == mem[_3962 + 32]
                                            _4232 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4232] = sub_65542692
                                            mem[_4232 + 32] = _4182
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4232
                                else:
                                    require mem[_2969] >= 160
                                    require mem[_2969 + 32] == mem[_2969 + 54 len 10]
                                    _4194 = mem[_2969 + 64]
                                    require mem[_2969 + 64] == mem[_2969 + 64]
                                    require mem[_2969 + 96] == mem[_2969 + 96]
                                    require mem[_2969 + 128] == mem[_2969 + 128]
                                    require mem[_2969 + 160] == mem[_2969 + 182 len 10]
                                    if not ext_call.success:
                                        _4542 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4542] = _4194
                                        mem[_4542 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4542
                                    else:
                                        if not return_data.size:
                                            _4598 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4598] = _4194
                                            mem[_4598 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4598
                                        else:
                                            require return_data.size >= 32
                                            _4662 = mem[_3962 + 32]
                                            require mem[_3962 + 32] == mem[_3962 + 32]
                                            _4702 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4702] = _4194
                                            mem[_4702 + 32] = _4662
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4702
            else:
                mem[_1983 + _1991 + 36] = 0
                staticcall address(_1980).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1983 + _1991 + -mem[64] + 32]
                if not return_data.size:
                    _2983 = mem[64]
                    _2984 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_2984 + 32] = mem[_2984 + 36 len 28] or 0x313ce56700000000000000000000000000000000000000000000000000000000
                    _2999 = mem[_2984]
                    s = 0
                    while s < _2999:
                        mem[_2983 + s + 36] = mem[_2984 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2999) <= _2999:
                        staticcall address(_1980).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2983 + _2999 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _3999 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3999] = sub_65542692
                                mem[_3999 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3999
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _4062 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4062] = sub_65542692
                                        mem[_4062 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4062
                                    else:
                                        if not mem[96]:
                                            _4116 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4116] = sub_65542692
                                            mem[_4116 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4116
                                        else:
                                            require mem[96] >= 32
                                            _4159 = mem[128]
                                            require mem[128] == mem[128]
                                            _4212 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4212] = sub_65542692
                                            mem[_4212 + 32] = _4159
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4212
                                else:
                                    require mem[96] >= 160
                                    require mem[128] == mem[150 len 10]
                                    require mem[160] == mem[160]
                                    require mem[192] == mem[192]
                                    require mem[224] == mem[224]
                                    require mem[256] == mem[278 len 10]
                                    if not ext_call.success:
                                        _4527 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4527] = mem[160]
                                        mem[_4527 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4527
                                    else:
                                        if not mem[96]:
                                            _4575 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4575] = mem[160]
                                            mem[_4575 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4575
                                        else:
                                            require mem[96] >= 32
                                            _4635 = mem[128]
                                            require mem[128] == mem[128]
                                            _4691 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4691] = mem[160]
                                            mem[_4691 + 32] = _4635
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4691
                        else:
                            _3957 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3957] = return_data.size
                            mem[_3957 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4000 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4000] = sub_65542692
                                mem[_4000 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4000
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _4063 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4063] = sub_65542692
                                        mem[_4063 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4063
                                    else:
                                        if not return_data.size:
                                            _4117 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4117] = sub_65542692
                                            mem[_4117 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4117
                                        else:
                                            require return_data.size >= 32
                                            _4160 = mem[_3957 + 32]
                                            require mem[_3957 + 32] == mem[_3957 + 32]
                                            _4214 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4214] = sub_65542692
                                            mem[_4214 + 32] = _4160
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4214
                                else:
                                    require mem[96] >= 160
                                    require mem[128] == mem[150 len 10]
                                    require mem[160] == mem[160]
                                    require mem[192] == mem[192]
                                    require mem[224] == mem[224]
                                    require mem[256] == mem[278 len 10]
                                    if not ext_call.success:
                                        _4528 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4528] = mem[160]
                                        mem[_4528 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4528
                                    else:
                                        if not return_data.size:
                                            _4576 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4576] = mem[160]
                                            mem[_4576 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4576
                                        else:
                                            require return_data.size >= 32
                                            _4636 = mem[_3957 + 32]
                                            require mem[_3957 + 32] == mem[_3957 + 32]
                                            _4692 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4692] = mem[160]
                                            mem[_4692 + 32] = _4636
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4692
                    else:
                        mem[_2983 + _2999 + 36] = 0
                        staticcall address(_1980).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2983 + _2999 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _4017 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4017] = sub_65542692
                                mem[_4017 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4017
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _4084 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4084] = sub_65542692
                                        mem[_4084 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4084
                                    else:
                                        if not mem[96]:
                                            _4136 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4136] = sub_65542692
                                            mem[_4136 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4136
                                        else:
                                            require mem[96] >= 32
                                            _4185 = mem[128]
                                            require mem[128] == mem[128]
                                            _4236 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4236] = sub_65542692
                                            mem[_4236 + 32] = _4185
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4236
                                else:
                                    require mem[96] >= 160
                                    require mem[128] == mem[150 len 10]
                                    require mem[160] == mem[160]
                                    require mem[192] == mem[192]
                                    require mem[224] == mem[224]
                                    require mem[256] == mem[278 len 10]
                                    if not ext_call.success:
                                        _4545 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4545] = mem[160]
                                        mem[_4545 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4545
                                    else:
                                        if not mem[96]:
                                            _4601 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4601] = mem[160]
                                            mem[_4601 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4601
                                        else:
                                            require mem[96] >= 32
                                            _4663 = mem[128]
                                            require mem[128] == mem[128]
                                            _4705 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4705] = mem[160]
                                            mem[_4705 + 32] = _4663
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4705
                        else:
                            _3963 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3963] = return_data.size
                            mem[_3963 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4018 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4018] = sub_65542692
                                mem[_4018 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4018
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _4085 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4085] = sub_65542692
                                        mem[_4085 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4085
                                    else:
                                        if not return_data.size:
                                            _4137 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4137] = sub_65542692
                                            mem[_4137 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4137
                                        else:
                                            require return_data.size >= 32
                                            _4186 = mem[_3963 + 32]
                                            require mem[_3963 + 32] == mem[_3963 + 32]
                                            _4238 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4238] = sub_65542692
                                            mem[_4238 + 32] = _4186
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4238
                                else:
                                    require mem[96] >= 160
                                    require mem[128] == mem[150 len 10]
                                    require mem[160] == mem[160]
                                    require mem[192] == mem[192]
                                    require mem[224] == mem[224]
                                    require mem[256] == mem[278 len 10]
                                    if not ext_call.success:
                                        _4546 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4546] = mem[160]
                                        mem[_4546 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4546
                                    else:
                                        if not return_data.size:
                                            _4602 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4602] = mem[160]
                                            mem[_4602 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4602
                                        else:
                                            require return_data.size >= 32
                                            _4664 = mem[_3963 + 32]
                                            require mem[_3963 + 32] == mem[_3963 + 32]
                                            _4706 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4706] = mem[160]
                                            mem[_4706 + 32] = _4664
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4706
                else:
                    _2982 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2982] = return_data.size
                    mem[_2982 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _2987 = mem[64]
                    _2988 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_2988 + 32] = mem[_2988 + 36 len 28] or 0x313ce56700000000000000000000000000000000000000000000000000000000
                    _3000 = mem[_2988]
                    s = 0
                    while s < _3000:
                        mem[_2987 + s + 36] = mem[_2988 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3000) <= _3000:
                        staticcall address(_1980).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2987 + _3000 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _4003 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4003] = sub_65542692
                                mem[_4003 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4003
                            else:
                                if not mem[_2982]:
                                    if not ext_call.success:
                                        _4068 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4068] = sub_65542692
                                        mem[_4068 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4068
                                    else:
                                        if not mem[96]:
                                            _4120 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4120] = sub_65542692
                                            mem[_4120 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4120
                                        else:
                                            require mem[96] >= 32
                                            _4163 = mem[128]
                                            require mem[128] == mem[128]
                                            _4216 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4216] = sub_65542692
                                            mem[_4216 + 32] = _4163
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4216
                                else:
                                    require mem[_2982] >= 160
                                    require mem[_2982 + 32] == mem[_2982 + 54 len 10]
                                    _4187 = mem[_2982 + 64]
                                    require mem[_2982 + 64] == mem[_2982 + 64]
                                    require mem[_2982 + 96] == mem[_2982 + 96]
                                    require mem[_2982 + 128] == mem[_2982 + 128]
                                    require mem[_2982 + 160] == mem[_2982 + 182 len 10]
                                    if not ext_call.success:
                                        _4531 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4531] = _4187
                                        mem[_4531 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4531
                                    else:
                                        if not mem[96]:
                                            _4579 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4579] = _4187
                                            mem[_4579 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4579
                                        else:
                                            require mem[96] >= 32
                                            _4639 = mem[128]
                                            require mem[128] == mem[128]
                                            _4693 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4693] = _4187
                                            mem[_4693 + 32] = _4639
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4693
                        else:
                            _3959 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3959] = return_data.size
                            mem[_3959 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4004 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4004] = sub_65542692
                                mem[_4004 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4004
                            else:
                                if not mem[_2982]:
                                    if not ext_call.success:
                                        _4069 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4069] = sub_65542692
                                        mem[_4069 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4069
                                    else:
                                        if not return_data.size:
                                            _4121 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4121] = sub_65542692
                                            mem[_4121 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4121
                                        else:
                                            require return_data.size >= 32
                                            _4164 = mem[_3959 + 32]
                                            require mem[_3959 + 32] == mem[_3959 + 32]
                                            _4218 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4218] = sub_65542692
                                            mem[_4218 + 32] = _4164
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4218
                                else:
                                    require mem[_2982] >= 160
                                    require mem[_2982 + 32] == mem[_2982 + 54 len 10]
                                    _4188 = mem[_2982 + 64]
                                    require mem[_2982 + 64] == mem[_2982 + 64]
                                    require mem[_2982 + 96] == mem[_2982 + 96]
                                    require mem[_2982 + 128] == mem[_2982 + 128]
                                    require mem[_2982 + 160] == mem[_2982 + 182 len 10]
                                    if not ext_call.success:
                                        _4532 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4532] = _4188
                                        mem[_4532 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4532
                                    else:
                                        if not return_data.size:
                                            _4580 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4580] = _4188
                                            mem[_4580 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4580
                                        else:
                                            require return_data.size >= 32
                                            _4640 = mem[_3959 + 32]
                                            require mem[_3959 + 32] == mem[_3959 + 32]
                                            _4694 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4694] = _4188
                                            mem[_4694 + 32] = _4640
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4694
                    else:
                        mem[_2987 + _3000 + 36] = 0
                        staticcall address(_1980).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2987 + _3000 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _4021 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4021] = sub_65542692
                                mem[_4021 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4021
                            else:
                                if not mem[_2982]:
                                    if not ext_call.success:
                                        _4088 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4088] = sub_65542692
                                        mem[_4088 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4088
                                    else:
                                        if not mem[96]:
                                            _4140 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4140] = sub_65542692
                                            mem[_4140 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4140
                                        else:
                                            require mem[96] >= 32
                                            _4189 = mem[128]
                                            require mem[128] == mem[128]
                                            _4242 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4242] = sub_65542692
                                            mem[_4242 + 32] = _4189
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4242
                                else:
                                    require mem[_2982] >= 160
                                    require mem[_2982 + 32] == mem[_2982 + 54 len 10]
                                    _4197 = mem[_2982 + 64]
                                    require mem[_2982 + 64] == mem[_2982 + 64]
                                    require mem[_2982 + 96] == mem[_2982 + 96]
                                    require mem[_2982 + 128] == mem[_2982 + 128]
                                    require mem[_2982 + 160] == mem[_2982 + 182 len 10]
                                    if not ext_call.success:
                                        _4549 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4549] = _4197
                                        mem[_4549 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4549
                                    else:
                                        if not mem[96]:
                                            _4605 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4605] = _4197
                                            mem[_4605 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4605
                                        else:
                                            require mem[96] >= 32
                                            _4665 = mem[128]
                                            require mem[128] == mem[128]
                                            _4709 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4709] = _4197
                                            mem[_4709 + 32] = _4665
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4709
                        else:
                            _3964 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3964] = return_data.size
                            mem[_3964 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _4022 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4022] = sub_65542692
                                mem[_4022 + 32] = 0
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4022
                            else:
                                if not mem[_2982]:
                                    if not ext_call.success:
                                        _4089 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4089] = sub_65542692
                                        mem[_4089 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4089
                                    else:
                                        if not return_data.size:
                                            _4141 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4141] = sub_65542692
                                            mem[_4141 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4141
                                        else:
                                            require return_data.size >= 32
                                            _4190 = mem[_3964 + 32]
                                            require mem[_3964 + 32] == mem[_3964 + 32]
                                            _4244 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4244] = sub_65542692
                                            mem[_4244 + 32] = _4190
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4244
                                else:
                                    require mem[_2982] >= 160
                                    require mem[_2982 + 32] == mem[_2982 + 54 len 10]
                                    _4198 = mem[_2982 + 64]
                                    require mem[_2982 + 64] == mem[_2982 + 64]
                                    require mem[_2982 + 96] == mem[_2982 + 96]
                                    require mem[_2982 + 128] == mem[_2982 + 128]
                                    require mem[_2982 + 160] == mem[_2982 + 182 len 10]
                                    if not ext_call.success:
                                        _4550 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4550] = _4198
                                        mem[_4550 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4550
                                    else:
                                        if not return_data.size:
                                            _4606 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4606] = _4198
                                            mem[_4606 + 32] = 0
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4606
                                        else:
                                            require return_data.size >= 32
                                            _4666 = mem[_3964 + 32]
                                            require mem[_3964 + 32] == mem[_3964 + 32]
                                            _4710 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4710] = _4198
                                            mem[_4710 + 32] = _4666
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4710
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1979 = mem[64]
        mem[mem[64]] = 32
        _1982 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _1982:
            _2962 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_2962 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _1979 + (64 * _1982) + -mem[64] + 64
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[var33001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var33001
    idx = var33002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _3935 = mem[96]
    idx = 0
    while idx < _3935:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _3942 = mem[(32 * idx) + 128]
        _3943 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3943] = 0
        mem[_3943 + 32] = 0
        _3949 = mem[64]
        _3950 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_3950 + 32] = mem[_3950 + 36 len 28] or 0xfeaf968c00000000000000000000000000000000000000000000000000000000
        _3965 = mem[_3950]
        s = 0
        while s < _3965:
            mem[_3949 + s + 36] = mem[_3950 + s + 32]
            _3935 = mem[96]
            s = s + 32
            continue 
        if ceil32(_3965) <= _3965:
            staticcall address(_3942).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _3949 + _3965 + -mem[64] + 32]
            if not return_data.size:
                _4887 = mem[64]
                _4888 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_4888 + 32] = mem[_4888 + 36 len 28] or 0x313ce56700000000000000000000000000000000000000000000000000000000
                _4904 = mem[_4888]
                s = 0
                while s < _4904:
                    mem[_4887 + s + 36] = mem[_4888 + s + 32]
                    _3935 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_4904) <= _4904:
                    staticcall address(_3942).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4887 + _4904 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _5404 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5404] = sub_65542692
                            mem[_5404 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5404
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _5460 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5460] = sub_65542692
                                    mem[_5460 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5460
                                else:
                                    if not mem[96]:
                                        _5516 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5516] = sub_65542692
                                        mem[_5516 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5516
                                    else:
                                        require mem[96] >= 32
                                        _5548 = mem[128]
                                        require mem[128] == mem[128]
                                        _5589 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5589] = sub_65542692
                                        mem[_5589 + 32] = _5548
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5589
                            else:
                                require mem[96] >= 160
                                require mem[128] == mem[150 len 10]
                                require mem[160] == mem[160]
                                require mem[192] == mem[192]
                                require mem[224] == mem[224]
                                require mem[256] == mem[278 len 10]
                                if not ext_call.success:
                                    _5676 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5676] = mem[160]
                                    mem[_5676 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5676
                                else:
                                    if not mem[96]:
                                        _5724 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5724] = mem[160]
                                        mem[_5724 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5724
                                    else:
                                        require mem[96] >= 32
                                        _5756 = mem[128]
                                        require mem[128] == mem[128]
                                        _5780 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5780] = mem[160]
                                        mem[_5780 + 32] = _5756
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5780
                    else:
                        _5368 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_5368] = return_data.size
                        mem[_5368 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _5405 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5405] = sub_65542692
                            mem[_5405 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5405
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _5461 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5461] = sub_65542692
                                    mem[_5461 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5461
                                else:
                                    if not return_data.size:
                                        _5517 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5517] = sub_65542692
                                        mem[_5517 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5517
                                    else:
                                        require return_data.size >= 32
                                        _5549 = mem[_5368 + 32]
                                        require mem[_5368 + 32] == mem[_5368 + 32]
                                        _5591 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5591] = sub_65542692
                                        mem[_5591 + 32] = _5549
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5591
                            else:
                                require mem[96] >= 160
                                require mem[128] == mem[150 len 10]
                                require mem[160] == mem[160]
                                require mem[192] == mem[192]
                                require mem[224] == mem[224]
                                require mem[256] == mem[278 len 10]
                                if not ext_call.success:
                                    _5677 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5677] = mem[160]
                                    mem[_5677 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5677
                                else:
                                    if not return_data.size:
                                        _5725 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5725] = mem[160]
                                        mem[_5725 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5725
                                    else:
                                        require return_data.size >= 32
                                        _5757 = mem[_5368 + 32]
                                        require mem[_5368 + 32] == mem[_5368 + 32]
                                        _5781 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5781] = mem[160]
                                        mem[_5781 + 32] = _5757
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5781
                else:
                    mem[_4887 + _4904 + 36] = 0
                    staticcall address(_3942).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4887 + _4904 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _5422 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5422] = sub_65542692
                            mem[_5422 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5422
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _5486 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5486] = sub_65542692
                                    mem[_5486 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5486
                                else:
                                    if not mem[96]:
                                        _5534 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5534] = sub_65542692
                                        mem[_5534 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5534
                                    else:
                                        require mem[96] >= 32
                                        _5566 = mem[128]
                                        require mem[128] == mem[128]
                                        _5607 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5607] = sub_65542692
                                        mem[_5607 + 32] = _5566
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5607
                            else:
                                require mem[96] >= 160
                                require mem[128] == mem[150 len 10]
                                require mem[160] == mem[160]
                                require mem[192] == mem[192]
                                require mem[224] == mem[224]
                                require mem[256] == mem[278 len 10]
                                if not ext_call.success:
                                    _5694 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5694] = mem[160]
                                    mem[_5694 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5694
                                else:
                                    if not mem[96]:
                                        _5742 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5742] = mem[160]
                                        mem[_5742 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5742
                                    else:
                                        require mem[96] >= 32
                                        _5772 = mem[128]
                                        require mem[128] == mem[128]
                                        _5790 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5790] = mem[160]
                                        mem[_5790 + 32] = _5772
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5790
                    else:
                        _5376 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_5376] = return_data.size
                        mem[_5376 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _5423 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5423] = sub_65542692
                            mem[_5423 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5423
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _5487 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5487] = sub_65542692
                                    mem[_5487 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5487
                                else:
                                    if not return_data.size:
                                        _5535 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5535] = sub_65542692
                                        mem[_5535 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5535
                                    else:
                                        require return_data.size >= 32
                                        _5567 = mem[_5376 + 32]
                                        require mem[_5376 + 32] == mem[_5376 + 32]
                                        _5609 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5609] = sub_65542692
                                        mem[_5609 + 32] = _5567
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5609
                            else:
                                require mem[96] >= 160
                                require mem[128] == mem[150 len 10]
                                require mem[160] == mem[160]
                                require mem[192] == mem[192]
                                require mem[224] == mem[224]
                                require mem[256] == mem[278 len 10]
                                if not ext_call.success:
                                    _5695 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5695] = mem[160]
                                    mem[_5695 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5695
                                else:
                                    if not return_data.size:
                                        _5743 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5743] = mem[160]
                                        mem[_5743 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5743
                                    else:
                                        require return_data.size >= 32
                                        _5773 = mem[_5376 + 32]
                                        require mem[_5376 + 32] == mem[_5376 + 32]
                                        _5791 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5791] = mem[160]
                                        mem[_5791 + 32] = _5773
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5791
            else:
                _4884 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_4884] = return_data.size
                mem[_4884 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                _4891 = mem[64]
                _4892 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_4892 + 32] = mem[_4892 + 36 len 28] or 0x313ce56700000000000000000000000000000000000000000000000000000000
                _4905 = mem[_4892]
                s = 0
                while s < _4905:
                    mem[_4891 + s + 36] = mem[_4892 + s + 32]
                    _3935 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_4905) <= _4905:
                    staticcall address(_3942).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4891 + _4905 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _5408 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5408] = sub_65542692
                            mem[_5408 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5408
                        else:
                            if not mem[_4884]:
                                if not ext_call.success:
                                    _5466 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5466] = sub_65542692
                                    mem[_5466 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5466
                                else:
                                    if not mem[96]:
                                        _5520 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5520] = sub_65542692
                                        mem[_5520 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5520
                                    else:
                                        require mem[96] >= 32
                                        _5552 = mem[128]
                                        require mem[128] == mem[128]
                                        _5593 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5593] = sub_65542692
                                        mem[_5593 + 32] = _5552
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5593
                            else:
                                require mem[_4884] >= 160
                                require mem[_4884 + 32] == mem[_4884 + 54 len 10]
                                _5568 = mem[_4884 + 64]
                                require mem[_4884 + 64] == mem[_4884 + 64]
                                require mem[_4884 + 96] == mem[_4884 + 96]
                                require mem[_4884 + 128] == mem[_4884 + 128]
                                require mem[_4884 + 160] == mem[_4884 + 182 len 10]
                                if not ext_call.success:
                                    _5680 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5680] = _5568
                                    mem[_5680 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5680
                                else:
                                    if not mem[96]:
                                        _5728 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5728] = _5568
                                        mem[_5728 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5728
                                    else:
                                        require mem[96] >= 32
                                        _5760 = mem[128]
                                        require mem[128] == mem[128]
                                        _5782 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5782] = _5568
                                        mem[_5782 + 32] = _5760
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5782
                    else:
                        _5370 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_5370] = return_data.size
                        mem[_5370 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _5409 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5409] = sub_65542692
                            mem[_5409 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5409
                        else:
                            if not mem[_4884]:
                                if not ext_call.success:
                                    _5467 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5467] = sub_65542692
                                    mem[_5467 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5467
                                else:
                                    if not return_data.size:
                                        _5521 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5521] = sub_65542692
                                        mem[_5521 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5521
                                    else:
                                        require return_data.size >= 32
                                        _5553 = mem[_5370 + 32]
                                        require mem[_5370 + 32] == mem[_5370 + 32]
                                        _5595 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5595] = sub_65542692
                                        mem[_5595 + 32] = _5553
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5595
                            else:
                                require mem[_4884] >= 160
                                require mem[_4884 + 32] == mem[_4884 + 54 len 10]
                                _5569 = mem[_4884 + 64]
                                require mem[_4884 + 64] == mem[_4884 + 64]
                                require mem[_4884 + 96] == mem[_4884 + 96]
                                require mem[_4884 + 128] == mem[_4884 + 128]
                                require mem[_4884 + 160] == mem[_4884 + 182 len 10]
                                if not ext_call.success:
                                    _5681 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5681] = _5569
                                    mem[_5681 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5681
                                else:
                                    if not return_data.size:
                                        _5729 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5729] = _5569
                                        mem[_5729 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5729
                                    else:
                                        require return_data.size >= 32
                                        _5761 = mem[_5370 + 32]
                                        require mem[_5370 + 32] == mem[_5370 + 32]
                                        _5783 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5783] = _5569
                                        mem[_5783 + 32] = _5761
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5783
                else:
                    mem[_4891 + _4905 + 36] = 0
                    staticcall address(_3942).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4891 + _4905 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _5426 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5426] = sub_65542692
                            mem[_5426 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5426
                        else:
                            if not mem[_4884]:
                                if not ext_call.success:
                                    _5490 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5490] = sub_65542692
                                    mem[_5490 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5490
                                else:
                                    if not mem[96]:
                                        _5538 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5538] = sub_65542692
                                        mem[_5538 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5538
                                    else:
                                        require mem[96] >= 32
                                        _5570 = mem[128]
                                        require mem[128] == mem[128]
                                        _5613 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5613] = sub_65542692
                                        mem[_5613 + 32] = _5570
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5613
                            else:
                                require mem[_4884] >= 160
                                require mem[_4884 + 32] == mem[_4884 + 54 len 10]
                                _5582 = mem[_4884 + 64]
                                require mem[_4884 + 64] == mem[_4884 + 64]
                                require mem[_4884 + 96] == mem[_4884 + 96]
                                require mem[_4884 + 128] == mem[_4884 + 128]
                                require mem[_4884 + 160] == mem[_4884 + 182 len 10]
                                if not ext_call.success:
                                    _5698 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5698] = _5582
                                    mem[_5698 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5698
                                else:
                                    if not mem[96]:
                                        _5746 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5746] = _5582
                                        mem[_5746 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5746
                                    else:
                                        require mem[96] >= 32
                                        _5774 = mem[128]
                                        require mem[128] == mem[128]
                                        _5794 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5794] = _5582
                                        mem[_5794 + 32] = _5774
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5794
                    else:
                        _5377 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_5377] = return_data.size
                        mem[_5377 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _5427 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5427] = sub_65542692
                            mem[_5427 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5427
                        else:
                            if not mem[_4884]:
                                if not ext_call.success:
                                    _5491 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5491] = sub_65542692
                                    mem[_5491 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5491
                                else:
                                    if not return_data.size:
                                        _5539 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5539] = sub_65542692
                                        mem[_5539 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5539
                                    else:
                                        require return_data.size >= 32
                                        _5571 = mem[_5377 + 32]
                                        require mem[_5377 + 32] == mem[_5377 + 32]
                                        _5615 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5615] = sub_65542692
                                        mem[_5615 + 32] = _5571
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5615
                            else:
                                require mem[_4884] >= 160
                                require mem[_4884 + 32] == mem[_4884 + 54 len 10]
                                _5583 = mem[_4884 + 64]
                                require mem[_4884 + 64] == mem[_4884 + 64]
                                require mem[_4884 + 96] == mem[_4884 + 96]
                                require mem[_4884 + 128] == mem[_4884 + 128]
                                require mem[_4884 + 160] == mem[_4884 + 182 len 10]
                                if not ext_call.success:
                                    _5699 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5699] = _5583
                                    mem[_5699 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5699
                                else:
                                    if not return_data.size:
                                        _5747 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5747] = _5583
                                        mem[_5747 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5747
                                    else:
                                        require return_data.size >= 32
                                        _5775 = mem[_5377 + 32]
                                        require mem[_5377 + 32] == mem[_5377 + 32]
                                        _5795 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5795] = _5583
                                        mem[_5795 + 32] = _5775
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5795
        else:
            mem[_3949 + _3965 + 36] = 0
            staticcall address(_3942).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _3949 + _3965 + -mem[64] + 32]
            if not return_data.size:
                _4896 = mem[64]
                _4897 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_4897 + 32] = mem[_4897 + 36 len 28] or 0x313ce56700000000000000000000000000000000000000000000000000000000
                _4906 = mem[_4897]
                s = 0
                while s < _4906:
                    mem[_4896 + s + 36] = mem[_4897 + s + 32]
                    _3935 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_4906) <= _4906:
                    staticcall address(_3942).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4896 + _4906 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _5412 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5412] = sub_65542692
                            mem[_5412 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5412
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _5472 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5472] = sub_65542692
                                    mem[_5472 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5472
                                else:
                                    if not mem[96]:
                                        _5524 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5524] = sub_65542692
                                        mem[_5524 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5524
                                    else:
                                        require mem[96] >= 32
                                        _5556 = mem[128]
                                        require mem[128] == mem[128]
                                        _5597 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5597] = sub_65542692
                                        mem[_5597 + 32] = _5556
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5597
                            else:
                                require mem[96] >= 160
                                require mem[128] == mem[150 len 10]
                                require mem[160] == mem[160]
                                require mem[192] == mem[192]
                                require mem[224] == mem[224]
                                require mem[256] == mem[278 len 10]
                                if not ext_call.success:
                                    _5684 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5684] = mem[160]
                                    mem[_5684 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5684
                                else:
                                    if not mem[96]:
                                        _5732 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5732] = mem[160]
                                        mem[_5732 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5732
                                    else:
                                        require mem[96] >= 32
                                        _5764 = mem[128]
                                        require mem[128] == mem[128]
                                        _5784 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5784] = mem[160]
                                        mem[_5784 + 32] = _5764
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5784
                    else:
                        _5372 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_5372] = return_data.size
                        mem[_5372 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _5413 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5413] = sub_65542692
                            mem[_5413 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5413
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _5473 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5473] = sub_65542692
                                    mem[_5473 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5473
                                else:
                                    if not return_data.size:
                                        _5525 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5525] = sub_65542692
                                        mem[_5525 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5525
                                    else:
                                        require return_data.size >= 32
                                        _5557 = mem[_5372 + 32]
                                        require mem[_5372 + 32] == mem[_5372 + 32]
                                        _5599 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5599] = sub_65542692
                                        mem[_5599 + 32] = _5557
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5599
                            else:
                                require mem[96] >= 160
                                require mem[128] == mem[150 len 10]
                                require mem[160] == mem[160]
                                require mem[192] == mem[192]
                                require mem[224] == mem[224]
                                require mem[256] == mem[278 len 10]
                                if not ext_call.success:
                                    _5685 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5685] = mem[160]
                                    mem[_5685 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5685
                                else:
                                    if not return_data.size:
                                        _5733 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5733] = mem[160]
                                        mem[_5733 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5733
                                    else:
                                        require return_data.size >= 32
                                        _5765 = mem[_5372 + 32]
                                        require mem[_5372 + 32] == mem[_5372 + 32]
                                        _5785 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5785] = mem[160]
                                        mem[_5785 + 32] = _5765
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5785
                else:
                    mem[_4896 + _4906 + 36] = 0
                    staticcall address(_3942).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4896 + _4906 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _5430 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5430] = sub_65542692
                            mem[_5430 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5430
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _5494 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5494] = sub_65542692
                                    mem[_5494 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5494
                                else:
                                    if not mem[96]:
                                        _5542 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5542] = sub_65542692
                                        mem[_5542 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5542
                                    else:
                                        require mem[96] >= 32
                                        _5574 = mem[128]
                                        require mem[128] == mem[128]
                                        _5619 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5619] = sub_65542692
                                        mem[_5619 + 32] = _5574
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5619
                            else:
                                require mem[96] >= 160
                                require mem[128] == mem[150 len 10]
                                require mem[160] == mem[160]
                                require mem[192] == mem[192]
                                require mem[224] == mem[224]
                                require mem[256] == mem[278 len 10]
                                if not ext_call.success:
                                    _5702 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5702] = mem[160]
                                    mem[_5702 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5702
                                else:
                                    if not mem[96]:
                                        _5750 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5750] = mem[160]
                                        mem[_5750 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5750
                                    else:
                                        require mem[96] >= 32
                                        _5776 = mem[128]
                                        require mem[128] == mem[128]
                                        _5798 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5798] = mem[160]
                                        mem[_5798 + 32] = _5776
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5798
                    else:
                        _5378 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_5378] = return_data.size
                        mem[_5378 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _5431 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5431] = sub_65542692
                            mem[_5431 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5431
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _5495 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5495] = sub_65542692
                                    mem[_5495 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5495
                                else:
                                    if not return_data.size:
                                        _5543 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5543] = sub_65542692
                                        mem[_5543 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5543
                                    else:
                                        require return_data.size >= 32
                                        _5575 = mem[_5378 + 32]
                                        require mem[_5378 + 32] == mem[_5378 + 32]
                                        _5621 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5621] = sub_65542692
                                        mem[_5621 + 32] = _5575
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5621
                            else:
                                require mem[96] >= 160
                                require mem[128] == mem[150 len 10]
                                require mem[160] == mem[160]
                                require mem[192] == mem[192]
                                require mem[224] == mem[224]
                                require mem[256] == mem[278 len 10]
                                if not ext_call.success:
                                    _5703 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5703] = mem[160]
                                    mem[_5703 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5703
                                else:
                                    if not return_data.size:
                                        _5751 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5751] = mem[160]
                                        mem[_5751 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5751
                                    else:
                                        require return_data.size >= 32
                                        _5777 = mem[_5378 + 32]
                                        require mem[_5378 + 32] == mem[_5378 + 32]
                                        _5799 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5799] = mem[160]
                                        mem[_5799 + 32] = _5777
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5799
            else:
                _4895 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_4895] = return_data.size
                mem[_4895 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                _4900 = mem[64]
                _4901 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_4901 + 32] = mem[_4901 + 36 len 28] or 0x313ce56700000000000000000000000000000000000000000000000000000000
                _4907 = mem[_4901]
                s = 0
                while s < _4907:
                    mem[_4900 + s + 36] = mem[_4901 + s + 32]
                    _3935 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_4907) <= _4907:
                    staticcall address(_3942).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4900 + _4907 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _5416 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5416] = sub_65542692
                            mem[_5416 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5416
                        else:
                            if not mem[_4895]:
                                if not ext_call.success:
                                    _5478 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5478] = sub_65542692
                                    mem[_5478 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5478
                                else:
                                    if not mem[96]:
                                        _5528 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5528] = sub_65542692
                                        mem[_5528 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5528
                                    else:
                                        require mem[96] >= 32
                                        _5560 = mem[128]
                                        require mem[128] == mem[128]
                                        _5601 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5601] = sub_65542692
                                        mem[_5601 + 32] = _5560
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5601
                            else:
                                require mem[_4895] >= 160
                                require mem[_4895 + 32] == mem[_4895 + 54 len 10]
                                _5576 = mem[_4895 + 64]
                                require mem[_4895 + 64] == mem[_4895 + 64]
                                require mem[_4895 + 96] == mem[_4895 + 96]
                                require mem[_4895 + 128] == mem[_4895 + 128]
                                require mem[_4895 + 160] == mem[_4895 + 182 len 10]
                                if not ext_call.success:
                                    _5688 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5688] = _5576
                                    mem[_5688 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5688
                                else:
                                    if not mem[96]:
                                        _5736 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5736] = _5576
                                        mem[_5736 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5736
                                    else:
                                        require mem[96] >= 32
                                        _5768 = mem[128]
                                        require mem[128] == mem[128]
                                        _5786 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5786] = _5576
                                        mem[_5786 + 32] = _5768
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5786
                    else:
                        _5374 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_5374] = return_data.size
                        mem[_5374 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _5417 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5417] = sub_65542692
                            mem[_5417 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5417
                        else:
                            if not mem[_4895]:
                                if not ext_call.success:
                                    _5479 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5479] = sub_65542692
                                    mem[_5479 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5479
                                else:
                                    if not return_data.size:
                                        _5529 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5529] = sub_65542692
                                        mem[_5529 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5529
                                    else:
                                        require return_data.size >= 32
                                        _5561 = mem[_5374 + 32]
                                        require mem[_5374 + 32] == mem[_5374 + 32]
                                        _5603 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5603] = sub_65542692
                                        mem[_5603 + 32] = _5561
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5603
                            else:
                                require mem[_4895] >= 160
                                require mem[_4895 + 32] == mem[_4895 + 54 len 10]
                                _5577 = mem[_4895 + 64]
                                require mem[_4895 + 64] == mem[_4895 + 64]
                                require mem[_4895 + 96] == mem[_4895 + 96]
                                require mem[_4895 + 128] == mem[_4895 + 128]
                                require mem[_4895 + 160] == mem[_4895 + 182 len 10]
                                if not ext_call.success:
                                    _5689 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5689] = _5577
                                    mem[_5689 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5689
                                else:
                                    if not return_data.size:
                                        _5737 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5737] = _5577
                                        mem[_5737 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5737
                                    else:
                                        require return_data.size >= 32
                                        _5769 = mem[_5374 + 32]
                                        require mem[_5374 + 32] == mem[_5374 + 32]
                                        _5787 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5787] = _5577
                                        mem[_5787 + 32] = _5769
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5787
                else:
                    mem[_4900 + _4907 + 36] = 0
                    staticcall address(_3942).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4900 + _4907 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _5434 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5434] = sub_65542692
                            mem[_5434 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5434
                        else:
                            if not mem[_4895]:
                                if not ext_call.success:
                                    _5498 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5498] = sub_65542692
                                    mem[_5498 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5498
                                else:
                                    if not mem[96]:
                                        _5546 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5546] = sub_65542692
                                        mem[_5546 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5546
                                    else:
                                        require mem[96] >= 32
                                        _5578 = mem[128]
                                        require mem[128] == mem[128]
                                        _5625 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5625] = sub_65542692
                                        mem[_5625 + 32] = _5578
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5625
                            else:
                                require mem[_4895] >= 160
                                require mem[_4895 + 32] == mem[_4895 + 54 len 10]
                                _5586 = mem[_4895 + 64]
                                require mem[_4895 + 64] == mem[_4895 + 64]
                                require mem[_4895 + 96] == mem[_4895 + 96]
                                require mem[_4895 + 128] == mem[_4895 + 128]
                                require mem[_4895 + 160] == mem[_4895 + 182 len 10]
                                if not ext_call.success:
                                    _5706 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5706] = _5586
                                    mem[_5706 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5706
                                else:
                                    if not mem[96]:
                                        _5754 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5754] = _5586
                                        mem[_5754 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5754
                                    else:
                                        require mem[96] >= 32
                                        _5778 = mem[128]
                                        require mem[128] == mem[128]
                                        _5802 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5802] = _5586
                                        mem[_5802 + 32] = _5778
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5802
                    else:
                        _5379 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_5379] = return_data.size
                        mem[_5379 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _5435 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5435] = sub_65542692
                            mem[_5435 + 32] = 0
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5435
                        else:
                            if not mem[_4895]:
                                if not ext_call.success:
                                    _5499 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5499] = sub_65542692
                                    mem[_5499 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5499
                                else:
                                    if not return_data.size:
                                        _5547 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5547] = sub_65542692
                                        mem[_5547 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5547
                                    else:
                                        require return_data.size >= 32
                                        _5579 = mem[_5379 + 32]
                                        require mem[_5379 + 32] == mem[_5379 + 32]
                                        _5627 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5627] = sub_65542692
                                        mem[_5627 + 32] = _5579
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5627
                            else:
                                require mem[_4895] >= 160
                                require mem[_4895 + 32] == mem[_4895 + 54 len 10]
                                _5587 = mem[_4895 + 64]
                                require mem[_4895 + 64] == mem[_4895 + 64]
                                require mem[_4895 + 96] == mem[_4895 + 96]
                                require mem[_4895 + 128] == mem[_4895 + 128]
                                require mem[_4895 + 160] == mem[_4895 + 182 len 10]
                                if not ext_call.success:
                                    _5707 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5707] = _5587
                                    mem[_5707 + 32] = 0
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5707
                                else:
                                    if not return_data.size:
                                        _5755 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5755] = _5587
                                        mem[_5755 + 32] = 0
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5755
                                    else:
                                        require return_data.size >= 32
                                        _5779 = mem[_5379 + 32]
                                        require mem[_5379 + 32] == mem[_5379 + 32]
                                        _5803 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5803] = _5587
                                        mem[_5803 + 32] = _5779
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5803
        if idx == -1:
            revert with 'NH{q', 17
        _3935 = mem[96]
        idx = idx + 1
        continue 
    _3941 = mem[64]
    mem[mem[64]] = 32
    _3948 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _3948:
        _4879 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_4879 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _3941 + (64 * _3948) + -mem[64] + 64
}

function sub_78ebd498(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1728 = mem[(32 * idx) + 128]
            _1729 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1729] = 0
            mem[_1729 + 32] = 0
            mem[_1729 + 64] = 0
            _1731 = mem[64]
            _1732 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_1732 + 32] = mem[_1732 + 36 len 28] or 0xdfe168100000000000000000000000000000000000000000000000000000000
            _1739 = mem[_1732]
            s = 0
            while s < _1739:
                mem[_1731 + s + 36] = mem[_1732 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1739) <= _1739:
                staticcall address(_1728).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1731 + _1739 + -mem[64] + 32]
                if not return_data.size:
                    _2595 = mem[64]
                    _2596 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_2596 + 32] = mem[_2596 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                    _2619 = mem[_2596]
                    s = 0
                    while s < _2619:
                        mem[_2595 + s + 36] = mem[_2596 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2619) <= _2619:
                        staticcall address(_1728).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2595 + _2619 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _3487 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3487] = address(_1728)
                                mem[_3487 + 32] = sub_ffdf48c5Address
                                mem[_3487 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3487
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _3546 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3546] = address(_1728)
                                        mem[_3546 + 32] = sub_ffdf48c5Address
                                        mem[_3546 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3546
                                    else:
                                        if not mem[96]:
                                            _3603 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3603] = address(_1728)
                                            mem[_3603 + 32] = sub_ffdf48c5Address
                                            mem[_3603 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3603
                                        else:
                                            require mem[96] >= 32
                                            _3647 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3745 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3745] = address(_1728)
                                            mem[_3745 + 32] = sub_ffdf48c5Address
                                            mem[_3745 + 64] = address(_3647)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3745
                                else:
                                    require mem[96] >= 32
                                    _3522 = mem[128]
                                    require mem[128] == mem[140 len 20]
                                    if not ext_call.success:
                                        _3692 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3692] = address(_1728)
                                        mem[_3692 + 32] = address(_3522)
                                        mem[_3692 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3692
                                    else:
                                        if not mem[96]:
                                            _3744 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3744] = address(_1728)
                                            mem[_3744 + 32] = address(_3522)
                                            mem[_3744 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3744
                                        else:
                                            require mem[96] >= 32
                                            _3800 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3896 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3896] = address(_1728)
                                            mem[_3896 + 32] = address(_3522)
                                            mem[_3896 + 64] = address(_3800)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3896
                        else:
                            _3449 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3449] = return_data.size
                            mem[_3449 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _3488 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3488] = address(_1728)
                                mem[_3488 + 32] = sub_ffdf48c5Address
                                mem[_3488 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3488
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _3547 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3547] = address(_1728)
                                        mem[_3547 + 32] = sub_ffdf48c5Address
                                        mem[_3547 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3547
                                    else:
                                        if not mem[96]:
                                            _3604 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3604] = address(_1728)
                                            mem[_3604 + 32] = sub_ffdf48c5Address
                                            mem[_3604 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3604
                                        else:
                                            require return_data.size >= 32
                                            _3648 = mem[_3449 + 32]
                                            require mem[_3449 + 32] == mem[_3449 + 44 len 20]
                                            _3747 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3747] = address(_1728)
                                            mem[_3747 + 32] = sub_ffdf48c5Address
                                            mem[_3747 + 64] = address(_3648)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3747
                                else:
                                    require mem[96] >= 32
                                    _3524 = mem[128]
                                    require mem[128] == mem[140 len 20]
                                    if not ext_call.success:
                                        _3693 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3693] = address(_1728)
                                        mem[_3693 + 32] = address(_3524)
                                        mem[_3693 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3693
                                    else:
                                        if not mem[96]:
                                            _3746 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3746] = address(_1728)
                                            mem[_3746 + 32] = address(_3524)
                                            mem[_3746 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3746
                                        else:
                                            require return_data.size >= 32
                                            _3801 = mem[_3449 + 32]
                                            require mem[_3449 + 32] == mem[_3449 + 44 len 20]
                                            _3897 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3897] = address(_1728)
                                            mem[_3897 + 32] = address(_3524)
                                            mem[_3897 + 64] = address(_3801)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3897
                    else:
                        mem[_2595 + _2619 + 36] = 0
                        staticcall address(_1728).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2595 + _2619 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _3505 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3505] = address(_1728)
                                mem[_3505 + 32] = sub_ffdf48c5Address
                                mem[_3505 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3505
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _3572 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3572] = address(_1728)
                                        mem[_3572 + 32] = sub_ffdf48c5Address
                                        mem[_3572 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3572
                                    else:
                                        if not mem[96]:
                                            _3623 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3623] = address(_1728)
                                            mem[_3623 + 32] = sub_ffdf48c5Address
                                            mem[_3623 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3623
                                        else:
                                            require mem[96] >= 32
                                            _3671 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3773 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3773] = address(_1728)
                                            mem[_3773 + 32] = sub_ffdf48c5Address
                                            mem[_3773 + 64] = address(_3671)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3773
                                else:
                                    require mem[96] >= 32
                                    _3548 = mem[128]
                                    require mem[128] == mem[140 len 20]
                                    if not ext_call.success:
                                        _3710 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3710] = address(_1728)
                                        mem[_3710 + 32] = address(_3548)
                                        mem[_3710 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3710
                                    else:
                                        if not mem[96]:
                                            _3772 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3772] = address(_1728)
                                            mem[_3772 + 32] = address(_3548)
                                            mem[_3772 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3772
                                        else:
                                            require mem[96] >= 32
                                            _3826 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3926 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3926] = address(_1728)
                                            mem[_3926 + 32] = address(_3548)
                                            mem[_3926 + 64] = address(_3826)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3926
                        else:
                            _3457 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3457] = return_data.size
                            mem[_3457 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _3506 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3506] = address(_1728)
                                mem[_3506 + 32] = sub_ffdf48c5Address
                                mem[_3506 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3506
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _3573 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3573] = address(_1728)
                                        mem[_3573 + 32] = sub_ffdf48c5Address
                                        mem[_3573 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3573
                                    else:
                                        if not mem[96]:
                                            _3624 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3624] = address(_1728)
                                            mem[_3624 + 32] = sub_ffdf48c5Address
                                            mem[_3624 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3624
                                        else:
                                            require return_data.size >= 32
                                            _3672 = mem[_3457 + 32]
                                            require mem[_3457 + 32] == mem[_3457 + 44 len 20]
                                            _3775 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3775] = address(_1728)
                                            mem[_3775 + 32] = sub_ffdf48c5Address
                                            mem[_3775 + 64] = address(_3672)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3775
                                else:
                                    require mem[96] >= 32
                                    _3550 = mem[128]
                                    require mem[128] == mem[140 len 20]
                                    if not ext_call.success:
                                        _3711 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3711] = address(_1728)
                                        mem[_3711 + 32] = address(_3550)
                                        mem[_3711 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3711
                                    else:
                                        if not mem[96]:
                                            _3774 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3774] = address(_1728)
                                            mem[_3774 + 32] = address(_3550)
                                            mem[_3774 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3774
                                        else:
                                            require return_data.size >= 32
                                            _3827 = mem[_3457 + 32]
                                            require mem[_3457 + 32] == mem[_3457 + 44 len 20]
                                            _3927 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3927] = address(_1728)
                                            mem[_3927 + 32] = address(_3550)
                                            mem[_3927 + 64] = address(_3827)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3927
                else:
                    _2591 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2591] = return_data.size
                    mem[_2591 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _2599 = mem[64]
                    _2600 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_2600 + 32] = mem[_2600 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                    _2620 = mem[_2600]
                    s = 0
                    while s < _2620:
                        mem[_2599 + s + 36] = mem[_2600 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2620) <= _2620:
                        staticcall address(_1728).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2599 + _2620 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _3491 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3491] = address(_1728)
                                mem[_3491 + 32] = sub_ffdf48c5Address
                                mem[_3491 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3491
                            else:
                                if not mem[_2591]:
                                    if not ext_call.success:
                                        _3552 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3552] = address(_1728)
                                        mem[_3552 + 32] = sub_ffdf48c5Address
                                        mem[_3552 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3552
                                    else:
                                        if not mem[_2591]:
                                            _3607 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3607] = address(_1728)
                                            mem[_3607 + 32] = sub_ffdf48c5Address
                                            mem[_3607 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3607
                                        else:
                                            require mem[96] >= 32
                                            _3651 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3751 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3751] = address(_1728)
                                            mem[_3751 + 32] = sub_ffdf48c5Address
                                            mem[_3751 + 64] = address(_3651)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3751
                                else:
                                    require mem[_2591] >= 32
                                    _3528 = mem[_2591 + 32]
                                    require mem[_2591 + 32] == mem[_2591 + 44 len 20]
                                    if not ext_call.success:
                                        _3696 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3696] = address(_1728)
                                        mem[_3696 + 32] = address(_3528)
                                        mem[_3696 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3696
                                    else:
                                        if not mem[_2591]:
                                            _3750 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3750] = address(_1728)
                                            mem[_3750 + 32] = address(_3528)
                                            mem[_3750 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3750
                                        else:
                                            require mem[96] >= 32
                                            _3806 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3898 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3898] = address(_1728)
                                            mem[_3898 + 32] = address(_3528)
                                            mem[_3898 + 64] = address(_3806)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3898
                        else:
                            _3451 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3451] = return_data.size
                            mem[_3451 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _3492 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3492] = address(_1728)
                                mem[_3492 + 32] = sub_ffdf48c5Address
                                mem[_3492 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3492
                            else:
                                if not mem[_2591]:
                                    if not ext_call.success:
                                        _3553 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3553] = address(_1728)
                                        mem[_3553 + 32] = sub_ffdf48c5Address
                                        mem[_3553 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3553
                                    else:
                                        if not mem[_2591]:
                                            _3608 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3608] = address(_1728)
                                            mem[_3608 + 32] = sub_ffdf48c5Address
                                            mem[_3608 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3608
                                        else:
                                            require return_data.size >= 32
                                            _3652 = mem[_3451 + 32]
                                            require mem[_3451 + 32] == mem[_3451 + 44 len 20]
                                            _3753 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3753] = address(_1728)
                                            mem[_3753 + 32] = sub_ffdf48c5Address
                                            mem[_3753 + 64] = address(_3652)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3753
                                else:
                                    require mem[_2591] >= 32
                                    _3530 = mem[_2591 + 32]
                                    require mem[_2591 + 32] == mem[_2591 + 44 len 20]
                                    if not ext_call.success:
                                        _3697 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3697] = address(_1728)
                                        mem[_3697 + 32] = address(_3530)
                                        mem[_3697 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3697
                                    else:
                                        if not mem[_2591]:
                                            _3752 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3752] = address(_1728)
                                            mem[_3752 + 32] = address(_3530)
                                            mem[_3752 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3752
                                        else:
                                            require return_data.size >= 32
                                            _3807 = mem[_3451 + 32]
                                            require mem[_3451 + 32] == mem[_3451 + 44 len 20]
                                            _3899 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3899] = address(_1728)
                                            mem[_3899 + 32] = address(_3530)
                                            mem[_3899 + 64] = address(_3807)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3899
                    else:
                        mem[_2599 + _2620 + 36] = 0
                        staticcall address(_1728).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2599 + _2620 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _3509 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3509] = address(_1728)
                                mem[_3509 + 32] = sub_ffdf48c5Address
                                mem[_3509 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3509
                            else:
                                if not mem[_2591]:
                                    if not ext_call.success:
                                        _3576 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3576] = address(_1728)
                                        mem[_3576 + 32] = sub_ffdf48c5Address
                                        mem[_3576 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3576
                                    else:
                                        if not mem[_2591]:
                                            _3627 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3627] = address(_1728)
                                            mem[_3627 + 32] = sub_ffdf48c5Address
                                            mem[_3627 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3627
                                        else:
                                            require mem[96] >= 32
                                            _3673 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3781 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3781] = address(_1728)
                                            mem[_3781 + 32] = sub_ffdf48c5Address
                                            mem[_3781 + 64] = address(_3673)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3781
                                else:
                                    require mem[_2591] >= 32
                                    _3554 = mem[_2591 + 32]
                                    require mem[_2591 + 32] == mem[_2591 + 44 len 20]
                                    if not ext_call.success:
                                        _3714 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3714] = address(_1728)
                                        mem[_3714 + 32] = address(_3554)
                                        mem[_3714 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3714
                                    else:
                                        if not mem[_2591]:
                                            _3780 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3780] = address(_1728)
                                            mem[_3780 + 32] = address(_3554)
                                            mem[_3780 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3780
                                        else:
                                            require mem[96] >= 32
                                            _3828 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3930 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3930] = address(_1728)
                                            mem[_3930 + 32] = address(_3554)
                                            mem[_3930 + 64] = address(_3828)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3930
                        else:
                            _3458 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3458] = return_data.size
                            mem[_3458 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _3510 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3510] = address(_1728)
                                mem[_3510 + 32] = sub_ffdf48c5Address
                                mem[_3510 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3510
                            else:
                                if not mem[_2591]:
                                    if not ext_call.success:
                                        _3577 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3577] = address(_1728)
                                        mem[_3577 + 32] = sub_ffdf48c5Address
                                        mem[_3577 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3577
                                    else:
                                        if not mem[_2591]:
                                            _3628 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3628] = address(_1728)
                                            mem[_3628 + 32] = sub_ffdf48c5Address
                                            mem[_3628 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3628
                                        else:
                                            require return_data.size >= 32
                                            _3674 = mem[_3458 + 32]
                                            require mem[_3458 + 32] == mem[_3458 + 44 len 20]
                                            _3783 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3783] = address(_1728)
                                            mem[_3783 + 32] = sub_ffdf48c5Address
                                            mem[_3783 + 64] = address(_3674)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3783
                                else:
                                    require mem[_2591] >= 32
                                    _3556 = mem[_2591 + 32]
                                    require mem[_2591 + 32] == mem[_2591 + 44 len 20]
                                    if not ext_call.success:
                                        _3715 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3715] = address(_1728)
                                        mem[_3715 + 32] = address(_3556)
                                        mem[_3715 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3715
                                    else:
                                        if not mem[_2591]:
                                            _3782 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3782] = address(_1728)
                                            mem[_3782 + 32] = address(_3556)
                                            mem[_3782 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3782
                                        else:
                                            require return_data.size >= 32
                                            _3829 = mem[_3458 + 32]
                                            require mem[_3458 + 32] == mem[_3458 + 44 len 20]
                                            _3931 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3931] = address(_1728)
                                            mem[_3931 + 32] = address(_3556)
                                            mem[_3931 + 64] = address(_3829)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3931
            else:
                mem[_1731 + _1739 + 36] = 0
                staticcall address(_1728).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1731 + _1739 + -mem[64] + 32]
                if not return_data.size:
                    _2604 = mem[64]
                    _2605 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_2605 + 32] = mem[_2605 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                    _2621 = mem[_2605]
                    s = 0
                    while s < _2621:
                        mem[_2604 + s + 36] = mem[_2605 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2621) <= _2621:
                        staticcall address(_1728).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2604 + _2621 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _3495 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3495] = address(_1728)
                                mem[_3495 + 32] = sub_ffdf48c5Address
                                mem[_3495 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3495
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _3558 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3558] = address(_1728)
                                        mem[_3558 + 32] = sub_ffdf48c5Address
                                        mem[_3558 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3558
                                    else:
                                        if not mem[96]:
                                            _3611 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3611] = address(_1728)
                                            mem[_3611 + 32] = sub_ffdf48c5Address
                                            mem[_3611 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3611
                                        else:
                                            require mem[96] >= 32
                                            _3655 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3757 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3757] = address(_1728)
                                            mem[_3757 + 32] = sub_ffdf48c5Address
                                            mem[_3757 + 64] = address(_3655)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3757
                                else:
                                    require mem[96] >= 32
                                    _3534 = mem[128]
                                    require mem[128] == mem[140 len 20]
                                    if not ext_call.success:
                                        _3700 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3700] = address(_1728)
                                        mem[_3700 + 32] = address(_3534)
                                        mem[_3700 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3700
                                    else:
                                        if not mem[96]:
                                            _3756 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3756] = address(_1728)
                                            mem[_3756 + 32] = address(_3534)
                                            mem[_3756 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3756
                                        else:
                                            require mem[96] >= 32
                                            _3812 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3900 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3900] = address(_1728)
                                            mem[_3900 + 32] = address(_3534)
                                            mem[_3900 + 64] = address(_3812)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3900
                        else:
                            _3453 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3453] = return_data.size
                            mem[_3453 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _3496 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3496] = address(_1728)
                                mem[_3496 + 32] = sub_ffdf48c5Address
                                mem[_3496 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3496
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _3559 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3559] = address(_1728)
                                        mem[_3559 + 32] = sub_ffdf48c5Address
                                        mem[_3559 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3559
                                    else:
                                        if not mem[96]:
                                            _3612 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3612] = address(_1728)
                                            mem[_3612 + 32] = sub_ffdf48c5Address
                                            mem[_3612 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3612
                                        else:
                                            require return_data.size >= 32
                                            _3656 = mem[_3453 + 32]
                                            require mem[_3453 + 32] == mem[_3453 + 44 len 20]
                                            _3759 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3759] = address(_1728)
                                            mem[_3759 + 32] = sub_ffdf48c5Address
                                            mem[_3759 + 64] = address(_3656)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3759
                                else:
                                    require mem[96] >= 32
                                    _3536 = mem[128]
                                    require mem[128] == mem[140 len 20]
                                    if not ext_call.success:
                                        _3701 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3701] = address(_1728)
                                        mem[_3701 + 32] = address(_3536)
                                        mem[_3701 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3701
                                    else:
                                        if not mem[96]:
                                            _3758 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3758] = address(_1728)
                                            mem[_3758 + 32] = address(_3536)
                                            mem[_3758 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3758
                                        else:
                                            require return_data.size >= 32
                                            _3813 = mem[_3453 + 32]
                                            require mem[_3453 + 32] == mem[_3453 + 44 len 20]
                                            _3901 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3901] = address(_1728)
                                            mem[_3901 + 32] = address(_3536)
                                            mem[_3901 + 64] = address(_3813)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3901
                    else:
                        mem[_2604 + _2621 + 36] = 0
                        staticcall address(_1728).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2604 + _2621 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _3513 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3513] = address(_1728)
                                mem[_3513 + 32] = sub_ffdf48c5Address
                                mem[_3513 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3513
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _3580 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3580] = address(_1728)
                                        mem[_3580 + 32] = sub_ffdf48c5Address
                                        mem[_3580 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3580
                                    else:
                                        if not mem[96]:
                                            _3631 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3631] = address(_1728)
                                            mem[_3631 + 32] = sub_ffdf48c5Address
                                            mem[_3631 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3631
                                        else:
                                            require mem[96] >= 32
                                            _3675 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3789 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3789] = address(_1728)
                                            mem[_3789 + 32] = sub_ffdf48c5Address
                                            mem[_3789 + 64] = address(_3675)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3789
                                else:
                                    require mem[96] >= 32
                                    _3560 = mem[128]
                                    require mem[128] == mem[140 len 20]
                                    if not ext_call.success:
                                        _3718 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3718] = address(_1728)
                                        mem[_3718 + 32] = address(_3560)
                                        mem[_3718 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3718
                                    else:
                                        if not mem[96]:
                                            _3788 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3788] = address(_1728)
                                            mem[_3788 + 32] = address(_3560)
                                            mem[_3788 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3788
                                        else:
                                            require mem[96] >= 32
                                            _3830 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3934 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3934] = address(_1728)
                                            mem[_3934 + 32] = address(_3560)
                                            mem[_3934 + 64] = address(_3830)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3934
                        else:
                            _3459 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3459] = return_data.size
                            mem[_3459 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _3514 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3514] = address(_1728)
                                mem[_3514 + 32] = sub_ffdf48c5Address
                                mem[_3514 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3514
                            else:
                                if not mem[96]:
                                    if not ext_call.success:
                                        _3581 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3581] = address(_1728)
                                        mem[_3581 + 32] = sub_ffdf48c5Address
                                        mem[_3581 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3581
                                    else:
                                        if not mem[96]:
                                            _3632 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3632] = address(_1728)
                                            mem[_3632 + 32] = sub_ffdf48c5Address
                                            mem[_3632 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3632
                                        else:
                                            require return_data.size >= 32
                                            _3676 = mem[_3459 + 32]
                                            require mem[_3459 + 32] == mem[_3459 + 44 len 20]
                                            _3791 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3791] = address(_1728)
                                            mem[_3791 + 32] = sub_ffdf48c5Address
                                            mem[_3791 + 64] = address(_3676)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3791
                                else:
                                    require mem[96] >= 32
                                    _3562 = mem[128]
                                    require mem[128] == mem[140 len 20]
                                    if not ext_call.success:
                                        _3719 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3719] = address(_1728)
                                        mem[_3719 + 32] = address(_3562)
                                        mem[_3719 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3719
                                    else:
                                        if not mem[96]:
                                            _3790 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3790] = address(_1728)
                                            mem[_3790 + 32] = address(_3562)
                                            mem[_3790 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3790
                                        else:
                                            require return_data.size >= 32
                                            _3831 = mem[_3459 + 32]
                                            require mem[_3459 + 32] == mem[_3459 + 44 len 20]
                                            _3935 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3935] = address(_1728)
                                            mem[_3935 + 32] = address(_3562)
                                            mem[_3935 + 64] = address(_3831)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3935
                else:
                    _2603 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2603] = return_data.size
                    mem[_2603 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _2608 = mem[64]
                    _2609 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_2609 + 32] = mem[_2609 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                    _2622 = mem[_2609]
                    s = 0
                    while s < _2622:
                        mem[_2608 + s + 36] = mem[_2609 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2622) <= _2622:
                        staticcall address(_1728).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2608 + _2622 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _3499 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3499] = address(_1728)
                                mem[_3499 + 32] = sub_ffdf48c5Address
                                mem[_3499 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3499
                            else:
                                if not mem[_2603]:
                                    if not ext_call.success:
                                        _3564 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3564] = address(_1728)
                                        mem[_3564 + 32] = sub_ffdf48c5Address
                                        mem[_3564 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3564
                                    else:
                                        if not mem[_2603]:
                                            _3615 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3615] = address(_1728)
                                            mem[_3615 + 32] = sub_ffdf48c5Address
                                            mem[_3615 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3615
                                        else:
                                            require mem[96] >= 32
                                            _3659 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3763 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3763] = address(_1728)
                                            mem[_3763 + 32] = sub_ffdf48c5Address
                                            mem[_3763 + 64] = address(_3659)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3763
                                else:
                                    require mem[_2603] >= 32
                                    _3540 = mem[_2603 + 32]
                                    require mem[_2603 + 32] == mem[_2603 + 44 len 20]
                                    if not ext_call.success:
                                        _3704 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3704] = address(_1728)
                                        mem[_3704 + 32] = address(_3540)
                                        mem[_3704 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3704
                                    else:
                                        if not mem[_2603]:
                                            _3762 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3762] = address(_1728)
                                            mem[_3762 + 32] = address(_3540)
                                            mem[_3762 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3762
                                        else:
                                            require mem[96] >= 32
                                            _3818 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3902 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3902] = address(_1728)
                                            mem[_3902 + 32] = address(_3540)
                                            mem[_3902 + 64] = address(_3818)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3902
                        else:
                            _3455 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3455] = return_data.size
                            mem[_3455 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _3500 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3500] = address(_1728)
                                mem[_3500 + 32] = sub_ffdf48c5Address
                                mem[_3500 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3500
                            else:
                                if not mem[_2603]:
                                    if not ext_call.success:
                                        _3565 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3565] = address(_1728)
                                        mem[_3565 + 32] = sub_ffdf48c5Address
                                        mem[_3565 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3565
                                    else:
                                        if not mem[_2603]:
                                            _3616 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3616] = address(_1728)
                                            mem[_3616 + 32] = sub_ffdf48c5Address
                                            mem[_3616 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3616
                                        else:
                                            require return_data.size >= 32
                                            _3660 = mem[_3455 + 32]
                                            require mem[_3455 + 32] == mem[_3455 + 44 len 20]
                                            _3765 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3765] = address(_1728)
                                            mem[_3765 + 32] = sub_ffdf48c5Address
                                            mem[_3765 + 64] = address(_3660)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3765
                                else:
                                    require mem[_2603] >= 32
                                    _3542 = mem[_2603 + 32]
                                    require mem[_2603 + 32] == mem[_2603 + 44 len 20]
                                    if not ext_call.success:
                                        _3705 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3705] = address(_1728)
                                        mem[_3705 + 32] = address(_3542)
                                        mem[_3705 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3705
                                    else:
                                        if not mem[_2603]:
                                            _3764 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3764] = address(_1728)
                                            mem[_3764 + 32] = address(_3542)
                                            mem[_3764 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3764
                                        else:
                                            require return_data.size >= 32
                                            _3819 = mem[_3455 + 32]
                                            require mem[_3455 + 32] == mem[_3455 + 44 len 20]
                                            _3903 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3903] = address(_1728)
                                            mem[_3903 + 32] = address(_3542)
                                            mem[_3903 + 64] = address(_3819)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3903
                    else:
                        mem[_2608 + _2622 + 36] = 0
                        staticcall address(_1728).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _2608 + _2622 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                _3517 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3517] = address(_1728)
                                mem[_3517 + 32] = sub_ffdf48c5Address
                                mem[_3517 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3517
                            else:
                                if not mem[_2603]:
                                    if not ext_call.success:
                                        _3584 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3584] = address(_1728)
                                        mem[_3584 + 32] = sub_ffdf48c5Address
                                        mem[_3584 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3584
                                    else:
                                        if not mem[_2603]:
                                            _3635 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3635] = address(_1728)
                                            mem[_3635 + 32] = sub_ffdf48c5Address
                                            mem[_3635 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3635
                                        else:
                                            require mem[96] >= 32
                                            _3677 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3797 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3797] = address(_1728)
                                            mem[_3797 + 32] = sub_ffdf48c5Address
                                            mem[_3797 + 64] = address(_3677)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3797
                                else:
                                    require mem[_2603] >= 32
                                    _3566 = mem[_2603 + 32]
                                    require mem[_2603 + 32] == mem[_2603 + 44 len 20]
                                    if not ext_call.success:
                                        _3722 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3722] = address(_1728)
                                        mem[_3722 + 32] = address(_3566)
                                        mem[_3722 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3722
                                    else:
                                        if not mem[_2603]:
                                            _3796 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3796] = address(_1728)
                                            mem[_3796 + 32] = address(_3566)
                                            mem[_3796 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3796
                                        else:
                                            require mem[96] >= 32
                                            _3832 = mem[128]
                                            require mem[128] == mem[140 len 20]
                                            _3938 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3938] = address(_1728)
                                            mem[_3938 + 32] = address(_3566)
                                            mem[_3938 + 64] = address(_3832)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3938
                        else:
                            _3460 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_3460] = return_data.size
                            mem[_3460 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                _3518 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_3518] = address(_1728)
                                mem[_3518 + 32] = sub_ffdf48c5Address
                                mem[_3518 + 64] = sub_ffdf48c5Address
                                if idx >= mem[floor32(('cd', 4).length) + 97]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3518
                            else:
                                if not mem[_2603]:
                                    if not ext_call.success:
                                        _3585 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3585] = address(_1728)
                                        mem[_3585 + 32] = sub_ffdf48c5Address
                                        mem[_3585 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3585
                                    else:
                                        if not mem[_2603]:
                                            _3636 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3636] = address(_1728)
                                            mem[_3636 + 32] = sub_ffdf48c5Address
                                            mem[_3636 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3636
                                        else:
                                            require return_data.size >= 32
                                            _3678 = mem[_3460 + 32]
                                            require mem[_3460 + 32] == mem[_3460 + 44 len 20]
                                            _3799 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3799] = address(_1728)
                                            mem[_3799 + 32] = sub_ffdf48c5Address
                                            mem[_3799 + 64] = address(_3678)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3799
                                else:
                                    require mem[_2603] >= 32
                                    _3568 = mem[_2603 + 32]
                                    require mem[_2603 + 32] == mem[_2603 + 44 len 20]
                                    if not ext_call.success:
                                        _3723 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3723] = address(_1728)
                                        mem[_3723 + 32] = address(_3568)
                                        mem[_3723 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3723
                                    else:
                                        if not mem[_2603]:
                                            _3798 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3798] = address(_1728)
                                            mem[_3798 + 32] = address(_3568)
                                            mem[_3798 + 64] = sub_ffdf48c5Address
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3798
                                        else:
                                            require return_data.size >= 32
                                            _3833 = mem[_3460 + 32]
                                            require mem[_3460 + 32] == mem[_3460 + 44 len 20]
                                            _3939 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_3939] = address(_1728)
                                            mem[_3939 + 32] = address(_3568)
                                            mem[_3939 + 64] = address(_3833)
                                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                                revert with 'NH{q', 50
                                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _3939
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1727 = mem[64]
        mem[mem[64]] = 32
        _1730 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _1730:
            _2584 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2584 + 44 len 20]
            mem[t + 64] = mem[_2584 + 76 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _1727 + (96 * _1730) + -mem[64] + 64
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[var33001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var33001
    idx = var33002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _3431 = mem[96]
    idx = 0
    while idx < _3431:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _3438 = mem[(32 * idx) + 128]
        _3439 = mem[64]
        mem[64] = mem[64] + 96
        mem[_3439] = 0
        mem[_3439 + 32] = 0
        mem[_3439 + 64] = 0
        _3445 = mem[64]
        _3446 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_3446 + 32] = mem[_3446 + 36 len 28] or 0xdfe168100000000000000000000000000000000000000000000000000000000
        _3461 = mem[_3446]
        s = 0
        while s < _3461:
            mem[_3445 + s + 36] = mem[_3446 + s + 32]
            _3431 = mem[96]
            s = s + 32
            continue 
        if ceil32(_3461) <= _3461:
            staticcall address(_3438).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _3445 + _3461 + -mem[64] + 32]
            if not return_data.size:
                _4255 = mem[64]
                _4256 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_4256 + 32] = mem[_4256 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                _4273 = mem[_4256]
                s = 0
                while s < _4273:
                    mem[_4255 + s + 36] = mem[_4256 + s + 32]
                    _3431 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_4273) <= _4273:
                    staticcall address(_3438).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4255 + _4273 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _4710 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4710] = address(_3438)
                            mem[_4710 + 32] = sub_ffdf48c5Address
                            mem[_4710 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4710
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _4766 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4766] = address(_3438)
                                    mem[_4766 + 32] = sub_ffdf48c5Address
                                    mem[_4766 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4766
                                else:
                                    if not mem[96]:
                                        _4822 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4822] = address(_3438)
                                        mem[_4822 + 32] = sub_ffdf48c5Address
                                        mem[_4822 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4822
                                    else:
                                        require mem[96] >= 32
                                        _4854 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _4935 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4935] = address(_3438)
                                        mem[_4935 + 32] = sub_ffdf48c5Address
                                        mem[_4935 + 64] = address(_4854)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4935
                            else:
                                require mem[96] >= 32
                                _4742 = mem[128]
                                require mem[128] == mem[140 len 20]
                                if not ext_call.success:
                                    _4886 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4886] = address(_3438)
                                    mem[_4886 + 32] = address(_4742)
                                    mem[_4886 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4886
                                else:
                                    if not mem[96]:
                                        _4934 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4934] = address(_3438)
                                        mem[_4934 + 32] = address(_4742)
                                        mem[_4934 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4934
                                    else:
                                        require mem[96] >= 32
                                        _4990 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _5022 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5022] = address(_3438)
                                        mem[_5022 + 32] = address(_4742)
                                        mem[_5022 + 64] = address(_4990)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5022
                    else:
                        _4674 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4674] = return_data.size
                        mem[_4674 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4711 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4711] = address(_3438)
                            mem[_4711 + 32] = sub_ffdf48c5Address
                            mem[_4711 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4711
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _4767 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4767] = address(_3438)
                                    mem[_4767 + 32] = sub_ffdf48c5Address
                                    mem[_4767 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4767
                                else:
                                    if not mem[96]:
                                        _4823 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4823] = address(_3438)
                                        mem[_4823 + 32] = sub_ffdf48c5Address
                                        mem[_4823 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4823
                                    else:
                                        require return_data.size >= 32
                                        _4855 = mem[_4674 + 32]
                                        require mem[_4674 + 32] == mem[_4674 + 44 len 20]
                                        _4937 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4937] = address(_3438)
                                        mem[_4937 + 32] = sub_ffdf48c5Address
                                        mem[_4937 + 64] = address(_4855)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4937
                            else:
                                require mem[96] >= 32
                                _4744 = mem[128]
                                require mem[128] == mem[140 len 20]
                                if not ext_call.success:
                                    _4887 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4887] = address(_3438)
                                    mem[_4887 + 32] = address(_4744)
                                    mem[_4887 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4887
                                else:
                                    if not mem[96]:
                                        _4936 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4936] = address(_3438)
                                        mem[_4936 + 32] = address(_4744)
                                        mem[_4936 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4936
                                    else:
                                        require return_data.size >= 32
                                        _4991 = mem[_4674 + 32]
                                        require mem[_4674 + 32] == mem[_4674 + 44 len 20]
                                        _5023 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5023] = address(_3438)
                                        mem[_5023 + 32] = address(_4744)
                                        mem[_5023 + 64] = address(_4991)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5023
                else:
                    mem[_4255 + _4273 + 36] = 0
                    staticcall address(_3438).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4255 + _4273 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _4728 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4728] = address(_3438)
                            mem[_4728 + 32] = sub_ffdf48c5Address
                            mem[_4728 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4728
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _4792 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4792] = address(_3438)
                                    mem[_4792 + 32] = sub_ffdf48c5Address
                                    mem[_4792 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4792
                                else:
                                    if not mem[96]:
                                        _4840 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4840] = address(_3438)
                                        mem[_4840 + 32] = sub_ffdf48c5Address
                                        mem[_4840 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4840
                                    else:
                                        require mem[96] >= 32
                                        _4870 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _4963 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4963] = address(_3438)
                                        mem[_4963 + 32] = sub_ffdf48c5Address
                                        mem[_4963 + 64] = address(_4870)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4963
                            else:
                                require mem[96] >= 32
                                _4768 = mem[128]
                                require mem[128] == mem[140 len 20]
                                if not ext_call.success:
                                    _4904 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4904] = address(_3438)
                                    mem[_4904 + 32] = address(_4768)
                                    mem[_4904 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4904
                                else:
                                    if not mem[96]:
                                        _4962 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4962] = address(_3438)
                                        mem[_4962 + 32] = address(_4768)
                                        mem[_4962 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4962
                                    else:
                                        require mem[96] >= 32
                                        _5014 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _5032 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5032] = address(_3438)
                                        mem[_5032 + 32] = address(_4768)
                                        mem[_5032 + 64] = address(_5014)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5032
                    else:
                        _4682 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4682] = return_data.size
                        mem[_4682 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4729 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4729] = address(_3438)
                            mem[_4729 + 32] = sub_ffdf48c5Address
                            mem[_4729 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4729
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _4793 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4793] = address(_3438)
                                    mem[_4793 + 32] = sub_ffdf48c5Address
                                    mem[_4793 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4793
                                else:
                                    if not mem[96]:
                                        _4841 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4841] = address(_3438)
                                        mem[_4841 + 32] = sub_ffdf48c5Address
                                        mem[_4841 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4841
                                    else:
                                        require return_data.size >= 32
                                        _4871 = mem[_4682 + 32]
                                        require mem[_4682 + 32] == mem[_4682 + 44 len 20]
                                        _4965 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4965] = address(_3438)
                                        mem[_4965 + 32] = sub_ffdf48c5Address
                                        mem[_4965 + 64] = address(_4871)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4965
                            else:
                                require mem[96] >= 32
                                _4770 = mem[128]
                                require mem[128] == mem[140 len 20]
                                if not ext_call.success:
                                    _4905 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4905] = address(_3438)
                                    mem[_4905 + 32] = address(_4770)
                                    mem[_4905 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4905
                                else:
                                    if not mem[96]:
                                        _4964 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4964] = address(_3438)
                                        mem[_4964 + 32] = address(_4770)
                                        mem[_4964 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4964
                                    else:
                                        require return_data.size >= 32
                                        _5015 = mem[_4682 + 32]
                                        require mem[_4682 + 32] == mem[_4682 + 44 len 20]
                                        _5033 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5033] = address(_3438)
                                        mem[_5033 + 32] = address(_4770)
                                        mem[_5033 + 64] = address(_5015)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5033
            else:
                _4253 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_4253] = return_data.size
                mem[_4253 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                _4259 = mem[64]
                _4260 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_4260 + 32] = mem[_4260 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                _4274 = mem[_4260]
                s = 0
                while s < _4274:
                    mem[_4259 + s + 36] = mem[_4260 + s + 32]
                    _3431 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_4274) <= _4274:
                    staticcall address(_3438).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4259 + _4274 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _4714 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4714] = address(_3438)
                            mem[_4714 + 32] = sub_ffdf48c5Address
                            mem[_4714 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4714
                        else:
                            if not mem[_4253]:
                                if not ext_call.success:
                                    _4772 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4772] = address(_3438)
                                    mem[_4772 + 32] = sub_ffdf48c5Address
                                    mem[_4772 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4772
                                else:
                                    if not mem[_4253]:
                                        _4826 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4826] = address(_3438)
                                        mem[_4826 + 32] = sub_ffdf48c5Address
                                        mem[_4826 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4826
                                    else:
                                        require mem[96] >= 32
                                        _4858 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _4941 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4941] = address(_3438)
                                        mem[_4941 + 32] = sub_ffdf48c5Address
                                        mem[_4941 + 64] = address(_4858)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4941
                            else:
                                require mem[_4253] >= 32
                                _4748 = mem[_4253 + 32]
                                require mem[_4253 + 32] == mem[_4253 + 44 len 20]
                                if not ext_call.success:
                                    _4890 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4890] = address(_3438)
                                    mem[_4890 + 32] = address(_4748)
                                    mem[_4890 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4890
                                else:
                                    if not mem[_4253]:
                                        _4940 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4940] = address(_3438)
                                        mem[_4940 + 32] = address(_4748)
                                        mem[_4940 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4940
                                    else:
                                        require mem[96] >= 32
                                        _4996 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _5024 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5024] = address(_3438)
                                        mem[_5024 + 32] = address(_4748)
                                        mem[_5024 + 64] = address(_4996)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5024
                    else:
                        _4676 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4676] = return_data.size
                        mem[_4676 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4715 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4715] = address(_3438)
                            mem[_4715 + 32] = sub_ffdf48c5Address
                            mem[_4715 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4715
                        else:
                            if not mem[_4253]:
                                if not ext_call.success:
                                    _4773 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4773] = address(_3438)
                                    mem[_4773 + 32] = sub_ffdf48c5Address
                                    mem[_4773 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4773
                                else:
                                    if not mem[_4253]:
                                        _4827 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4827] = address(_3438)
                                        mem[_4827 + 32] = sub_ffdf48c5Address
                                        mem[_4827 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4827
                                    else:
                                        require return_data.size >= 32
                                        _4859 = mem[_4676 + 32]
                                        require mem[_4676 + 32] == mem[_4676 + 44 len 20]
                                        _4943 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4943] = address(_3438)
                                        mem[_4943 + 32] = sub_ffdf48c5Address
                                        mem[_4943 + 64] = address(_4859)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4943
                            else:
                                require mem[_4253] >= 32
                                _4750 = mem[_4253 + 32]
                                require mem[_4253 + 32] == mem[_4253 + 44 len 20]
                                if not ext_call.success:
                                    _4891 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4891] = address(_3438)
                                    mem[_4891 + 32] = address(_4750)
                                    mem[_4891 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4891
                                else:
                                    if not mem[_4253]:
                                        _4942 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4942] = address(_3438)
                                        mem[_4942 + 32] = address(_4750)
                                        mem[_4942 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4942
                                    else:
                                        require return_data.size >= 32
                                        _4997 = mem[_4676 + 32]
                                        require mem[_4676 + 32] == mem[_4676 + 44 len 20]
                                        _5025 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5025] = address(_3438)
                                        mem[_5025 + 32] = address(_4750)
                                        mem[_5025 + 64] = address(_4997)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5025
                else:
                    mem[_4259 + _4274 + 36] = 0
                    staticcall address(_3438).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4259 + _4274 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _4732 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4732] = address(_3438)
                            mem[_4732 + 32] = sub_ffdf48c5Address
                            mem[_4732 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4732
                        else:
                            if not mem[_4253]:
                                if not ext_call.success:
                                    _4796 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4796] = address(_3438)
                                    mem[_4796 + 32] = sub_ffdf48c5Address
                                    mem[_4796 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4796
                                else:
                                    if not mem[_4253]:
                                        _4844 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4844] = address(_3438)
                                        mem[_4844 + 32] = sub_ffdf48c5Address
                                        mem[_4844 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4844
                                    else:
                                        require mem[96] >= 32
                                        _4872 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _4971 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4971] = address(_3438)
                                        mem[_4971 + 32] = sub_ffdf48c5Address
                                        mem[_4971 + 64] = address(_4872)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4971
                            else:
                                require mem[_4253] >= 32
                                _4774 = mem[_4253 + 32]
                                require mem[_4253 + 32] == mem[_4253 + 44 len 20]
                                if not ext_call.success:
                                    _4908 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4908] = address(_3438)
                                    mem[_4908 + 32] = address(_4774)
                                    mem[_4908 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4908
                                else:
                                    if not mem[_4253]:
                                        _4970 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4970] = address(_3438)
                                        mem[_4970 + 32] = address(_4774)
                                        mem[_4970 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4970
                                    else:
                                        require mem[96] >= 32
                                        _5016 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _5036 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5036] = address(_3438)
                                        mem[_5036 + 32] = address(_4774)
                                        mem[_5036 + 64] = address(_5016)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5036
                    else:
                        _4683 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4683] = return_data.size
                        mem[_4683 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4733 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4733] = address(_3438)
                            mem[_4733 + 32] = sub_ffdf48c5Address
                            mem[_4733 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4733
                        else:
                            if not mem[_4253]:
                                if not ext_call.success:
                                    _4797 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4797] = address(_3438)
                                    mem[_4797 + 32] = sub_ffdf48c5Address
                                    mem[_4797 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4797
                                else:
                                    if not mem[_4253]:
                                        _4845 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4845] = address(_3438)
                                        mem[_4845 + 32] = sub_ffdf48c5Address
                                        mem[_4845 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4845
                                    else:
                                        require return_data.size >= 32
                                        _4873 = mem[_4683 + 32]
                                        require mem[_4683 + 32] == mem[_4683 + 44 len 20]
                                        _4973 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4973] = address(_3438)
                                        mem[_4973 + 32] = sub_ffdf48c5Address
                                        mem[_4973 + 64] = address(_4873)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4973
                            else:
                                require mem[_4253] >= 32
                                _4776 = mem[_4253 + 32]
                                require mem[_4253 + 32] == mem[_4253 + 44 len 20]
                                if not ext_call.success:
                                    _4909 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4909] = address(_3438)
                                    mem[_4909 + 32] = address(_4776)
                                    mem[_4909 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4909
                                else:
                                    if not mem[_4253]:
                                        _4972 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4972] = address(_3438)
                                        mem[_4972 + 32] = address(_4776)
                                        mem[_4972 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4972
                                    else:
                                        require return_data.size >= 32
                                        _5017 = mem[_4683 + 32]
                                        require mem[_4683 + 32] == mem[_4683 + 44 len 20]
                                        _5037 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5037] = address(_3438)
                                        mem[_5037 + 32] = address(_4776)
                                        mem[_5037 + 64] = address(_5017)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5037
        else:
            mem[_3445 + _3461 + 36] = 0
            staticcall address(_3438).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _3445 + _3461 + -mem[64] + 32]
            if not return_data.size:
                _4264 = mem[64]
                _4265 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_4265 + 32] = mem[_4265 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                _4275 = mem[_4265]
                s = 0
                while s < _4275:
                    mem[_4264 + s + 36] = mem[_4265 + s + 32]
                    _3431 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_4275) <= _4275:
                    staticcall address(_3438).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4264 + _4275 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _4718 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4718] = address(_3438)
                            mem[_4718 + 32] = sub_ffdf48c5Address
                            mem[_4718 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4718
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _4778 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4778] = address(_3438)
                                    mem[_4778 + 32] = sub_ffdf48c5Address
                                    mem[_4778 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4778
                                else:
                                    if not mem[96]:
                                        _4830 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4830] = address(_3438)
                                        mem[_4830 + 32] = sub_ffdf48c5Address
                                        mem[_4830 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4830
                                    else:
                                        require mem[96] >= 32
                                        _4862 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _4947 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4947] = address(_3438)
                                        mem[_4947 + 32] = sub_ffdf48c5Address
                                        mem[_4947 + 64] = address(_4862)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4947
                            else:
                                require mem[96] >= 32
                                _4754 = mem[128]
                                require mem[128] == mem[140 len 20]
                                if not ext_call.success:
                                    _4894 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4894] = address(_3438)
                                    mem[_4894 + 32] = address(_4754)
                                    mem[_4894 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4894
                                else:
                                    if not mem[96]:
                                        _4946 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4946] = address(_3438)
                                        mem[_4946 + 32] = address(_4754)
                                        mem[_4946 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4946
                                    else:
                                        require mem[96] >= 32
                                        _5002 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _5026 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5026] = address(_3438)
                                        mem[_5026 + 32] = address(_4754)
                                        mem[_5026 + 64] = address(_5002)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5026
                    else:
                        _4678 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4678] = return_data.size
                        mem[_4678 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4719 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4719] = address(_3438)
                            mem[_4719 + 32] = sub_ffdf48c5Address
                            mem[_4719 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4719
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _4779 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4779] = address(_3438)
                                    mem[_4779 + 32] = sub_ffdf48c5Address
                                    mem[_4779 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4779
                                else:
                                    if not mem[96]:
                                        _4831 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4831] = address(_3438)
                                        mem[_4831 + 32] = sub_ffdf48c5Address
                                        mem[_4831 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4831
                                    else:
                                        require return_data.size >= 32
                                        _4863 = mem[_4678 + 32]
                                        require mem[_4678 + 32] == mem[_4678 + 44 len 20]
                                        _4949 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4949] = address(_3438)
                                        mem[_4949 + 32] = sub_ffdf48c5Address
                                        mem[_4949 + 64] = address(_4863)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4949
                            else:
                                require mem[96] >= 32
                                _4756 = mem[128]
                                require mem[128] == mem[140 len 20]
                                if not ext_call.success:
                                    _4895 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4895] = address(_3438)
                                    mem[_4895 + 32] = address(_4756)
                                    mem[_4895 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4895
                                else:
                                    if not mem[96]:
                                        _4948 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4948] = address(_3438)
                                        mem[_4948 + 32] = address(_4756)
                                        mem[_4948 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4948
                                    else:
                                        require return_data.size >= 32
                                        _5003 = mem[_4678 + 32]
                                        require mem[_4678 + 32] == mem[_4678 + 44 len 20]
                                        _5027 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5027] = address(_3438)
                                        mem[_5027 + 32] = address(_4756)
                                        mem[_5027 + 64] = address(_5003)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5027
                else:
                    mem[_4264 + _4275 + 36] = 0
                    staticcall address(_3438).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4264 + _4275 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _4736 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4736] = address(_3438)
                            mem[_4736 + 32] = sub_ffdf48c5Address
                            mem[_4736 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4736
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _4800 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4800] = address(_3438)
                                    mem[_4800 + 32] = sub_ffdf48c5Address
                                    mem[_4800 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4800
                                else:
                                    if not mem[96]:
                                        _4848 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4848] = address(_3438)
                                        mem[_4848 + 32] = sub_ffdf48c5Address
                                        mem[_4848 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4848
                                    else:
                                        require mem[96] >= 32
                                        _4874 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _4979 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4979] = address(_3438)
                                        mem[_4979 + 32] = sub_ffdf48c5Address
                                        mem[_4979 + 64] = address(_4874)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4979
                            else:
                                require mem[96] >= 32
                                _4780 = mem[128]
                                require mem[128] == mem[140 len 20]
                                if not ext_call.success:
                                    _4912 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4912] = address(_3438)
                                    mem[_4912 + 32] = address(_4780)
                                    mem[_4912 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4912
                                else:
                                    if not mem[96]:
                                        _4978 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4978] = address(_3438)
                                        mem[_4978 + 32] = address(_4780)
                                        mem[_4978 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4978
                                    else:
                                        require mem[96] >= 32
                                        _5018 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _5040 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5040] = address(_3438)
                                        mem[_5040 + 32] = address(_4780)
                                        mem[_5040 + 64] = address(_5018)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5040
                    else:
                        _4684 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4684] = return_data.size
                        mem[_4684 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4737 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4737] = address(_3438)
                            mem[_4737 + 32] = sub_ffdf48c5Address
                            mem[_4737 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4737
                        else:
                            if not mem[96]:
                                if not ext_call.success:
                                    _4801 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4801] = address(_3438)
                                    mem[_4801 + 32] = sub_ffdf48c5Address
                                    mem[_4801 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4801
                                else:
                                    if not mem[96]:
                                        _4849 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4849] = address(_3438)
                                        mem[_4849 + 32] = sub_ffdf48c5Address
                                        mem[_4849 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4849
                                    else:
                                        require return_data.size >= 32
                                        _4875 = mem[_4684 + 32]
                                        require mem[_4684 + 32] == mem[_4684 + 44 len 20]
                                        _4981 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4981] = address(_3438)
                                        mem[_4981 + 32] = sub_ffdf48c5Address
                                        mem[_4981 + 64] = address(_4875)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4981
                            else:
                                require mem[96] >= 32
                                _4782 = mem[128]
                                require mem[128] == mem[140 len 20]
                                if not ext_call.success:
                                    _4913 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4913] = address(_3438)
                                    mem[_4913 + 32] = address(_4782)
                                    mem[_4913 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4913
                                else:
                                    if not mem[96]:
                                        _4980 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4980] = address(_3438)
                                        mem[_4980 + 32] = address(_4782)
                                        mem[_4980 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4980
                                    else:
                                        require return_data.size >= 32
                                        _5019 = mem[_4684 + 32]
                                        require mem[_4684 + 32] == mem[_4684 + 44 len 20]
                                        _5041 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5041] = address(_3438)
                                        mem[_5041 + 32] = address(_4782)
                                        mem[_5041 + 64] = address(_5019)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5041
            else:
                _4263 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_4263] = return_data.size
                mem[_4263 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                _4268 = mem[64]
                _4269 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_4269 + 32] = mem[_4269 + 36 len 28] or 0xd21220a700000000000000000000000000000000000000000000000000000000
                _4276 = mem[_4269]
                s = 0
                while s < _4276:
                    mem[_4268 + s + 36] = mem[_4269 + s + 32]
                    _3431 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_4276) <= _4276:
                    staticcall address(_3438).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4268 + _4276 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _4722 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4722] = address(_3438)
                            mem[_4722 + 32] = sub_ffdf48c5Address
                            mem[_4722 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4722
                        else:
                            if not mem[_4263]:
                                if not ext_call.success:
                                    _4784 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4784] = address(_3438)
                                    mem[_4784 + 32] = sub_ffdf48c5Address
                                    mem[_4784 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4784
                                else:
                                    if not mem[_4263]:
                                        _4834 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4834] = address(_3438)
                                        mem[_4834 + 32] = sub_ffdf48c5Address
                                        mem[_4834 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4834
                                    else:
                                        require mem[96] >= 32
                                        _4866 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _4953 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4953] = address(_3438)
                                        mem[_4953 + 32] = sub_ffdf48c5Address
                                        mem[_4953 + 64] = address(_4866)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4953
                            else:
                                require mem[_4263] >= 32
                                _4760 = mem[_4263 + 32]
                                require mem[_4263 + 32] == mem[_4263 + 44 len 20]
                                if not ext_call.success:
                                    _4898 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4898] = address(_3438)
                                    mem[_4898 + 32] = address(_4760)
                                    mem[_4898 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4898
                                else:
                                    if not mem[_4263]:
                                        _4952 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4952] = address(_3438)
                                        mem[_4952 + 32] = address(_4760)
                                        mem[_4952 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4952
                                    else:
                                        require mem[96] >= 32
                                        _5008 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _5028 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5028] = address(_3438)
                                        mem[_5028 + 32] = address(_4760)
                                        mem[_5028 + 64] = address(_5008)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5028
                    else:
                        _4680 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4680] = return_data.size
                        mem[_4680 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4723 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4723] = address(_3438)
                            mem[_4723 + 32] = sub_ffdf48c5Address
                            mem[_4723 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4723
                        else:
                            if not mem[_4263]:
                                if not ext_call.success:
                                    _4785 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4785] = address(_3438)
                                    mem[_4785 + 32] = sub_ffdf48c5Address
                                    mem[_4785 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4785
                                else:
                                    if not mem[_4263]:
                                        _4835 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4835] = address(_3438)
                                        mem[_4835 + 32] = sub_ffdf48c5Address
                                        mem[_4835 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4835
                                    else:
                                        require return_data.size >= 32
                                        _4867 = mem[_4680 + 32]
                                        require mem[_4680 + 32] == mem[_4680 + 44 len 20]
                                        _4955 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4955] = address(_3438)
                                        mem[_4955 + 32] = sub_ffdf48c5Address
                                        mem[_4955 + 64] = address(_4867)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4955
                            else:
                                require mem[_4263] >= 32
                                _4762 = mem[_4263 + 32]
                                require mem[_4263 + 32] == mem[_4263 + 44 len 20]
                                if not ext_call.success:
                                    _4899 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4899] = address(_3438)
                                    mem[_4899 + 32] = address(_4762)
                                    mem[_4899 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4899
                                else:
                                    if not mem[_4263]:
                                        _4954 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4954] = address(_3438)
                                        mem[_4954 + 32] = address(_4762)
                                        mem[_4954 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4954
                                    else:
                                        require return_data.size >= 32
                                        _5009 = mem[_4680 + 32]
                                        require mem[_4680 + 32] == mem[_4680 + 44 len 20]
                                        _5029 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5029] = address(_3438)
                                        mem[_5029 + 32] = address(_4762)
                                        mem[_5029 + 64] = address(_5009)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5029
                else:
                    mem[_4268 + _4276 + 36] = 0
                    staticcall address(_3438).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _4268 + _4276 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            _4740 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4740] = address(_3438)
                            mem[_4740 + 32] = sub_ffdf48c5Address
                            mem[_4740 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4740
                        else:
                            if not mem[_4263]:
                                if not ext_call.success:
                                    _4804 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4804] = address(_3438)
                                    mem[_4804 + 32] = sub_ffdf48c5Address
                                    mem[_4804 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4804
                                else:
                                    if not mem[_4263]:
                                        _4852 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4852] = address(_3438)
                                        mem[_4852 + 32] = sub_ffdf48c5Address
                                        mem[_4852 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4852
                                    else:
                                        require mem[96] >= 32
                                        _4876 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _4987 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4987] = address(_3438)
                                        mem[_4987 + 32] = sub_ffdf48c5Address
                                        mem[_4987 + 64] = address(_4876)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4987
                            else:
                                require mem[_4263] >= 32
                                _4786 = mem[_4263 + 32]
                                require mem[_4263 + 32] == mem[_4263 + 44 len 20]
                                if not ext_call.success:
                                    _4916 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4916] = address(_3438)
                                    mem[_4916 + 32] = address(_4786)
                                    mem[_4916 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4916
                                else:
                                    if not mem[_4263]:
                                        _4986 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4986] = address(_3438)
                                        mem[_4986 + 32] = address(_4786)
                                        mem[_4986 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4986
                                    else:
                                        require mem[96] >= 32
                                        _5020 = mem[128]
                                        require mem[128] == mem[140 len 20]
                                        _5044 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5044] = address(_3438)
                                        mem[_5044 + 32] = address(_4786)
                                        mem[_5044 + 64] = address(_5020)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5044
                    else:
                        _4685 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4685] = return_data.size
                        mem[_4685 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            _4741 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_4741] = address(_3438)
                            mem[_4741 + 32] = sub_ffdf48c5Address
                            mem[_4741 + 64] = sub_ffdf48c5Address
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4741
                        else:
                            if not mem[_4263]:
                                if not ext_call.success:
                                    _4805 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4805] = address(_3438)
                                    mem[_4805 + 32] = sub_ffdf48c5Address
                                    mem[_4805 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4805
                                else:
                                    if not mem[_4263]:
                                        _4853 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4853] = address(_3438)
                                        mem[_4853 + 32] = sub_ffdf48c5Address
                                        mem[_4853 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4853
                                    else:
                                        require return_data.size >= 32
                                        _4877 = mem[_4685 + 32]
                                        require mem[_4685 + 32] == mem[_4685 + 44 len 20]
                                        _4989 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4989] = address(_3438)
                                        mem[_4989 + 32] = sub_ffdf48c5Address
                                        mem[_4989 + 64] = address(_4877)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4989
                            else:
                                require mem[_4263] >= 32
                                _4788 = mem[_4263 + 32]
                                require mem[_4263 + 32] == mem[_4263 + 44 len 20]
                                if not ext_call.success:
                                    _4917 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_4917] = address(_3438)
                                    mem[_4917 + 32] = address(_4788)
                                    mem[_4917 + 64] = sub_ffdf48c5Address
                                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                                        revert with 'NH{q', 50
                                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4917
                                else:
                                    if not mem[_4263]:
                                        _4988 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_4988] = address(_3438)
                                        mem[_4988 + 32] = address(_4788)
                                        mem[_4988 + 64] = sub_ffdf48c5Address
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _4988
                                    else:
                                        require return_data.size >= 32
                                        _5021 = mem[_4685 + 32]
                                        require mem[_4685 + 32] == mem[_4685 + 44 len 20]
                                        _5045 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_5045] = address(_3438)
                                        mem[_5045 + 32] = address(_4788)
                                        mem[_5045 + 64] = address(_5021)
                                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                                            revert with 'NH{q', 50
                                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _5045
        if idx == -1:
            revert with 'NH{q', 17
        _3431 = mem[96]
        idx = idx + 1
        continue 
    _3437 = mem[64]
    mem[mem[64]] = 32
    _3444 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _3444:
        _4248 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_4248 + 44 len 20]
        mem[t + 64] = mem[_4248 + 76 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _3437 + (96 * _3444) + -mem[64] + 64
}



}
