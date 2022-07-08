contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
address owner; offset 16
uint256 stor0; offset 8
address sub_7e92d8ebAddress;
address sub_3697a93cAddress;
address tokenAddress;
uint256 sub_89a37cd9;
uint256 sub_20f1ec50;
uint256 sub_3a6d593d;
mapping of uint256 sub_dbf3b5e1;
uint256 sub_bdf5ae13;
uint256 stor9;
uint256 stor10;
uint256 stor11;
mapping of struct sub_bd53f950;

function sub_20f1ec50(?) payable {
    return sub_20f1ec50
}

function sub_3697a93c(?) payable {
    return sub_3697a93cAddress
}

function sub_3a6d593d(?) payable {
    return sub_3a6d593d
}

function sub_7e92d8eb(?) payable {
    return sub_7e92d8ebAddress
}

function sub_89a37cd9(?) payable {
    return sub_89a37cd9
}

function owner() payable {
    return owner
}

function sub_bd53f950(?) payable {
    require calldata.size - 4 >= 32
    return sub_bd53f950[arg1].field_0, sub_bd53f950[arg1].field_256
}

function sub_bdf5ae13(?) payable {
    return sub_bdf5ae13
}

function sub_dbf3b5e1(?) payable {
    require calldata.size - 4 >= 64
    return sub_dbf3b5e1[arg1][arg2]
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_0a336ab3(?) payable {
    return stor9, stor10
}

function sub_cedd1a06(?) payable {
    return sub_89a37cd9, sub_20f1ec50, sub_3a6d593d
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6f6c44de(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
    stor9 = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function sub_c279e913(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, sub_3a6d593d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_7e92d8ebAddress)
    staticcall sub_7e92d8ebAddress.0x412e8a29 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3697a93cAddress)
    staticcall sub_3697a93cAddress.0x412e8a29 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_3697a93cAddress)
    call sub_3697a93cAddress.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7e92d8ebAddress)
    call sub_7e92d8ebAddress.0xfd72d16 with:
         gas gas_remaining wei
        args arg1, 2 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_bd53f950[arg3].field_0 = sub_7e92d8ebAddress
    sub_bd53f950[arg3].field_256 = arg1
}

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        owner = arg4
        sub_7e92d8ebAddress = arg1
        sub_3697a93cAddress = arg2
        tokenAddress = arg3
        sub_89a37cd9 = 30000000000 * 10^18
        sub_20f1ec50 = 3000000000 * 10^18
        sub_3a6d593d = 3000000000 * 10^18
        stor11 = 10 * 10^6
        sub_bdf5ae13 = 1
        stor10 = 24
        stor9 = 10
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = arg4
            sub_7e92d8ebAddress = arg1
            sub_3697a93cAddress = arg2
            tokenAddress = arg3
            sub_89a37cd9 = 30000000000 * 10^18
            sub_20f1ec50 = 3000000000 * 10^18
            sub_3a6d593d = 3000000000 * 10^18
            stor11 = 10 * 10^6
            sub_bdf5ae13 = 1
            stor10 = 24
            stor9 = 10
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            owner = arg4
            sub_7e92d8ebAddress = arg1
            sub_3697a93cAddress = arg2
            tokenAddress = arg3
            sub_89a37cd9 = 30000000000 * 10^18
            sub_20f1ec50 = 3000000000 * 10^18
            sub_3a6d593d = 3000000000 * 10^18
            stor11 = 10 * 10^6
            sub_bdf5ae13 = 1
            stor10 = 24
            stor9 = 10
            uint8(stor0.field_8) = 0
}

