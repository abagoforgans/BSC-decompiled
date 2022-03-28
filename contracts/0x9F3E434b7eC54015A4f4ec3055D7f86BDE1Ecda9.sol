contract main {




// =====================  Runtime code  =====================


address stor0;
address aMBcontractAddress;

function AMBcontract() payable {
    return aMBcontractAddress
}

function clean() payable {
    if stor0 != msg.sender:
        revert with 0, 'not an owner'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function getSignatures(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[96] = arg1.length
    require ext_code.size(aMBcontractAddress)
    staticcall aMBcontractAddress.numMessagesSigned(bytes32 rg1) with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(aMBcontractAddress)
    staticcall aMBcontractAddress.0xffd19e8c with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'message hasn't been confirmed'
    require 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0] < 256
    require (65 * 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]) + 1 <= test266151307()
    mem[arg1.length + 128] = (65 * 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]) + 1
    mem[64] = arg1.length + floor32((65 * 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]) + 32) + 160
    if not (65 * 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]) + 1:
        mem[arg1.length + 160 len 8] = 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]
        idx = 0
        while idx < 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]:
            mem[mem[64]] = 0x1812d99600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sha3(arg1[all])
            mem[mem[64] + 36] = idx
            require ext_code.size(aMBcontractAddress)
            staticcall aMBcontractAddress.0x1812d996 with:
                    gas gas_remaining wei
                   args sha3(arg1[all]), idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _73 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _76 = mem[_73]
            require mem[_73] <= 4294967296
            require mem[_73] + 32 <= return_data.size
            require return_data.size >= mem[_73 + mem[_73]] + mem[_73] + 32 and mem[_73 + mem[_73]] <= 4294967296
            mem[_73 + ceil32(return_data.size)] = mem[_73 + mem[_73]]
            _89 = mem[_73 + _76]
            s = 0
            while s < _89:
                mem[s + _73 + ceil32(return_data.size) + 32] = mem[s + _73 + _76 + 32]
                s = s + 32
                continue 
            if not _89 % 32:
                mem[64] = _89 + _73 + ceil32(return_data.size) + 32
                require 65 == mem[_73 + ceil32(return_data.size)]
                _125 = mem[_73 + ceil32(return_data.size) + 32]
                _126 = mem[_73 + ceil32(return_data.size) + 64]
                mem[arg1.length + idx + 161 len 8] = mem[_73 + ceil32(return_data.size) + 65]
                mem[(32 * idx) + (0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]) + arg1.length + 161] = _125
                mem[arg1.length + (33 * 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]) + (32 * idx) + 161] = _126
            else:
                mem[floor32(_89) + _73 + ceil32(return_data.size) + 32] = mem[floor32(_89) + _73 + ceil32(return_data.size) + -(_89 % 32) + 64 len _89 % 32]
                mem[64] = floor32(_89) + _73 + ceil32(return_data.size) + 64
                require 65 == mem[_73 + ceil32(return_data.size)]
                _133 = mem[_73 + ceil32(return_data.size) + 32]
                _134 = mem[_73 + ceil32(return_data.size) + 64]
                mem[arg1.length + idx + 161 len 8] = mem[_73 + ceil32(return_data.size) + 65]
                mem[(32 * idx) + (0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]) + arg1.length + 161] = _133
                mem[arg1.length + (33 * 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]) + (32 * idx) + 161] = _134
            idx = idx + 1
            continue 
        _67 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[arg1.length + 128]
        _69 = mem[arg1.length + 128]
        mem[mem[64] + 64 len ceil32(mem[arg1.length + 128])] = mem[arg1.length + 160 len ceil32(mem[arg1.length + 128])]
        if not _69 % 32:
            return 32, mem[mem[64] + 32 len _69 + 32]
        mem[floor32(_69) + mem[64] + 64] = mem[floor32(_69) + mem[64] + -(_69 % 32) + 96 len _69 % 32]
        return memory
          from mem[64]
           len floor32(_69) + _67 + -mem[64] + 96
    mem[arg1.length + 160 len (65 * 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]) + 1] = call.data[calldata.size len (65 * 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]) + 1]
    mem[arg1.length + 160 len 8] = 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]
    idx = 0
    while idx < 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]:
        mem[mem[64]] = 0x1812d99600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = sha3(arg1[all])
        mem[mem[64] + 36] = idx
        require ext_code.size(aMBcontractAddress)
        staticcall aMBcontractAddress.0x1812d996 with:
                gas gas_remaining wei
               args sha3(arg1[all]), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _74 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _79 = mem[_74]
        require mem[_74] <= 4294967296
        require mem[_74] + 32 <= return_data.size
        require return_data.size >= mem[_74 + mem[_74]] + mem[_74] + 32 and mem[_74 + mem[_74]] <= 4294967296
        mem[_74 + ceil32(return_data.size)] = mem[_74 + mem[_74]]
        _90 = mem[_74 + _79]
        s = 0
        while s < _90:
            mem[s + _74 + ceil32(return_data.size) + 32] = mem[s + _74 + _79 + 32]
            s = s + 32
            continue 
        if not _90 % 32:
            mem[64] = _90 + _74 + ceil32(return_data.size) + 32
            require 65 == mem[_74 + ceil32(return_data.size)]
            _129 = mem[_74 + ceil32(return_data.size) + 32]
            _130 = mem[_74 + ceil32(return_data.size) + 64]
            mem[arg1.length + idx + 161 len 8] = mem[_74 + ceil32(return_data.size) + 65]
            mem[(32 * idx) + (0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]) + arg1.length + 161] = _129
            mem[arg1.length + (33 * 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]) + (32 * idx) + 161] = _130
        else:
            mem[floor32(_90) + _74 + ceil32(return_data.size) + 32] = mem[floor32(_90) + _74 + ceil32(return_data.size) + -(_90 % 32) + 64 len _90 % 32]
            mem[64] = floor32(_90) + _74 + ceil32(return_data.size) + 64
            require 65 == mem[_74 + ceil32(return_data.size)]
            _136 = mem[_74 + ceil32(return_data.size) + 32]
            _137 = mem[_74 + ceil32(return_data.size) + 64]
            mem[arg1.length + idx + 161 len 8] = mem[_74 + ceil32(return_data.size) + 65]
            mem[(32 * idx) + (0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]) + arg1.length + 161] = _136
            mem[arg1.length + (33 * 0x8fffffffffffffffffffffffffffffffffffffffffff and ext_call.return_data[0]) + (32 * idx) + 161] = _137
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[arg1.length + 128]
    _72 = mem[arg1.length + 128]
    mem[mem[64] + 64 len ceil32(mem[arg1.length + 128])] = mem[arg1.length + 160 len ceil32(mem[arg1.length + 128])]
    if not _72 % 32:
        return 32, mem[mem[64] + 32 len _72 + 32]
    mem[floor32(_72) + mem[64] + 64] = mem[floor32(_72) + mem[64] + -(_72 % 32) + 96 len _72 % 32]
    return 32, mem[mem[64] + 32 len floor32(_72) + 64]
}



}
