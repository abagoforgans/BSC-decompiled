contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
array of address pool;
array of uint256 sub_fae27d05;
uint256 sub_9287132f;
uint256 sub_fa61a844;
mapping of address sub_14b366bc;

function sub_14b366bc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_14b366bc[arg1]
}

function owner() {
    return owner
}

function sub_9287132f(?) {
    return sub_9287132f
}

function sub_fa61a844(?) {
    return sub_fa61a844
}

function sub_fae27d05(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_fae27d05.length
    return sub_fae27d05[arg1]
}

function poolAddresses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < pool.length
    return pool[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function claimToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    require ext_code.size(arg1)
    call arg1.0x32f289cf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}

function sub_ce0fac28(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    require ext_code.size(address(arg1))
    call address(arg1).0x3428e01e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7819429a: address(arg1), 3
    stor101 = 1
}

function refund(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    require ext_code.size(arg1)
    call arg1.0xfa89401a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7819429a: address(arg1), 2
    stor101 = 1
}

function sub_53df9d76(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xc5d0d138 with:
         gas gas_remaining wei
        args bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xaaba3143: address(arg1), bool(arg2)
}

function sub_c8d75eb4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if sub_14b366bc[address(arg1)] != msg.sender:
        revert with 0, 'Not Owner!'
    require ext_code.size(address(arg1))
    call address(arg1).0xf562ca44 with:
         gas gas_remaining wei
        args bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x58c07255: address(arg1), bool(arg2)
}

function deposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    require ext_code.size(arg1)
    call arg1.0xf340fa01 with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogDeposit(address(arg1), msg.sender, msg.value);
    stor101 = 1
}

function sub_aec2ac30(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    call address(arg1).0x20e886cc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    emit 0x184057c5: address(arg1), ext_call.return_data[0]
    stor101 = 1
}

function sub_e6cac100(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_14b366bc[address(arg1)] != msg.sender:
        revert with 0, 'Not Owner!'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    require ext_code.size(address(arg1))
    call address(arg1).endPool() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7819429a: address(arg1), 1
    stor101 = 1
}

function cancelPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_14b366bc[address(arg1)] != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not Owner!'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    require ext_code.size(arg1)
    call arg1.cancelPool() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7819429a: address(arg1), 2
    stor101 = 1
}

function sub_8a0f5ba2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 3:
        revert with 'NH{q', 33
    if arg2 >= 4:
        revert with 'NH{q', 33
    require ext_code.size(address(arg1))
    call address(arg1).0x6863b326 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9fa33dbb: address(arg1), arg2
}

