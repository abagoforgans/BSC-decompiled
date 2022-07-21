contract main {




// =====================  Runtime code  =====================


#
#  - removePool(address arg1)
#
address owner;
array of struct pool;
uint256 sub_8dc94f3a;
uint256 sub_2838c410;
uint256 sub_28160e62;
uint256 sub_6acdf05b;
uint8 sub_9287132f;
uint8 sub_fa61a844; offset 8
mapping of address sub_14b366bc;
mapping of uint8 stor8;
mapping of struct allPools;
uint256 count;

function count() {
    return count
}

function sub_14b366bc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return address(sub_14b366bc[arg1])
}

function sub_28160e62(?) {
    return sub_28160e62
}

function sub_2838c410(?) {
    return sub_2838c410
}

function allPools(uint256 arg1) {
    require calldata.size - 4 >= 32
    return allPools[arg1].field_0, allPools[arg1].field_256
}

function sub_6acdf05b(?) {
    return sub_6acdf05b
}

function owner() {
    return owner
}

function sub_8dc94f3a(?) {
    return sub_8dc94f3a
}

function sub_9287132f(?) {
    return sub_9287132f
}

function sub_c0f268d4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[address(arg1)])
}

function sub_fa61a844(?) {
    return sub_fa61a844
}

function poolAddresses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pool.length
    return pool[arg1].field_0
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

function sub_64ef787c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 1
}

function sub_af434bf0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 0
}

function sub_ce0fac28(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).0x3428e01e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.0x32f289cf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refund(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.0xfa89401a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7819429a: address(arg1), 4
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

function deposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.0xf340fa01 with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogDeposit(address(arg1), msg.sender, msg.value);
}

function sub_e6cac100(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(sub_14b366bc[address(arg1)]) != msg.sender:
        revert with 0, 'Not Owner!'
    require ext_code.size(address(arg1))
    call address(arg1).endPool() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7819429a: address(arg1), 3
}

function sub_67203b86(?) {
    require calldata.size - 4 >= 192
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8dc94f3a = arg1
    sub_2838c410 = arg2
    sub_28160e62 = arg3
    sub_6acdf05b = arg4
    sub_9287132f = uint8(arg5)
    sub_fa61a844 = uint8(arg6)
    emit 0xf4581861: arg1, arg2, arg3, arg4, uint8(arg5), arg6 << 248
}

function sub_c8d75eb4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if address(sub_14b366bc[address(arg1)]) != msg.sender:
        revert with 0, 'Not Owner!'
    require ext_code.size(address(arg1))
    call address(arg1).0xf562ca44 with:
         gas gas_remaining wei
        args bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x4c2c50b7: address(arg1), bool(arg2)
}

function sub_3a0f0b65(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor8[address(msg.sender)]:
        revert with 0, 'Not Govenor'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xe24c73c3 with:
         gas gas_remaining wei
        args bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x402f5b62: address(arg1), bool(arg2)
}

function sub_53df9d76(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor8[address(msg.sender)]:
        revert with 0, 'Not Govenor'
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

function sub_dee6f1d8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg2) > 3:
        revert with 0, 33
    if uint8(arg2) >= 4:
        revert with 0, 33
    require ext_code.size(address(arg1))
    call address(arg1).0x6863b326 with:
         gas gas_remaining wei
        args uint8(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x3e4976a8: address(arg1), uint8(arg2)
}

function cancelPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(sub_14b366bc[address(arg1)]) != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Not Owner!'
    if not stor8[address(msg.sender)]:
        revert with 0, 'Not Govenor'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.cancelPool() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7819429a: address(arg1), 4
}

function sub_1dda3ee5(?) {
    mem[64] = (32 * pool.length) + 128
    mem[96] = pool.length
    if not pool.length:
        mem[(32 * pool.length) + 128] = 32
        mem[(32 * pool.length) + 160] = pool.length
        idx = 0
        s = (32 * pool.length) + 192
        t = 128
        while idx < pool.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * pool.length) + 128
           len (96 * pool.length) + 64
    mem[128] = address(pool.field_0)
    idx = 128
    s = 0
    while (32 * pool.length) + 96 > idx:
        mem[idx + 32] = pool[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * pool.length) + 128] = 32
    mem[(32 * pool.length) + 160] = pool.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < pool.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * pool.length) + -mem[64] + 192
}

