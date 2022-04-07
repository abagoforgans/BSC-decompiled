contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of uint256 uri;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(uint8(stor1[Mask(32, 224, arg1)]))
}

function uri(uint256 arg1) payable {
    return uri[0 len uri.length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor2[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function decimals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 0
}

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 1
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, uint256(stor0[arg1].field_256)
}

function sub_3a04d4ea(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor0[address(arg1)][arg2].field_0:
        require arg1 == address(arg1)
        stor0[address(arg1)][arg2].field_0 = address(arg1)
        uint256(stor0[address(arg1)][arg2].field_256) = arg2
        emit 0xe4c75bb6: address(arg1), arg2
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(stor0[arg2].field_0)
    staticcall stor0[arg2].field_0.0x6352211e with:
            gas gas_remaining wei
           args uint256(stor0[arg2].field_256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == arg1:
        return 1
    else:
        return 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 128 >= 96 and ceil32(arg5.length) + 128 <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if arg1 != msg.sender:
        if not stor2[address(arg1)][msg.sender]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if arg4:
        if arg4 != 1:
            revert with 0, 'No more than 1.'
        require ext_code.size(stor0[arg3].field_0)
        call stor0[arg3].field_0.0xb88d4fde with:
             gas gas_remaining wei
            args address(arg1), address(arg2), uint256(stor0[arg3].field_256), Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function name(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(mem[mem[96] + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[mem[64] + _5 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[mem[64] + _5 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
}

function symbol(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(mem[mem[96] + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[mem[64] + _5 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[mem[64] + _5 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 160 >= 128 and (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307()
    mem[(32 * arg1.length) + 128] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length != arg2.length:
        revert with 0, 'ERC1155: accounts and ids length mismatch'
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    mem[64] = (64 * arg1.length) + (32 * arg2.length) + 192
    if not arg1.length:
        idx = 0
        while idx < arg2.length:
            require idx < mem[96]
            _129 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[32] = 0
            _138 = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 0)
            _139 = mem[64]
            mem[64] = mem[64] + 64
            mem[_139] = stor0[mem[(32 * idx) + (32 * arg1.length) + 160]].field_0
            mem[_139 + 32] = uint256(stor1[_138])
            mem[mem[64] + 4] = uint256(stor1[_138])
            require ext_code.size(stor[_138])
            staticcall stor[_138].0x6352211e with:
                    gas gas_remaining wei
                   args uint256(stor1[_138])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _150 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_150] == mem[_150 + 12 len 20]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            if mem[_150 + 12 len 20] == address(_129):
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 1
            else:
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _134 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 64 len 32 * _134] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * _134]
        return 32, mem[mem[64] + 32 len (32 * _134) + 32]
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _132 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[32] = 0
        _141 = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 0)
        _142 = mem[64]
        mem[64] = mem[64] + 64
        mem[_142] = stor0[mem[(32 * idx) + (32 * arg1.length) + 160]].field_0
        mem[_142 + 32] = uint256(stor1[_141])
        mem[mem[64] + 4] = uint256(stor1[_141])
        require ext_code.size(stor[_141])
        staticcall stor[_141].0x6352211e with:
                gas gas_remaining wei
               args uint256(stor1[_141])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _151 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_151] == mem[_151 + 12 len 20]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[_151 + 12 len 20] == address(_132):
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 1
        else:
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _136 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    mem[mem[64] + 64 len 32 * _136] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * _136]
    return 32, mem[mem[64] + 32 len (32 * _136) + 32]
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 >= 96 and (32 * arg3.length) + 128 <= test266151307()
    mem[96] = arg3.length
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg4.length) + 160 >= 128 and (32 * arg3.length) + (32 * arg4.length) + 160 <= test266151307()
    mem[(32 * arg3.length) + 128] = arg4.length
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    idx = 0
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 192 >= 160 and (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 <= test266151307()
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
    if arg3.length != arg4.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if msg.sender == arg1:
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            require idx < mem[(32 * arg3.length) + 128]
            if mem[(32 * idx) + (32 * arg3.length) + 160]:
                if mem[(32 * idx) + (32 * arg3.length) + 160] != 1:
                    revert with 0, 'No more than 1.'
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 0
                _131 = sha3(mem[(32 * idx) + 128], 0)
                _132 = mem[64]
                mem[64] = mem[64] + 64
                mem[_132] = stor0[mem[(32 * idx) + 128]].field_0
                mem[_132 + 32] = uint256(stor1[_131])
                _133 = mem[64]
                mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = arg2
                mem[mem[64] + 68] = uint256(stor1[_131])
                mem[mem[64] + 100] = 128
                _139 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                mem[mem[64] + 132] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                s = 0
                while s < _139:
                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + (32 * arg4.length) + 192]
                    s = s + 32
                    continue 
                if ceil32(_139) > _139:
                    mem[_133 + _139 + 164] = 0
                require ext_code.size(stor[_131])
                call stor[_131].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_139) + _133 + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        if not stor2[address(arg1)][msg.sender]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            require idx < mem[(32 * arg3.length) + 128]
            if mem[(32 * idx) + (32 * arg3.length) + 160]:
                if mem[(32 * idx) + (32 * arg3.length) + 160] != 1:
                    revert with 0, 'No more than 1.'
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 0
                _135 = sha3(mem[(32 * idx) + 128], 0)
                _136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_136] = stor0[mem[(32 * idx) + 128]].field_0
                mem[_136 + 32] = uint256(stor1[_135])
                _137 = mem[64]
                mem[mem[64]] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = arg2
                mem[mem[64] + 68] = uint256(stor1[_135])
                mem[mem[64] + 100] = 128
                _141 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                mem[mem[64] + 132] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
                s = 0
                while s < _141:
                    mem[s + mem[64] + 164] = mem[s + (32 * arg3.length) + (32 * arg4.length) + 192]
                    s = s + 32
                    continue 
                if ceil32(_141) > _141:
                    mem[_137 + _141 + 164] = 0
                require ext_code.size(stor[_135])
                call stor[_135].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_141) + _137 + -mem[64] + 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
}



}
