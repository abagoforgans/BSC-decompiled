contract main {




// =====================  Runtime code  =====================


#
#  - sub_880066f9(?)
#  - sub_a048600d(?)
#
address owner;
address callableAddress;
address routerAddress;
address sub_0fc6a11cAddress;
address sub_126e6ee1Address;
address mdoAddress;
address sub_6792ef97Address;
address mdsAddress;
address mdgAddress;
uint32 stor9;
address sub_57601ca3Address;
uint256 stor9;
address busdAddress;
address wbnbAddress;
address cakeAddress;
address sub_221a36ccAddress;
address sub_e445cc4eAddress;
array of address sub_4407f58f;
array of address sub_c9a1adb0;
array of address sub_f1a0ccfa;
array of address sub_6dda9ae9;
array of address sub_c9e772ee;
array of address sub_ca0039bc;
array of struct sub_01c6a7be;
array of struct sub_20361c18;

function sub_01c6a7be(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_01c6a7be.length
    return sub_01c6a7be[arg1].field_0
}

function mds() payable {
    return mdsAddress
}

function sub_0fc6a11c(?) payable {
    return sub_0fc6a11cAddress
}

function sub_126e6ee1(?) payable {
    return sub_126e6ee1Address
}

function sub_20361c18(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_20361c18.length
    return sub_20361c18[arg1].field_0
}

function sub_221a36cc(?) payable {
    return sub_221a36ccAddress
}

function busd() payable {
    return busdAddress
}

function sub_4407f58f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4407f58f.length
    return sub_4407f58f[arg1]
}

function sub_57601ca3(?) payable {
    return address(sub_57601ca3Address)
}

function sub_6792ef97(?) payable {
    return sub_6792ef97Address
}

function callable() payable {
    return callableAddress
}

function sub_6dda9ae9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6dda9ae9.length
    return sub_6dda9ae9[arg1]
}

function wbnb() payable {
    return wbnbAddress
}

function owner() payable {
    return owner
}

function sub_c9a1adb0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c9a1adb0.length
    return sub_c9a1adb0[arg1]
}

function sub_c9e772ee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c9e772ee.length
    return sub_c9e772ee[arg1]
}

function sub_ca0039bc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_ca0039bc.length
    return sub_ca0039bc[arg1]
}

function cake() payable {
    return cakeAddress
}

function mdg() payable {
    return mdgAddress
}

function sub_e445cc4e(?) payable {
    return sub_e445cc4eAddress
}

function mdo() payable {
    return mdoAddress
}

function sub_f1a0ccfa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f1a0ccfa.length
    return sub_f1a0ccfa[arg1]
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function sub_7675c6ea(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Denied Owner'
    callableAddress = arg1
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner:
        if owner != msg.sender:
            revert with 0, 'Owner is not zero'
    owner = arg1
}