function sub_010e0cbf(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(sub_14b366bc[address(cd[4])]) != msg.sender:
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

function sub_c770454e(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(sub_14b366bc[address(cd[4])]) != msg.sender:
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
    call address(cd[4]).removeAddressesFromWhitelist(address[] arg1) with:
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
    emit 0x8b9c5866: address(cd[4]), Array(len=('cd', 36).length, data=mem[192 len 32 * ('cd', 36).length])
}

function sub_420bdfd0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if address(sub_14b366bc[address(arg1)]) != msg.sender:
        revert with 0, 'Not Owner!'
    mem[ceil32(arg2.length) + 128] = 0x38aa4a0a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 196 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 196] = 0
    require ext_code.size(address(arg1))
    call address(arg1) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 196 len 2 * ceil32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 128] = address(arg1)
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 192] = arg2.length
    emit 0xd98a8b49: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len (2 * ceil32(arg2.length)) + -arg2.length + 64]
}

function sub_bb0821e6(?) payable {
    require calldata.size - 4 >= 480
    require calldata.size - 4 >= 192
    require calldata.size - 196 >= 224
    require arg14 == address(arg14)
    require arg15 <= test266151307()
    require arg15 + 35 < calldata.size
    if arg15.length > test266151307():
        revert with 0, 65
    if ceil32(arg15.length) + 128 < 96 or ceil32(arg15.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg15.length + arg15 + 36
    mem[128 len arg15.length] = arg15[all]
    mem[arg15.length + 128] = 0
    require arg6 == uint8(arg6)
    if msg.value < sub_8dc94f3a:
        if msg.value < sub_2838c410:
            if msg.value < sub_28160e62:
                if msg.value < sub_6acdf05b:
                    revert with 0, 'Not enough fee!'
                if uint8(arg6) != 3:
                    revert with 0, 'Not enough fee!'
            else:
                if uint8(arg6) != 2:
                    if msg.value < sub_6acdf05b:
                        revert with 0, 'Not enough fee!'
                    if uint8(arg6) != 3:
                        revert with 0, 'Not enough fee!'
        else:
            if uint8(arg6) != 1:
                if msg.value < sub_28160e62:
                    if msg.value < sub_6acdf05b:
                        revert with 0, 'Not enough fee!'
                    if uint8(arg6) != 3:
                        revert with 0, 'Not enough fee!'
                else:
                    if uint8(arg6) != 2:
                        if msg.value < sub_6acdf05b:
                            revert with 0, 'Not enough fee!'
                        if uint8(arg6) != 3:
                            revert with 0, 'Not enough fee!'
    else:
        if uint8(arg6):
            if msg.value < sub_2838c410:
                if msg.value < sub_28160e62:
                    if msg.value < sub_6acdf05b:
                        revert with 0, 'Not enough fee!'
                    if uint8(arg6) != 3:
                        revert with 0, 'Not enough fee!'
                else:
                    if uint8(arg6) != 2:
                        if msg.value < sub_6acdf05b:
                            revert with 0, 'Not enough fee!'
                        if uint8(arg6) != 3:
                            revert with 0, 'Not enough fee!'
            else:
                if uint8(arg6) != 1:
                    if msg.value < sub_28160e62:
                        if msg.value < sub_6acdf05b:
                            revert with 0, 'Not enough fee!'
                        if uint8(arg6) != 3:
                            revert with 0, 'Not enough fee!'
                    else:
                        if uint8(arg6) != 2:
                            if msg.value < sub_6acdf05b:
                                revert with 0, 'Not enough fee!'
                            if uint8(arg6) != 3:
                                revert with 0, 'Not enough fee!'
    mem[ceil32(arg15.length) + 128] = arg1
    require arg4 == uint8(arg4)
    require arg6 == uint8(arg6)
    if uint8(arg6) > 3:
        revert with 0, 33
    require arg11 == uint16(arg11)
    require arg12 == bool(arg12)
    require arg13 == bool(arg13)
    if uint8(arg6) >= 4:
        revert with 0, 33
    require ext_code.size(0x704e5ceaf8b42ae2165f5e8c64f404d4659cdb8)
    delegate 0x704e5ceaf8b42ae2165f5e8c64f404d4659cdb8.0x74a8e47b with:
         gas gas_remaining wei
        args arg1, arg2, arg3, arg4 << 248, arg5, address(arg14), 0, arg6 << 248, 0, 0, 448, owner, sub_9287132f, sub_fa61a844, arg7, arg8, arg9, arg10, arg11 << 240, 256, bool(arg12), bool(arg13), arg15.length, arg15[all], mem[arg15.length + 128 len ceil32(arg15.length) - arg15.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if msg.value:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    pool.length++
    pool[pool.length].field_0 = delegate.return_data[12 len 20]
    uint256(sub_14b366bc[delegate.return_data[12 len 20]]) = msg.sender or Mask(96, 160, uint256(sub_14b366bc[delegate.return_data[12 len 20]]))
    allPools[stor10].field_0 = address(delegate.return_data[0])
    allPools[stor10].field_256 = msg.sender
    if count > -2:
        revert with 0, 17
    count++
    emit 0x97e2389c: msg.sender, address(delegate.return_data[0])
    return address(delegate.return_data[0])
}



}