function sub_010e0cbf(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if sub_14b366bc[address(cd[4])] != msg.sender:
        revert with 0, 'Not Owner!'
    idx = 0
    s = cd[36] + 36
    t = 164
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    call address(cd[4]).addAddressesToWhitelist(address[] arg1) with:
         gas gas_remaining wei
        args Array(len=('cd', 36).length, data=mem[164 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = cd[36] + 36
    t = 192
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xe58fc09e: address(cd[4]), Array(len=('cd', 36).length, data=mem[192 len 32 * ('cd', 36).length])
}

function sub_a0f467cd(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fae27d05.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_fae27d05.length > idx:
            sub_fae27d05[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_fae27d05[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_fae27d05.length > idx:
            sub_fae27d05[idx] = 0
            idx = idx + 1
            continue 
    sub_9287132f = cd[36]
    sub_fa61a844 = cd[68]
    idx = 0
    s = 0
    t = floor32(('cd', 4).length) + 225
    while idx < sub_fae27d05.length:
        mem[t] = sub_fae27d05[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0x4334d6cd: Array(len=sub_fae27d05.length, data=mem[floor32(('cd', 4).length) + 225 len 32 * sub_fae27d05.length]), sub_9287132f, sub_fa61a844
}

function sub_a339db57(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0, 'Initializable: contract is not initializing'
    stor101 = 1
    stor101 = 1
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_fae27d05.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_fae27d05.length > idx:
            sub_fae27d05[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_fae27d05[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_fae27d05.length > idx:
            sub_fae27d05[idx] = 0
            idx = idx + 1
            continue 
    sub_9287132f = cd[36]
    sub_fa61a844 = cd[68]
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function sub_420bdfd0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if sub_14b366bc[address(arg1)] != msg.sender:
        revert with 0, 'Not Owner!'
    mem[ceil32(ceil32(arg2.length)) + 165 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256, 32) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 27) + 256
    if ceil32(arg2.length) <= arg2.length:
        require ext_code.size(address(arg1))
        call address(arg1).0x38aa4a0a with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=arg2[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xd98a8b49: address(arg1), 64, arg2.length, arg2[all], 0
    else:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 165] = 0
        require ext_code.size(address(arg1))
        call address(arg1).0x38aa4a0a with:
             gas gas_remaining wei
            args Array(len=arg2.length, data=arg2[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(arg2.length)) + 161] = arg2.length
        mem[ceil32(ceil32(arg2.length)) + 193 len ceil32(arg2.length)] = arg2[all], 0
        if ceil32(arg2.length) <= arg2.length:
            emit 0xd98a8b49: address(arg1), Array(len=mem[ceil32(ceil32(arg2.length)) + 161 len arg2.length + 4], data=Mask(8 * ceil32(arg2.length) + -arg2.length + 28, -(8 * ceil32(arg2.length) + -arg2.length + 28) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 28) + 256)
        else:
            mem[ceil32(ceil32(arg2.length)) + arg2.length + 193] = 0
            emit 0xd98a8b49: address(arg1), 64, mem[ceil32(ceil32(arg2.length)) + 161 len arg2.length + 4], 0, mem[ceil32(ceil32(arg2.length)) + arg2.length + 193 len ceil32(arg2.length) - arg2.length]
}

function sub_0866e80a(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg3.length)) + 197 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 27) + 256, bool(arg2)) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 27) + 256
    if ceil32(arg3.length) <= arg3.length:
        require ext_code.size(address(arg1))
        call address(arg1).0x583f8e52 with:
             gas gas_remaining wei
            args bool(arg2), Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xdc8e7121: address(arg1), bool(arg2), 96, arg3.length, arg3[all], 0
    else:
        mem[ceil32(ceil32(arg3.length)) + arg3.length + 197] = 0
        require ext_code.size(address(arg1))
        call address(arg1).0x583f8e52 with:
             gas gas_remaining wei
            args bool(arg2), Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(ceil32(arg3.length)) + 193] = arg3.length
        mem[ceil32(ceil32(arg3.length)) + 225 len ceil32(arg3.length)] = arg3[all], 0
        if ceil32(arg3.length) <= arg3.length:
            emit 0xdc8e7121: address(arg1), bool(arg2), Array(len=mem[ceil32(ceil32(arg3.length)) + 193 len arg3.length + 4], data=Mask(8 * ceil32(arg3.length) + -arg3.length + 28, -(8 * ceil32(arg3.length) + -arg3.length + 28) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 28) + 256)
        else:
            mem[ceil32(ceil32(arg3.length)) + arg3.length + 225] = 0
            emit 0xdc8e7121: address(arg1), bool(arg2), 96, mem[ceil32(ceil32(arg3.length)) + 193 len arg3.length + 4], 0, mem[ceil32(ceil32(arg3.length)) + arg3.length + 225 len ceil32(arg3.length) - arg3.length]
}

