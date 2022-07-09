contract main {




// =====================  Runtime code  =====================


#
#  - sub_31abeeb1(?)
#  - sub_e73ff5a5(?)
#  - _fallback()
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint32 stor21;
address owner;
uint256 stor21;
mapping of uint8 stor42;
array of struct stor63;
address sub_5f655963Address;
array of struct sub_bf3afd0a;
mapping of uint8 stor128;
uint256 sub_540a9f6f;
uint8 sub_4c7aaf85;
uint8 sub_0860c3f3; offset 8
uint8 sub_24249c31; offset 16
uint32 stor130;
array of struct stor131;
array of struct stor132;
uint8 sub_858908cc;

function sub_0860c3f3(?) {
    return sub_0860c3f3
}

function sub_24249c31(?) {
    return sub_24249c31
}

function sub_4c7aaf85(?) {
    return sub_4c7aaf85
}

function sub_540a9f6f(?) {
    return sub_540a9f6f
}

function sub_5f655963(?) {
    if not stor42[msg.sender]:
        revert with 0, 'Auth: not authorised'
    return sub_5f655963Address
}

function sub_858908cc(?) {
    return bool(sub_858908cc)
}

function owner() {
    return address(owner)
}

function sub_bc2575c2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor128[arg1])
}

function sub_bf3afd0a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_bf3afd0a[arg1].field_0
    return sub_bf3afd0a[arg1][arg2].field_0
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: owner only'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function sub_172dd37a(?) {
    require calldata.size - 4 >= 32
    if not stor42[msg.sender]:
        revert with 0, 'Auth: not authorised'
    emit 0x9b33717f: sub_540a9f6f, arg1
    sub_540a9f6f = arg1
}

function sub_c1cdf3ec(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not stor42[msg.sender]:
        revert with 0, 'Auth: not authorised'
    emit 0x74b0c76f: bool(arg1)
    sub_858908cc = uint8(bool(arg1))
}

function sub_62af2185(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if not stor42[msg.sender]:
        revert with 0, 'Auth: not authorised'
    emit 0x7580740d: sub_4c7aaf85, uint8(arg1)
    sub_24249c31 = uint8(arg1)
}

function sub_c8bf2a26(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if not stor42[msg.sender]:
        revert with 0, 'Auth: not authorised'
    emit 0x3baf0145: sub_4c7aaf85, uint8(arg1)
    sub_0860c3f3 = uint8(arg1)
}

