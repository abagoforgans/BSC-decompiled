contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
uint8 stor2;
uint8 contractType;
mapping of struct stor4;
uint64 sub_1af10c6c;
uint256 sub_48915229;
uint256 sub_17519bfd;
mapping of struct stor9;
array of struct sub_94436356;
uint256 sub_ac9a3c1f;
uint256 sub_c87b462c;
uint8 sub_1101895a;
mapping of struct stor23;
mapping of struct stor24;
array of struct stor25;
mapping of uint8 stor26;
mapping of uint256 allowance;
array of uint256 symbol;
uint8 decimals;
address sub_26f05442Address;
address sub_d667615eAddress;
array of uint256 name;
array of uint256 version;
array of uint256 unit;

function name() {
    return name[0 len name.length]
}

function sub_1101895a(?) {
    return bool(sub_1101895a)
}

function sub_17519bfd(?) {
    return sub_17519bfd
}

function sub_1af10c6c(?) {
    return sub_1af10c6c
}

function sub_26f05442(?) {
    return sub_26f05442Address
}

function decimals() {
    return decimals
}

function sub_48915229(?) {
    return sub_48915229
}

function version() {
    return version[0 len version.length]
}

function unit() {
    return unit[0 len unit.length]
}

function sub_94436356(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_94436356.length
    return sub_94436356[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_ac9a3c1f(?) {
    return sub_ac9a3c1f
}

function getContractType() {
    require contractType < 3
    return contractType
}

function sub_c87b462c(?) {
    return sub_c87b462c
}

function sub_c8d37db2(?) {
    return sub_94436356.length
}

function sub_d667615e(?) {
    return sub_d667615eAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function readOnly() {
    return bool(stor2)
}

function _fallback() payable {
    revert
}

function sealContract() {
    sub_1101895a = 1
}

function totalSupply() {
    return (sub_ac9a3c1f - sub_c87b462c)
}

function setReadOnly(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        stor2 = uint8(arg1)
    revert with 0, 'Restricted'
}

function sub_be67c6c1(?) {
    require calldata.size - 4 >= 96
    if stor2:
        revert with 0, 'Read-only'
    require ext_code.size(0x1fad207cf58b4620fe422160a91c0eb78fb0edf5)
    delegate 0x1fad207cf58b4620fe422160a91c0eb78fb0edf5.0xcd7db54c with:
         gas gas_remaining wei
        args 0, 3, 30, arg1, arg2, arg3, stor0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_31f17857(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0x8790142d7a4a71c9faad3280e6cf1d886f8baa51)
    delegate 0x8790142d7a4a71c9faad3280e6cf1d886f8baa51.0x13d674fe with:
         gas gas_remaining wei
        args 0, 3, 14, 19, 25, 21, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_b97c41a5(?) {
    if not sub_26f05442Address:
        return 100 * 10^6
    require ext_code.size(0x1fad207cf58b4620fe422160a91c0eb78fb0edf5)
    delegate 0x1fad207cf58b4620fe422160a91c0eb78fb0edf5.0xcc23f384 with:
         gas gas_remaining wei
        args sub_26f05442Address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_e1025e03(?) {
    if not sub_d667615eAddress:
        return 100 * 10^6
    require ext_code.size(0x1fad207cf58b4620fe422160a91c0eb78fb0edf5)
    delegate 0x1fad207cf58b4620fe422160a91c0eb78fb0edf5.0xcc23f384 with:
         gas gas_remaining wei
        args sub_d667615eAddress
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(0xb6d70c888b79c4d0e247f3185f5c4029560a163)
    delegate 0xb6d70c888b79c4d0e247f3185f5c4029560a163.0x5e4a87c7 with:
         gas gas_remaining wei
        args 0, 3, 25, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    return bool(delegate.return_data[0])
}

function sub_7f2f97b1(?) {
    require calldata.size - 4 >= 128
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        require ext_code.size(0x74e486732e0ada7be865ac0d6139a80c1bf35f9a)
        delegate 0x74e486732e0ada7be865ac0d6139a80c1bf35f9a.0xfb960466 with:
             gas gas_remaining wei
            args 0, 3, arg1, arg2, arg3, arg4
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'Restricted'
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xb6d70c888b79c4d0e247f3185f5c4029560a163)
    delegate 0xb6d70c888b79c4d0e247f3185f5c4029560a163.0xc7e5f9cb with:
         gas gas_remaining wei
        args 0, 3, 14, 19, 21, 25, address(arg1), stor0, address(arg2), arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    return bool(delegate.return_data[0])
}

function sub_5126dad7(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint64(arg1)
    require arg2 == uint16(arg2)
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        if stor2:
            revert with 0, 'Read-only'
        require ext_code.size(0x7627ca2ef2f65a351d4dae7bb98edb78d2039333)
        delegate 0x7627ca2ef2f65a351d4dae7bb98edb78d2039333.0x7cc1af3d with:
             gas gas_remaining wei
            args 3, arg1 << 192, uint16(arg2)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'Restricted'
}

function sub_06389736(?) {
    require calldata.size - 4 >= 224
    require arg1 == uint64(arg1)
    require calldata.size - 36 >= 192
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        if stor2:
            revert with 0, 'Read-only'
        require arg7 == bool(arg7)
        require ext_code.size(0x7627ca2ef2f65a351d4dae7bb98edb78d2039333)
        delegate 0x7627ca2ef2f65a351d4dae7bb98edb78d2039333.0x22e7249c with:
             gas gas_remaining wei
            args 0, 3, arg1 << 192, arg2, arg3, arg4, arg5, arg6, bool(arg7)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'Restricted'
}

function sub_a8bd9968(?) {
    require calldata.size - 4 >= 256
    require arg2 == address(arg2)
    require calldata.size - 68 >= 192
    require arg8 == bool(arg8)
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        if stor2:
            revert with 0, 'Read-only'
        require ext_code.size(0x6d48b18d3d694dee48deba10b6d8743211e48ad5)
        delegate 0x6d48b18d3d694dee48deba10b6d8743211e48ad5.0x5b4c66e6 with:
             gas gas_remaining wei
            args 0, 3, 14, 21, arg1, address(arg2), arg3, arg4, arg5, arg6, arg7, bool(arg8)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'Restricted'
}

function getWhitelist() {
    if stor25.length:
        mem[128] = address(stor25.field_0)
        if (32 * stor25.length) + 32 > 64:
            mem[160] = address(stor25.field_256)
            idx = 160
            s = 1
            while (32 * stor25.length) + 96 > idx:
                mem[idx + 32] = stor25[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor25.length) + 128] = 32
    mem[(32 * stor25.length) + 160] = stor25.length
    idx = 0
    s = (32 * stor25.length) + 192
    t = 128
    while idx < stor25.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor25.length) + 128
       len (96 * stor25.length) + 64
}

function sub_bcc376c6(?) {
    if sub_94436356.length:
        mem[128] = address(sub_94436356.field_0)
        if (32 * sub_94436356.length) + 32 > 64:
            mem[160] = address(sub_94436356.field_256)
            idx = 160
            s = 1
            while (32 * sub_94436356.length) + 96 > idx:
                mem[idx + 32] = sub_94436356[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_94436356.length) + 128] = 32
    mem[(32 * sub_94436356.length) + 160] = sub_94436356.length
    idx = 0
    s = (32 * sub_94436356.length) + 192
    t = 128
    while idx < sub_94436356.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * sub_94436356.length) + 128
       len (96 * sub_94436356.length) + 64
}

function sub_a9f1866b(?) {
    require ext_code.size(0x1fad207cf58b4620fe422160a91c0eb78fb0edf5)
    delegate 0x1fad207cf58b4620fe422160a91c0eb78fb0edf5.0x5bb709aa with:
         gas gas_remaining wei
        args 3, 30
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    require bool(ceil32(return_data.size) + 736 <= test266151307())
    require return_data.size >= 128
    require bool(ceil32(return_data.size) + 864 <= test266151307())
    require delegate.return_data[0] < 2
    require delegate.return_data[320] == delegate.return_data[332 len 20]
    require delegate.return_data[0] < 2
    return delegate.return_data[0], 
           delegate.return_data[32],
           delegate.return_data[64],
           delegate.return_data[96],
           delegate.return_data[128],
           delegate.return_data[160],
           delegate.return_data[192],
           delegate.return_data[224],
           delegate.return_data[256],
           delegate.return_data[288],
           delegate.return_data[332 len 20]
}

function getOwners() {
    mem[64] = (32 * stor1.length) + 128
    mem[96] = stor1.length
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        idx = 0
        s = (32 * stor1.length) + 192
        t = 128
        while idx < stor1.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 128] = 32
    mem[(32 * stor1.length) + 160] = stor1.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor1.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1.length) + -mem[64] + 192
}

function sub_594161f8(?) {
    require calldata.size - 4 >= 320
    require arg1 == address(arg1)
    require arg2 == uint64(arg2)
    require arg5 == ('signextend', 7, ('param', 'arg5'))
    require arg6 == ('signextend', 7, ('param', 'arg6'))
    require arg7 == ('signextend', 15, ('param', 'arg7'))
    require arg8 == ('signextend', 15, ('param', 'arg8'))
    require arg9 == address(arg9)
    require arg10 == ('signextend', 15, ('param', 'arg10'))
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        require ext_code.size(0x74e486732e0ada7be865ac0d6139a80c1bf35f9a)
        delegate 0x74e486732e0ada7be865ac0d6139a80c1bf35f9a.0x71391791 with:
             gas gas_remaining wei
            args 0, 3, address(arg1), arg2 << 192, arg3, arg4, ('signextend', 7, ('param', 'arg5')), ('signextend', 7, ('param', 'arg6')), ('signextend', 15, ('param', 'arg7')), ('signextend', 15, ('param', 'arg8')), address(arg9), ('signextend', 15, ('param', 'arg10'))
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'Restricted'
}

function sub_62bcf387(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint64(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        if stor2:
            revert with 0, 'Read-only'
        mem[ceil32(arg2.length) + 260] = arg3.length
        mem[ceil32(arg2.length) + 292 len arg3.length] = arg3[all]
        mem[ceil32(arg2.length) + arg3.length + 292] = 0
        require ext_code.size(0x7627ca2ef2f65a351d4dae7bb98edb78d2039333)
        delegate 0x7627ca2ef2f65a351d4dae7bb98edb78d2039333.0xb7c746ae with:
             gas gas_remaining wei
            args 0, 3, arg1 << 192, 128, ceil32(arg2.length) + 160, arg2.length, arg2[all], 0, mem[arg2.length + 292 len ceil32(arg2.length) + ceil32(arg3.length) - arg2.length]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'Restricted'
}

function whitelistMany(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
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
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _28 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = 0xf27c757600000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = 3
            mem[(32 * arg1.length) + 164] = 25
            mem[(32 * arg1.length) + 196] = address(_28)
            require ext_code.size(0xb6d70c888b79c4d0e247f3185f5c4029560a163)
            delegate 0xb6d70c888b79c4d0e247f3185f5c4029560a163.0xf27c7576 with:
                 gas gas_remaining wei
                args 3, 25, address(_28)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    revert with 0, 'Restricted'
}

function sub_afc6b280(?) {
    require calldata.size - 4 >= 96
    require arg1 < 2
    require arg3 == address(arg3)
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        require arg1 <= 1
        if not address(arg3):
            if not arg1:
                return stor24[arg2].field_0, 
                       stor24[arg2].field_256,
                       stor24[arg2].field_512,
                       stor24[arg2].field_768,
                       stor24[arg2].field_1024,
                       bool(stor24[arg2].field_1280)
            return stor23[arg2].field_0, 
                   stor23[arg2].field_256,
                   stor23[arg2].field_512,
                   stor23[arg2].field_768,
                   stor23[arg2].field_1024,
                   bool(stor23[arg2].field_1280)
        if not arg1:
            return stor9[address(arg3)][7][arg2].field_0, 
                   stor9[address(arg3)][7][arg2].field_256,
                   stor9[address(arg3)][7][arg2].field_512,
                   stor9[address(arg3)][7][arg2].field_768,
                   stor9[address(arg3)][7][arg2].field_1024,
                   bool(stor9[address(arg3)][7][arg2].field_1280)
        return stor9[address(arg3)][6][arg2].field_0, 
               stor9[address(arg3)][6][arg2].field_256,
               stor9[address(arg3)][6][arg2].field_512,
               stor9[address(arg3)][6][arg2].field_768,
               stor9[address(arg3)][6][arg2].field_1024,
               bool(stor9[address(arg3)][6][arg2].field_1280)
    revert with 0, 'Restricted'
}

function sub_4737065b(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require (32 * ('cd', 100).length) + 128 >= 96 and (32 * ('cd', 100).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 100).length) + 128
    mem[96] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        if stor2:
            revert with 0, 'Read-only'
        mem[(32 * ('cd', 100).length) + 128] = address(cd[4])
        mem[(32 * ('cd', 100).length) + 260] = 3
        mem[(32 * ('cd', 100).length) + 292] = 14
        mem[(32 * ('cd', 100).length) + 324] = 96
        mem[(32 * ('cd', 100).length) + 356] = address(cd[4])
        mem[(32 * ('cd', 100).length) + 388] = cd[36]
        mem[(32 * ('cd', 100).length) + 420] = cd[68]
        mem[(32 * ('cd', 100).length) + 452] = 128
        mem[(32 * ('cd', 100).length) + 484] = ('cd', 100).length
        idx = 0
        s = 128
        t = (32 * ('cd', 100).length) + 516
        while idx < ('cd', 100).length:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0x7627ca2ef2f65a351d4dae7bb98edb78d2039333)
        delegate 0x7627ca2ef2f65a351d4dae7bb98edb78d2039333.0x76bf0519 with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 100).length) + 260 len (96 * ('cd', 100).length) + 256]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'Restricted'
}

