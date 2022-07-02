contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address owner; offset 8
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of struct stor5;
mapping of uint256 sub_2a3d9195;
address stor7;
address stor8;
address stor9;
address stor10;

function sub_2a3d9195(?) payable {
    require calldata.size - 4 >= 32
    return sub_2a3d9195[arg1]
}

function sub_579394f2(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor5[arg1][arg2].field_256)
}

function paused() payable {
    return bool(uint8(stor0.field_0))
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_a03738dc(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor0.field_0) = 1
    emit Paused(msg.sender);
}

function sub_9319106b(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor0.field_0) = 0
    emit Unpaused(msg.sender);
}

function sub_8acd43a9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'metamarket: invalid max content url len'
    stor3 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_1966d5bd(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'metamarket: invalid max list items'
    if arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'metamarket: invalid max list items'
    stor2 = arg1
}

function ownerWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor0.field_0), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_af4833fa(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == bool(arg3)
    staticcall stor9.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'metamarket: not land owner'
    if arg2 > sub_2a3d9195[arg1]:
        revert with 0, 'metamarket: invalid itemAutonumber'
    if arg2 <= 0:
        revert with 0, 'metamarket: invalid itemAutonumber'
    uint8(stor5[arg1][arg2].field_3072) = uint8(bool(arg3))
}

function currentPrice(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor5[arg1][arg2].field_512):
        if bool(stor5[arg1][arg2].field_512) == uint255(stor5[arg1][arg2].field_512) * 0.5 < 32:
            revert with 0, 34
    else:
        if bool(stor5[arg1][arg2].field_512) == stor5[arg1][arg2].field_513 % 128 < 32:
            revert with 0, 34
    if bool(stor5[arg1][arg2].field_512):
        if bool(stor5[arg1][arg2].field_512) == uint255(stor5[arg1][arg2].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5[arg1][arg2].field_512):
            if 31 < uint255(stor5[arg1][arg2].field_512) * 0.5:
                idx = 544
                s = 0
                while (uint255(stor5[arg1][arg2].field_512) * 0.5) + 512 > idx:
                    mem[idx + 32] = stor5[arg1][arg2][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor5[arg1][arg2].field_512) == stor5[arg1][arg2].field_513 % 128 < 32:
            revert with 0, 34
        if stor5[arg1][arg2].field_513 % 128:
            if 31 < stor5[arg1][arg2].field_513 % 128:
                idx = 544
                s = 0
                while stor5[arg1][arg2].field_513 % 128 + 512 > idx:
                    mem[idx + 32] = stor5[arg1][arg2][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor5[arg1][arg2].field_1536
}

function sub_c18b1288(?) payable {
    require calldata.size - 4 >= 256
    require arg8 <= test266151307()
    require calldata.size > arg8 + 35
    if arg8.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg8.length)) + 97 < 96 or ceil32(ceil32(arg8.length)) + 97 > test266151307():
        revert with 0, 65
    require arg8 + arg8.length + 36 <= calldata.size
    if uint8(stor0.field_0):
        revert with 0, 'Pausable: paused'
    staticcall stor9.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'metamarket: not land owner'
    if arg8.length > stor3:
        revert with 0, 'metamarket: item content url too long'
    if arg4 <= 0:
        revert with 0, 'metamarket: zero price is not allowed'
    if sub_2a3d9195[arg1] > -2:
        revert with 0, 17
    sub_2a3d9195[arg1]++
    stor5[arg1][stor6[arg1] + 1].field_0 = arg1
    stor5[arg1][stor6[arg1] + 1].field_256 = sub_2a3d9195[arg1] + 1
    if bool(stor5[arg1][stor6[arg1] + 1].field_512):
        if bool(stor5[arg1][stor6[arg1] + 1].field_512) == uint255(stor5[arg1][stor6[arg1] + 1].field_512) * 0.5 < 32:
            revert with 0, 34
        if arg8.length:
            stor5[arg1][stor6[arg1] + 1][2][].field_0 = Array(len=arg8.length, data=arg8[all])
        else:
            stor5[arg1][stor6[arg1] + 1].field_512 = 0
            idx = 0
            while (uint255(stor5[arg1][stor6[arg1] + 1].field_512) * 0.5) + 31 / 32 > idx:
                stor5[arg1][stor6[arg1] + 1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5[arg1][stor6[arg1] + 1].field_512) == stor5[arg1][stor6[arg1] + 1].field_513 % 128 < 32:
            revert with 0, 34
        if arg8.length:
            stor5[arg1][stor6[arg1] + 1][2][].field_0 = Array(len=arg8.length, data=arg8[all])
        else:
            stor5[arg1][stor6[arg1] + 1].field_512 = 0
            idx = 0
            while stor5[arg1][stor6[arg1] + 1].field_513 % 128 + 31 / 32 > idx:
                stor5[arg1][stor6[arg1] + 1][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor5[arg1][stor6[arg1] + 1].field_768 = arg2
    stor5[arg1][stor6[arg1] + 1].field_1024 = arg3
    stor5[arg1][stor6[arg1] + 1].field_1280 = arg4
    stor5[arg1][stor6[arg1] + 1].field_1536 = arg4
    stor5[arg1][stor6[arg1] + 1].field_1792 = arg5
    stor5[arg1][stor6[arg1] + 1].field_2048 = arg6
    stor5[arg1][stor6[arg1] + 1].field_2304 = arg7
    stor5[arg1][stor6[arg1] + 1].field_2560 = 0
    stor5[arg1][stor6[arg1] + 1].field_2816 = 0
    uint8(stor5[arg1][stor6[arg1] + 1].field_3072) = 0
}

