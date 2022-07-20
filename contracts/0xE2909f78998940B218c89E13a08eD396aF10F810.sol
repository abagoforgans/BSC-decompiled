contract main {




// =====================  Runtime code  =====================


#
#  - discountedSwap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10)
#  - rescueFunds(address arg1, uint256 arg2)
#  - swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10)
#  - unoswapWithPermit(address arg1, uint256 arg2, uint256 arg3, bytes32[] arg4, bytes arg5)
#
address owner;

function owner() {
    return owner
}

function destroy() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unoswap(address arg1, uint256 arg2, uint256 arg3, bytes32[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    if arg1:
        if msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0x11696e76616c6964206d73672e76616c7565
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[(arg4 + 36)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg2 != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ' ', 0x11696e76616c6964206d73672e76616c7565
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.deposit() with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg2
    idx = arg4 + 68
    s = cd[(arg4 + 36)]
    t = arg2
    while idx < arg4 + (32 * arg4.length) + 36:
        staticcall address(s).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if not Mask(1, 255, s):
            mem[100] = 0
            mem[132] = 0 / 10^9 * ext_call.return_data[0]
            mem[164] = address(cd[idx])
            mem[196] = 128
            mem[228] = 0
            call address(s).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / 10^9 * ext_call.return_data[0], address(cd[idx]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 32
            s = cd[idx]
            t = 0 / 10^9 * ext_call.return_data[0]
            continue 
        mem[100] = 0 / 10^9 * ext_call.return_data[32]
        mem[132] = 0
        mem[164] = address(cd[idx])
        mem[196] = 128
        mem[228] = 0
        call address(s).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0 / 10^9 * ext_call.return_data[32], 0, address(cd[idx]), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 32
        s = cd[idx]
        t = 0 / 10^9 * ext_call.return_data[32]
        continue 
    staticcall address(s).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not s or not '@':
        if not Mask(1, 255, s):
            call address(s).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / 10^9 * ext_call.return_data[0], msg.sender, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 / 10^9 * ext_call.return_data[0] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            ' ',
                            0x164d696e2072657475726e206e6f742072656163686564
            return (0 / 10^9 * ext_call.return_data[0])
        call address(s).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0 / 10^9 * ext_call.return_data[32], 0, msg.sender, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not Mask(1, 255, s):
            call address(s).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / 10^9 * ext_call.return_data[0], this.address, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args (0 / 10^9 * ext_call.return_data[0])
            call msg.sender with:
               value 0 / 10^9 * ext_call.return_data[0] wei
                 gas gas_remaining wei
            if 0 / 10^9 * ext_call.return_data[0] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            ' ',
                            0x164d696e2072657475726e206e6f742072656163686564
            return (0 / 10^9 * ext_call.return_data[0])
        call address(s).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0 / 10^9 * ext_call.return_data[32], 0, this.address, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args (0 / 10^9 * ext_call.return_data[32])
        call msg.sender with:
           value 0 / 10^9 * ext_call.return_data[32] wei
             gas gas_remaining wei
    if 0 / 10^9 * ext_call.return_data[32] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ' ',
                    0x164d696e2072657475726e206e6f742072656163686564
    return (0 / 10^9 * ext_call.return_data[32])
}



}