function sub_6fc351b3(?) {
    require calldata.size - 4 >= 320
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 < 3
    require calldata.size - 68 >= 224
    require bool(ceil32(arg1.length) + 352 <= test266151307())
    mem[64] = ceil32(arg1.length) + 352
    require arg3 == uint64(arg3)
    mem[ceil32(arg1.length) + 128] = arg3
    mem[ceil32(arg1.length) + 160] = arg4
    mem[ceil32(arg1.length) + 192] = arg5
    require arg6 == uint16(arg6)
    mem[ceil32(arg1.length) + 224] = arg6
    require arg7 == uint16(arg7)
    mem[ceil32(arg1.length) + 256] = arg7
    require arg8 == uint16(arg8)
    mem[ceil32(arg1.length) + 288] = arg8
    require arg9 == uint128(arg9)
    mem[ceil32(arg1.length) + 320] = arg9
    require arg10 == address(arg10)
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        if stor2:
            revert with 0, 'Read-only'
        idx = 0
        while idx < arg1.length:
            mem[idx + ceil32(arg1.length) + 804] = mem[idx + 128]
            idx = idx + 32
            continue 
        if ceil32(arg1.length) > arg1.length:
            mem[arg1.length + ceil32(arg1.length) + 804] = 0
        require arg2 < 3
        require ext_code.size(0x7627ca2ef2f65a351d4dae7bb98edb78d2039333)
        delegate 0x7627ca2ef2f65a351d4dae7bb98edb78d2039333.0x6bd692fa with:
             gas gas_remaining wei
            args 3, 14, 19, Array(len=address(arg10), data=arg1.length, mem[ceil32(arg1.length) + 804 len ceil32(arg1.length)]), arg2, Mask(8 * -ceil32(arg1.length) + arg1.length + 8, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], arg4, arg5, arg6 << 240, arg7 << 240, arg8 << 240, arg9 << 128
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'Restricted'
}