function sub_5f9ccb85(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[100] = msg.sender
    mem[132] = 57005
    mem[164] = sub_20f1ec50
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, sub_20f1ec50
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ('cd', 4).length != 2:
        revert with 0, 'param error'
    require ('cd', 4).length
    require ext_code.size(sub_7e92d8ebAddress)
    staticcall sub_7e92d8ebAddress.getNftInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ('cd', 4)[0]
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require 1 < ('cd', 4).length
    require ext_code.size(sub_7e92d8ebAddress)
    staticcall sub_7e92d8ebAddress.getNftInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ('cd', 4)[1]
    mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'level error'
    if ext_call.return_data[32] != ext_call.return_data[32]:
        revert with 0, 'level error'
    require ('cd', 4).length
    require ext_code.size(sub_7e92d8ebAddress)
    call sub_7e92d8ebAddress.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ('cd', 4)[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < ('cd', 4).length
    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 132] = ('cd', 4)[1]
    require ext_code.size(sub_7e92d8ebAddress)
    call sub_7e92d8ebAddress.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ('cd', 4)[1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96] = 0xac75de2f00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_7e92d8ebAddress)
    staticcall sub_7e92d8ebAddress.0xac75de2f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 64
    _30 = mem[(4 * ceil32(return_data.size)) + 96]
    require mem[(4 * ceil32(return_data.size)) + 96] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
    _31 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96] <= test266151307()
    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 128 <= test266151307()
    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]) + 128
    mem[(6 * ceil32(return_data.size)) + 96] = _31
    require return_data.size >= _30 + (32 * _31) + 32
    mem[(6 * ceil32(return_data.size)) + 128 len 32 * _31] = mem[(4 * ceil32(return_data.size)) + _30 + 128 len 32 * _31]
    require uint32(msg.sender), Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + uint32(msg.sender), Mask(224, 32, ('cd', 4)[1]) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
    _87 = mem[(4 * ceil32(return_data.size)) + uint32(msg.sender), Mask(224, 32, ('cd', 4)[1]) >> 32 + 96]
    require mem[(4 * ceil32(return_data.size)) + uint32(msg.sender), Mask(224, 32, ('cd', 4)[1]) >> 32 + 96] <= test266151307()
    _88 = mem[64]
    require mem[64] + (32 * mem[(4 * ceil32(return_data.size)) + uint32(msg.sender), Mask(224, 32, ('cd', 4)[1]) >> 32 + 96]) + 32 >= mem[64] and mem[64] + (32 * mem[(4 * ceil32(return_data.size)) + uint32(msg.sender), Mask(224, 32, ('cd', 4)[1]) >> 32 + 96]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[(4 * ceil32(return_data.size)) + uint32(msg.sender), Mask(224, 32, ('cd', 4)[1]) >> 32 + 96]) + 32
    mem[_88] = mem[(4 * ceil32(return_data.size)) + uint32(msg.sender), Mask(224, 32, ('cd', 4)[1]) >> 32 + 96]
    require return_data.size >= uint32(msg.sender), Mask(224, 32, ('cd', 4)[1]) >> 32 + (32 * _87) + 32
    mem[_88 + 32 len 32 * _87] = mem[(4 * ceil32(return_data.size)) + uint32(msg.sender), Mask(224, 32, ('cd', 4)[1]) >> 32 + 128 len 32 * _87]
    require _87 - 1 < _87
    _140 = mem[(32 * _87 - 1) + _88 + 32]
    mem[mem[64] + 32] = address(block.coinbase)
    mem[mem[64] + 52] = block.timestamp
    mem[mem[64] + 84] = stor11
    _142 = mem[64]
    mem[mem[64]] = 84
    mem[64] = mem[64] + 116
    require ext_code.size(sub_7e92d8ebAddress)
    if sha3(mem[_142 + 32 len mem[_142]]) % 100 >= 20:
        call sub_7e92d8ebAddress.mint(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0], ext_call.return_data[32] + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7e92d8ebAddress)
        call sub_7e92d8ebAddress.0xfd72d16 with:
             gas gas_remaining wei
            args ext_call.return_data[0], 210 * ext_call.return_data[64] / 100
    else:
        if sha3(mem[_142 + 32 len mem[_142]]) % 100 >= 10:
            call sub_7e92d8ebAddress.mint(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0], ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7e92d8ebAddress)
            call sub_7e92d8ebAddress.0xfd72d16 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 260 * ext_call.return_data[64] / 100
        else:
            if sha3(mem[_142 + 32 len mem[_142]]) % 100 < 2:
                call sub_7e92d8ebAddress.mint(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0], _140
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_7e92d8ebAddress)
                call sub_7e92d8ebAddress.0xfd72d16 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], (sha3(mem[_142 + 32 len mem[_142]]) % 120) + 240
            else:
                call sub_7e92d8ebAddress.mint(address arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0], ext_call.return_data[32] + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_7e92d8ebAddress)
                call sub_7e92d8ebAddress.0xfd72d16 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 300 * ext_call.return_data[64] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_bd53f950[cd[36]].field_0 = sub_7e92d8ebAddress
    sub_bd53f950[cd[36]].field_256 = ext_call.return_data[0]
}