function getItem(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(stor5[arg1][arg2].field_512):
        if bool(stor5[arg1][arg2].field_512) == uint255(stor5[arg1][arg2].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5[arg1][arg2].field_512):
            if bool(stor5[arg1][arg2].field_512) == uint255(stor5[arg1][arg2].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5[arg1][arg2].field_512):
                if 31 >= uint255(stor5[arg1][arg2].field_512) * 0.5:
                    mem[960] = 256 * Mask(248, 0, stor5[arg1][arg2].field_520)
                else:
                    mem[960] = stor5[arg1][arg2][2].field_0
                    idx = 960
                    s = 0
                    while (uint255(stor5[arg1][arg2].field_512) * 0.5) + 928 > idx:
                        mem[idx + 32] = stor5[arg1][arg2][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor5[arg1][arg2].field_512) == stor5[arg1][arg2].field_513 % 128 < 32:
                revert with 0, 34
            if stor5[arg1][arg2].field_513 % 128:
                if 31 >= stor5[arg1][arg2].field_513 % 128:
                    mem[960] = 256 * Mask(248, 0, stor5[arg1][arg2].field_520)
                else:
                    mem[960] = stor5[arg1][arg2][2].field_0
                    idx = 960
                    s = 0
                    while stor5[arg1][arg2].field_513 % 128 + 928 > idx:
                        mem[idx + 32] = stor5[arg1][arg2][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, stor5[arg1][arg2].field_0, 
               stor5[arg1][arg2].field_256,
               416,
               stor5[arg1][arg2].field_768,
               stor5[arg1][arg2].field_1024,
               stor5[arg1][arg2].field_1280,
               stor5[arg1][arg2].field_1536,
               stor5[arg1][arg2].field_1792,
               stor5[arg1][arg2].field_2048,
               stor5[arg1][arg2].field_2304,
               stor5[arg1][arg2].field_2560,
               stor5[arg1][arg2].field_2816,
               bool(uint8(stor5[arg1][arg2].field_3072)),
               2 * Mask(256, -1, stor5[arg1][arg2].field_512),
               mem[960 len ceil32(uint255(stor5[arg1][arg2].field_512) * 0.5)]
    if bool(stor5[arg1][arg2].field_512) == stor5[arg1][arg2].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor5[arg1][arg2].field_512):
        if bool(stor5[arg1][arg2].field_512) == uint255(stor5[arg1][arg2].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5[arg1][arg2].field_512):
            if 31 >= uint255(stor5[arg1][arg2].field_512) * 0.5:
                mem[960] = 256 * Mask(248, 0, stor5[arg1][arg2].field_520)
            else:
                mem[960] = stor5[arg1][arg2][2].field_0
                idx = 960
                s = 0
                while (uint255(stor5[arg1][arg2].field_512) * 0.5) + 928 > idx:
                    mem[idx + 32] = stor5[arg1][arg2][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor5[arg1][arg2].field_512) == stor5[arg1][arg2].field_513 % 128 < 32:
            revert with 0, 34
        if stor5[arg1][arg2].field_513 % 128:
            if 31 >= stor5[arg1][arg2].field_513 % 128:
                mem[960] = 256 * Mask(248, 0, stor5[arg1][arg2].field_520)
            else:
                mem[960] = stor5[arg1][arg2][2].field_0
                idx = 960
                s = 0
                while stor5[arg1][arg2].field_513 % 128 + 928 > idx:
                    mem[idx + 32] = stor5[arg1][arg2][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, stor5[arg1][arg2].field_0, 
           stor5[arg1][arg2].field_256,
           416,
           stor5[arg1][arg2].field_768,
           stor5[arg1][arg2].field_1024,
           stor5[arg1][arg2].field_1280,
           stor5[arg1][arg2].field_1536,
           stor5[arg1][arg2].field_1792,
           stor5[arg1][arg2].field_2048,
           stor5[arg1][arg2].field_2304,
           stor5[arg1][arg2].field_2560,
           stor5[arg1][arg2].field_2816,
           bool(uint8(stor5[arg1][arg2].field_3072)),
           stor5[arg1][arg2].field_512 % 128,
           mem[960 len ceil32(stor5[arg1][arg2].field_513 % 128)]
}

function buyItem(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_0):
        revert with 0, 'Pausable: paused'
    if arg2 > sub_2a3d9195[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'metamarket: invalid itemAutonumber'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'metamarket: invalid itemAutonumber'
    mem[0] = arg2
    mem[32] = sha3(arg1, 5)
    if uint8(stor5[arg1][arg2].field_3072):
        revert with 0, 'metamarket: item is paused'
    if stor5[arg1][arg2].field_2304 <= stor5[arg1][arg2].field_2816:
        revert with 0, 'metamarket: items out of stock'
    if stor5[arg1][arg2].field_1536 > arg3:
        revert with 0, 'metamarket: buy price too low'
    mem[100] = arg1
    staticcall stor9.0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg3 and stor1.length > -1 / arg3:
        revert with 0, 17
    if not arg3 * stor1.length / 10000:
        if arg3 < arg3 * stor1.length / 10000:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = address(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 164] = arg3 - (arg3 * stor1.length / 10000)
        call stor7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), arg3 - (arg3 * stor1.length / 10000)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 96] = 0xbd3ec84200000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 100] = arg1
        staticcall stor10.0xbd3ec842 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _34 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32
        require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 >= 128
        if not bool((4 * ceil32(return_data.size)) + 224 <= test266151307()):
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + 224
        mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
        mem[(4 * ceil32(return_data.size)) + 128] = mem[(2 * ceil32(return_data.size)) + _34 + 128]
        mem[(4 * ceil32(return_data.size)) + 160] = mem[(2 * ceil32(return_data.size)) + _34 + 160]
        _40 = mem[(2 * ceil32(return_data.size)) + _34 + 192]
        require mem[(2 * ceil32(return_data.size)) + _34 + 192] <= test266151307()
        require (2 * ceil32(return_data.size)) + _34 + mem[(2 * ceil32(return_data.size)) + _34 + 192] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _44 = mem[(2 * ceil32(return_data.size)) + _34 + mem[(2 * ceil32(return_data.size)) + _34 + 192] + 96]
        if mem[(2 * ceil32(return_data.size)) + _34 + mem[(2 * ceil32(return_data.size)) + _34 + 192] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _34 + mem[(2 * ceil32(return_data.size)) + _34 + 192] + 96])) + 129 < 128 or (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _34 + mem[(2 * ceil32(return_data.size)) + _34 + 192] + 96])) + 225 > test266151307():
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _34 + mem[(2 * ceil32(return_data.size)) + _34 + 192] + 96])) + 225
        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + _34 + mem[(2 * ceil32(return_data.size)) + _34 + 192] + 96]
        require _34 + _40 + _44 + 32 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + 256 len ceil32(_44)] = mem[(2 * ceil32(return_data.size)) + _34 + _40 + 128 len ceil32(_44)]
        if ceil32(_44) <= _44:
            mem[(4 * ceil32(return_data.size)) + 192] = (4 * ceil32(return_data.size)) + 224
            _146 = mem[(4 * ceil32(return_data.size)) + 96]
            _147 = mem[64]
            mem[mem[64]] = 0x8e42677900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = stor5[arg1][arg2].field_768
            mem[mem[64] + 68] = stor5[arg1][arg2].field_1024
            mem[mem[64] + 100] = 192
            if not bool(stor5[arg1][arg2].field_512):
                if bool(stor5[arg1][arg2].field_512) == stor5[arg1][arg2].field_513 % 128 < 32:
                    revert with 0, 34
                if not bool(stor5[arg1][arg2].field_512):
                    call stor8.0x8e426779 with:
                         gas gas_remaining wei
                        args msg.sender, stor5[arg1][arg2].field_768, stor5[arg1][arg2].field_1024, Array(len=stor5[arg1][arg2].field_512 % 128, data=Mask(248, 8, stor5[arg1][arg2].field_512)), arg1, _146
                else:
                    if bool(stor5[arg1][arg2].field_512) != 1:
                        call stor8.0x8e426779 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len -mem[64] - 4]
                    else:
                        idx = 0
                        s = 0
                        while idx < stor5[arg1][arg2].field_513 % 128:
                            mem[idx + mem[64] + 228] = stor5[arg1][arg2][s + 2].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        call stor8.0x8e426779 with:
                             gas gas_remaining wei
                            args msg.sender, stor5[arg1][arg2].field_768, stor5[arg1][arg2].field_1024, Array(len=stor5[arg1][arg2].field_512 % 128, data=mem[mem[64] + 228 len ceil32(stor5[arg1][arg2].field_513 % 128)]), arg1, _146
            else:
                if bool(stor5[arg1][arg2].field_512) == uint255(stor5[arg1][arg2].field_512) * 0.5 < 32:
                    revert with 0, 34
                mem[mem[64] + 196] = uint255(stor5[arg1][arg2].field_512) * 0.5
                if not bool(stor5[arg1][arg2].field_512):
                    call stor8.0x8e426779 with:
                         gas gas_remaining wei
                        args msg.sender, stor5[arg1][arg2].field_768, stor5[arg1][arg2].field_1024, Array(len=2 * Mask(256, -1, stor5[arg1][arg2].field_512), data=Mask(248, 8, stor5[arg1][arg2].field_512)), arg1, _146
                else:
                    if bool(stor5[arg1][arg2].field_512) != 1:
                        call stor8.0x8e426779 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len -mem[64] - 4]
                    else:
                        idx = 0
                        s = 0
                        while idx < uint255(stor5[arg1][arg2].field_512) * 0.5:
                            mem[idx + mem[64] + 228] = stor5[arg1][arg2][s + 2].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[_147 + 132] = arg1
                        mem[_147 + 164] = _146
                        call stor8.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _147 + ceil32(uint255(stor5[arg1][arg2].field_512) * 0.5) + -mem[64] + 224]
        else:
            mem[(4 * ceil32(return_data.size)) + _44 + 256] = 0
            mem[(4 * ceil32(return_data.size)) + 192] = (4 * ceil32(return_data.size)) + 224
            _150 = mem[(4 * ceil32(return_data.size)) + 96]
            _151 = mem[64]
            mem[mem[64]] = 0x8e42677900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = stor5[arg1][arg2].field_768
            mem[mem[64] + 68] = stor5[arg1][arg2].field_1024
            mem[mem[64] + 100] = 192
            if not bool(stor5[arg1][arg2].field_512):
                if bool(stor5[arg1][arg2].field_512) == stor5[arg1][arg2].field_513 % 128 < 32:
                    revert with 0, 34
                if not bool(stor5[arg1][arg2].field_512):
                    call stor8.0x8e426779 with:
                         gas gas_remaining wei
                        args msg.sender, stor5[arg1][arg2].field_768, stor5[arg1][arg2].field_1024, Array(len=stor5[arg1][arg2].field_512 % 128, data=Mask(248, 8, stor5[arg1][arg2].field_512)), arg1, _150
                else:
                    if bool(stor5[arg1][arg2].field_512) != 1:
                        call stor8.0x8e426779 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len -mem[64] - 4]
                    else:
                        idx = 0
                        s = 0
                        while idx < stor5[arg1][arg2].field_513 % 128:
                            mem[idx + mem[64] + 228] = stor5[arg1][arg2][s + 2].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        call stor8.0x8e426779 with:
                             gas gas_remaining wei
                            args msg.sender, stor5[arg1][arg2].field_768, stor5[arg1][arg2].field_1024, Array(len=stor5[arg1][arg2].field_512 % 128, data=mem[mem[64] + 228 len ceil32(stor5[arg1][arg2].field_513 % 128)]), arg1, _150
            else:
                if bool(stor5[arg1][arg2].field_512) == uint255(stor5[arg1][arg2].field_512) * 0.5 < 32:
                    revert with 0, 34
                mem[mem[64] + 196] = uint255(stor5[arg1][arg2].field_512) * 0.5
                if not bool(stor5[arg1][arg2].field_512):
                    call stor8.0x8e426779 with:
                         gas gas_remaining wei
                        args msg.sender, stor5[arg1][arg2].field_768, stor5[arg1][arg2].field_1024, Array(len=2 * Mask(256, -1, stor5[arg1][arg2].field_512), data=Mask(248, 8, stor5[arg1][arg2].field_512)), arg1, _150
                else:
                    if bool(stor5[arg1][arg2].field_512) != 1:
                        call stor8.0x8e426779 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len -mem[64] - 4]
                    else:
                        idx = 0
                        s = 0
                        while idx < uint255(stor5[arg1][arg2].field_512) * 0.5:
                            mem[idx + mem[64] + 228] = stor5[arg1][arg2][s + 2].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[_151 + 132] = arg1
                        mem[_151 + 164] = _150
                        call stor8.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _151 + ceil32(uint255(stor5[arg1][arg2].field_512) * 0.5) + -mem[64] + 224]
    else:
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = this.address
        mem[ceil32(return_data.size) + 164] = arg3 * stor1.length / 10000
        call stor7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg3 * stor1.length / 10000
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg3 < arg3 * stor1.length / 10000:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 164] = arg3 - (arg3 * stor1.length / 10000)
        call stor7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), arg3 - (arg3 * stor1.length / 10000)
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = 0xbd3ec84200000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 100] = arg1
        staticcall stor10.0xbd3ec842 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _45 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32
        require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require return_data.size - mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 >= 128
        if not bool((6 * ceil32(return_data.size)) + 224 <= test266151307()):
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + 224
        mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
        mem[(6 * ceil32(return_data.size)) + 128] = mem[(4 * ceil32(return_data.size)) + _45 + 128]
        mem[(6 * ceil32(return_data.size)) + 160] = mem[(4 * ceil32(return_data.size)) + _45 + 160]
        _51 = mem[(4 * ceil32(return_data.size)) + _45 + 192]
        require mem[(4 * ceil32(return_data.size)) + _45 + 192] <= test266151307()
        require (4 * ceil32(return_data.size)) + _45 + mem[(4 * ceil32(return_data.size)) + _45 + 192] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _52 = mem[(4 * ceil32(return_data.size)) + _45 + mem[(4 * ceil32(return_data.size)) + _45 + 192] + 96]
        if mem[(4 * ceil32(return_data.size)) + _45 + mem[(4 * ceil32(return_data.size)) + _45 + 192] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + _45 + mem[(4 * ceil32(return_data.size)) + _45 + 192] + 96])) + 129 < 128 or (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + _45 + mem[(4 * ceil32(return_data.size)) + _45 + 192] + 96])) + 225 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + _45 + mem[(4 * ceil32(return_data.size)) + _45 + 192] + 96])) + 225
        mem[(6 * ceil32(return_data.size)) + 224] = _52
        require _45 + _51 + _52 + 32 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 256 len ceil32(_52)] = mem[(4 * ceil32(return_data.size)) + _45 + _51 + 128 len ceil32(_52)]
        if ceil32(_52) <= _52:
            mem[(6 * ceil32(return_data.size)) + 192] = (6 * ceil32(return_data.size)) + 224
            _148 = mem[(6 * ceil32(return_data.size)) + 96]
            _149 = mem[64]
            mem[mem[64]] = 0x8e42677900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = stor5[arg1][arg2].field_768
            mem[mem[64] + 68] = stor5[arg1][arg2].field_1024
            mem[mem[64] + 100] = 192
            if not bool(stor5[arg1][arg2].field_512):
                if bool(stor5[arg1][arg2].field_512) == stor5[arg1][arg2].field_513 % 128 < 32:
                    revert with 0, 34
                if not bool(stor5[arg1][arg2].field_512):
                    call stor8.0x8e426779 with:
                         gas gas_remaining wei
                        args msg.sender, stor5[arg1][arg2].field_768, stor5[arg1][arg2].field_1024, Array(len=stor5[arg1][arg2].field_512 % 128, data=Mask(248, 8, stor5[arg1][arg2].field_512)), arg1, _148
                else:
                    if bool(stor5[arg1][arg2].field_512) != 1:
                        call stor8.0x8e426779 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len -mem[64] - 4]
                    else:
                        idx = 0
                        s = 0
                        while idx < stor5[arg1][arg2].field_513 % 128:
                            mem[idx + mem[64] + 228] = stor5[arg1][arg2][s + 2].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        call stor8.0x8e426779 with:
                             gas gas_remaining wei
                            args msg.sender, stor5[arg1][arg2].field_768, stor5[arg1][arg2].field_1024, Array(len=stor5[arg1][arg2].field_512 % 128, data=mem[mem[64] + 228 len ceil32(stor5[arg1][arg2].field_513 % 128)]), arg1, _148
            else:
                if bool(stor5[arg1][arg2].field_512) == uint255(stor5[arg1][arg2].field_512) * 0.5 < 32:
                    revert with 0, 34
                mem[mem[64] + 196] = uint255(stor5[arg1][arg2].field_512) * 0.5
                if not bool(stor5[arg1][arg2].field_512):
                    call stor8.0x8e426779 with:
                         gas gas_remaining wei
                        args msg.sender, stor5[arg1][arg2].field_768, stor5[arg1][arg2].field_1024, Array(len=2 * Mask(256, -1, stor5[arg1][arg2].field_512), data=Mask(248, 8, stor5[arg1][arg2].field_512)), arg1, _148
                else:
                    if bool(stor5[arg1][arg2].field_512) != 1:
                        call stor8.0x8e426779 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len -mem[64] - 4]
                    else:
                        idx = 0
                        s = 0
                        while idx < uint255(stor5[arg1][arg2].field_512) * 0.5:
                            mem[idx + mem[64] + 228] = stor5[arg1][arg2][s + 2].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[_149 + 132] = arg1
                        mem[_149 + 164] = _148
                        call stor8.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _149 + ceil32(uint255(stor5[arg1][arg2].field_512) * 0.5) + -mem[64] + 224]
        else:
            mem[(6 * ceil32(return_data.size)) + _52 + 256] = 0
            mem[(6 * ceil32(return_data.size)) + 192] = (6 * ceil32(return_data.size)) + 224
            _152 = mem[(6 * ceil32(return_data.size)) + 96]
            _153 = mem[64]
            mem[mem[64]] = 0x8e42677900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = stor5[arg1][arg2].field_768
            mem[mem[64] + 68] = stor5[arg1][arg2].field_1024
            mem[mem[64] + 100] = 192
            if not bool(stor5[arg1][arg2].field_512):
                if bool(stor5[arg1][arg2].field_512) == stor5[arg1][arg2].field_513 % 128 < 32:
                    revert with 0, 34
                if not bool(stor5[arg1][arg2].field_512):
                    call stor8.0x8e426779 with:
                         gas gas_remaining wei
                        args msg.sender, stor5[arg1][arg2].field_768, stor5[arg1][arg2].field_1024, Array(len=stor5[arg1][arg2].field_512 % 128, data=Mask(248, 8, stor5[arg1][arg2].field_512)), arg1, _152
                else:
                    if bool(stor5[arg1][arg2].field_512) != 1:
                        call stor8.0x8e426779 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len -mem[64] - 4]
                    else:
                        idx = 0
                        s = 0
                        while idx < stor5[arg1][arg2].field_513 % 128:
                            mem[idx + mem[64] + 228] = stor5[arg1][arg2][s + 2].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        call stor8.0x8e426779 with:
                             gas gas_remaining wei
                            args msg.sender, stor5[arg1][arg2].field_768, stor5[arg1][arg2].field_1024, Array(len=stor5[arg1][arg2].field_512 % 128, data=mem[mem[64] + 228 len ceil32(stor5[arg1][arg2].field_513 % 128)]), arg1, _152
            else:
                if bool(stor5[arg1][arg2].field_512) == uint255(stor5[arg1][arg2].field_512) * 0.5 < 32:
                    revert with 0, 34
                mem[mem[64] + 196] = uint255(stor5[arg1][arg2].field_512) * 0.5
                if not bool(stor5[arg1][arg2].field_512):
                    call stor8.0x8e426779 with:
                         gas gas_remaining wei
                        args msg.sender, stor5[arg1][arg2].field_768, stor5[arg1][arg2].field_1024, Array(len=2 * Mask(256, -1, stor5[arg1][arg2].field_512), data=Mask(248, 8, stor5[arg1][arg2].field_512)), arg1, _152
                else:
                    if bool(stor5[arg1][arg2].field_512) != 1:
                        call stor8.0x8e426779 with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len -mem[64] - 4]
                    else:
                        idx = 0
                        s = 0
                        while idx < uint255(stor5[arg1][arg2].field_512) * 0.5:
                            mem[idx + mem[64] + 228] = stor5[arg1][arg2][s + 2].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[_153 + 132] = arg1
                        mem[_153 + 164] = _152
                        call stor8.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _153 + ceil32(uint255(stor5[arg1][arg2].field_512) * 0.5) + -mem[64] + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor5[arg1][arg2].field_2816 > -2:
        revert with 0, 17
    stor5[arg1][arg2].field_2816++
    if stor5[arg1][arg2].field_2048:
        if stor5[arg1][arg2].field_1792 > 0:
            if not stor5[arg1][arg2].field_2048:
                revert with 0, 18
            if stor5[arg1][arg2].field_2560 < stor5[arg1][arg2].field_2816 / stor5[arg1][arg2].field_2048:
                stor5[arg1][arg2].field_2560 = stor5[arg1][arg2].field_2816 / stor5[arg1][arg2].field_2048
                if stor5[arg1][arg2].field_1536 and stor5[arg1][arg2].field_1792 > -1 / stor5[arg1][arg2].field_1536:
                    revert with 0, 17
                if stor5[arg1][arg2].field_1536 > !(stor5[arg1][arg2].field_1536 * stor5[arg1][arg2].field_1792 / 10000):
                    revert with 0, 17
                stor5[arg1][arg2].field_1536 += stor5[arg1][arg2].field_1536 * stor5[arg1][arg2].field_1792 / 10000
}