function sub_f0d9d637(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 96
    mem[288] = 96
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[320] = 416
    mem[352] = 0
    mem[384] = 0
    mem[0] = arg1
    mem[32] = 4
    mem[608] = stor4[arg1].field_0
    mem[640] = stor4[arg1].field_256
    mem[672] = stor4[arg1].field_512
    mem[704] = stor4[arg1].field_768
    mem[736] = stor4[arg1].field_1024
    mem[64] = (32 * stor4[arg1].field_1280) + 960
    mem[928] = stor4[arg1].field_1280
    s = 960
    idx = 0
    while idx < stor4[arg1].field_1280:
        mem[0] = sha3(arg1, 4) + 5
        _42 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[arg1][idx + 5].length) + 32
        mem[_42] = stor4[arg1][idx + 5].length
        mem[0] = idx + sha3(sha3(arg1, 4) + 5)
        mem[_42 + 32] = stor4[arg1][idx + 5].field_0
        t = _42 + 32
        u = sha3(mem[0])
        while _42 + stor4[arg1][idx + 5].length > t:
            mem[t + 32] = stor1[u].field_0
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _42
        s = s + 32
        idx = idx + 1
        continue 
    mem[768] = 928
    _40 = mem[64]
    mem[64] = mem[64] + (32 * stor4[arg1].field_1536) + 32
    mem[_40] = stor4[arg1].field_1536
    s = _40 + 32
    idx = 0
    while idx < stor4[arg1].field_1536:
        mem[0] = sha3(arg1, 4) + 6
        _76 = mem[64]
        mem[64] = mem[64] + ceil32(stor4[arg1][idx + 6].length) + 32
        mem[_76] = stor4[arg1][idx + 6].length
        mem[0] = idx + sha3(sha3(arg1, 4) + 6)
        mem[_76 + 32] = stor4[arg1][idx + 6].field_0
        t = _76 + 32
        u = sha3(mem[0])
        while _76 + stor4[arg1][idx + 6].length > t:
            mem[t + 32] = stor1[u].field_0
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _76
        s = s + 32
        idx = idx + 1
        continue 
    mem[800] = _40
    _74 = mem[64]
    mem[64] = mem[64] + 192
    mem[_74] = stor4[arg1].field_1792
    mem[_74 + 32] = stor4[arg1].field_2048
    mem[_74 + 64] = stor4[arg1].field_2304
    mem[_74 + 96] = stor4[arg1].field_2560
    mem[_74 + 128] = stor4[arg1].field_2816
    mem[_74 + 160] = bool(stor4[arg1].field_3072)
    mem[832] = _74
    mem[864] = stor4[arg1].field_3328
    mem[896] = stor4[arg1].field_3344
    _77 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[632 len 8]
    mem[mem[64] + 64] = mem[640]
    mem[mem[64] + 96] = mem[672]
    mem[mem[64] + 128] = mem[704]
    mem[mem[64] + 160] = mem[736]
    _84 = mem[768]
    mem[mem[64] + 192] = 480
    _85 = mem[_84]
    mem[mem[64] + 512] = mem[_84]
    idx = 0
    s = _84 + 32
    t = mem[64] + (32 * _85) + 544
    u = mem[64] + 544
    while idx < _85:
        mem[u] = t + -_77 - 544
        _104 = mem[s]
        _106 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _106:
            mem[v + t + 32] = mem[v + _104 + 32]
            v = v + 32
            continue 
        if ceil32(_106) > _106:
            mem[_106 + t + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_106) + t + 32
        u = u + 32
        continue 
    _105 = mem[800]
    mem[_77 + 224] = t + -_77 - 32
    _107 = mem[_105]
    mem[t] = mem[_105]
    idx = 0
    s = _105 + 32
    u = t + (32 * _107) + 32
    v = t + 32
    while idx < _107:
        mem[v] = u + -t - 32
        _122 = mem[s]
        _125 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        t = 0
        while t < _125:
            mem[t + u + 32] = mem[t + _122 + 32]
            t = t + 32
            continue 
        if ceil32(_125) > _125:
            mem[_125 + u + 32] = 0
        idx = idx + 1
        s = s + 32
        u = ceil32(_125) + u + 32
        v = v + 32
        continue 
    _124 = mem[832]
    mem[_77 + 256] = mem[mem[832]]
    mem[_77 + 288] = mem[_124 + 32]
    mem[_77 + 320] = mem[_124 + 64]
    mem[_77 + 352] = mem[_124 + 96]
    mem[_77 + 384] = mem[_124 + 128]
    mem[_77 + 416] = bool(mem[_124 + 160])
    mem[_77 + 448] = mem[894 len 2]
    mem[_77 + 480] = mem[908 len 20]
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_a05e1c7d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 480
    require ('cd', 4).length == address(('cd', 4).length)
    mem[96] = ('cd', 4).length
    require ('cd', 4)[0] == address(('cd', 4)[0])
    mem[128] = ('cd', 4)[0]
    mem[160] = ('cd', 4)[1]
    require ('cd', 4)[2] <= test266151307()
    require cd[4] + ('cd', 4)[2] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 608 >= 576 and (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 608 <= test266151307()
    mem[576] = cd[(cd[4] + ('cd', 4)[2] + 4)]
    require calldata.size >= cd[4] + ('cd', 4)[2] + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 36
    idx = 0
    s = cd[4] + ('cd', 4)[2] + 36
    t = 608
    while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[192] = 576
    mem[224] = ('cd', 4)[3]
    mem[256] = ('cd', 4)[4]
    require ('cd', 4)[5] <= test266151307()
    require cd[4] + ('cd', 4)[5] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 >= 608 and (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640 <= test266151307()
    mem[64] = (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640
    mem[(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 608] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    require calldata.size >= cd[4] + ('cd', 4)[5] + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 36
    idx = 0
    s = cd[4] + ('cd', 4)[5] + 36
    t = (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 640
    while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[288] = (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 608
    mem[320] = ('cd', 4)[6]
    mem[352] = ('cd', 4)[7]
    mem[384] = ('cd', 4)[8]
    mem[416] = ('cd', 4)[9]
    mem[448] = ('cd', 4)[10]
    require ('cd', 4)[11] == bool(('cd', 4)[11])
    mem[480] = ('cd', 4)[11]
    require ('cd', 4)[12] == address(('cd', 4)[12])
    mem[512] = ('cd', 4)[12]
    require ('cd', 4)[13] < 21
    mem[544] = ('cd', 4)[13]
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        if stor2:
            revert with 0, 'Read-only'
        if ('cd', 4)[1] > 0:
            if not stor26[address(('cd', 4).length)]:
                revert with 0, 'Not whitelisted (A)'
        if ('cd', 4)[4] > 0:
            if not stor26[address(('cd', 4)[0])]:
                revert with 0, 'Not whitelisted (B)'
        mem[(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 640] = 0x43b0a60000000000000000000000000000000000000000000000000000000 * 3600
        mem[(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 644] = 3
        idx = 0
        s = 608
        t = (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1316
        while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1316] = cd[(cd[4] + ('cd', 4)[5] + 4)]
        idx = 0
        s = (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 640
        t = (64 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1348
        while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ('cd', 4)[13] < 21
        require ext_code.size(0x4f672b342fcc15ed393c0b08495f52968a18bbd2)
        delegate 0x4f672b342fcc15ed393c0b08495f52968a18bbd2.0x3b7e41e6 with:
             gas gas_remaining wei
            args 3, 14, 19, 21, 160, address(('cd', 4).length), address(('cd', 4)[0]), ('cd', 4)[1], 480, ('cd', 4)[3], ('cd', 4)[4], (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 512, ('cd', 4)[6], ('cd', 4)[7], ('cd', 4)[8], ('cd', 4)[9], ('cd', 4)[10], bool(('cd', 4)[11]), stor0, ('cd', 4)[13], cd[(cd[4] + ('cd', 4)[2] + 4)], mem[(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1316 len (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 32]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'Restricted'
}

function sub_3367ad09(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 480
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[352] = 384
    mem[96] = 128
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[2] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[2] + 4)])
    mem[1188] = cd[(cd[4] + ('cd', 4)[2] + 4)]
    require cd[(cd[4] + ('cd', 4)[2] + 4)] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[1220 len 32 * cd[(cd[4] + ('cd', 4)[2] + 4)]] = call.data[cd[4] + ('cd', 4)[2] + 36 len 32 * cd[(cd[4] + ('cd', 4)[2] + 4)]]
    require ('cd', 4)[5] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
    mem[(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 1220] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 1252 len 32 * cd[(cd[4] + ('cd', 4)[5] + 4)]] = call.data[cd[4] + ('cd', 4)[5] + 36 len 32 * cd[(cd[4] + ('cd', 4)[5] + 4)]]
    mem[(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 1252] = 0
    mem[964] = ('cd', 4)[7]
    mem[996] = ('cd', 4)[8]
    mem[1028] = ('cd', 4)[9]
    mem[1060] = ('cd', 4)[10]
    require ('cd', 4)[11] == bool(('cd', 4)[11])
    mem[1092] = bool(('cd', 4)[11])
    require ('cd', 4)[12] == address(('cd', 4)[12])
    mem[1124] = address(('cd', 4)[12])
    require ('cd', 4)[13] < 21
    mem[1156] = ('cd', 4)[13]
    require ext_code.size(0x4f672b342fcc15ed393c0b08495f52968a18bbd2)
    delegate 0x4f672b342fcc15ed393c0b08495f52968a18bbd2.0x54b1d857 with:
         gas gas_remaining wei
        args 0, 3, 21, stor0, 128, address(('cd', 4).length), address(('cd', 4)[0]), ('cd', 4)[1], 480, ('cd', 4)[3], ('cd', 4)[4], (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 512, ('cd', 4)[6], ('cd', 4)[7], ('cd', 4)[8], ('cd', 4)[9], ('cd', 4)[10], bool(('cd', 4)[11]), address(('cd', 4)[12]), ('cd', 4)[13], cd[(cd[4] + ('cd', 4)[2] + 4)], call.data[cd[4] + ('cd', 4)[2] + 36 len 32 * cd[(cd[4] + ('cd', 4)[2] + 4)]], cd[(cd[4] + ('cd', 4)[5] + 4)], call.data[cd[4] + ('cd', 4)[5] + 36 len 32 * cd[(cd[4] + ('cd', 4)[5] + 4)]]
    mem[576 len 416] = delegate.return_data[0 len 416]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    require 607 < return_data.size + 576
    require bool(ceil32(return_data.size) + 608 <= test266151307())
    mem[64] = ceil32(return_data.size) + 608
    require 416 <= return_data.size
    idx = 0
    s = 576
    t = ceil32(return_data.size) + 576
    while idx < 1:
        require return_data.size + -s + 576 >= 416
        _24 = mem[64]
        require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
        mem[64] = mem[64] + 256
        mem[_24] = mem[s]
        mem[_24 + 32] = mem[s + 32]
        mem[_24 + 64] = mem[s + 64]
        mem[_24 + 96] = mem[s + 96]
        require mem[s + 128] == mem[s + 140 len 20]
        mem[_24 + 128] = mem[s + 128]
        mem[_24 + 160] = mem[s + 160]
        require mem[s + 192] == mem[s + 216 len 8]
        mem[_24 + 192] = mem[s + 192]
        require return_data.size + -s + 352 >= 192
        _47 = mem[64]
        require mem[64] + 192 >= mem[64] and mem[64] + 192 <= test266151307()
        mem[64] = mem[64] + 192
        mem[_47] = mem[s + 224]
        mem[_47 + 32] = mem[s + 256]
        mem[_47 + 64] = mem[s + 288]
        mem[_47 + 96] = mem[s + 320]
        mem[_47 + 128] = mem[s + 352]
        require mem[s + 384] == bool(mem[s + 384])
        mem[_47 + 160] = mem[s + 384]
        mem[_24 + 224] = _47
        mem[t] = _24
        idx = idx + 1
        s = s + 416
        t = t + 32
        continue 
    _23 = mem[64]
    idx = 0
    s = ceil32(return_data.size) + 576
    t = mem[64]
    while idx < 1:
        _54 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_54 + 32]
        mem[t + 64] = mem[_54 + 64]
        mem[t + 96] = mem[_54 + 96]
        mem[t + 128] = mem[_54 + 140 len 20]
        mem[t + 160] = mem[_54 + 160]
        mem[t + 192] = mem[_54 + 216 len 8]
        _63 = mem[_54 + 224]
        mem[t + 224] = mem[mem[_54 + 224]]
        mem[t + 256] = mem[_63 + 32]
        mem[t + 288] = mem[_63 + 64]
        mem[t + 320] = mem[_63 + 96]
        mem[t + 352] = mem[_63 + 128]
        mem[t + 384] = bool(mem[_63 + 160])
        idx = idx + 1
        s = s + 32
        t = t + 416
        continue 
    return memory
      from mem[64]
       len _23 + -mem[64] + 416
}

function sub_e5a6f3d0(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 480
    mem[8320] = 0
    mem[8352] = 0
    mem[8384] = 0
    mem[8416] = 0
    mem[8448] = 0
    mem[8480] = 0
    mem[8512] = 0
    mem[64] = 8768
    mem[8576] = 0
    mem[8608] = 0
    mem[8640] = 0
    mem[8672] = 0
    mem[8704] = 0
    mem[8736] = 0
    mem[8544] = 8576
    mem[var17002] = 8320
    s = 8544
    s = 8320
    s = var17002
    idx = var17003
    while idx - 1:
        _48 = mem[64]
        mem[64] = mem[64] + 256
        mem[_48] = 0
        mem[_48 + 32] = 0
        mem[_48 + 64] = 0
        mem[_48 + 96] = 0
        mem[_48 + 128] = 0
        mem[_48 + 160] = 0
        mem[_48 + 192] = 0
        mem[64] = mem[64] + 192
        mem[8576] = 0
        mem[8608] = 0
        mem[8640] = 0
        mem[8672] = 0
        mem[8704] = 0
        mem[8736] = 0
        mem[_48 + 224] = 8576
        mem[s + 32] = _48
        s = _48 + 224
        s = _48
        s = s + 32
        idx = idx - 1
        continue 
    require ('cd', 4).length == address(('cd', 4).length)
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[2] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[2] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[2] + 4)])
    require cd[(cd[4] + ('cd', 4)[2] + 4)] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[mem[64] + 676 len 32 * cd[(cd[4] + ('cd', 4)[2] + 4)]] = call.data[cd[4] + ('cd', 4)[2] + 36 len 32 * cd[(cd[4] + ('cd', 4)[2] + 4)]]
    require ('cd', 4)[5] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
    mem[(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + mem[64] + 676] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + mem[64] + 708 len 32 * cd[(cd[4] + ('cd', 4)[5] + 4)]] = call.data[cd[4] + ('cd', 4)[5] + 36 len 32 * cd[(cd[4] + ('cd', 4)[5] + 4)]]
    mem[(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + mem[64] + 708] = 0
    require ('cd', 4)[11] == bool(('cd', 4)[11])
    require ('cd', 4)[12] == address(('cd', 4)[12])
    require ('cd', 4)[13] < 21
    require ext_code.size(0x4f672b342fcc15ed393c0b08495f52968a18bbd2)
    delegate 0x4f672b342fcc15ed393c0b08495f52968a18bbd2.0x9751bd26 with:
         gas gas_remaining wei
        args 3, 14, 21, stor0, 160, address(('cd', 4).length), address(('cd', 4)[0]), ('cd', 4)[1], 480, ('cd', 4)[3], ('cd', 4)[4], (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 512, ('cd', 4)[6], ('cd', 4)[7], ('cd', 4)[8], ('cd', 4)[9], ('cd', 4)[10], bool(('cd', 4)[11]), address(('cd', 4)[12]), ('cd', 4)[13], cd[(cd[4] + ('cd', 4)[2] + 4)], call.data[cd[4] + ('cd', 4)[2] + 36 len 32 * cd[(cd[4] + ('cd', 4)[2] + 4)]], cd[(cd[4] + ('cd', 4)[5] + 4)], call.data[cd[4] + ('cd', 4)[5] + 36 len 32 * cd[(cd[4] + ('cd', 4)[5] + 4)]]
    mem[mem[64] len 106912] = delegate.return_data[0 len 106912]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    _51 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 106912
    require _51 + 31 < _51 + return_data.size
    _52 = mem[64]
    require mem[64] + 8224 >= mem[64] and mem[64] + 8224 <= test266151307()
    mem[64] = mem[64] + 8224
    require 106912 <= return_data.size
    s = _51
    t = _52
    idx = 0
    while idx < 257:
        require _51 + return_data.size - s >= 416
        _69 = mem[64]
        require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
        mem[64] = mem[64] + 256
        mem[_69] = mem[s]
        mem[_69 + 32] = mem[s + 32]
        mem[_69 + 64] = mem[s + 64]
        mem[_69 + 96] = mem[s + 96]
        require mem[s + 128] == mem[s + 140 len 20]
        mem[_69 + 128] = mem[s + 128]
        mem[_69 + 160] = mem[s + 160]
        require mem[s + 192] == mem[s + 216 len 8]
        mem[_69 + 192] = mem[s + 192]
        require _51 + return_data.size + -s - 224 >= 192
        _92 = mem[64]
        require mem[64] + 192 >= mem[64] and mem[64] + 192 <= test266151307()
        mem[64] = mem[64] + 192
        mem[_92] = mem[s + 224]
        mem[_92 + 32] = mem[s + 256]
        mem[_92 + 64] = mem[s + 288]
        mem[_92 + 96] = mem[s + 320]
        mem[_92 + 128] = mem[s + 352]
        require mem[s + 384] == bool(mem[s + 384])
        mem[_92 + 160] = mem[s + 384]
        mem[_69 + 224] = _92
        mem[t] = _69
        s = s + 416
        t = t + 32
        idx = idx + 1
        continue 
    _68 = mem[64]
    idx = 0
    s = _52
    t = mem[64]
    while idx < 257:
        _99 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_99 + 32]
        mem[t + 64] = mem[_99 + 64]
        mem[t + 96] = mem[_99 + 96]
        mem[t + 128] = mem[_99 + 140 len 20]
        mem[t + 160] = mem[_99 + 160]
        mem[t + 192] = mem[_99 + 216 len 8]
        _108 = mem[_99 + 224]
        mem[t + 224] = mem[mem[_99 + 224]]
        mem[t + 256] = mem[_108 + 32]
        mem[t + 288] = mem[_108 + 64]
        mem[t + 320] = mem[_108 + 96]
        mem[t + 352] = mem[_108 + 128]
        mem[t + 384] = bool(mem[_108 + 160])
        idx = idx + 1
        s = s + 32
        t = t + 416
        continue 
    return memory
      from mem[64]
       len _68 + -mem[64] + 106912
}

function sub_564b8528(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require calldata.size + -cd[36] + -cd[s] - 36 >= 160
        _30 = mem[64]
        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
        mem[64] = mem[64] + 160
        mem[_30] = cd[(cd[36] + cd[s] + 36)]
        require cd[(cd[36] + cd[s] + 68)] <= test266151307()
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] <= test266151307()
        _41 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]) + 32
        mem[_41] = cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_41 + 32 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]] = call.data[cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 68 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)]]
        mem[_41 + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_30 + 32] = _41
        require cd[(cd[36] + cd[s] + 100)] <= test266151307()
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)] <= test266151307()
        _49 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]) + 32
        mem[_49] = cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)] + 68 <= calldata.size
        mem[_49 + 32 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]] = call.data[cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 68 len cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)]]
        mem[_49 + cd[(cd[36] + cd[s] + cd[(cd[36] + cd[s] + 100)] + 36)] + 32] = 0
        mem[_30 + 64] = _49
        mem[_30 + 96] = cd[(cd[36] + cd[s] + 132)]
        mem[_30 + 128] = cd[(cd[36] + cd[s] + 164)]
        mem[t] = _30
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        _61 = mem[64]
        mem[mem[64]] = 0x6151488c00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 3
        mem[mem[64] + 36] = address(cd[4])
        mem[mem[64] + 68] = 160
        _62 = mem[96]
        mem[mem[64] + 164] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 196
        u = mem[64] + (32 * mem[96]) + 196
        while idx < _62:
            mem[t] = u + -_61 - 196
            _83 = mem[s]
            mem[u] = mem[mem[s]]
            _85 = mem[_83 + 32]
            mem[u + 32] = 160
            _87 = mem[_85]
            mem[u + 160] = mem[_85]
            v = 0
            while v < _87:
                mem[v + u + 192] = mem[v + _85 + 32]
                v = v + 32
                continue 
            if ceil32(_87) <= _87:
                _104 = mem[_83 + 64]
                mem[u + 64] = ceil32(_87) + 192
                _106 = mem[_104]
                mem[ceil32(_87) + u + 192] = mem[_104]
                v = 0
                while v < _106:
                    mem[v + ceil32(_87) + u + 224] = mem[v + _104 + 32]
                    v = v + 32
                    continue 
                if ceil32(_106) > _106:
                    mem[_106 + ceil32(_87) + u + 224] = 0
                mem[u + 96] = mem[_83 + 96]
                mem[u + 128] = mem[_83 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_106) + ceil32(_87) + u + 224
                continue 
            mem[_87 + u + 192] = 0
            _105 = mem[_83 + 64]
            mem[u + 64] = ceil32(_87) + 192
            _107 = mem[_105]
            mem[ceil32(_87) + u + 192] = mem[_105]
            v = 0
            while v < _107:
                mem[v + ceil32(_87) + u + 224] = mem[v + _105 + 32]
                v = v + 32
                continue 
            if ceil32(_107) > _107:
                mem[_107 + ceil32(_87) + u + 224] = 0
            mem[u + 96] = mem[_83 + 96]
            mem[u + 128] = mem[_83 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_107) + ceil32(_87) + u + 224
            continue 
        mem[_61 + 100] = cd[68]
        mem[_61 + 132] = cd[100]
        require ext_code.size(0x74e486732e0ada7be865ac0d6139a80c1bf35f9a)
        delegate 0x74e486732e0ada7be865ac0d6139a80c1bf35f9a.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'Restricted'
}