function sub_b7cddf2f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[100] = msg.sender
    mem[132] = 57005
    mem[164] = sub_89a37cd9
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, sub_89a37cd9
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    s = 0
    t = 1
    u = 0
    while idx < ('cd', 4).length:
        require ext_code.size(sub_3697a93cAddress)
        staticcall sub_3697a93cAddress.getNftInfo(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _84 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _86 = mem[_84]
        _88 = mem[_84 + 64]
        mem[mem[64]] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(sub_3697a93cAddress)
        call sub_3697a93cAddress.burn(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = _88 + s
        t = _86 * t
        u = _86 + u
        continue 
    if _86 * ('cd', 4).length != stor9:
        revert with 0, 'params error'
    if ('cd', 4).length + 1 != stor10:
        revert with 0, 'params error'
    require ext_code.size(sub_7e92d8ebAddress)
    staticcall sub_7e92d8ebAddress.0x51060ee8 with:
            gas gas_remaining wei
           args (_88 * ('cd', 4).length)
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _85 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    _90 = mem[_85]
    _91 = mem[_85 + 32]
    if 0 == mem[_85]:
        mem[mem[64]] = 0xac75de2f00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_7e92d8ebAddress)
        staticcall sub_7e92d8ebAddress.0xac75de2f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _98 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _101 = mem[_98]
        require mem[_98] <= test266151307()
        require _98 + mem[_98] + 31 < _98 + return_data.size
        _104 = mem[_98 + mem[_98]]
        require mem[_98 + mem[_98]] <= test266151307()
        require (32 * mem[_98 + mem[_98]]) + 32 >= 0 and _98 + ceil32(return_data.size) + (32 * mem[_98 + mem[_98]]) + 32 <= test266151307()
        mem[64] = _98 + ceil32(return_data.size) + (32 * mem[_98 + mem[_98]]) + 32
        mem[_98 + ceil32(return_data.size)] = _104
        require return_data.size >= _101 + (32 * _104) + 32
        mem[_98 + ceil32(return_data.size) + 32 len 32 * _104] = mem[_98 + _101 + 32 len 32 * _104]
        _149 = mem[_98 + 32]
        require mem[_98 + 32] <= test266151307()
        require _98 + mem[_98 + 32] + 31 < _98 + return_data.size
        _151 = mem[_98 + mem[_98 + 32]]
        require mem[_98 + mem[_98 + 32]] <= test266151307()
        _153 = mem[64]
        require mem[64] + (32 * mem[_98 + mem[_98 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_98 + mem[_98 + 32]]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[_98 + mem[_98 + 32]]) + 32
        mem[_153] = _151
        require return_data.size >= _149 + (32 * _151) + 32
        mem[_153 + 32 len 32 * _151] = mem[_98 + _149 + 32 len 32 * _151]
        require 0 < _104
        _185 = mem[_98 + ceil32(return_data.size) + 32]
        require 0 < _151
        _189 = mem[_153 + 32]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _185
        mem[mem[64] + 68] = _189
        require ext_code.size(sub_7e92d8ebAddress)
        call sub_7e92d8ebAddress.mint(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, _185, _189
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _195 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        sub_bd53f950[cd[36]].field_0 = sub_7e92d8ebAddress
        sub_bd53f950[cd[36]].field_256 = mem[_195]
    else:
        if mem[_85 + 32]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _90
            mem[mem[64] + 68] = _91
            require ext_code.size(sub_7e92d8ebAddress)
            call sub_7e92d8ebAddress.mint(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, _90, _91
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            sub_bd53f950[cd[36]].field_0 = sub_7e92d8ebAddress
            sub_bd53f950[cd[36]].field_256 = mem[_102]
        else:
            mem[mem[64]] = 0xac75de2f00000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_7e92d8ebAddress)
            staticcall sub_7e92d8ebAddress.0xac75de2f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _100 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _103 = mem[_100]
            require mem[_100] <= test266151307()
            require _100 + mem[_100] + 31 < _100 + return_data.size
            _110 = mem[_100 + mem[_100]]
            require mem[_100 + mem[_100]] <= test266151307()
            require (32 * mem[_100 + mem[_100]]) + 32 >= 0 and _100 + ceil32(return_data.size) + (32 * mem[_100 + mem[_100]]) + 32 <= test266151307()
            mem[64] = _100 + ceil32(return_data.size) + (32 * mem[_100 + mem[_100]]) + 32
            mem[_100 + ceil32(return_data.size)] = _110
            require return_data.size >= _103 + (32 * _110) + 32
            mem[_100 + ceil32(return_data.size) + 32 len 32 * _110] = mem[_100 + _103 + 32 len 32 * _110]
            _150 = mem[_100 + 32]
            require mem[_100 + 32] <= test266151307()
            require _100 + mem[_100 + 32] + 31 < _100 + return_data.size
            _152 = mem[_100 + mem[_100 + 32]]
            require mem[_100 + mem[_100 + 32]] <= test266151307()
            _154 = mem[64]
            require mem[64] + (32 * mem[_100 + mem[_100 + 32]]) + 32 >= mem[64] and mem[64] + (32 * mem[_100 + mem[_100 + 32]]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * mem[_100 + mem[_100 + 32]]) + 32
            mem[_154] = _152
            require return_data.size >= _150 + (32 * _152) + 32
            mem[_154 + 32 len 32 * _152] = mem[_100 + _150 + 32 len 32 * _152]
            require 0 < _110
            _187 = mem[_100 + ceil32(return_data.size) + 32]
            require 0 < _152
            _190 = mem[_154 + 32]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _187
            mem[mem[64] + 68] = _190
            require ext_code.size(sub_7e92d8ebAddress)
            call sub_7e92d8ebAddress.mint(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, _187, _190
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _196 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            sub_bd53f950[cd[36]].field_0 = sub_7e92d8ebAddress
            sub_bd53f950[cd[36]].field_256 = mem[_196]
}



}
