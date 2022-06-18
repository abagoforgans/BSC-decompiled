contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor6;
mapping of uint256 sub_f9133560;
mapping of address sub_14e978db;
mapping of uint256 sub_40893423;
mapping of uint256 balances;

function sub_14e978db(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    return sub_14e978db[arg1][arg2][arg3[all]]
}

function sub_40893423(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    return sub_40893423[arg1][arg2][arg3[all]]
}

function balances(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return balances[arg1][arg2]
}

function balanceOf(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return balances[address(arg1)][address(arg2)]
}

function sub_f9133560(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    return sub_f9133560[arg1][arg2][arg3[all]]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    stor0 = arg1
}

function sub_8bf73d8d(?) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == arg5
    require arg6 == arg6
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    stor2 = arg1
    stor3 = arg2
    stor1 = address(arg3)
    stor4 = address(arg4)
    stor5 = arg5
    stor6 = arg6
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawETH(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdrawal amount exceeds balance!'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_7f629809(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if arg4 <= 0:
        revert with 0, 'Amount is too low!'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = sha3(address(arg2), sha3(address(arg3), 7))
    if uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Payment ID is not unique!'
    require ext_code.size(address(arg2))
    call address(arg2).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'sub_f9133560', 7))))][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] = arg4
    stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'sub_14e978db', 8))))][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] = msg.sender
    stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'sub_40893423', 9))))][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] = block.timestamp
    if balances[address(arg3)][address(arg2)] > -arg4 - 1:
        revert with 'NH{q', 17
    balances[address(arg3)][address(arg2)] += arg4
}

function sub_b8212197(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = sha3(address(arg2), sha3(address(arg3), 7))
    if ceil32(arg1.length) <= arg1.length:
        _83 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = sha3(address(arg2), sha3(address(arg3), 8))
        if ceil32(arg1.length) <= arg1.length:
            _159 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = sha3(address(arg2), sha3(address(arg3), 9))
            return uint256(stor[_83]), 
                   address(stor[_159]),
                   uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])])
        _169 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = sha3(address(arg2), sha3(address(arg3), 9))
        return uint256(stor[_83]), 
               address(stor[_169]),
               uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])])
    _88 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = sha3(address(arg2), sha3(address(arg3), 8))
    if ceil32(arg1.length) <= arg1.length:
        _164 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = sha3(address(arg2), sha3(address(arg3), 9))
        return uint256(stor[_88]), 
               address(stor[_164]),
               uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])])
    _174 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = sha3(address(arg2), sha3(address(arg3), 9))
    return uint256(stor[_88]), 
           address(stor[_174]),
           uint256(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])])
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balances[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdrawal amount exceeds balance!'
    if balances[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    balances[address(msg.sender)][address(arg1)] -= arg2
    if not stor2:
        revert with 'NH{q', 18
    if arg2 / stor2 and stor3 > -1 / arg2 / stor2:
        revert with 'NH{q', 17
    if not stor4:
        if arg2 < arg2 / stor2 * stor3:
            revert with 'NH{q', 17
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2 - (arg2 / stor2 * stor3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor1, arg2 / stor2 * stor3
    else:
        if stor5 <= 0:
            if arg2 < arg2 / stor2 * stor3:
                revert with 'NH{q', 17
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2 - (arg2 / stor2 * stor3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args stor1, arg2 / stor2 * stor3
        else:
            require ext_code.size(stor4)
            call stor4.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < stor5:
                if arg2 < arg2 / stor2 * stor3:
                    revert with 'NH{q', 17
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg2 - (arg2 / stor2 * stor3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1, arg2 / stor2 * stor3
            else:
                if not stor2:
                    revert with 'NH{q', 18
                if arg2 / stor2 and stor6 > -1 / arg2 / stor2:
                    revert with 'NH{q', 17
                if arg2 < arg2 / stor2 * stor6:
                    revert with 'NH{q', 17
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg2 - (arg2 / stor2 * stor6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1, arg2 / stor2 * stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