function sub_017cbc35(?) {
    require calldata.size - 4 >= 416
    require cd[68] == ('signextend', 7, ('cd', 68))
    require cd[100] == address(cd[100])
    require calldata.size - 132 >= 192
    mem[96] = cd[132]
    mem[128] = cd[164]
    mem[160] = cd[196]
    mem[192] = cd[228]
    mem[224] = cd[260]
    require cd[292] == bool(cd[292])
    mem[256] = cd[292]
    require cd[324] == uint16(cd[324])
    require cd[356] <= test266151307()
    require cd[356] + 35 < calldata.size
    require ('cd', 356).length <= test266151307()
    require (32 * ('cd', 356).length) + 320 >= 288 and (32 * ('cd', 356).length) + 320 <= test266151307()
    mem[64] = (32 * ('cd', 356).length) + 320
    mem[288] = ('cd', 356).length
    idx = 0
    s = cd[356] + 36
    t = 320
    while idx < ('cd', 356).length:
        require cd[356] + cd[s] + 67 < calldata.size
        require cd[(cd[356] + cd[s] + 36)] <= test266151307()
        _38 = mem[64]
        require mem[64] + ceil32(cd[(cd[356] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[356] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[356] + cd[s] + 36)]) + 32
        mem[_38] = cd[(cd[356] + cd[s] + 36)]
        require cd[356] + cd[s] + cd[(cd[356] + cd[s] + 36)] + 68 <= calldata.size
        mem[_38 + 32 len cd[(cd[356] + cd[s] + 36)]] = call.data[cd[356] + cd[s] + 68 len cd[(cd[356] + cd[s] + 36)]]
        mem[_38 + cd[(cd[356] + cd[s] + 36)] + 32] = 0
        mem[t] = _38
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[388] <= test266151307()
    require cd[388] + 35 < calldata.size
    require ('cd', 388).length <= test266151307()
    _39 = mem[64]
    require mem[64] + (32 * ('cd', 388).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 388).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 388).length) + 32
    mem[_39] = ('cd', 388).length
    idx = 0
    s = cd[388] + 36
    t = _39 + 32
    while idx < ('cd', 388).length:
        require cd[388] + cd[s] + 67 < calldata.size
        require cd[(cd[388] + cd[s] + 36)] <= test266151307()
        _75 = mem[64]
        require mem[64] + ceil32(cd[(cd[388] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[388] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[388] + cd[s] + 36)]) + 32
        mem[_75] = cd[(cd[388] + cd[s] + 36)]
        require cd[388] + cd[s] + cd[(cd[388] + cd[s] + 36)] + 68 <= calldata.size
        mem[_75 + 32 len cd[(cd[388] + cd[s] + 36)]] = call.data[cd[388] + cd[s] + 68 len cd[(cd[388] + cd[s] + 36)]]
        mem[_75 + cd[(cd[388] + cd[s] + 36)] + 32] = 0
        mem[t] = _75
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        if stor2:
            revert with 0, 'Read-only'
        _110 = mem[64]
        mem[64] = mem[64] + 256
        mem[_110] = 0
        mem[_110 + 32] = 0
        mem[_110 + 64] = 0
        mem[_110 + 96] = 0
        _111 = mem[64]
        mem[64] = mem[64] + 192
        mem[_111] = 0
        mem[_111 + 32] = 0
        mem[_111 + 64] = 0
        mem[_111 + 96] = 0
        mem[_111 + 128] = 0
        mem[_111 + 160] = 0
        mem[_110 + 128] = _111
        mem[_110 + 160] = 0
        mem[_110 + 192] = 96
        mem[_110 + 224] = 96
        _113 = mem[64]
        mem[64] = mem[64] + 256
        mem[_113] = cd[4]
        mem[_113 + 32] = cd[36]
        mem[_113 + 64] = ('signextend', 7, ('cd', 68))
        mem[_113 + 96] = address(cd[100])
        mem[_113 + 128] = 96
        mem[_113 + 160] = uint16(cd[324])
        mem[_113 + 192] = 288
        mem[_113 + 224] = _39
        _114 = mem[64]
        mem[mem[64]] = 0x5be9495b00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 3
        mem[mem[64] + 36] = 14
        mem[mem[64] + 68] = 96
        mem[mem[64] + 100] = cd[4]
        mem[mem[64] + 132] = cd[36]
        mem[mem[64] + 164] = ('signextend', 7, ('signextend', 7, ('cd', 68)))
        mem[mem[64] + 196] = address(cd[100])
        mem[mem[64] + 228] = mem[96]
        mem[mem[64] + 260] = mem[128]
        mem[mem[64] + 292] = mem[160]
        mem[mem[64] + 324] = mem[192]
        mem[mem[64] + 356] = mem[224]
        mem[mem[64] + 388] = bool(mem[256])
        mem[mem[64] + 420] = uint16(cd[324])
        mem[mem[64] + 452] = 416
        _128 = mem[288]
        mem[mem[64] + 516] = mem[288]
        idx = 0
        s = 320
        t = mem[64] + (32 * mem[288]) + 548
        u = mem[64] + 548
        while idx < _128:
            mem[u] = t + -_114 - 548
            _138 = mem[s]
            _140 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _140:
                mem[v + t + 32] = mem[v + _138 + 32]
                v = v + 32
                continue 
            if ceil32(_140) > _140:
                mem[_140 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_140) + t + 32
            u = u + 32
            continue 
        _139 = mem[_113 + 224]
        mem[_114 + 484] = t + -_114 - 100
        _141 = mem[_139]
        mem[t] = mem[_139]
        idx = 0
        s = _139 + 32
        u = t + (32 * _141) + 32
        v = t + 32
        while idx < _141:
            mem[v] = u + -t - 32
            _147 = mem[s]
            _149 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _149:
                mem[t + u + 32] = mem[t + _147 + 32]
                t = t + 32
                continue 
            if ceil32(_149) > _149:
                mem[_149 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            u = ceil32(_149) + u + 32
            v = v + 32
            continue 
        require ext_code.size(0x7627ca2ef2f65a351d4dae7bb98edb78d2039333)
        delegate 0x7627ca2ef2f65a351d4dae7bb98edb78d2039333.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'Restricted'
}