function sub_525689ec(?) payable {
    require calldata.size - 4 >= 64
    mem[64] = 832
    mem[416] = 0
    mem[448] = 0
    mem[480] = 96
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[768] = 0
    mem[800] = 0
    mem[var10001] = 416
    s = var10001
    idx = var10002
    while idx - 1:
        mem[64] = mem[64] + 416
        mem[416] = 0
        mem[448] = 0
        mem[480] = 96
        mem[512] = 0
        mem[544] = 0
        mem[576] = 0
        mem[608] = 0
        mem[640] = 0
        mem[672] = 0
        mem[704] = 0
        mem[736] = 0
        mem[768] = 0
        mem[800] = 0
        mem[s + 32] = 416
        s = s + 32
        idx = idx - 1
        continue 
    _7 = mem[64]
    mem[64] = mem[64] + 320
    _263 = mem[64]
    mem[64] = mem[64] + 416
    mem[_263] = 0
    mem[_263 + 32] = 0
    mem[_263 + 64] = 96
    mem[_263 + 96] = 0
    mem[_263 + 128] = 0
    mem[_263 + 160] = 0
    mem[_263 + 192] = 0
    mem[_263 + 224] = 0
    mem[_263 + 256] = 0
    mem[_263 + 288] = 0
    mem[_263 + 320] = 0
    mem[_263 + 352] = 0
    mem[_263 + 384] = 0
    mem[var18001] = _263
    s = var18001
    idx = var18002
    while idx - 1:
        _263 = mem[64]
        mem[64] = mem[64] + 416
        mem[_263] = 0
        mem[_263 + 32] = 0
        mem[_263 + 64] = 96
        mem[_263 + 96] = 0
        mem[_263 + 128] = 0
        mem[_263 + 160] = 0
        mem[_263 + 192] = 0
        mem[_263 + 224] = 0
        mem[_263 + 256] = 0
        mem[_263 + 288] = 0
        mem[_263 + 320] = 0
        mem[_263 + 352] = 0
        mem[_263 + 384] = 0
        mem[s + 32] = _263
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = arg1
    mem[32] = 6
    if arg2:
        if arg2 > sub_2a3d9195[arg1]:
            _265 = mem[64]
            mem[mem[64]] = 32
            idx = 0
            s = _7
            t = mem[64] + 32
            u = mem[64] + 352
            while idx < 10:
                mem[t] = u + -_265 - 32
                _517 = mem[s]
                mem[u] = mem[mem[s]]
                mem[u + 32] = mem[_517 + 32]
                _530 = mem[_517 + 64]
                mem[u + 64] = 416
                _543 = mem[_530]
                mem[u + 416] = mem[_530]
                v = 0
                while v < _543:
                    mem[v + u + 448] = mem[v + _530 + 32]
                    v = v + 32
                    continue 
                if ceil32(_543) > _543:
                    mem[u + _543 + 448] = 0
                mem[u + 96] = mem[_517 + 96]
                mem[u + 128] = mem[_517 + 128]
                mem[u + 160] = mem[_517 + 160]
                mem[u + 192] = mem[_517 + 192]
                mem[u + 224] = mem[_517 + 224]
                mem[u + 256] = mem[_517 + 256]
                mem[u + 288] = mem[_517 + 288]
                mem[u + 320] = mem[_517 + 320]
                mem[u + 352] = mem[_517 + 352]
                mem[u + 384] = bool(mem[_517 + 384])
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_543) + u + 448
                continue 
        else:
            if stor2 >= arg2:
                idx = arg2
                s = 0
                while idx > 0:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 5)
                    _522 = mem[64]
                    mem[64] = mem[64] + 416
                    mem[_522] = stor5[arg1][idx].field_0
                    mem[_522 + 32] = stor5[arg1][idx].field_256
                    if bool(stor5[arg1][idx].field_512):
                        if bool(stor5[arg1][idx].field_512) == uint255(stor5[arg1][idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _554 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor5[arg1][idx].field_512) * 0.5) + 32
                        mem[_554] = uint255(stor5[arg1][idx].field_512) * 0.5
                        if bool(stor5[arg1][idx].field_512):
                            if bool(stor5[arg1][idx].field_512) == uint255(stor5[arg1][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor5[arg1][idx].field_512):
                                if 31 >= uint255(stor5[arg1][idx].field_512) * 0.5:
                                    mem[_554 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_554 + 32] = stor5[arg1][idx][2].field_0
                                    t = _554 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _554 + (uint255(stor5[arg1][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor5[arg1][idx].field_512) == stor5[arg1][idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor5[arg1][idx].field_513 % 128:
                                if 31 >= stor5[arg1][idx].field_513 % 128:
                                    mem[_554 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_554 + 32] = stor5[arg1][idx][2].field_0
                                    t = _554 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _554 + stor5[arg1][idx].field_513 % 128 > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_522 + 64] = _554
                    else:
                        if bool(stor5[arg1][idx].field_512) == stor5[arg1][idx].field_513 % 128 < 32:
                            revert with 0, 34
                        _570 = mem[64]
                        mem[64] = mem[64] + ceil32(stor5[arg1][idx].field_513 % 128) + 32
                        mem[_570] = stor5[arg1][idx].field_513 % 128
                        if bool(stor5[arg1][idx].field_512):
                            if bool(stor5[arg1][idx].field_512) == uint255(stor5[arg1][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor5[arg1][idx].field_512):
                                if 31 >= uint255(stor5[arg1][idx].field_512) * 0.5:
                                    mem[_570 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_570 + 32] = stor5[arg1][idx][2].field_0
                                    t = _570 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _570 + (uint255(stor5[arg1][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor5[arg1][idx].field_512) == stor5[arg1][idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor5[arg1][idx].field_513 % 128:
                                if 31 >= stor5[arg1][idx].field_513 % 128:
                                    mem[_570 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_570 + 32] = stor5[arg1][idx][2].field_0
                                    t = _570 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _570 + stor5[arg1][idx].field_513 % 128 > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_522 + 64] = _570
                    mem[_522 + 96] = stor5[arg1][idx].field_768
                    mem[_522 + 128] = stor5[arg1][idx].field_1024
                    mem[_522 + 160] = stor5[arg1][idx].field_1280
                    mem[_522 + 192] = stor5[arg1][idx].field_1536
                    mem[_522 + 224] = stor5[arg1][idx].field_1792
                    mem[_522 + 256] = stor5[arg1][idx].field_2048
                    mem[_522 + 288] = stor5[arg1][idx].field_2304
                    mem[_522 + 320] = stor5[arg1][idx].field_2560
                    mem[_522 + 352] = stor5[arg1][idx].field_2816
                    mem[_522 + 384] = bool(uint8(stor5[arg1][idx].field_3072))
                    if s >= 10:
                        revert with 0, 50
                    mem[(32 * s) + _7] = _522
                    if s == -1:
                        revert with 0, 17
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = s + 1
                    continue 
                _519 = mem[64]
                mem[mem[64]] = 32
                idx = 0
                s = _7
                t = mem[64] + 32
                u = mem[64] + 352
                while idx < 10:
                    mem[t] = u + -_519 - 32
                    _769 = mem[s]
                    mem[u] = mem[mem[s]]
                    mem[u + 32] = mem[_769 + 32]
                    _780 = mem[_769 + 64]
                    mem[u + 64] = 416
                    _801 = mem[_780]
                    mem[u + 416] = mem[_780]
                    v = 0
                    while v < _801:
                        mem[v + u + 448] = mem[v + _780 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_801) > _801:
                        mem[u + _801 + 448] = 0
                    mem[u + 96] = mem[_769 + 96]
                    mem[u + 128] = mem[_769 + 128]
                    mem[u + 160] = mem[_769 + 160]
                    mem[u + 192] = mem[_769 + 192]
                    mem[u + 224] = mem[_769 + 224]
                    mem[u + 256] = mem[_769 + 256]
                    mem[u + 288] = mem[_769 + 288]
                    mem[u + 320] = mem[_769 + 320]
                    mem[u + 352] = mem[_769 + 352]
                    mem[u + 384] = bool(mem[_769 + 384])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_801) + u + 448
                    continue 
            else:
                if arg2 < stor2:
                    revert with 0, 17
                idx = arg2
                s = 0
                while idx > arg2 - stor2:
                    if idx <= 0:
                        _545 = mem[64]
                        mem[mem[64]] = 32
                        idx = 0
                        s = _7
                        t = mem[64] + 32
                        u = mem[64] + 352
                        while idx < 10:
                            mem[t] = u + -_545 - 32
                            _771 = mem[s]
                            mem[u] = mem[mem[s]]
                            mem[u + 32] = mem[_771 + 32]
                            _788 = mem[_771 + 64]
                            mem[u + 64] = 416
                            _803 = mem[_788]
                            mem[u + 416] = mem[_788]
                            v = 0
                            while v < _803:
                                mem[v + u + 448] = mem[v + _788 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_803) > _803:
                                mem[u + _803 + 448] = 0
                            mem[u + 96] = mem[_771 + 96]
                            mem[u + 128] = mem[_771 + 128]
                            mem[u + 160] = mem[_771 + 160]
                            mem[u + 192] = mem[_771 + 192]
                            mem[u + 224] = mem[_771 + 224]
                            mem[u + 256] = mem[_771 + 256]
                            mem[u + 288] = mem[_771 + 288]
                            mem[u + 320] = mem[_771 + 320]
                            mem[u + 352] = mem[_771 + 352]
                            mem[u + 384] = bool(mem[_771 + 384])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_803) + u + 448
                            continue 
                        return memory
                          from mem[64]
                           len u - mem[64]
                    mem[0] = idx
                    mem[32] = sha3(arg1, 5)
                    _526 = mem[64]
                    mem[64] = mem[64] + 416
                    mem[_526] = stor5[arg1][idx].field_0
                    mem[_526 + 32] = stor5[arg1][idx].field_256
                    if bool(stor5[arg1][idx].field_512):
                        if bool(stor5[arg1][idx].field_512) == uint255(stor5[arg1][idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _558 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor5[arg1][idx].field_512) * 0.5) + 32
                        mem[_558] = uint255(stor5[arg1][idx].field_512) * 0.5
                        if bool(stor5[arg1][idx].field_512):
                            if bool(stor5[arg1][idx].field_512) == uint255(stor5[arg1][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor5[arg1][idx].field_512):
                                if 31 >= uint255(stor5[arg1][idx].field_512) * 0.5:
                                    mem[_558 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_558 + 32] = stor5[arg1][idx][2].field_0
                                    t = _558 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _558 + (uint255(stor5[arg1][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor5[arg1][idx].field_512) == stor5[arg1][idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor5[arg1][idx].field_513 % 128:
                                if 31 >= stor5[arg1][idx].field_513 % 128:
                                    mem[_558 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_558 + 32] = stor5[arg1][idx][2].field_0
                                    t = _558 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _558 + stor5[arg1][idx].field_513 % 128 > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_526 + 64] = _558
                    else:
                        if bool(stor5[arg1][idx].field_512) == stor5[arg1][idx].field_513 % 128 < 32:
                            revert with 0, 34
                        _572 = mem[64]
                        mem[64] = mem[64] + ceil32(stor5[arg1][idx].field_513 % 128) + 32
                        mem[_572] = stor5[arg1][idx].field_513 % 128
                        if bool(stor5[arg1][idx].field_512):
                            if bool(stor5[arg1][idx].field_512) == uint255(stor5[arg1][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor5[arg1][idx].field_512):
                                if 31 >= uint255(stor5[arg1][idx].field_512) * 0.5:
                                    mem[_572 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_572 + 32] = stor5[arg1][idx][2].field_0
                                    t = _572 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _572 + (uint255(stor5[arg1][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor5[arg1][idx].field_512) == stor5[arg1][idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor5[arg1][idx].field_513 % 128:
                                if 31 >= stor5[arg1][idx].field_513 % 128:
                                    mem[_572 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_572 + 32] = stor5[arg1][idx][2].field_0
                                    t = _572 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _572 + stor5[arg1][idx].field_513 % 128 > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_526 + 64] = _572
                    mem[_526 + 96] = stor5[arg1][idx].field_768
                    mem[_526 + 128] = stor5[arg1][idx].field_1024
                    mem[_526 + 160] = stor5[arg1][idx].field_1280
                    mem[_526 + 192] = stor5[arg1][idx].field_1536
                    mem[_526 + 224] = stor5[arg1][idx].field_1792
                    mem[_526 + 256] = stor5[arg1][idx].field_2048
                    mem[_526 + 288] = stor5[arg1][idx].field_2304
                    mem[_526 + 320] = stor5[arg1][idx].field_2560
                    mem[_526 + 352] = stor5[arg1][idx].field_2816
                    mem[_526 + 384] = bool(uint8(stor5[arg1][idx].field_3072))
                    if s >= 10:
                        revert with 0, 50
                    mem[(32 * s) + _7] = _526
                    if s == -1:
                        revert with 0, 17
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = s + 1
                    continue 
                _523 = mem[64]
                mem[mem[64]] = 32
                idx = 0
                s = _7
                t = mem[64] + 32
                u = mem[64] + 352
                while idx < 10:
                    mem[t] = u + -_523 - 32
                    _770 = mem[s]
                    mem[u] = mem[mem[s]]
                    mem[u + 32] = mem[_770 + 32]
                    _784 = mem[_770 + 64]
                    mem[u + 64] = 416
                    _802 = mem[_784]
                    mem[u + 416] = mem[_784]
                    v = 0
                    while v < _802:
                        mem[v + u + 448] = mem[v + _784 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_802) > _802:
                        mem[u + _802 + 448] = 0
                    mem[u + 96] = mem[_770 + 96]
                    mem[u + 128] = mem[_770 + 128]
                    mem[u + 160] = mem[_770 + 160]
                    mem[u + 192] = mem[_770 + 192]
                    mem[u + 224] = mem[_770 + 224]
                    mem[u + 256] = mem[_770 + 256]
                    mem[u + 288] = mem[_770 + 288]
                    mem[u + 320] = mem[_770 + 320]
                    mem[u + 352] = mem[_770 + 352]
                    mem[u + 384] = bool(mem[_770 + 384])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_802) + u + 448
                    continue 
    else:
        if sub_2a3d9195[arg1] > sub_2a3d9195[arg1]:
            _266 = mem[64]
            mem[mem[64]] = 32
            idx = 0
            s = _7
            t = mem[64] + 32
            u = mem[64] + 352
            while idx < 10:
                mem[t] = u + -_266 - 32
                _518 = mem[s]
                mem[u] = mem[mem[s]]
                mem[u + 32] = mem[_518 + 32]
                _542 = mem[_518 + 64]
                mem[u + 64] = 416
                _544 = mem[_542]
                mem[u + 416] = mem[_542]
                v = 0
                while v < _544:
                    mem[v + u + 448] = mem[v + _542 + 32]
                    v = v + 32
                    continue 
                if ceil32(_544) > _544:
                    mem[u + _544 + 448] = 0
                mem[u + 96] = mem[_518 + 96]
                mem[u + 128] = mem[_518 + 128]
                mem[u + 160] = mem[_518 + 160]
                mem[u + 192] = mem[_518 + 192]
                mem[u + 224] = mem[_518 + 224]
                mem[u + 256] = mem[_518 + 256]
                mem[u + 288] = mem[_518 + 288]
                mem[u + 320] = mem[_518 + 320]
                mem[u + 352] = mem[_518 + 352]
                mem[u + 384] = bool(mem[_518 + 384])
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_544) + u + 448
                continue 
        else:
            if stor2 >= sub_2a3d9195[arg1]:
                idx = stor[sha3(mem[0 len 64])]
                s = 0
                while idx > 0:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 5)
                    _534 = mem[64]
                    mem[64] = mem[64] + 416
                    mem[_534] = stor5[arg1][idx].field_0
                    mem[_534 + 32] = stor5[arg1][idx].field_256
                    if bool(stor5[arg1][idx].field_512):
                        if bool(stor5[arg1][idx].field_512) == uint255(stor5[arg1][idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _563 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor5[arg1][idx].field_512) * 0.5) + 32
                        mem[_563] = uint255(stor5[arg1][idx].field_512) * 0.5
                        if bool(stor5[arg1][idx].field_512):
                            if bool(stor5[arg1][idx].field_512) == uint255(stor5[arg1][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor5[arg1][idx].field_512):
                                if 31 >= uint255(stor5[arg1][idx].field_512) * 0.5:
                                    mem[_563 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_563 + 32] = stor5[arg1][idx][2].field_0
                                    t = _563 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _563 + (uint255(stor5[arg1][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor5[arg1][idx].field_512) == stor5[arg1][idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor5[arg1][idx].field_513 % 128:
                                if 31 >= stor5[arg1][idx].field_513 % 128:
                                    mem[_563 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_563 + 32] = stor5[arg1][idx][2].field_0
                                    t = _563 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _563 + stor5[arg1][idx].field_513 % 128 > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_534 + 64] = _563
                    else:
                        if bool(stor5[arg1][idx].field_512) == stor5[arg1][idx].field_513 % 128 < 32:
                            revert with 0, 34
                        _575 = mem[64]
                        mem[64] = mem[64] + ceil32(stor5[arg1][idx].field_513 % 128) + 32
                        mem[_575] = stor5[arg1][idx].field_513 % 128
                        if bool(stor5[arg1][idx].field_512):
                            if bool(stor5[arg1][idx].field_512) == uint255(stor5[arg1][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor5[arg1][idx].field_512):
                                if 31 >= uint255(stor5[arg1][idx].field_512) * 0.5:
                                    mem[_575 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_575 + 32] = stor5[arg1][idx][2].field_0
                                    t = _575 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _575 + (uint255(stor5[arg1][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor5[arg1][idx].field_512) == stor5[arg1][idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor5[arg1][idx].field_513 % 128:
                                if 31 >= stor5[arg1][idx].field_513 % 128:
                                    mem[_575 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_575 + 32] = stor5[arg1][idx][2].field_0
                                    t = _575 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _575 + stor5[arg1][idx].field_513 % 128 > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_534 + 64] = _575
                    mem[_534 + 96] = stor5[arg1][idx].field_768
                    mem[_534 + 128] = stor5[arg1][idx].field_1024
                    mem[_534 + 160] = stor5[arg1][idx].field_1280
                    mem[_534 + 192] = stor5[arg1][idx].field_1536
                    mem[_534 + 224] = stor5[arg1][idx].field_1792
                    mem[_534 + 256] = stor5[arg1][idx].field_2048
                    mem[_534 + 288] = stor5[arg1][idx].field_2304
                    mem[_534 + 320] = stor5[arg1][idx].field_2560
                    mem[_534 + 352] = stor5[arg1][idx].field_2816
                    mem[_534 + 384] = bool(uint8(stor5[arg1][idx].field_3072))
                    if s >= 10:
                        revert with 0, 50
                    mem[(32 * s) + _7] = _534
                    if s == -1:
                        revert with 0, 17
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = s + 1
                    continue 
                _531 = mem[64]
                mem[mem[64]] = 32
                idx = 0
                s = _7
                t = mem[64] + 32
                u = mem[64] + 352
                while idx < 10:
                    mem[t] = u + -_531 - 32
                    _773 = mem[s]
                    mem[u] = mem[mem[s]]
                    mem[u + 32] = mem[_773 + 32]
                    _792 = mem[_773 + 64]
                    mem[u + 64] = 416
                    _804 = mem[_792]
                    mem[u + 416] = mem[_792]
                    v = 0
                    while v < _804:
                        mem[v + u + 448] = mem[v + _792 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_804) > _804:
                        mem[u + _804 + 448] = 0
                    mem[u + 96] = mem[_773 + 96]
                    mem[u + 128] = mem[_773 + 128]
                    mem[u + 160] = mem[_773 + 160]
                    mem[u + 192] = mem[_773 + 192]
                    mem[u + 224] = mem[_773 + 224]
                    mem[u + 256] = mem[_773 + 256]
                    mem[u + 288] = mem[_773 + 288]
                    mem[u + 320] = mem[_773 + 320]
                    mem[u + 352] = mem[_773 + 352]
                    mem[u + 384] = bool(mem[_773 + 384])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_804) + u + 448
                    continue 
            else:
                if sub_2a3d9195[arg1] < stor2:
                    revert with 0, 17
                idx = stor[sha3(mem[0 len 64])]
                s = 0
                while idx > sub_2a3d9195[arg1] - stor2:
                    if idx <= 0:
                        _546 = mem[64]
                        mem[mem[64]] = 32
                        idx = 0
                        s = _7
                        t = mem[64] + 32
                        u = mem[64] + 352
                        while idx < 10:
                            mem[t] = u + -_546 - 32
                            _775 = mem[s]
                            mem[u] = mem[mem[s]]
                            mem[u + 32] = mem[_775 + 32]
                            _800 = mem[_775 + 64]
                            mem[u + 64] = 416
                            _806 = mem[_800]
                            mem[u + 416] = mem[_800]
                            v = 0
                            while v < _806:
                                mem[v + u + 448] = mem[v + _800 + 32]
                                v = v + 32
                                continue 
                            if ceil32(_806) > _806:
                                mem[u + _806 + 448] = 0
                            mem[u + 96] = mem[_775 + 96]
                            mem[u + 128] = mem[_775 + 128]
                            mem[u + 160] = mem[_775 + 160]
                            mem[u + 192] = mem[_775 + 192]
                            mem[u + 224] = mem[_775 + 224]
                            mem[u + 256] = mem[_775 + 256]
                            mem[u + 288] = mem[_775 + 288]
                            mem[u + 320] = mem[_775 + 320]
                            mem[u + 352] = mem[_775 + 352]
                            mem[u + 384] = bool(mem[_775 + 384])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = ceil32(_806) + u + 448
                            continue 
                        return memory
                          from mem[64]
                           len u - mem[64]
                    mem[0] = idx
                    mem[32] = sha3(arg1, 5)
                    _538 = mem[64]
                    mem[64] = mem[64] + 416
                    mem[_538] = stor5[arg1][idx].field_0
                    mem[_538 + 32] = stor5[arg1][idx].field_256
                    if bool(stor5[arg1][idx].field_512):
                        if bool(stor5[arg1][idx].field_512) == uint255(stor5[arg1][idx].field_512) * 0.5 < 32:
                            revert with 0, 34
                        _567 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor5[arg1][idx].field_512) * 0.5) + 32
                        mem[_567] = uint255(stor5[arg1][idx].field_512) * 0.5
                        if bool(stor5[arg1][idx].field_512):
                            if bool(stor5[arg1][idx].field_512) == uint255(stor5[arg1][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor5[arg1][idx].field_512):
                                if 31 >= uint255(stor5[arg1][idx].field_512) * 0.5:
                                    mem[_567 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_567 + 32] = stor5[arg1][idx][2].field_0
                                    t = _567 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _567 + (uint255(stor5[arg1][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor5[arg1][idx].field_512) == stor5[arg1][idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor5[arg1][idx].field_513 % 128:
                                if 31 >= stor5[arg1][idx].field_513 % 128:
                                    mem[_567 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_567 + 32] = stor5[arg1][idx][2].field_0
                                    t = _567 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _567 + stor5[arg1][idx].field_513 % 128 > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_538 + 64] = _567
                    else:
                        if bool(stor5[arg1][idx].field_512) == stor5[arg1][idx].field_513 % 128 < 32:
                            revert with 0, 34
                        _577 = mem[64]
                        mem[64] = mem[64] + ceil32(stor5[arg1][idx].field_513 % 128) + 32
                        mem[_577] = stor5[arg1][idx].field_513 % 128
                        if bool(stor5[arg1][idx].field_512):
                            if bool(stor5[arg1][idx].field_512) == uint255(stor5[arg1][idx].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor5[arg1][idx].field_512):
                                if 31 >= uint255(stor5[arg1][idx].field_512) * 0.5:
                                    mem[_577 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_577 + 32] = stor5[arg1][idx][2].field_0
                                    t = _577 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _577 + (uint255(stor5[arg1][idx].field_512) * 0.5) > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if bool(stor5[arg1][idx].field_512) == stor5[arg1][idx].field_513 % 128 < 32:
                                revert with 0, 34
                            if stor5[arg1][idx].field_513 % 128:
                                if 31 >= stor5[arg1][idx].field_513 % 128:
                                    mem[_577 + 32] = 256 * Mask(248, 0, stor5[arg1][idx].field_520)
                                else:
                                    mem[0] = sha3(idx, sha3(arg1, 5)) + 2
                                    mem[_577 + 32] = stor5[arg1][idx][2].field_0
                                    t = _577 + 32
                                    u = sha3(sha3(idx, sha3(arg1, 5)) + 2)
                                    while _577 + stor5[arg1][idx].field_513 % 128 > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_538 + 64] = _577
                    mem[_538 + 96] = stor5[arg1][idx].field_768
                    mem[_538 + 128] = stor5[arg1][idx].field_1024
                    mem[_538 + 160] = stor5[arg1][idx].field_1280
                    mem[_538 + 192] = stor5[arg1][idx].field_1536
                    mem[_538 + 224] = stor5[arg1][idx].field_1792
                    mem[_538 + 256] = stor5[arg1][idx].field_2048
                    mem[_538 + 288] = stor5[arg1][idx].field_2304
                    mem[_538 + 320] = stor5[arg1][idx].field_2560
                    mem[_538 + 352] = stor5[arg1][idx].field_2816
                    mem[_538 + 384] = bool(uint8(stor5[arg1][idx].field_3072))
                    if s >= 10:
                        revert with 0, 50
                    mem[(32 * s) + _7] = _538
                    if s == -1:
                        revert with 0, 17
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = s + 1
                    continue 
                _535 = mem[64]
                mem[mem[64]] = 32
                idx = 0
                s = _7
                t = mem[64] + 32
                u = mem[64] + 352
                while idx < 10:
                    mem[t] = u + -_535 - 32
                    _774 = mem[s]
                    mem[u] = mem[mem[s]]
                    mem[u + 32] = mem[_774 + 32]
                    _796 = mem[_774 + 64]
                    mem[u + 64] = 416
                    _805 = mem[_796]
                    mem[u + 416] = mem[_796]
                    v = 0
                    while v < _805:
                        mem[v + u + 448] = mem[v + _796 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_805) > _805:
                        mem[u + _805 + 448] = 0
                    mem[u + 96] = mem[_774 + 96]
                    mem[u + 128] = mem[_774 + 128]
                    mem[u + 160] = mem[_774 + 160]
                    mem[u + 192] = mem[_774 + 192]
                    mem[u + 224] = mem[_774 + 224]
                    mem[u + 256] = mem[_774 + 256]
                    mem[u + 288] = mem[_774 + 288]
                    mem[u + 320] = mem[_774 + 320]
                    mem[u + 352] = mem[_774 + 352]
                    mem[u + 384] = bool(mem[_774 + 384])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_805) + u + 448
                    continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