function sub_db20b7a6(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: Denied Owner'
    sub_221a36ccAddress = arg1
    require sub_01c6a7be.length
    address(sub_01c6a7be.field_0) = arg1
    sub_e445cc4eAddress = arg2
    require sub_20361c18.length
    address(sub_20361c18.field_0) = arg2
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: Denied Owner'
    if arg2:
        if arg2 <= 0:
            revert with 0, 'No balance'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'No balance'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_e6203869(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x9288d42a00000000000000000000000000000000000000000000000000000000
    mem[100] = address(sub_57601ca3Address)
    mem[164] = 10^18 * arg1
    mem[132] = 96
    mem[196] = sub_20361c18.length
    if not sub_20361c18.length:
        require ext_code.size(sub_0fc6a11cAddress)
        staticcall sub_0fc6a11cAddress.0x9288d42a with:
                gas gas_remaining wei
               args 0, uint32(stor9), 96, 10^18 * arg1, sub_20361c18.length
        if not ext_call.success:
            mem[96] = 0x9288d42a00000000000000000000000000000000000000000000000000000000
            mem[100] = address(sub_57601ca3Address)
            mem[164] = 10^18 * arg1
            mem[132] = 96
            mem[196] = sub_01c6a7be.length
            if not sub_01c6a7be.length:
                require ext_code.size(sub_0fc6a11cAddress)
                staticcall sub_0fc6a11cAddress.0x9288d42a with:
                        gas gas_remaining wei
                       args 0, uint32(stor9), 96, 10^18 * arg1, sub_01c6a7be.length
                if not ext_call.success:
                    return 0
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _13 = mem[96 len 4], Mask(224, 0, stor9)
                require mem[96 len 4], Mask(224, 0, stor9) <= 4294967296
                require mem[96 len 4], Mask(224, 0, stor9) + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 0, stor9) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor9) + (32 * mem[mem[96 len 4], Mask(224, 0, stor9) + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 0, stor9) + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_13 + 96])] = mem[_13 + 128 len floor32(mem[_13 + 96])]
            else:
                mem[0] = 21
                mem[228] = address(sub_01c6a7be.field_0)
                idx = 228
                s = 0
                while (32 * sub_01c6a7be.length) + 228 > idx + 32:
                    mem[idx + 32] = sub_01c6a7be[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_0fc6a11cAddress)
                staticcall sub_0fc6a11cAddress.0x9288d42a with:
                        gas gas_remaining wei
                       args 0, uint32(stor9), 96, 10^18 * arg1, sub_01c6a7be.length, mem[228 len 32 * sub_01c6a7be.length]
                if not ext_call.success:
                    return 0
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _70 = mem[96 len 4], Mask(224, 0, stor9)
                require mem[96 len 4], Mask(224, 0, stor9) <= 4294967296
                require mem[96 len 4], Mask(224, 0, stor9) + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 0, stor9) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor9) + (32 * mem[mem[96 len 4], Mask(224, 0, stor9) + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 0, stor9) + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_70 + 96])] = mem[_70 + 128 len floor32(mem[_70 + 96])]
            if 2 < mem[ceil32(return_data.size) + 96]:
                return 0, mem[ceil32(return_data.size) + 192]
        else:
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _5 = mem[96 len 4], Mask(224, 0, stor9)
            require mem[96 len 4], Mask(224, 0, stor9) <= 4294967296
            require mem[96 len 4], Mask(224, 0, stor9) + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 0, stor9) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor9) + (32 * mem[mem[96 len 4], Mask(224, 0, stor9) + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 0, stor9) + 96]
            _11 = mem[_5 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_5 + 96])] = mem[_5 + 128 len floor32(mem[_5 + 96])]
            if 2 < mem[ceil32(return_data.size) + 96]:
                _47 = mem[ceil32(return_data.size) + 192]
                mem[(32 * _11) + ceil32(return_data.size) + 128] = 0x9288d42a00000000000000000000000000000000000000000000000000000000
                mem[(32 * _11) + ceil32(return_data.size) + 132] = address(sub_57601ca3Address)
                mem[(32 * _11) + ceil32(return_data.size) + 196] = 10^18 * arg1
                mem[(32 * _11) + ceil32(return_data.size) + 164] = 96
                mem[(32 * _11) + ceil32(return_data.size) + 228] = sub_01c6a7be.length
                if not sub_01c6a7be.length:
                    require ext_code.size(sub_0fc6a11cAddress)
                    staticcall sub_0fc6a11cAddress.0x9288d42a with:
                            gas gas_remaining wei
                           args address(sub_57601ca3Address), 96, 10^18 * arg1, sub_01c6a7be.length
                    if not ext_call.success:
                        return _47, 0
                    mem[(32 * _11) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _11) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _54 = mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9)
                    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) <= 4294967296
                    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 32 <= return_data.size
                    require mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 128] <= 4294967296 and mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + (32 * mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 128]) + 32 <= return_data.size
                    mem[(32 * _11) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 128]
                    mem[(32 * _11) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _11) + ceil32(return_data.size) + _54 + 128])] = mem[(32 * _11) + ceil32(return_data.size) + _54 + 160 len floor32(mem[(32 * _11) + ceil32(return_data.size) + _54 + 128])]
                else:
                    mem[0] = 21
                    mem[(32 * _11) + ceil32(return_data.size) + 260] = address(sub_01c6a7be.field_0)
                    idx = (32 * _11) + ceil32(return_data.size) + 260
                    s = 0
                    while (32 * _11) + ceil32(return_data.size) + (32 * sub_01c6a7be.length) + 260 > idx + 32:
                        mem[idx + 32] = sub_01c6a7be[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0fc6a11cAddress)
                    staticcall sub_0fc6a11cAddress.0x9288d42a with:
                            gas gas_remaining wei
                           args address(sub_57601ca3Address), Array(len=sub_01c6a7be.length, data=mem[(32 * _11) + ceil32(return_data.size) + 260 len 32 * sub_01c6a7be.length]), 10^18 * arg1
                    if not ext_call.success:
                        return _47, 0
                    mem[(32 * _11) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _11) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _128 = mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9)
                    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) <= 4294967296
                    require mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 32 <= return_data.size
                    require mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 128] <= 4294967296 and mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + (32 * mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 128]) + 32 <= return_data.size
                    mem[(32 * _11) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 128]
                    mem[(32 * _11) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _11) + ceil32(return_data.size) + _128 + 128])] = mem[(32 * _11) + ceil32(return_data.size) + _128 + 160 len floor32(mem[(32 * _11) + ceil32(return_data.size) + _128 + 128])]
                if 2 < mem[(32 * _11) + (2 * ceil32(return_data.size)) + 128]:
                    return _47, mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224]
    else:
        mem[0] = 22
        mem[228] = address(sub_20361c18.field_0)
        idx = 228
        s = 0
        while (32 * sub_20361c18.length) + 228 > idx + 32:
            mem[idx + 32] = sub_20361c18[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(sub_0fc6a11cAddress)
        staticcall sub_0fc6a11cAddress.0x9288d42a with:
                gas gas_remaining wei
               args 0, uint32(stor9), 96, 10^18 * arg1, sub_20361c18.length, mem[228 len 32 * sub_20361c18.length]
        if not ext_call.success:
            mem[96] = 0x9288d42a00000000000000000000000000000000000000000000000000000000
            mem[100] = address(sub_57601ca3Address)
            mem[164] = 10^18 * arg1
            mem[132] = 96
            mem[196] = sub_01c6a7be.length
            if not sub_01c6a7be.length:
                require ext_code.size(sub_0fc6a11cAddress)
                staticcall sub_0fc6a11cAddress.0x9288d42a with:
                        gas gas_remaining wei
                       args 0, uint32(stor9), 96, 10^18 * arg1, sub_01c6a7be.length
                if not ext_call.success:
                    return 0
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _89 = mem[96 len 4], Mask(224, 0, stor9)
                require mem[96 len 4], Mask(224, 0, stor9) <= 4294967296
                require mem[96 len 4], Mask(224, 0, stor9) + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 0, stor9) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor9) + (32 * mem[mem[96 len 4], Mask(224, 0, stor9) + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 0, stor9) + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_89 + 96])] = mem[_89 + 128 len floor32(mem[_89 + 96])]
            else:
                mem[0] = 21
                mem[228] = address(sub_01c6a7be.field_0)
                idx = 228
                s = 0
                while (32 * sub_01c6a7be.length) + 228 > idx + 32:
                    mem[idx + 32] = sub_01c6a7be[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(sub_0fc6a11cAddress)
                staticcall sub_0fc6a11cAddress.0x9288d42a with:
                        gas gas_remaining wei
                       args 0, uint32(stor9), 96, 10^18 * arg1, sub_01c6a7be.length, mem[228 len 32 * sub_01c6a7be.length]
                if not ext_call.success:
                    return 0
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _168 = mem[96 len 4], Mask(224, 0, stor9)
                require mem[96 len 4], Mask(224, 0, stor9) <= 4294967296
                require mem[96 len 4], Mask(224, 0, stor9) + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 0, stor9) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor9) + (32 * mem[mem[96 len 4], Mask(224, 0, stor9) + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 0, stor9) + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_168 + 96])] = mem[_168 + 128 len floor32(mem[_168 + 96])]
            if 2 < mem[ceil32(return_data.size) + 96]:
                return 0, mem[ceil32(return_data.size) + 192]
        else:
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _73 = mem[96 len 4], Mask(224, 0, stor9)
            require mem[96 len 4], Mask(224, 0, stor9) <= 4294967296
            require mem[96 len 4], Mask(224, 0, stor9) + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 0, stor9) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor9) + (32 * mem[mem[96 len 4], Mask(224, 0, stor9) + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 0, stor9) + 96]
            _86 = mem[_73 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_73 + 96])] = mem[_73 + 128 len floor32(mem[_73 + 96])]
            if 2 < mem[ceil32(return_data.size) + 96]:
                _134 = mem[ceil32(return_data.size) + 192]
                mem[(32 * _86) + ceil32(return_data.size) + 128] = 0x9288d42a00000000000000000000000000000000000000000000000000000000
                mem[(32 * _86) + ceil32(return_data.size) + 132] = address(sub_57601ca3Address)
                mem[(32 * _86) + ceil32(return_data.size) + 196] = 10^18 * arg1
                mem[(32 * _86) + ceil32(return_data.size) + 164] = 96
                mem[(32 * _86) + ceil32(return_data.size) + 228] = sub_01c6a7be.length
                if not sub_01c6a7be.length:
                    require ext_code.size(sub_0fc6a11cAddress)
                    staticcall sub_0fc6a11cAddress.0x9288d42a with:
                            gas gas_remaining wei
                           args address(sub_57601ca3Address), 96, 10^18 * arg1, sub_01c6a7be.length
                    if not ext_call.success:
                        return _134, 0
                    mem[(32 * _86) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _86) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _148 = mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9)
                    require mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) <= 4294967296
                    require mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 32 <= return_data.size
                    require mem[(32 * _86) + ceil32(return_data.size) + mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 128] <= 4294967296 and mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + (32 * mem[(32 * _86) + ceil32(return_data.size) + mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 128]) + 32 <= return_data.size
                    mem[(32 * _86) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _86) + ceil32(return_data.size) + mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 128]
                    mem[(32 * _86) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _86) + ceil32(return_data.size) + _148 + 128])] = mem[(32 * _86) + ceil32(return_data.size) + _148 + 160 len floor32(mem[(32 * _86) + ceil32(return_data.size) + _148 + 128])]
                else:
                    mem[0] = 21
                    mem[(32 * _86) + ceil32(return_data.size) + 260] = address(sub_01c6a7be.field_0)
                    idx = (32 * _86) + ceil32(return_data.size) + 260
                    s = 0
                    while (32 * _86) + ceil32(return_data.size) + (32 * sub_01c6a7be.length) + 260 > idx + 32:
                        mem[idx + 32] = sub_01c6a7be[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(sub_0fc6a11cAddress)
                    staticcall sub_0fc6a11cAddress.0x9288d42a with:
                            gas gas_remaining wei
                           args address(sub_57601ca3Address), Array(len=sub_01c6a7be.length, data=mem[(32 * _86) + ceil32(return_data.size) + 260 len 32 * sub_01c6a7be.length]), 10^18 * arg1
                    if not ext_call.success:
                        return _134, 0
                    mem[(32 * _86) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _86) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _190 = mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9)
                    require mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) <= 4294967296
                    require mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 32 <= return_data.size
                    require mem[(32 * _86) + ceil32(return_data.size) + mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 128] <= 4294967296 and mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + (32 * mem[(32 * _86) + ceil32(return_data.size) + mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 128]) + 32 <= return_data.size
                    mem[(32 * _86) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _86) + ceil32(return_data.size) + mem[(32 * _86) + ceil32(return_data.size) + 128 len 4], Mask(224, 0, stor9) + 128]
                    mem[(32 * _86) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _86) + ceil32(return_data.size) + _190 + 128])] = mem[(32 * _86) + ceil32(return_data.size) + _190 + 160 len floor32(mem[(32 * _86) + ceil32(return_data.size) + _190 + 128])]
                if 2 < mem[(32 * _86) + (2 * ceil32(return_data.size)) + 128]:
                    return _134, mem[(32 * _86) + (2 * ceil32(return_data.size)) + 224]
    revert
}



}