function sub_d32ea8b6(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 96
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0x42da213b00000000000000000000000000000000000000000000000000000000
    mem[452] = 3
    mem[484] = 14
    mem[516] = arg1
    require ext_code.size(0x7627ca2ef2f65a351d4dae7bb98edb78d2039333)
    delegate 0x7627ca2ef2f65a351d4dae7bb98edb78d2039333.0x42da213b with:
         gas gas_remaining wei
        args 3, 14, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[448 len 4], 0
    require mem[448 len 4], 0 <= test266151307()
    require return_data.size - mem[448 len 4], 0 >= 352
    require bool(ceil32(return_data.size) + 800 <= test266151307())
    mem[64] = ceil32(return_data.size) + 800
    require mem[mem[448 len 4], 0 + 448] == bool(mem[mem[448 len 4], 0 + 448])
    mem[ceil32(return_data.size) + 448] = mem[mem[448 len 4], 0 + 448]
    mem[ceil32(return_data.size) + 480] = mem[_5 + 480]
    mem[ceil32(return_data.size) + 512] = mem[_5 + 512]
    _10 = mem[_5 + 544]
    require mem[_5 + 544] <= test266151307()
    require _5 + mem[_5 + 544] + 479 < return_data.size + 448
    _11 = mem[_5 + mem[_5 + 544] + 448]
    require mem[_5 + mem[_5 + 544] + 448] <= test266151307()
    require ceil32(mem[_5 + mem[_5 + 544] + 448]) + 384 >= 352 and ceil32(return_data.size) + ceil32(mem[_5 + mem[_5 + 544] + 448]) + 832 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[_5 + mem[_5 + 544] + 448]) + 832
    mem[ceil32(return_data.size) + 800] = mem[_5 + mem[_5 + 544] + 448]
    require _5 + _10 + _11 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 832 len ceil32(_11)] = mem[_5 + _10 + 480 len ceil32(_11)]
    if ceil32(_11) <= _11:
        mem[ceil32(return_data.size) + 544] = ceil32(return_data.size) + 800
        require mem[_5 + 576] == mem[_5 + 600 len 8]
        mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
        require mem[_5 + 608] == ('signextend', 7, ('mem', ('range', ('add', 608, ('var', '_5')), 32)))
        mem[ceil32(return_data.size) + 608] = mem[_5 + 608]
        require mem[_5 + 640] == ('signextend', 7, ('mem', ('range', ('add', 640, ('var', '_5')), 32)))
        mem[ceil32(return_data.size) + 640] = mem[_5 + 640]
        require mem[_5 + 672] == ('signextend', 15, ('mem', ('range', ('add', 672, ('var', '_5')), 32)))
        mem[ceil32(return_data.size) + 672] = mem[_5 + 672]
        require mem[_5 + 704] == mem[_5 + 716 len 20]
        mem[ceil32(return_data.size) + 704] = mem[_5 + 704]
        require mem[_5 + 736] == ('signextend', 15, ('mem', ('range', ('add', 736, ('var', '_5')), 32)))
        mem[ceil32(return_data.size) + 736] = mem[_5 + 736]
        require mem[_5 + 768] == ('signextend', 15, ('mem', ('range', ('add', 768, ('var', '_5')), 32)))
        mem[ceil32(return_data.size) + 768] = mem[_5 + 768]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = bool(mem[ceil32(return_data.size) + 448])
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 480]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 512]
        mem[mem[64] + 128] = 352
        _99 = mem[ceil32(return_data.size) + 800]
        mem[mem[64] + 384] = mem[ceil32(return_data.size) + 800]
        mem[mem[64] + 416 len ceil32(_99)] = mem[ceil32(return_data.size) + 832 len ceil32(_99)]
        if ceil32(_99) > _99:
            mem[_99 + mem[64] + 416] = 0
        mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
        mem[mem[64] + 192] = ('signextend', 7, ('mem', ('range', ('add', 608, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)))
        mem[mem[64] + 224] = ('signextend', 7, ('mem', ('range', ('add', 640, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)))
        mem[mem[64] + 256] = ('signextend', 15, ('mem', ('range', ('add', 672, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)))
        mem[mem[64] + 288] = mem[ceil32(return_data.size) + 716 len 20]
        mem[mem[64] + 320] = ('signextend', 15, ('mem', ('range', ('add', 736, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)))
        mem[mem[64] + 352] = ('signextend', 15, ('mem', ('range', ('add', 768, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)))
        return 32, mem[mem[64] + 32 len 96], 352, mem[mem[64] + 160 len ceil32(_99) + 256]
    mem[_11 + ceil32(return_data.size) + 832] = 0
    mem[ceil32(return_data.size) + 544] = ceil32(return_data.size) + 800
    require mem[_5 + 576] == mem[_5 + 600 len 8]
    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
    require mem[_5 + 608] == ('signextend', 7, ('mem', ('range', ('add', 608, ('var', '_5')), 32)))
    mem[ceil32(return_data.size) + 608] = mem[_5 + 608]
    require mem[_5 + 640] == ('signextend', 7, ('mem', ('range', ('add', 640, ('var', '_5')), 32)))
    mem[ceil32(return_data.size) + 640] = mem[_5 + 640]
    require mem[_5 + 672] == ('signextend', 15, ('mem', ('range', ('add', 672, ('var', '_5')), 32)))
    mem[ceil32(return_data.size) + 672] = mem[_5 + 672]
    require mem[_5 + 704] == mem[_5 + 716 len 20]
    mem[ceil32(return_data.size) + 704] = mem[_5 + 704]
    require mem[_5 + 736] == ('signextend', 15, ('mem', ('range', ('add', 736, ('var', '_5')), 32)))
    mem[ceil32(return_data.size) + 736] = mem[_5 + 736]
    require mem[_5 + 768] == ('signextend', 15, ('mem', ('range', ('add', 768, ('var', '_5')), 32)))
    mem[ceil32(return_data.size) + 768] = mem[_5 + 768]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = bool(mem[ceil32(return_data.size) + 448])
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 480]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 512]
    mem[mem[64] + 128] = 352
    _100 = mem[ceil32(return_data.size) + 800]
    mem[mem[64] + 384] = mem[ceil32(return_data.size) + 800]
    mem[mem[64] + 416 len ceil32(_100)] = mem[ceil32(return_data.size) + 832 len ceil32(_100)]
    if ceil32(_100) > _100:
        mem[_100 + mem[64] + 416] = 0
    mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
    mem[mem[64] + 192] = ('signextend', 7, ('mem', ('range', ('add', 608, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)))
    mem[mem[64] + 224] = ('signextend', 7, ('mem', ('range', ('add', 640, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)))
    mem[mem[64] + 256] = ('signextend', 15, ('mem', ('range', ('add', 672, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)))
    mem[mem[64] + 288] = mem[ceil32(return_data.size) + 716 len 20]
    mem[mem[64] + 320] = ('signextend', 15, ('mem', ('range', ('add', 736, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)))
    mem[mem[64] + 352] = ('signextend', 15, ('mem', ('range', ('add', 768, ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)))
    return 32, mem[mem[64] + 32 len 96], 352, mem[mem[64] + 160 len ceil32(_100) + 256]
}

function sub_8e4b3aef(?) {
    mem[96] = 96
    mem[128] = 0x93ff6d100000000000000000000000000000000000000000000000000000000
    mem[132] = 14
    require ext_code.size(0x7627ca2ef2f65a351d4dae7bb98edb78d2039333)
    delegate 0x7627ca2ef2f65a351d4dae7bb98edb78d2039333.0x93ff6d1 with:
         gas gas_remaining wei
        args 14
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[128 len 4], 0
    require mem[128 len 4], 0 <= test266151307()
    require return_data.size - mem[128 len 4], 0 >= 32
    require bool(ceil32(return_data.size) + 160 <= test266151307())
    mem[64] = ceil32(return_data.size) + 160
    _7 = mem[mem[128 len 4], 0 + 128]
    require mem[mem[128 len 4], 0 + 128] <= test266151307()
    require mem[128 len 4], 0 + mem[mem[128 len 4], 0 + 128] + 159 < return_data.size + 128
    _8 = mem[mem[128 len 4], 0 + mem[mem[128 len 4], 0 + 128] + 128]
    require mem[mem[128 len 4], 0 + mem[mem[128 len 4], 0 + 128] + 128] <= test266151307()
    require (32 * mem[mem[128 len 4], 0 + mem[mem[128 len 4], 0 + 128] + 128]) + 64 >= 32 and ceil32(return_data.size) + (32 * mem[mem[128 len 4], 0 + mem[mem[128 len 4], 0 + 128] + 128]) + 192 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[128 len 4], 0 + mem[mem[128 len 4], 0 + 128] + 128]) + 192
    mem[ceil32(return_data.size) + 160] = _8
    idx = 0
    s = mem[128] + _7 + 160
    t = ceil32(return_data.size) + 192
    while idx < _8:
        _66 = mem[s]
        require return_data.size + -_5 + -_7 + -mem[s] - 32 >= 352
        _67 = mem[64]
        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
        mem[64] = mem[64] + 160
        mem[_67] = mem[_5 + _7 + _66 + 160]
        _72 = mem[_5 + _7 + _66 + 192]
        require mem[_5 + _7 + _66 + 192] <= test266151307()
        require _5 + _7 + _66 + mem[_5 + _7 + _66 + 192] + 191 < return_data.size + 128
        _78 = mem[_5 + _7 + _66 + mem[_5 + _7 + _66 + 192] + 160]
        require mem[_5 + _7 + _66 + mem[_5 + _7 + _66 + 192] + 160] <= test266151307()
        _80 = mem[64]
        require mem[64] + ceil32(mem[_5 + _7 + _66 + mem[_5 + _7 + _66 + 192] + 160]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + _7 + _66 + mem[_5 + _7 + _66 + 192] + 160]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[_5 + _7 + _66 + mem[_5 + _7 + _66 + 192] + 160]) + 32
        mem[_80] = _78
        require _5 + _7 + _66 + _72 + _78 + 64 <= return_data.size
        u = 0
        while u < _78:
            mem[u + _80 + 32] = mem[u + _5 + _7 + _66 + _72 + 192]
            u = u + 32
            continue 
        if ceil32(_78) <= _78:
            mem[_67 + 32] = _80
            require mem[_5 + _7 + _66 + 224] < 3
            mem[_67 + 64] = mem[_5 + _7 + _66 + 224]
            require return_data.size + -_5 + -_7 + -_66 - 128 >= 224
            _133 = mem[64]
            require mem[64] + 224 >= mem[64] and mem[64] + 224 <= test266151307()
            mem[64] = mem[64] + 224
            require mem[_5 + _7 + _66 + 256] == mem[_5 + _7 + _66 + 280 len 8]
            mem[_133] = mem[_5 + _7 + _66 + 256]
            mem[_133 + 32] = mem[_5 + _7 + _66 + 288]
            mem[_133 + 64] = mem[_5 + _7 + _66 + 320]
            require mem[_5 + _7 + _66 + 352] == mem[_5 + _7 + _66 + 382 len 2]
            mem[_133 + 96] = mem[_5 + _7 + _66 + 352]
            require mem[_5 + _7 + _66 + 384] == mem[_5 + _7 + _66 + 414 len 2]
            mem[_133 + 128] = mem[_5 + _7 + _66 + 384]
            require mem[_5 + _7 + _66 + 416] == mem[_5 + _7 + _66 + 446 len 2]
            mem[_133 + 160] = mem[_5 + _7 + _66 + 416]
            require mem[_5 + _7 + _66 + 448] == mem[_5 + _7 + _66 + 464 len 16]
            mem[_133 + 192] = mem[_5 + _7 + _66 + 448]
            mem[_67 + 96] = _133
        else:
            mem[_78 + _80 + 32] = 0
            mem[_67 + 32] = _80
            require mem[_5 + _7 + _66 + 224] < 3
            mem[_67 + 64] = mem[_5 + _7 + _66 + 224]
            require return_data.size + -_5 + -_7 + -_66 - 128 >= 224
            _134 = mem[64]
            require mem[64] + 224 >= mem[64] and mem[64] + 224 <= test266151307()
            mem[64] = mem[64] + 224
            require mem[_5 + _7 + _66 + 256] == mem[_5 + _7 + _66 + 280 len 8]
            mem[_134] = mem[_5 + _7 + _66 + 256]
            mem[_134 + 32] = mem[_5 + _7 + _66 + 288]
            mem[_134 + 64] = mem[_5 + _7 + _66 + 320]
            require mem[_5 + _7 + _66 + 352] == mem[_5 + _7 + _66 + 382 len 2]
            mem[_134 + 96] = mem[_5 + _7 + _66 + 352]
            require mem[_5 + _7 + _66 + 384] == mem[_5 + _7 + _66 + 414 len 2]
            mem[_134 + 128] = mem[_5 + _7 + _66 + 384]
            require mem[_5 + _7 + _66 + 416] == mem[_5 + _7 + _66 + 446 len 2]
            mem[_134 + 160] = mem[_5 + _7 + _66 + 416]
            require mem[_5 + _7 + _66 + 448] == mem[_5 + _7 + _66 + 464 len 16]
            mem[_134 + 192] = mem[_5 + _7 + _66 + 448]
            mem[_67 + 96] = _134
        require mem[_5 + _7 + _66 + 480] == mem[_5 + _7 + _66 + 492 len 20]
        mem[_67 + 128] = mem[_5 + _7 + _66 + 480]
        mem[t] = _67
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + 160
    _68 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 32
    _70 = mem[ceil32(return_data.size) + 160]
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 160]
    idx = 0
    s = mem[64] + (32 * _70) + 96
    t = mem[64] + 96
    u = ceil32(return_data.size) + 192
    while idx < _70:
        mem[t] = s + -_68 - 96
        _122 = mem[u]
        mem[s] = mem[mem[u]]
        _124 = mem[_122 + 32]
        mem[s + 32] = 352
        _127 = mem[_124]
        mem[s + 352] = mem[_124]
        v = 0
        while v < _127:
            mem[v + s + 384] = mem[v + _124 + 32]
            v = v + 32
            continue 
        if ceil32(_127) <= _127:
            require mem[_122 + 64] < 3
            mem[s + 64] = mem[_122 + 64]
            _172 = mem[_122 + 96]
            mem[s + 96] = mem[mem[_122 + 96] + 24 len 8]
            mem[s + 128] = mem[_172 + 32]
            mem[s + 160] = mem[_172 + 64]
            mem[s + 192] = mem[_172 + 126 len 2]
            mem[s + 224] = mem[_172 + 158 len 2]
            mem[s + 256] = mem[_172 + 190 len 2]
            mem[s + 288] = mem[_172 + 208 len 16]
        else:
            mem[_127 + s + 384] = 0
            require mem[_122 + 64] < 3
            mem[s + 64] = mem[_122 + 64]
            _173 = mem[_122 + 96]
            mem[s + 96] = mem[mem[_122 + 96] + 24 len 8]
            mem[s + 128] = mem[_173 + 32]
            mem[s + 160] = mem[_173 + 64]
            mem[s + 192] = mem[_173 + 126 len 2]
            mem[s + 224] = mem[_173 + 158 len 2]
            mem[s + 256] = mem[_173 + 190 len 2]
            mem[s + 288] = mem[_173 + 208 len 16]
        mem[s + 320] = mem[_122 + 140 len 20]
        idx = idx + 1
        s = ceil32(_127) + s + 384
        t = t + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[192] = 96
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0x2d13091400000000000000000000000000000000000000000000000000000000
    mem[292] = 3
    mem[324] = 14
    mem[356] = 19
    mem[388] = arg1
    require ext_code.size(0x8790142d7a4a71c9faad3280e6cf1d886f8baa51)
    delegate 0x8790142d7a4a71c9faad3280e6cf1d886f8baa51.0x2d130914 with:
         gas gas_remaining wei
        args 3, 14, 19, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[288 len 4], 0
    require mem[288 len 4], 0 <= test266151307()
    require return_data.size - mem[288 len 4], 0 >= 192
    require bool(ceil32(return_data.size) + 480 <= test266151307())
    mem[64] = ceil32(return_data.size) + 480
    require mem[mem[288 len 4], 0 + 288] == bool(mem[mem[288 len 4], 0 + 288])
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 0 + 288]
    _8 = mem[_5 + 320]
    require mem[_5 + 320] <= test266151307()
    require _5 + mem[_5 + 320] + 319 < return_data.size + 288
    _9 = mem[_5 + mem[_5 + 320] + 288]
    require mem[_5 + mem[_5 + 320] + 288] <= test266151307()
    require (32 * mem[_5 + mem[_5 + 320] + 288]) + 224 >= 192 and ceil32(return_data.size) + (32 * mem[_5 + mem[_5 + 320] + 288]) + 512 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[_5 + mem[_5 + 320] + 288]) + 512
    mem[ceil32(return_data.size) + 480] = mem[_5 + mem[_5 + 320] + 288]
    idx = 0
    s = _5 + _8 + 320
    t = ceil32(return_data.size) + 512
    while idx < _9:
        _66 = mem[s]
        require return_data.size + -_5 + -_8 + -mem[s] - 32 >= 352
        _69 = mem[64]
        require mem[64] + 352 >= mem[64] and mem[64] + 352 <= test266151307()
        mem[64] = mem[64] + 352
        require mem[_5 + _8 + _66 + 320] == bool(mem[_5 + _8 + _66 + 320])
        mem[_69] = mem[_5 + _8 + _66 + 320]
        mem[_69 + 32] = mem[_5 + _8 + _66 + 352]
        mem[_69 + 64] = mem[_5 + _8 + _66 + 384]
        _75 = mem[_5 + _8 + _66 + 416]
        require mem[_5 + _8 + _66 + 416] <= test266151307()
        require _5 + _8 + _66 + mem[_5 + _8 + _66 + 416] + 351 < return_data.size + 288
        _79 = mem[_5 + _8 + _66 + mem[_5 + _8 + _66 + 416] + 320]
        require mem[_5 + _8 + _66 + mem[_5 + _8 + _66 + 416] + 320] <= test266151307()
        _86 = mem[64]
        require mem[64] + ceil32(mem[_5 + _8 + _66 + mem[_5 + _8 + _66 + 416] + 320]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + _8 + _66 + mem[_5 + _8 + _66 + 416] + 320]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[_5 + _8 + _66 + mem[_5 + _8 + _66 + 416] + 320]) + 32
        mem[_86] = _79
        require _5 + _8 + _66 + _75 + _79 + 64 <= return_data.size
        u = 0
        while u < _79:
            mem[u + _86 + 32] = mem[u + _5 + _8 + _66 + _75 + 352]
            u = u + 32
            continue 
        if ceil32(_79) > _79:
            mem[_79 + _86 + 32] = 0
        mem[_69 + 96] = _86
        require mem[_5 + _8 + _66 + 448] == mem[_5 + _8 + _66 + 472 len 8]
        mem[_69 + 128] = mem[_5 + _8 + _66 + 448]
        require mem[_5 + _8 + _66 + 480] == ('signextend', 7, ('mem', ('range', ('add', 480, ('var', '_5'), ('var', '_8'), ('var', '_66')), 32)))
        mem[_69 + 160] = mem[_5 + _8 + _66 + 480]
        require mem[_5 + _8 + _66 + 512] == ('signextend', 7, ('mem', ('range', ('add', 512, ('var', '_5'), ('var', '_8'), ('var', '_66')), 32)))
        mem[_69 + 192] = mem[_5 + _8 + _66 + 512]
        require mem[_5 + _8 + _66 + 544] == ('signextend', 15, ('mem', ('range', ('add', 544, ('var', '_5'), ('var', '_8'), ('var', '_66')), 32)))
        mem[_69 + 224] = mem[_5 + _8 + _66 + 544]
        require mem[_5 + _8 + _66 + 576] == mem[_5 + _8 + _66 + 588 len 20]
        mem[_69 + 256] = mem[_5 + _8 + _66 + 576]
        require mem[_5 + _8 + _66 + 608] == ('signextend', 15, ('mem', ('range', ('add', 608, ('var', '_5'), ('var', '_8'), ('var', '_66')), 32)))
        mem[_69 + 288] = mem[_5 + _8 + _66 + 608]
        require mem[_5 + _8 + _66 + 640] == ('signextend', 15, ('mem', ('range', ('add', 640, ('var', '_5'), ('var', '_8'), ('var', '_66')), 32)))
        mem[_69 + 320] = mem[_5 + _8 + _66 + 640]
        mem[t] = _69
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 320] = ceil32(return_data.size) + 480
    mem[ceil32(return_data.size) + 352] = mem[_5 + 352]
    _68 = mem[_5 + 384]
    require mem[_5 + 384] <= test266151307()
    require _5 + mem[_5 + 384] + 319 < return_data.size + 288
    _70 = mem[_5 + mem[_5 + 384] + 288]
    require mem[_5 + mem[_5 + 384] + 288] <= test266151307()
    _72 = mem[64]
    require mem[64] + (32 * mem[_5 + mem[_5 + 384] + 288]) + 32 >= mem[64] and mem[64] + (32 * mem[_5 + mem[_5 + 384] + 288]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_5 + mem[_5 + 384] + 288]) + 32
    mem[_72] = mem[_5 + mem[_5 + 384] + 288]
    idx = 0
    s = _5 + _68 + 320
    t = _72 + 32
    while idx < _70:
        _121 = mem[s]
        require return_data.size + -_5 + -_68 + -mem[s] - 32 >= 160
        _126 = mem[64]
        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
        mem[64] = mem[64] + 160
        mem[_126] = mem[_5 + _68 + _121 + 320]
        _129 = mem[_5 + _68 + _121 + 352]
        require mem[_5 + _68 + _121 + 352] <= test266151307()
        require _5 + _68 + _121 + mem[_5 + _68 + _121 + 352] + 351 < return_data.size + 288
        _133 = mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 352] + 320]
        require mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 352] + 320] <= test266151307()
        _136 = mem[64]
        require mem[64] + ceil32(mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 352] + 320]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 352] + 320]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 352] + 320]) + 32
        mem[_136] = _133
        require _5 + _68 + _121 + _129 + _133 + 64 <= return_data.size
        u = 0
        while u < _133:
            mem[u + _136 + 32] = mem[u + _5 + _68 + _121 + _129 + 352]
            u = u + 32
            continue 
        if ceil32(_133) <= _133:
            mem[_126 + 32] = _136
            _165 = mem[_5 + _68 + _121 + 384]
            require mem[_5 + _68 + _121 + 384] <= test266151307()
            require _5 + _68 + _121 + mem[_5 + _68 + _121 + 384] + 351 < return_data.size + 288
            _167 = mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 384] + 320]
            require mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 384] + 320] <= test266151307()
            _169 = mem[64]
            require mem[64] + ceil32(mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 384] + 320]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 384] + 320]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 384] + 320]) + 32
            mem[_169] = _167
            require _5 + _68 + _121 + _165 + _167 + 64 <= return_data.size
            u = 0
            while u < _167:
                mem[u + _169 + 32] = mem[u + _5 + _68 + _121 + _165 + 352]
                u = u + 32
                continue 
            if ceil32(_167) > _167:
                mem[_167 + _169 + 32] = 0
            mem[_126 + 64] = _169
        else:
            mem[_133 + _136 + 32] = 0
            mem[_126 + 32] = _136
            _166 = mem[_5 + _68 + _121 + 384]
            require mem[_5 + _68 + _121 + 384] <= test266151307()
            require _5 + _68 + _121 + mem[_5 + _68 + _121 + 384] + 351 < return_data.size + 288
            _168 = mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 384] + 320]
            require mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 384] + 320] <= test266151307()
            _170 = mem[64]
            require mem[64] + ceil32(mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 384] + 320]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 384] + 320]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(mem[_5 + _68 + _121 + mem[_5 + _68 + _121 + 384] + 320]) + 32
            mem[_170] = _168
            require _5 + _68 + _121 + _166 + _168 + 64 <= return_data.size
            u = 0
            while u < _168:
                mem[u + _170 + 32] = mem[u + _5 + _68 + _121 + _166 + 352]
                u = u + 32
                continue 
            if ceil32(_168) > _168:
                mem[_168 + _170 + 32] = 0
            mem[_126 + 64] = _170
        mem[_126 + 96] = mem[_5 + _68 + _121 + 416]
        mem[_126 + 128] = mem[_5 + _68 + _121 + 448]
        mem[t] = _126
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 384] = _72
    mem[ceil32(return_data.size) + 416] = mem[_5 + 416]
    mem[ceil32(return_data.size) + 448] = mem[_5 + 448]
    mem[mem[64]] = mem[ceil32(return_data.size) + 352]
    return memory
      from mem[64]
       len 32
}

