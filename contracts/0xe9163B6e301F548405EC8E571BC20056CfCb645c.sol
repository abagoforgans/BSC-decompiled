contract main {




// =====================  Runtime code  =====================


address owner;
address signerAddress;
mapping of uint8 stor2;

function signerAddress() {
    return signerAddress
}

function sub_633162cd(?) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_00b7d3e6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(signerAddress, arg1);
    signerAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if not arg1:
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            require ext_call.return_data[0]
    emit Withdraw(address(arg2), address(arg1), arg3);
}

function multiTransfer(address arg1, address[] arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require msg.sender == owner
    if arg1:
        idx = 0
        s = 0
        while arg2.length > uint8(idx):
            require uint8(idx) < arg2.length
            require uint8(idx) < arg3.length
            mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[100] = address(cd[((32 * uint8(idx)) + arg2 + 36)])
            mem[132] = cd[((32 * uint8(idx)) + arg3 + 36)]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * uint8(idx)) + arg2 + 36)]), cd[((32 * uint8(idx)) + arg3 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size:
                require return_data.size == 32
                mem[0] = ext_call.return_data[0]
                require ext_call.return_data[0]
            require uint8(idx) < arg3.length
            idx = idx + 1
            s = cd[((32 * uint8(idx)) + arg3 + 36)] + s
            continue 
        emit 0x8decb581: address(arg1), s
    else:
        idx = 0
        s = 0
        while arg2.length > uint8(idx):
            require uint8(idx) < arg2.length
            require uint8(idx) < arg3.length
            call address(cd[((32 * uint8(idx)) + arg2 + 36)]) with:
               value cd[((32 * uint8(idx)) + arg3 + 36)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require uint8(idx) < arg3.length
            idx = idx + 1
            s = cd[((32 * uint8(idx)) + arg3 + 36)] + s
            continue 
        emit 0x8decb581: address(arg1), cd[((32 * uint8(None)) + arg3 + 36)] * None
}

function sub_3c942748(?) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require msg.value > 0
    require msg.value == arg3
    mem[225 len arg4.length] = arg4[all]
    mem[arg4.length + 225] = 0
    if arg4.length != 65:
        require 0 == signerAddress
        require not stor2[arg2]
        stor2[arg2] = 1
        mem[ceil32(arg4.length) + 225] = arg1
        mem[ceil32(arg4.length) + 257] = 0
        emit 0x71db91dd: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 257 len ceil32(arg4.length) + -arg4.length + 32], arg3, arg2
    else:
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 289, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 289, 32))), 0) - 256 >= 27:
            require 0 == signerAddress
            require not stor2[arg2]
            stor2[arg2] = 1
            mem[ceil32(arg4.length) + 225] = arg1
            mem[ceil32(arg4.length) + 257] = 0
            emit 0x71db91dd: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 257 len ceil32(arg4.length) + -arg4.length + 32], arg3, arg2
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 289, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 289, 32))), 0) - 256) + 27):
                signer = erecover(sha3(arg1, arg2, arg3), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 289, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 289, 32))), 0) - 256) + 27 << 248, mem[225], mem[257]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require address(signer) == signerAddress
                require not stor2[arg2]
                stor2[arg2] = 1
                emit 0x71db91dd: arg1 << 248, 0, arg3, arg2
            else:
                if 28 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 289, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 289, 32))), 0) - 256) + 27):
                    signer = erecover(sha3(arg1, arg2, arg3), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 289, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 289, 32))), 0) - 256) + 27 << 248, mem[225], mem[257]) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    require address(signer) == signerAddress
                    require not stor2[arg2]
                    stor2[arg2] = 1
                    emit 0x71db91dd: arg1 << 248, 0, arg3, arg2
                else:
                    require 0 == signerAddress
                    require not stor2[arg2]
                    stor2[arg2] = 1
                    mem[ceil32(arg4.length) + 225] = arg1
                    mem[ceil32(arg4.length) + 257] = 0
                    emit 0x71db91dd: Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 257 len ceil32(arg4.length) + -arg4.length + 32], arg3, arg2
}

function sub_4f8e5e2f(?) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[245 len arg5.length] = arg5[all]
    mem[arg5.length + 245] = 0
    if arg5.length != 65:
        require 0 == signerAddress
        require not stor2[arg3]
        stor2[arg3] = 1
        require ext_code.size(arg2)
        call arg2 with:
           funct Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            require ext_call.return_data[0]
        emit 0x71db91dd: 0, 0, address(arg2), arg4, arg3
    else:
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 309, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 309, 32))), 0) - 256 >= 27:
            require 0 == signerAddress
            require not stor2[arg3]
            stor2[arg3] = 1
            require ext_code.size(arg2)
            call arg2 with:
               funct Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size:
                require return_data.size == 32
                require ext_call.return_data[0]
            emit 0x71db91dd: 0, 0, address(arg2), arg4, arg3
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 309, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 309, 32))), 0) - 256) + 27):
                signer = erecover(sha3(arg1, arg2, arg3, arg4), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 309, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 309, 32))), 0) - 256) + 27 << 248, mem[245], mem[277]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                require address(signer) == signerAddress
                require not stor2[arg3]
                stor2[arg3] = 1
                require ext_code.size(arg2)
                call arg2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    require return_data.size == 32
                    require ext_call.return_data[0]
                emit 0x71db91dd: arg1 << 248, address(arg2), arg4, arg3
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 309, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 309, 32))), 0) - 256) + 27) != 28:
                    require 0 == signerAddress
                    require not stor2[arg3]
                    stor2[arg3] = 1
                    require ext_code.size(arg2)
                    call arg2 with:
                       funct Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        require ext_call.return_data[0]
                    emit 0x71db91dd: 0, 0, address(arg2), arg4, arg3
                else:
                    signer = erecover(sha3(arg1, arg2, arg3, arg4), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 309, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 309, 32))), 0) - 256) + 27 << 248, mem[245], mem[277]) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    require address(signer) == signerAddress
                    require not stor2[arg3]
                    stor2[arg3] = 1
                    require ext_code.size(arg2)
                    call arg2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        require ext_call.return_data[0]
                    emit 0x71db91dd: arg1 << 248, address(arg2), arg4, arg3
}



}