function sub_81a1de99(?) payable {
    require calldata.size - 4 >= 672
    require calldata.size - 4 >= 192
    require calldata.size - 196 >= 224
    require arg14 == address(arg14)
    require arg15 <= test266151307()
    require arg15 + 35 < calldata.size
    if arg15.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg15.length)) + 97 > test266151307() or ceil32(ceil32(arg15.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg15 + arg15.length + 36 <= calldata.size
    require calldata.size - 484 >= 192
    if arg6 >= sub_fae27d05.length:
        revert with 'NH{q', 50
    if msg.value < sub_fae27d05[arg6]:
        revert with 0, 'Not enough fee!'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    delegate 0xf9343949d0a6844dd92e3cd1a776ef8876e7cbd9.0x29a13494 with:
         gas gas_remaining wei
        args address(arg14)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if arg6 > 3:
        revert with 'NH{q', 33
    require arg13 == bool(arg13)
    if arg6 >= 4:
        revert with 'NH{q', 33
    mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1733 len ceil32(arg15.length)] = arg15[all], delegate.return_data[arg15.length + -ceil32(ceil32(arg15.length)) + 31 len ceil32(arg15.length) - arg15.length]
    if ceil32(arg15.length) <= arg15.length:
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + ceil32(arg15.length) + 1733] = 0
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + ceil32(arg15.length) + 1765 len 0] = None
        require arg16 == arg16
        require arg17 == arg17
        require arg18 == arg18
        require arg19 == arg19
        require arg20 == arg20
        require arg21 == arg21
        require ext_code.size(0xf4b98a933b217b5d6043a4a51c3b91316115e321)
        delegate 0xf4b98a933b217b5d6043a4a51c3b91316115e321.0x610e06c1 with:
             gas gas_remaining wei
            args address(delegate.return_data[0]), arg1, arg2, arg3, arg4, arg5, address(arg14), 0, arg6, 0, 640, owner, sub_9287132f, sub_fa61a844, arg16, arg17, arg18, arg19, arg20, arg21, arg7, arg8, arg9, arg10, arg11, arg12, 320, bool(arg13), 0, ceil32(arg15.length) + 352, arg15.length, Mask(8 * ceil32(arg15.length), -(8 * ceil32(arg15.length)) + 256, arg15[all], delegate.return_data[arg15.length + -ceil32(ceil32(arg15.length)) + 31 len ceil32(arg15.length) - arg15.length]) << (8 * ceil32(arg15.length)) - 256, 0, None
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value > 0:
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        pool.length++
        pool[pool.length] = address(delegate.return_data[0])
        sub_14b366bc[address(delegate.return_data[0])] = msg.sender
        if arg6 > 3:
            revert with 'NH{q', 33
        require arg13 == bool(arg13)
        if arg6 >= 4:
            revert with 'NH{q', 33
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1729] = 640
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2017] = arg7
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2049] = arg8
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2081] = arg9
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2113] = arg10
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2145] = arg11
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2177] = arg12
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2209] = 320
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2337] = arg15.length
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2369 len ceil32(arg15.length)] = arg15[all], delegate.return_data[arg15.length + -ceil32(ceil32(arg15.length)) + 31 len ceil32(arg15.length) - arg15.length]
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2241] = bool(arg13)
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2273] = 0
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2305] = ceil32(arg15.length) + 352
        if ceil32(arg15.length) <= arg15.length:
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1761] = sub_9287132f
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1793] = sub_fa61a844
            require arg16 == arg16
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1825] = arg16
            require arg17 == arg17
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1857] = arg17
            require arg18 == arg18
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1889] = arg18
            require arg19 == arg19
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1921] = arg19
            require arg20 == arg20
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1953] = arg20
            require arg21 == arg21
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1985] = arg21
            emit 0xa44eec67: msg.sender, address(delegate.return_data[0]), arg1, arg2, arg3, arg4, arg5, address(arg14), 0, arg6, 0, mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1729 len ceil32(arg15.length) + 4], 0, mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + ceil32(arg15.length) + 1765 len 604], 0, None
        else:
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + ceil32(arg15.length) + 2369] = 0
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + ceil32(arg15.length) + 2401 len 0] = None
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1761] = sub_9287132f
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1793] = sub_fa61a844
            require arg16 == arg16
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1825] = arg16
            require arg17 == arg17
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1857] = arg17
            require arg18 == arg18
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1889] = arg18
            require arg19 == arg19
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1921] = arg19
            require arg20 == arg20
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1953] = arg20
            require arg21 == arg21
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1985] = arg21
            emit 0xa44eec67: msg.sender, address(delegate.return_data[0]), arg1, arg2, arg3, arg4, arg5, address(arg14), 0, arg6, 0, mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1729 len ceil32(arg15.length) + 4], 0, mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + ceil32(arg15.length) + 1765 len arg15.length + -ceil32(arg15.length) + 604], 0, mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + arg15.length + 2401 len -arg15.length + ceil32(arg15.length)]
    else:
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + arg15.length + 1733] = 0
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + ceil32(arg15.length) + 1733] = 0
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + ceil32(arg15.length) + 1765 len 0] = None
        require arg16 == arg16
        require arg17 == arg17
        require arg18 == arg18
        require arg19 == arg19
        require arg20 == arg20
        require arg21 == arg21
        require ext_code.size(0xf4b98a933b217b5d6043a4a51c3b91316115e321)
        delegate 0xf4b98a933b217b5d6043a4a51c3b91316115e321.0x610e06c1 with:
             gas gas_remaining wei
            args address(delegate.return_data[0]), arg1, arg2, arg3, arg4, arg5, address(arg14), 0, arg6, 0, 640, owner, sub_9287132f, sub_fa61a844, arg16, arg17, arg18, arg19, arg20, arg21, arg7, arg8, arg9, arg10, arg11, arg12, 320, bool(arg13), 0, ceil32(arg15.length) + 352, arg15.length, Mask(8 * ceil32(arg15.length), -(8 * ceil32(arg15.length)) + 256, arg15[all], delegate.return_data[arg15.length + -ceil32(ceil32(arg15.length)) + 31 len ceil32(arg15.length) - arg15.length]) << (8 * ceil32(arg15.length)) - 256, Mask(8 * -ceil32(arg15.length) + arg15.length + 32, 0, 0), mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + arg15.length + 1765 len -arg15.length + ceil32(arg15.length)]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value > 0:
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        pool.length++
        pool[pool.length] = address(delegate.return_data[0])
        sub_14b366bc[address(delegate.return_data[0])] = msg.sender
        if arg6 > 3:
            revert with 'NH{q', 33
        require arg13 == bool(arg13)
        if arg6 >= 4:
            revert with 'NH{q', 33
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1729] = 640
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2017] = arg7
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2049] = arg8
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2081] = arg9
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2113] = arg10
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2145] = arg11
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2177] = arg12
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2209] = 320
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2337] = arg15.length
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2369 len ceil32(arg15.length)] = arg15[all], delegate.return_data[arg15.length + -ceil32(ceil32(arg15.length)) + 31 len ceil32(arg15.length) - arg15.length]
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2241] = bool(arg13)
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2273] = 0
        mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 2305] = ceil32(arg15.length) + 352
        if ceil32(arg15.length) <= arg15.length:
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1761] = sub_9287132f
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1793] = sub_fa61a844
            require arg16 == arg16
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1825] = arg16
            require arg17 == arg17
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1857] = arg17
            require arg18 == arg18
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1889] = arg18
            require arg19 == arg19
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1921] = arg19
            require arg20 == arg20
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1953] = arg20
            require arg21 == arg21
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1985] = arg21
            emit 0xa44eec67: msg.sender, address(delegate.return_data[0]), arg1, arg2, arg3, arg4, arg5, address(arg14), 0, arg6, 0, mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1729 len arg15.length + 4], 0, mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + arg15.length + 1765 len ceil32(arg15.length) + -arg15.length + 604], 0, None
        else:
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + ceil32(arg15.length) + 2369] = 0
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + ceil32(arg15.length) + 2401 len 0] = None
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1761] = sub_9287132f
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1793] = sub_fa61a844
            require arg16 == arg16
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1825] = arg16
            require arg17 == arg17
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1857] = arg17
            require arg18 == arg18
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1889] = arg18
            require arg19 == arg19
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1921] = arg19
            require arg20 == arg20
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1953] = arg20
            require arg21 == arg21
            mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1985] = arg21
            emit 0xa44eec67: msg.sender, address(delegate.return_data[0]), arg1, arg2, arg3, arg4, arg5, address(arg14), 0, arg6, 0, mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + 1729 len arg15.length + 4], 0, mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + arg15.length + 1765 len 604], 0, mem[ceil32(ceil32(arg15.length)) + ceil32(return_data.size) + arg15.length + 2401 len ceil32(arg15.length) - arg15.length]
    stor101 = 1
    return address(delegate.return_data[0])
}



}