function sub_0db0742d(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 480
        _39 = mem[64]
        require mem[64] + 320 >= mem[64] and mem[64] + 320 <= test266151307()
        mem[64] = mem[64] + 320
        require cd[(cd[4] + cd[s] + 36)] == uint64(cd[(cd[4] + cd[s] + 36)])
        mem[_39] = cd[(cd[4] + cd[s] + 36)]
        mem[_39 + 32] = cd[(cd[4] + cd[s] + 68)]
        mem[_39 + 64] = cd[(cd[4] + cd[s] + 100)]
        mem[_39 + 96] = cd[(cd[4] + cd[s] + 132)]
        mem[_39 + 128] = cd[(cd[4] + cd[s] + 164)]
        require cd[(cd[4] + cd[s] + 196)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)] <= test266151307()
        _52 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)]) + 32
        mem[_52] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)]
        u = 0
        v = cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 68
        w = _52 + 32
        while u < cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + 36)]:
            require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + cd[v] + 99 < calldata.size
            require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + cd[v] + 68)] <= test266151307()
            _83 = mem[64]
            require mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + cd[v] + 68)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + cd[v] + 68)]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + cd[v] + 68)]) + 32
            mem[_83] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + cd[v] + 68)]
            require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + cd[v] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + cd[v] + 68)] + 100 <= calldata.size
            mem[_83 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + cd[v] + 68)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + cd[v] + 100 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + cd[v] + 68)]]
            mem[_83 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 196)] + cd[v] + 68)] + 32] = 0
            mem[w] = _83
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_39 + 160] = _52
        require cd[(cd[4] + cd[s] + 228)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)] <= test266151307()
        _91 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]) + 32
        mem[_91] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]
        u = 0
        v = cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 68
        w = _91 + 32
        while u < cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + 36)]:
            require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[v] + 99 < calldata.size
            require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[v] + 68)] <= test266151307()
            _124 = mem[64]
            require mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[v] + 68)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[v] + 68)]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[v] + 68)]) + 32
            mem[_124] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[v] + 68)]
            require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[v] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[v] + 68)] + 100 <= calldata.size
            mem[_124 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[v] + 68)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[v] + 100 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[v] + 68)]]
            mem[_124 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 228)] + cd[v] + 68)] + 32] = 0
            mem[w] = _124
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[_39 + 192] = _91
        require calldata.size + -cd[4] + -cd[s] - 260 >= 192
        _120 = mem[64]
        require mem[64] + 192 >= mem[64] and mem[64] + 192 <= test266151307()
        mem[64] = mem[64] + 192
        mem[_120] = cd[(cd[4] + cd[s] + 260)]
        mem[_120 + 32] = cd[(cd[4] + cd[s] + 292)]
        mem[_120 + 64] = cd[(cd[4] + cd[s] + 324)]
        mem[_120 + 96] = cd[(cd[4] + cd[s] + 356)]
        mem[_120 + 128] = cd[(cd[4] + cd[s] + 388)]
        require cd[(cd[4] + cd[s] + 420)] == bool(cd[(cd[4] + cd[s] + 420)])
        mem[_120 + 160] = cd[(cd[4] + cd[s] + 420)]
        mem[_39 + 224] = _120
        require cd[(cd[4] + cd[s] + 452)] == uint16(cd[(cd[4] + cd[s] + 452)])
        mem[_39 + 256] = cd[(cd[4] + cd[s] + 452)]
        require cd[(cd[4] + cd[s] + 484)] == address(cd[(cd[4] + cd[s] + 484)])
        mem[_39 + 288] = cd[(cd[4] + cd[s] + 484)]
        mem[t] = _39
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == uint64(cd[36])
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if stor1[idx].field_0 != tx.origin:
            idx = idx + 1
            continue 
        _79 = mem[64]
        mem[mem[64]] = 0xd185c2a900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 3
        mem[mem[64] + 36] = 96
        _80 = mem[96]
        mem[mem[64] + 100] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 132
        u = mem[64] + 132
        while idx < _80:
            mem[u] = t + -_79 - 132
            _111 = mem[s]
            mem[t] = mem[mem[s] + 24 len 8]
            mem[t + 32] = mem[_111 + 32]
            mem[t + 64] = mem[_111 + 64]
            mem[t + 96] = mem[_111 + 96]
            mem[t + 128] = mem[_111 + 128]
            _117 = mem[_111 + 160]
            mem[t + 160] = 480
            _119 = mem[_117]
            mem[t + 480] = mem[_117]
            v = 0
            w = _117 + 32
            x = t + (32 * _119) + 512
            y = t + 512
            while v < _119:
                mem[y] = x + -t - 512
                _139 = mem[w]
                _141 = mem[mem[w]]
                mem[x] = mem[mem[w]]
                idx = 0
                while idx < _141:
                    mem[idx + x + 32] = mem[idx + _139 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_141) > _141:
                    mem[_141 + x + 32] = 0
                v = v + 1
                w = w + 32
                x = ceil32(_141) + x + 32
                y = y + 32
                continue 
            _140 = mem[_111 + 192]
            mem[t + 192] = x - t
            _142 = mem[_140]
            mem[x] = mem[_140]
            v = 0
            w = _140 + 32
            y = x + (32 * _142) + 32
            z = x + 32
            while v < _142:
                mem[z] = y + -x - 32
                _156 = mem[w]
                _159 = mem[mem[w]]
                mem[y] = mem[mem[w]]
                s = 0
                while s < _159:
                    mem[s + y + 32] = mem[s + _156 + 32]
                    s = s + 32
                    continue 
                if ceil32(_159) > _159:
                    mem[_159 + y + 32] = 0
                v = v + 1
                w = w + 32
                y = ceil32(_159) + y + 32
                z = z + 32
                continue 
            _158 = mem[_111 + 224]
            mem[t + 224] = mem[mem[_111 + 224]]
            mem[t + 256] = mem[_158 + 32]
            mem[t + 288] = mem[_158 + 64]
            mem[t + 320] = mem[_158 + 96]
            mem[t + 352] = mem[_158 + 128]
            mem[t + 384] = bool(mem[_158 + 160])
            mem[t + 416] = mem[_111 + 286 len 2]
            mem[t + 448] = mem[_111 + 300 len 20]
            idx = idx + 1
            s = s + 32
            t = y
            u = u + 32
            continue 
        mem[_79 + 68] = uint64(cd[36])
        require ext_code.size(0x74e486732e0ada7be865ac0d6139a80c1bf35f9a)
        delegate 0x74e486732e0ada7be865ac0d6139a80c1bf35f9a.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    revert with 0, 'Restricted'
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[192] = 96
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0x2d13091400000000000000000000000000000000000000000000000000000000
    mem[292] = 3
    mem[324] = 14
    mem[356] = 19
    mem[388] = msg.sender
    require ext_code.size(0x8790142d7a4a71c9faad3280e6cf1d886f8baa51)
    delegate 0x8790142d7a4a71c9faad3280e6cf1d886f8baa51.0x2d130914 with:
         gas gas_remaining wei
        args 3, 14, 19, msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[288 len 4], 0
    require mem[288 len 4], 0 <= test266151307()
    require return_data.size - mem[288 len 4], 0 >= 192
    require bool(ceil32(return_data.size) + 480 <= test266151307())
    mem[64] = ceil32(return_data.size) + 480
    require mem[mem[288 len 4], 0 + 288] == bool(mem[mem[288 len 4], 0 + 288])
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 0 + 288]
    _8 = mem[_5 + 320]
    require mem[_5 + 320] <= test266151307()
    require _5 + mem[_5 + 320] + 319 < return_data.size + 288
    _9 = mem[_5 + mem[_5 + 320] + 288]
    require mem[_5 + mem[_5 + 320] + 288] <= test266151307()
    require (32 * mem[_5 + mem[_5 + 320] + 288]) + 224 >= 192 and ceil32(return_data.size) + (32 * mem[_5 + mem[_5 + 320] + 288]) + 512 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[_5 + mem[_5 + 320] + 288]) + 512
    mem[ceil32(return_data.size) + 480] = mem[_5 + mem[_5 + 320] + 288]
    idx = 0
    s = _5 + _8 + 320
    t = ceil32(return_data.size) + 512
    while idx < _9:
        _76 = mem[s]
        require return_data.size + -_5 + -_8 + -mem[s] - 32 >= 352
        _79 = mem[64]
        require mem[64] + 352 >= mem[64] and mem[64] + 352 <= test266151307()
        mem[64] = mem[64] + 352
        require mem[_5 + _8 + _76 + 320] == bool(mem[_5 + _8 + _76 + 320])
        mem[_79] = mem[_5 + _8 + _76 + 320]
        mem[_79 + 32] = mem[_5 + _8 + _76 + 352]
        mem[_79 + 64] = mem[_5 + _8 + _76 + 384]
        _85 = mem[_5 + _8 + _76 + 416]
        require mem[_5 + _8 + _76 + 416] <= test266151307()
        require _5 + _8 + _76 + mem[_5 + _8 + _76 + 416] + 351 < return_data.size + 288
        _89 = mem[_5 + _8 + _76 + mem[_5 + _8 + _76 + 416] + 320]
        require mem[_5 + _8 + _76 + mem[_5 + _8 + _76 + 416] + 320] <= test266151307()
        _97 = mem[64]
        require mem[64] + ceil32(mem[_5 + _8 + _76 + mem[_5 + _8 + _76 + 416] + 320]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + _8 + _76 + mem[_5 + _8 + _76 + 416] + 320]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[_5 + _8 + _76 + mem[_5 + _8 + _76 + 416] + 320]) + 32
        mem[_97] = _89
        require _5 + _8 + _76 + _85 + _89 + 64 <= return_data.size
        u = 0
        while u < _89:
            mem[u + _97 + 32] = mem[u + _5 + _8 + _76 + _85 + 352]
            u = u + 32
            continue 
        if ceil32(_89) > _89:
            mem[_89 + _97 + 32] = 0
        mem[_79 + 96] = _97
        require mem[_5 + _8 + _76 + 448] == mem[_5 + _8 + _76 + 472 len 8]
        mem[_79 + 128] = mem[_5 + _8 + _76 + 448]
        require mem[_5 + _8 + _76 + 480] == ('signextend', 7, ('mem', ('range', ('add', 480, ('var', '_5'), ('var', '_8'), ('var', '_76')), 32)))
        mem[_79 + 160] = mem[_5 + _8 + _76 + 480]
        require mem[_5 + _8 + _76 + 512] == ('signextend', 7, ('mem', ('range', ('add', 512, ('var', '_5'), ('var', '_8'), ('var', '_76')), 32)))
        mem[_79 + 192] = mem[_5 + _8 + _76 + 512]
        require mem[_5 + _8 + _76 + 544] == ('signextend', 15, ('mem', ('range', ('add', 544, ('var', '_5'), ('var', '_8'), ('var', '_76')), 32)))
        mem[_79 + 224] = mem[_5 + _8 + _76 + 544]
        require mem[_5 + _8 + _76 + 576] == mem[_5 + _8 + _76 + 588 len 20]
        mem[_79 + 256] = mem[_5 + _8 + _76 + 576]
        require mem[_5 + _8 + _76 + 608] == ('signextend', 15, ('mem', ('range', ('add', 608, ('var', '_5'), ('var', '_8'), ('var', '_76')), 32)))
        mem[_79 + 288] = mem[_5 + _8 + _76 + 608]
        require mem[_5 + _8 + _76 + 640] == ('signextend', 15, ('mem', ('range', ('add', 640, ('var', '_5'), ('var', '_8'), ('var', '_76')), 32)))
        mem[_79 + 320] = mem[_5 + _8 + _76 + 640]
        mem[t] = _79
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 320] = ceil32(return_data.size) + 480
    mem[ceil32(return_data.size) + 352] = mem[_5 + 352]
    _78 = mem[_5 + 384]
    require mem[_5 + 384] <= test266151307()
    require _5 + mem[_5 + 384] + 319 < return_data.size + 288
    _80 = mem[_5 + mem[_5 + 384] + 288]
    require mem[_5 + mem[_5 + 384] + 288] <= test266151307()
    _82 = mem[64]
    require mem[64] + (32 * mem[_5 + mem[_5 + 384] + 288]) + 32 >= mem[64] and mem[64] + (32 * mem[_5 + mem[_5 + 384] + 288]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_5 + mem[_5 + 384] + 288]) + 32
    mem[_82] = mem[_5 + mem[_5 + 384] + 288]
    idx = 0
    s = _5 + _78 + 320
    t = _82 + 32
    while idx < _80:
        _141 = mem[s]
        require return_data.size + -_5 + -_78 + -mem[s] - 32 >= 160
        _146 = mem[64]
        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
        mem[64] = mem[64] + 160
        mem[_146] = mem[_5 + _78 + _141 + 320]
        _151 = mem[_5 + _78 + _141 + 352]
        require mem[_5 + _78 + _141 + 352] <= test266151307()
        require _5 + _78 + _141 + mem[_5 + _78 + _141 + 352] + 351 < return_data.size + 288
        _158 = mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 352] + 320]
        require mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 352] + 320] <= test266151307()
        _163 = mem[64]
        require mem[64] + ceil32(mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 352] + 320]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 352] + 320]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 352] + 320]) + 32
        mem[_163] = mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 352] + 320]
        require _5 + _78 + _141 + _151 + _158 + 64 <= return_data.size
        u = 0
        while u < _158:
            mem[u + _163 + 32] = mem[u + _5 + _78 + _141 + _151 + 352]
            u = u + 32
            continue 
        if ceil32(_158) <= _158:
            mem[_146 + 32] = _163
            _195 = mem[_5 + _78 + _141 + 384]
            require mem[_5 + _78 + _141 + 384] <= test266151307()
            require _5 + _78 + _141 + mem[_5 + _78 + _141 + 384] + 351 < return_data.size + 288
            _197 = mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 384] + 320]
            require mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 384] + 320] <= test266151307()
            _199 = mem[64]
            require mem[64] + ceil32(mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 384] + 320]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 384] + 320]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 384] + 320]) + 32
            mem[_199] = mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 384] + 320]
            require _5 + _78 + _141 + _195 + _197 + 64 <= return_data.size
            u = 0
            while u < _197:
                mem[u + _199 + 32] = mem[u + _5 + _78 + _141 + _195 + 352]
                u = u + 32
                continue 
            if ceil32(_197) > _197:
                mem[_197 + _199 + 32] = 0
            mem[_146 + 64] = _199
        else:
            mem[_158 + _163 + 32] = 0
            mem[_146 + 32] = _163
            _196 = mem[_5 + _78 + _141 + 384]
            require mem[_5 + _78 + _141 + 384] <= test266151307()
            require _5 + _78 + _141 + mem[_5 + _78 + _141 + 384] + 351 < return_data.size + 288
            _198 = mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 384] + 320]
            require mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 384] + 320] <= test266151307()
            _200 = mem[64]
            require mem[64] + ceil32(mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 384] + 320]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 384] + 320]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 384] + 320]) + 32
            mem[_200] = mem[_5 + _78 + _141 + mem[_5 + _78 + _141 + 384] + 320]
            require _5 + _78 + _141 + _196 + _198 + 64 <= return_data.size
            u = 0
            while u < _198:
                mem[u + _200 + 32] = mem[u + _5 + _78 + _141 + _196 + 352]
                u = u + 32
                continue 
            if ceil32(_198) > _198:
                mem[_198 + _200 + 32] = 0
            mem[_146 + 64] = _200
        mem[_146 + 96] = mem[_5 + _78 + _141 + 416]
        mem[_146 + 128] = mem[_5 + _78 + _141 + 448]
        mem[t] = _146
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 384] = _82
    mem[ceil32(return_data.size) + 416] = mem[_5 + 416]
    mem[ceil32(return_data.size) + 448] = mem[_5 + 448]
    if mem[ceil32(return_data.size) + 352] < arg2:
        revert with 0, 'Insufficient tokens'
    _147 = mem[64]
    mem[64] = mem[64] + 96
    mem[_147] = stor0
    mem[_147 + 32] = arg1
    mem[_147 + 64] = arg2
    mem[mem[64] + 4] = 3
    mem[mem[64] + 36] = 14
    mem[mem[64] + 68] = 19
    mem[mem[64] + 100] = 21
    mem[mem[64] + 132] = stor0
    mem[mem[64] + 164] = arg1
    mem[mem[64] + 196] = arg2
    require ext_code.size(0xb6d70c888b79c4d0e247f3185f5c4029560a163)
    delegate 0xb6d70c888b79c4d0e247f3185f5c4029560a163.0xc5bb51da with:
         gas gas_remaining wei
        args 3, 14, 19, 21, stor0, address(arg1), arg2
    mem[mem[64]] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    _162 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_162] == bool(mem[_162])
    mem[mem[64]] = bool(mem[_162])
    return memory
      from mem[64]
       len 32
}