function sub_cdbce882(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if not stor42[msg.sender]:
        revert with 0, 'Auth: not authorised'
    emit 0x41556df5: sub_4c7aaf85, uint8(arg1)
    sub_4c7aaf85 = uint8(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: owner only'
    if not arg1:
        revert with 0, 'Ownable: can't be 0 address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function authorise(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: owner only'
    if address(owner) == arg1:
        revert with 0, 'Auth: can't remove owner'
    if arg2 == bool(stor42[address(arg1)]):
        revert with 0, 'Auth: already set to that'
    stor42[address(arg1)] = uint8(arg2)
    emit AuthorisationChanged(arg2, arg1);
}

function withdrawETH() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: owner only'
    if eth.balance(this.address) <= 0:
        revert with 0, 'MB: No BNB to withdraw'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call address(owner) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function sub_bc29d913(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor42[msg.sender]:
        revert with 0, 'Auth: not authorised'
    if not address(arg1):
        revert with 0, 'MB: Zero address'
    if sub_5f655963Address == address(arg1):
        revert with 0, 'MB: Already set to that'
    staticcall address(arg1).getImplementation(string arg1) with:
            gas gas_remaining wei
           args 'DoughGenericCloneFactory'
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MB: Not a valid DoughGenericCloneFactory instance'
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    emit 0x25341c43: sub_5f655963Address, address(arg1)
    sub_5f655963Address = address(arg1)
}

function setVersion(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: owner only'
    if bool(stor63.length):
        if bool(stor63.length) == uint255(stor63.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor63[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor63.length = 0
            idx = 0
            while (uint255(stor63.length) * 0.5) + 31 / 32 > idx:
                stor63[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor63.length) == stor63.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor63[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor63.length = 0
            idx = 0
            while stor63.length.field_1 + 31 / 32 > idx:
                stor63[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_cc87432b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[64] = (32 * sub_bf3afd0a[address(arg1)].field_0) + 128
    mem[96] = sub_bf3afd0a[address(arg1)].field_0
    if not sub_bf3afd0a[address(arg1)].field_0:
        mem[(32 * sub_bf3afd0a[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_bf3afd0a[address(arg1)].field_0) + 160] = sub_bf3afd0a[address(arg1)].field_0
        idx = 0
        s = 128
        t = (32 * sub_bf3afd0a[address(arg1)].field_0) + 192
        while idx < sub_bf3afd0a[address(arg1)].field_0:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_bf3afd0a[address(arg1)].field_0) + 128
           len (96 * sub_bf3afd0a[address(arg1)].field_0) + 64
    mem[128] = sub_bf3afd0a[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_bf3afd0a[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_bf3afd0a[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_bf3afd0a[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_bf3afd0a[address(arg1)].field_0) + 160] = sub_bf3afd0a[address(arg1)].field_0
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_bf3afd0a[address(arg1)].field_0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_bf3afd0a[address(arg1)].field_0) + -mem[64] + 192
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: owner only'
    if not arg1:
        revert with 0, 'MB: Zero address'
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'MB: No token to withdraw'
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor21)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor21), uint32(stor21), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function getVersion() {
    if bool(stor63.length):
        if bool(stor63.length) == uint255(stor63.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor63.length):
            if bool(stor63.length) == uint255(stor63.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor63.length):
                if 31 < uint255(stor63.length) * 0.5:
                    mem[128] = uint256(stor63.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor63.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor63[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor63.length), data=mem[128 len ceil32(uint255(stor63.length) * 0.5)])
                mem[128] = 256 * stor63.length.field_8
        else:
            if bool(stor63.length) == stor63.length.field_1 < 32:
                revert with 0, 34
            if stor63.length.field_1:
                if 31 < stor63.length.field_1:
                    mem[128] = uint256(stor63.field_0)
                    idx = 128
                    s = 0
                    while stor63.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor63[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor63.length), data=mem[128 len ceil32(uint255(stor63.length) * 0.5)])
                mem[128] = 256 * stor63.length.field_8
        mem[ceil32(uint255(stor63.length) * 0.5) + 192 len ceil32(uint255(stor63.length) * 0.5)] = mem[128 len ceil32(uint255(stor63.length) * 0.5)]
        if ceil32(uint255(stor63.length) * 0.5) > uint255(stor63.length) * 0.5:
            mem[ceil32(uint255(stor63.length) * 0.5) + (uint255(stor63.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor63.length), data=mem[128 len ceil32(uint255(stor63.length) * 0.5)], mem[(2 * ceil32(uint255(stor63.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor63.length) * 0.5)]), 
    if bool(stor63.length) == stor63.length.field_1 < 32:
        revert with 0, 34
    if bool(stor63.length):
        if bool(stor63.length) == uint255(stor63.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor63.length):
            if 31 < uint255(stor63.length) * 0.5:
                mem[128] = uint256(stor63.field_0)
                idx = 128
                s = 0
                while (uint255(stor63.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor63[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor63.length % 128, data=mem[128 len ceil32(stor63.length.field_1)])
            mem[128] = 256 * stor63.length.field_8
    else:
        if bool(stor63.length) == stor63.length.field_1 < 32:
            revert with 0, 34
        if stor63.length.field_1:
            if 31 < stor63.length.field_1:
                mem[128] = uint256(stor63.field_0)
                idx = 128
                s = 0
                while stor63.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor63[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor63.length % 128, data=mem[128 len ceil32(stor63.length.field_1)])
            mem[128] = 256 * stor63.length.field_8
    mem[ceil32(stor63.length.field_1) + 192 len ceil32(stor63.length.field_1)] = mem[128 len ceil32(stor63.length.field_1)]
    if ceil32(stor63.length.field_1) > stor63.length.field_1:
        mem[ceil32(stor63.length.field_1) + stor63.length.field_1 + 192] = 0
    return Array(len=stor63.length % 128, data=mem[128 len ceil32(stor63.length.field_1)], mem[(2 * ceil32(stor63.length.field_1)) + 192 len 2 * ceil32(stor63.length.field_1)]), 
}

function sub_afcc7726(?) {
    if bool(stor132.length):
        if bool(stor132.length) == uint255(stor132.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor132.length):
            if bool(stor132.length) == uint255(stor132.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor132.length):
                if 31 < uint255(stor132.length) * 0.5:
                    mem[128] = uint256(stor132.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor132.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor132[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor132.length), data=mem[128 len ceil32(uint255(stor132.length) * 0.5)])
                mem[128] = 256 * stor132.length.field_8
        else:
            if bool(stor132.length) == stor132.length.field_1 < 32:
                revert with 0, 34
            if stor132.length.field_1:
                if 31 < stor132.length.field_1:
                    mem[128] = uint256(stor132.field_0)
                    idx = 128
                    s = 0
                    while stor132.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor132[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor132.length), data=mem[128 len ceil32(uint255(stor132.length) * 0.5)])
                mem[128] = 256 * stor132.length.field_8
        mem[ceil32(uint255(stor132.length) * 0.5) + 192 len ceil32(uint255(stor132.length) * 0.5)] = mem[128 len ceil32(uint255(stor132.length) * 0.5)]
        if ceil32(uint255(stor132.length) * 0.5) > uint255(stor132.length) * 0.5:
            mem[ceil32(uint255(stor132.length) * 0.5) + (uint255(stor132.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor132.length), data=mem[128 len ceil32(uint255(stor132.length) * 0.5)], mem[(2 * ceil32(uint255(stor132.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor132.length) * 0.5)]), 
    if bool(stor132.length) == stor132.length.field_1 < 32:
        revert with 0, 34
    if bool(stor132.length):
        if bool(stor132.length) == uint255(stor132.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor132.length):
            if 31 < uint255(stor132.length) * 0.5:
                mem[128] = uint256(stor132.field_0)
                idx = 128
                s = 0
                while (uint255(stor132.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor132[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor132.length % 128, data=mem[128 len ceil32(stor132.length.field_1)])
            mem[128] = 256 * stor132.length.field_8
    else:
        if bool(stor132.length) == stor132.length.field_1 < 32:
            revert with 0, 34
        if stor132.length.field_1:
            if 31 < stor132.length.field_1:
                mem[128] = uint256(stor132.field_0)
                idx = 128
                s = 0
                while stor132.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor132[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor132.length % 128, data=mem[128 len ceil32(stor132.length.field_1)])
            mem[128] = 256 * stor132.length.field_8
    mem[ceil32(stor132.length.field_1) + 192 len ceil32(stor132.length.field_1)] = mem[128 len ceil32(stor132.length.field_1)]
    if ceil32(stor132.length.field_1) > stor132.length.field_1:
        mem[ceil32(stor132.length.field_1) + stor132.length.field_1 + 192] = 0
    return Array(len=stor132.length % 128, data=mem[128 len ceil32(stor132.length.field_1)], mem[(2 * ceil32(stor132.length.field_1)) + 192 len 2 * ceil32(stor132.length.field_1)]), 
}

function sub_cdbfcee0(?) {
    if bool(stor131.length):
        if bool(stor131.length) == uint255(stor131.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor131.length):
            if bool(stor131.length) == uint255(stor131.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor131.length):
                if 31 < uint255(stor131.length) * 0.5:
                    mem[128] = uint256(stor131.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor131.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor131[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor131.length), data=mem[128 len ceil32(uint255(stor131.length) * 0.5)])
                mem[128] = 256 * stor131.length.field_8
        else:
            if bool(stor131.length) == stor131.length.field_1 < 32:
                revert with 0, 34
            if stor131.length.field_1:
                if 31 < stor131.length.field_1:
                    mem[128] = uint256(stor131.field_0)
                    idx = 128
                    s = 0
                    while stor131.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor131[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor131.length), data=mem[128 len ceil32(uint255(stor131.length) * 0.5)])
                mem[128] = 256 * stor131.length.field_8
        mem[ceil32(uint255(stor131.length) * 0.5) + 192 len ceil32(uint255(stor131.length) * 0.5)] = mem[128 len ceil32(uint255(stor131.length) * 0.5)]
        if ceil32(uint255(stor131.length) * 0.5) > uint255(stor131.length) * 0.5:
            mem[ceil32(uint255(stor131.length) * 0.5) + (uint255(stor131.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor131.length), data=mem[128 len ceil32(uint255(stor131.length) * 0.5)], mem[(2 * ceil32(uint255(stor131.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor131.length) * 0.5)]), 
    if bool(stor131.length) == stor131.length.field_1 < 32:
        revert with 0, 34
    if bool(stor131.length):
        if bool(stor131.length) == uint255(stor131.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor131.length):
            if 31 < uint255(stor131.length) * 0.5:
                mem[128] = uint256(stor131.field_0)
                idx = 128
                s = 0
                while (uint255(stor131.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor131[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor131.length % 128, data=mem[128 len ceil32(stor131.length.field_1)])
            mem[128] = 256 * stor131.length.field_8
    else:
        if bool(stor131.length) == stor131.length.field_1 < 32:
            revert with 0, 34
        if stor131.length.field_1:
            if 31 < stor131.length.field_1:
                mem[128] = uint256(stor131.field_0)
                idx = 128
                s = 0
                while stor131.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor131[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor131.length % 128, data=mem[128 len ceil32(stor131.length.field_1)])
            mem[128] = 256 * stor131.length.field_8
    mem[ceil32(stor131.length.field_1) + 192 len ceil32(stor131.length.field_1)] = mem[128 len ceil32(stor131.length.field_1)]
    if ceil32(stor131.length.field_1) > stor131.length.field_1:
        mem[ceil32(stor131.length.field_1) + stor131.length.field_1 + 192] = 0
    return Array(len=stor131.length % 128, data=mem[128 len ceil32(stor131.length.field_1)], mem[(2 * ceil32(stor131.length.field_1)) + 192 len 2 * ceil32(stor131.length.field_1)]), 
}

function sub_36be4da4(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    if not stor42[msg.sender]:
        revert with 0, 'Auth: not authorised'
    if bool(stor132.length):
        if bool(stor132.length) == uint255(stor132.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor132.length):
            emit 0x4f70100a: 64, 128, 2 * Mask(256, -1, stor132.length), Mask(248, 8, stor132.length), arg1.length, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 64) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        else:
            if bool(stor132.length) != 1:
                emit 0x4f70100a: mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) - 65]
            else:
                idx = 0
                s = 0
                while idx < uint255(stor132.length) * 0.5:
                    mem[idx + ceil32(ceil32(arg1.length)) + 193] = stor132[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor132.length) * 0.5) + 193] = arg1.length
                emit 0x4f70100a: Array(len=2 * Mask(256, -1, stor132.length), data=mem[ceil32(ceil32(arg1.length)) + 193 len ceil32(uint255(stor132.length) * 0.5) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 64) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256), ceil32(uint255(stor132.length) * 0.5) + 96
    else:
        if bool(stor132.length) == stor132.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor132.length):
            emit 0x4f70100a: 64, 128, stor132.length % 128, Mask(248, 8, stor132.length), arg1.length, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 64) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        else:
            if bool(stor132.length) != 1:
                emit 0x4f70100a: mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) - 65]
            else:
                idx = 0
                s = 0
                while idx < stor132.length.field_1:
                    mem[idx + ceil32(ceil32(arg1.length)) + 193] = stor132[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor132.length.field_1) + 193] = arg1.length
                emit 0x4f70100a: Array(len=stor132.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 193 len ceil32(stor132.length.field_1) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 64) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256), ceil32(stor132.length.field_1) + 96
    if bool(stor132.length):
        if bool(stor132.length) == uint255(stor132.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor132[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor132.length = 0
            idx = 0
            while (uint255(stor132.length) * 0.5) + 31 / 32 > idx:
                stor132[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor132.length) == stor132.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor132[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor132.length = 0
            idx = 0
            while stor132.length.field_1 + 31 / 32 > idx:
                stor132[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_fdf46b25(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    if not stor42[msg.sender]:
        revert with 0, 'Auth: not authorised'
    if bool(stor131.length):
        if bool(stor131.length) == uint255(stor131.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor131.length):
            emit 0x78e99d72: 64, 128, 2 * Mask(256, -1, stor131.length), Mask(248, 8, stor131.length), arg1.length, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 64) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        else:
            if bool(stor131.length) != 1:
                emit 0x78e99d72: mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) - 65]
            else:
                idx = 0
                s = 0
                while idx < uint255(stor131.length) * 0.5:
                    mem[idx + ceil32(ceil32(arg1.length)) + 193] = stor131[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor131.length) * 0.5) + 193] = arg1.length
                emit 0x78e99d72: Array(len=2 * Mask(256, -1, stor131.length), data=mem[ceil32(ceil32(arg1.length)) + 193 len ceil32(uint255(stor131.length) * 0.5) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 64) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256), ceil32(uint255(stor131.length) * 0.5) + 96
    else:
        if bool(stor131.length) == stor131.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor131.length):
            emit 0x78e99d72: 64, 128, stor131.length % 128, Mask(248, 8, stor131.length), arg1.length, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 64) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        else:
            if bool(stor131.length) != 1:
                emit 0x78e99d72: mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) - 65]
            else:
                idx = 0
                s = 0
                while idx < stor131.length.field_1:
                    mem[idx + ceil32(ceil32(arg1.length)) + 193] = stor131[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(ceil32(arg1.length)) + ceil32(stor131.length.field_1) + 193] = arg1.length
                emit 0x78e99d72: Array(len=stor131.length % 128, data=mem[ceil32(ceil32(arg1.length)) + 193 len ceil32(stor131.length.field_1) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, 64) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256), ceil32(stor131.length.field_1) + 96
    if bool(stor131.length):
        if bool(stor131.length) == uint255(stor131.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor131[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor131.length = 0
            idx = 0
            while (uint255(stor131.length) * 0.5) + 31 / 32 > idx:
                stor131[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor131.length) == stor131.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor131[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor131.length = 0
            idx = 0
            while stor131.length.field_1 + 31 / 32 > idx:
                stor131[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function initialize(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if uint8(stor0.field_8):
        address(owner) = msg.sender
        emit OwnershipTransferred(address(owner), msg.sender);
        stor42[msg.sender] = 1
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            address(owner) = msg.sender
            emit OwnershipTransferred(address(owner), msg.sender);
            stor42[msg.sender] = 1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                address(owner) = msg.sender
                emit OwnershipTransferred(address(owner), msg.sender);
                stor42[msg.sender] = 1
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    address(owner) = msg.sender
                    emit OwnershipTransferred(address(owner), msg.sender);
                    stor42[msg.sender] = 1
                else:
                    uint16(stor0.field_0) = 257
                    if uint8(stor0.field_0):
                        revert with 0, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        address(owner) = msg.sender
                        emit OwnershipTransferred(address(owner), msg.sender);
                        stor42[msg.sender] = 1
                    else:
                        uint16(stor0.field_0) = 257
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            address(owner) = msg.sender
                            emit OwnershipTransferred(address(owner), msg.sender);
                            stor42[msg.sender] = 1
                        else:
                            uint16(stor0.field_0) = 257
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                address(owner) = msg.sender
                                emit OwnershipTransferred(address(owner), msg.sender);
                                stor42[msg.sender] = 1
                            else:
                                uint16(stor0.field_0) = 257
                                address(owner) = msg.sender
                                emit OwnershipTransferred(address(owner), msg.sender);
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    stor42[msg.sender] = 1
                                else:
                                    uint16(stor0.field_0) = 257
                                    stor42[msg.sender] = 1
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                    if not uint8(stor0.field_8):
                                        uint16(stor0.field_0) = 257
    if bool(stor63.length):
        if bool(stor63.length) == uint255(stor63.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor63[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor63.length = 0
            idx = 0
            while (uint255(stor63.length) * 0.5) + 31 / 32 > idx:
                stor63[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor63.length) == stor63.length.field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor63[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor63.length = 0
            idx = 0
            while stor63.length.field_1 + 31 / 32 > idx:
                stor63[idx].field_0 = 0
                idx = idx + 1
                continue 
    if uint8(stor0.field_8):
        sub_5f655963Address = arg1
    else:
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            sub_5f655963Address = arg1
        else:
            uint16(stor0.field_0) = 257
            sub_5f655963Address = arg1
            uint8(stor0.field_8) = 0
            uint8(stor0.field_8) = 0
    stor130 = 334081
    if bool(stor131.length):
        if bool(stor131.length) == uint255(stor131.length) * 0.5 < 32:
            revert with 0, 34
        uint8(stor131.length) = 42
        stor131.length.field_8 = 0
        stor131.length.field_88 = Mask(168, 0, 'RewardLockerCloneable')
        idx = 0
        while (uint255(stor131.length) * 0.5) + 31 / 32 > idx:
            stor131[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor131.length) == stor131.length.field_1 < 32:
            revert with 0, 34
        uint8(stor131.length) = 42
        stor131.length.field_8 = 0
        stor131.length.field_88 = Mask(168, 0, 'RewardLockerCloneable')
        idx = 0
        while stor131.length.field_1 + 31 / 32 > idx:
            stor131[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor132.length):
        if bool(stor132.length) == uint255(stor132.length) * 0.5 < 32:
            revert with 0, 34
        uint8(stor132.length) = 42
        stor132.length.field_8 = 0
        stor132.length.field_88 = Mask(168, 0, 'RewardLockerCloneable')
        idx = 0
        while (uint255(stor132.length) * 0.5) + 31 / 32 > idx:
            stor132[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor132.length) == stor132.length.field_1 < 32:
            revert with 0, 34
        uint8(stor132.length) = 42
        stor132.length.field_8 = 0
        stor132.length.field_88 = Mask(168, 0, 'RewardLockerCloneable')
        idx = 0
        while stor132.length.field_1 + 31 / 32 > idx:
            stor132[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_540a9f6f = 10^16
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
