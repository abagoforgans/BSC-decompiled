contract main {




// =====================  Runtime code  =====================


const getOwner = 0


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function Deposit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_b162fb04(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function withdrawFees(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_652ac3e2(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function pairFor(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        return address(sha3(0, 14561330441654603551, sha3(arg1, arg2), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
    if not arg2:
        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
    return address(sha3(0, 14561330441654603551, sha3(arg2, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5))
}

function sub_dda8b75c(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0, 0, address(ext_call.return_data[0]), ext_call.return_data[0], 10, 10, address(arg2), block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return 1
}

function Liquify(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args 0, 0, address(ext_call.return_data[0]), ext_call.return_data[0], 10, 10, address(msg.sender), block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return 1
}

function sub_2aaecfe5(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    if arg1 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, arg2), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        call address(sha3(0, 14561330441654603551, sha3(arg1, arg2), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).0xa9059cbb with:
             gas gas_remaining wei
            args address(sha3(0, 14561330441654603551, sha3(arg1, arg2), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, arg2), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        call address(sha3(0, 14561330441654603551, sha3(arg1, arg2), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).burn(address arg1) with:
             gas gas_remaining wei
            args arg4
    else:
        if not arg2:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg2, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        call address(sha3(0, 14561330441654603551, sha3(arg2, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).0xa9059cbb with:
             gas gas_remaining wei
            args address(sha3(0, 14561330441654603551, sha3(arg2, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg2, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        call address(sha3(0, 14561330441654603551, sha3(arg2, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).burn(address arg1) with:
             gas gas_remaining wei
            args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if arg1 == arg2:
        revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[388 len 29]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if arg1 == arg1:
            return ext_call.return_data[0], ext_call.return_data[32]
    else:
        if not arg2:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if arg1 == arg2:
            return ext_call.return_data[0], ext_call.return_data[32]
    return ext_call.return_data[32], ext_call.return_data[0]
}

function sub_c7f05b4b(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    if arg1 == stor1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if arg1 < stor1:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, stor1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        call address(sha3(0, 14561330441654603551, sha3(arg1, stor1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).0xa9059cbb with:
             gas gas_remaining wei
            args address(sha3(0, 14561330441654603551, sha3(arg1, stor1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(arg1, stor1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        call address(sha3(0, 14561330441654603551, sha3(arg1, stor1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).burn(address arg1) with:
             gas gas_remaining wei
            args this.address
    else:
        if not stor1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(stor1, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        call address(sha3(0, 14561330441654603551, sha3(stor1, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).0xa9059cbb with:
             gas gas_remaining wei
            args address(sha3(0, 14561330441654603551, sha3(stor1, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, 14561330441654603551, sha3(stor1, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)))
        call address(sha3(0, 14561330441654603551, sha3(stor1, arg1), 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5)).burn(address arg1) with:
             gas gas_remaining wei
            args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if arg1 == stor1:
        revert with 0, 32, 35, 0xfe50616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[388 len 29]
    if arg1 < stor1:
        if not arg1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if arg1 == arg1:
            require ext_code.size(stor1)
            call stor1.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call arg3 with:
               value ext_call.return_data[32] wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[420 len 29]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                35,
                                0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                mem[ceil32(return_data.size) + 421 len 29]
            ('bool', 'ext_call.success')
            return ext_call.return_data[0], ext_call.return_data[32]
    else:
        if not stor1:
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        if arg1 == stor1:
            require ext_code.size(stor1)
            call stor1.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call arg3 with:
               value ext_call.return_data[32] wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[420 len 29]
                return ext_call.return_data[0], 0, ext_call.return_data[32]
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[ceil32(return_data.size) + 421 len 29]
            return ext_call.return_data[0], ext_call.return_data[32]
    require ext_code.size(stor1)
    call stor1.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg3 with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[420 len 29]
        return ext_call.return_data[32], 0, ext_call.return_data[0]
    if not ext_call.success:
        revert with 0, 
                    32,
                    35,
                    0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                    mem[ceil32(return_data.size) + 421 len 29]
    return ext_call.return_data[32], ext_call.return_data[0]
}



}