function sub_a89a8884(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[192] = 96
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0x2d13091400000000000000000000000000000000000000000000000000000000
    mem[292] = 3
    mem[324] = 14
    mem[356] = 19
    mem[388] = address(arg1)
    require ext_code.size(0x8790142d7a4a71c9faad3280e6cf1d886f8baa51)
    delegate 0x8790142d7a4a71c9faad3280e6cf1d886f8baa51.0x2d130914 with:
         gas gas_remaining wei
        args 3, 14, 19, address(arg1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[288 len 4], 0
    require mem[288 len 4], 0 <= test266151307()
    require return_data.size - mem[288 len 4], 0 >= 192
    require bool(ceil32(return_data.size) + 480 <= test266151307())
    mem[64] = ceil32(return_data.size) + 480
    require mem[mem[288 len 4], 0 + 288] == bool(mem[mem[288 len 4], 0 + 288])
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], 0 + 288]
    _8 = mem[_5 + 320]
    require mem[_5 + 320] <= test266151307()
    require _5 + mem[_5 + 320] + 319 < return_data.size + 288
    _9 = mem[_5 + mem[_5 + 320] + 288]
    require mem[_5 + mem[_5 + 320] + 288] <= test266151307()
    require (32 * mem[_5 + mem[_5 + 320] + 288]) + 224 >= 192 and ceil32(return_data.size) + (32 * mem[_5 + mem[_5 + 320] + 288]) + 512 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[_5 + mem[_5 + 320] + 288]) + 512
    mem[ceil32(return_data.size) + 480] = mem[_5 + mem[_5 + 320] + 288]
    idx = 0
    s = _5 + _8 + 320
    t = ceil32(return_data.size) + 512
    while idx < _9:
        _113 = mem[s]
        require return_data.size + -_5 + -_8 + -mem[s] - 32 >= 352
        _116 = mem[64]
        require mem[64] + 352 >= mem[64] and mem[64] + 352 <= test266151307()
        mem[64] = mem[64] + 352
        require mem[_5 + _8 + _113 + 320] == bool(mem[_5 + _8 + _113 + 320])
        mem[_116] = mem[_5 + _8 + _113 + 320]
        mem[_116 + 32] = mem[_5 + _8 + _113 + 352]
        mem[_116 + 64] = mem[_5 + _8 + _113 + 384]
        _122 = mem[_5 + _8 + _113 + 416]
        require mem[_5 + _8 + _113 + 416] <= test266151307()
        require _5 + _8 + _113 + mem[_5 + _8 + _113 + 416] + 351 < return_data.size + 288
        _126 = mem[_5 + _8 + _113 + mem[_5 + _8 + _113 + 416] + 320]
        require mem[_5 + _8 + _113 + mem[_5 + _8 + _113 + 416] + 320] <= test266151307()
        _134 = mem[64]
        require mem[64] + ceil32(mem[_5 + _8 + _113 + mem[_5 + _8 + _113 + 416] + 320]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + _8 + _113 + mem[_5 + _8 + _113 + 416] + 320]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[_5 + _8 + _113 + mem[_5 + _8 + _113 + 416] + 320]) + 32
        mem[_134] = mem[_5 + _8 + _113 + mem[_5 + _8 + _113 + 416] + 320]
        require _5 + _8 + _113 + _122 + _126 + 64 <= return_data.size
        u = 0
        while u < _126:
            mem[u + _134 + 32] = mem[u + _5 + _8 + _113 + _122 + 352]
            u = u + 32
            continue 
        if ceil32(_126) > _126:
            mem[_126 + _134 + 32] = 0
        mem[_116 + 96] = _134
        require mem[_5 + _8 + _113 + 448] == mem[_5 + _8 + _113 + 472 len 8]
        mem[_116 + 128] = mem[_5 + _8 + _113 + 448]
        require mem[_5 + _8 + _113 + 480] == ('signextend', 7, ('mem', ('range', ('add', 480, ('var', '_5'), ('var', '_8'), ('var', '_113')), 32)))
        mem[_116 + 160] = mem[_5 + _8 + _113 + 480]
        require mem[_5 + _8 + _113 + 512] == ('signextend', 7, ('mem', ('range', ('add', 512, ('var', '_5'), ('var', '_8'), ('var', '_113')), 32)))
        mem[_116 + 192] = mem[_5 + _8 + _113 + 512]
        require mem[_5 + _8 + _113 + 544] == ('signextend', 15, ('mem', ('range', ('add', 544, ('var', '_5'), ('var', '_8'), ('var', '_113')), 32)))
        mem[_116 + 224] = mem[_5 + _8 + _113 + 544]
        require mem[_5 + _8 + _113 + 576] == mem[_5 + _8 + _113 + 588 len 20]
        mem[_116 + 256] = mem[_5 + _8 + _113 + 576]
        require mem[_5 + _8 + _113 + 608] == ('signextend', 15, ('mem', ('range', ('add', 608, ('var', '_5'), ('var', '_8'), ('var', '_113')), 32)))
        mem[_116 + 288] = mem[_5 + _8 + _113 + 608]
        require mem[_5 + _8 + _113 + 640] == ('signextend', 15, ('mem', ('range', ('add', 640, ('var', '_5'), ('var', '_8'), ('var', '_113')), 32)))
        mem[_116 + 320] = mem[_5 + _8 + _113 + 640]
        mem[t] = _116
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 320] = ceil32(return_data.size) + 480
    mem[ceil32(return_data.size) + 352] = mem[_5 + 352]
    _115 = mem[_5 + 384]
    require mem[_5 + 384] <= test266151307()
    require _5 + mem[_5 + 384] + 319 < return_data.size + 288
    _117 = mem[_5 + mem[_5 + 384] + 288]
    require mem[_5 + mem[_5 + 384] + 288] <= test266151307()
    _119 = mem[64]
    require mem[64] + (32 * mem[_5 + mem[_5 + 384] + 288]) + 32 >= mem[64] and mem[64] + (32 * mem[_5 + mem[_5 + 384] + 288]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * mem[_5 + mem[_5 + 384] + 288]) + 32
    mem[_119] = mem[_5 + mem[_5 + 384] + 288]
    idx = 0
    s = _5 + _115 + 320
    t = _119 + 32
    while idx < _117:
        _215 = mem[s]
        require return_data.size + -_5 + -_115 + -mem[s] - 32 >= 160
        _219 = mem[64]
        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
        mem[64] = mem[64] + 160
        mem[_219] = mem[_5 + _115 + _215 + 320]
        _225 = mem[_5 + _115 + _215 + 352]
        require mem[_5 + _115 + _215 + 352] <= test266151307()
        require _5 + _115 + _215 + mem[_5 + _115 + _215 + 352] + 351 < return_data.size + 288
        _233 = mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 352] + 320]
        require mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 352] + 320] <= test266151307()
        _247 = mem[64]
        require mem[64] + ceil32(mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 352] + 320]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 352] + 320]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 352] + 320]) + 32
        mem[_247] = _233
        require _5 + _115 + _215 + _225 + _233 + 64 <= return_data.size
        u = 0
        while u < _233:
            mem[u + _247 + 32] = mem[u + _5 + _115 + _215 + _225 + 352]
            u = u + 32
            continue 
        if ceil32(_233) <= _233:
            mem[_219 + 32] = _247
            _317 = mem[_5 + _115 + _215 + 384]
            require mem[_5 + _115 + _215 + 384] <= test266151307()
            require _5 + _115 + _215 + mem[_5 + _115 + _215 + 384] + 351 < return_data.size + 288
            _324 = mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 384] + 320]
            require mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 384] + 320] <= test266151307()
            _332 = mem[64]
            require mem[64] + ceil32(mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 384] + 320]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 384] + 320]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 384] + 320]) + 32
            mem[_332] = mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 384] + 320]
            require _5 + _115 + _215 + _317 + _324 + 64 <= return_data.size
            u = 0
            while u < _324:
                mem[u + _332 + 32] = mem[u + _5 + _115 + _215 + _317 + 352]
                u = u + 32
                continue 
            if ceil32(_324) > _324:
                mem[_324 + _332 + 32] = 0
            mem[_219 + 64] = _332
        else:
            mem[_233 + _247 + 32] = 0
            mem[_219 + 32] = _247
            _318 = mem[_5 + _115 + _215 + 384]
            require mem[_5 + _115 + _215 + 384] <= test266151307()
            require _5 + _115 + _215 + mem[_5 + _115 + _215 + 384] + 351 < return_data.size + 288
            _325 = mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 384] + 320]
            require mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 384] + 320] <= test266151307()
            _333 = mem[64]
            require mem[64] + ceil32(mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 384] + 320]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 384] + 320]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 384] + 320]) + 32
            mem[_333] = mem[_5 + _115 + _215 + mem[_5 + _115 + _215 + 384] + 320]
            require _5 + _115 + _215 + _318 + _325 + 64 <= return_data.size
            u = 0
            while u < _325:
                mem[u + _333 + 32] = mem[u + _5 + _115 + _215 + _318 + 352]
                u = u + 32
                continue 
            if ceil32(_325) > _325:
                mem[_325 + _333 + 32] = 0
            mem[_219 + 64] = _333
        mem[_219 + 96] = mem[_5 + _115 + _215 + 416]
        mem[_219 + 128] = mem[_5 + _115 + _215 + 448]
        mem[t] = _219
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 384] = _119
    mem[ceil32(return_data.size) + 416] = mem[_5 + 416]
    mem[ceil32(return_data.size) + 448] = mem[_5 + 448]
    _220 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = bool(mem[ceil32(return_data.size) + 288])
    _222 = mem[ceil32(return_data.size) + 320]
    mem[mem[64] + 64] = 192
    _223 = mem[_222]
    mem[mem[64] + 224] = mem[_222]
    idx = 0
    s = mem[64] + 256
    t = _222 + 32
    u = mem[64] + (32 * _223) + 256
    while idx < _223:
        mem[s] = u + -_220 - 256
        _307 = mem[t]
        mem[u] = bool(mem[mem[t]])
        mem[u + 32] = mem[_307 + 32]
        mem[u + 64] = mem[_307 + 64]
        _316 = mem[_307 + 96]
        mem[u + 96] = 352
        _322 = mem[_316]
        mem[u + 352] = mem[_316]
        v = 0
        while v < _322:
            mem[v + u + 384] = mem[v + _316 + 32]
            v = v + 32
            continue 
        if ceil32(_322) > _322:
            mem[_322 + u + 384] = 0
        mem[u + 128] = mem[_307 + 152 len 8]
        mem[u + 160] = ('signextend', 7, ('mem', ('range', ('add', 160, ('var', '_307')), 32)))
        mem[u + 192] = ('signextend', 7, ('mem', ('range', ('add', 192, ('var', '_307')), 32)))
        mem[u + 224] = ('signextend', 15, ('mem', ('range', ('add', 224, ('var', '_307')), 32)))
        mem[u + 256] = mem[_307 + 268 len 20]
        mem[u + 288] = ('signextend', 15, ('mem', ('range', ('add', 288, ('var', '_307')), 32)))
        mem[u + 320] = ('signextend', 15, ('mem', ('range', ('add', 320, ('var', '_307')), 32)))
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_322) + u + 384
        continue 
    mem[_220 + 96] = mem[ceil32(return_data.size) + 352]
    _306 = mem[ceil32(return_data.size) + 384]
    mem[_220 + 128] = u + -_220 - 32
    _309 = mem[_306]
    mem[u] = mem[_306]
    idx = 0
    s = _306 + 32
    t = u + (32 * _309) + 32
    v = u + 32
    while idx < _309:
        mem[v] = t + -u - 32
        _368 = mem[s]
        mem[t] = mem[mem[s]]
        _370 = mem[_368 + 32]
        mem[t + 32] = 160
        _376 = mem[_370]
        mem[t + 160] = mem[_370]
        u = 0
        while u < _376:
            mem[u + t + 192] = mem[u + _370 + 32]
            u = u + 32
            continue 
        if ceil32(_376) <= _376:
            _416 = mem[_368 + 64]
            mem[t + 64] = ceil32(_376) + 192
            _418 = mem[_416]
            mem[ceil32(_376) + t + 192] = mem[_416]
            u = 0
            while u < _418:
                mem[u + ceil32(_376) + t + 224] = mem[u + _416 + 32]
                u = u + 32
                continue 
            if ceil32(_418) > _418:
                mem[_418 + ceil32(_376) + t + 224] = 0
            mem[t + 96] = mem[_368 + 96]
            mem[t + 128] = mem[_368 + 128]
            idx = idx + 1
            s = s + 32
            t = ceil32(_418) + ceil32(_376) + t + 224
            v = v + 32
            continue 
        mem[_376 + t + 192] = 0
        _417 = mem[_368 + 64]
        mem[t + 64] = ceil32(_376) + 192
        _419 = mem[_417]
        mem[ceil32(_376) + t + 192] = mem[_417]
        u = 0
        while u < _419:
            mem[u + ceil32(_376) + t + 224] = mem[u + _417 + 32]
            u = u + 32
            continue 
        if ceil32(_419) > _419:
            mem[_419 + ceil32(_376) + t + 224] = 0
        mem[t + 96] = mem[_368 + 96]
        mem[t + 128] = mem[_368 + 128]
        idx = idx + 1
        s = s + 32
        t = ceil32(_419) + ceil32(_376) + t + 224
        v = v + 32
        continue 
    mem[_220 + 160] = mem[ceil32(return_data.size) + 416]
    mem[_220 + 192] = mem[ceil32(return_data.size) + 448]
    return memory
      from mem[64]
       len t - mem[64]
}



}
