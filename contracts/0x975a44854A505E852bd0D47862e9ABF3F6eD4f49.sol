contract main {




// =====================  Runtime code  =====================


address currentOwner;
mapping of uint256 nonces;
address stor2;
uint128 stor3;
address stor3;
uint32 stor4;
address deadAddress;

function deadAddress() payable {
    return address(deadAddress)
}

function CurrentOwner() payable {
    return currentOwner
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if currentOwner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(currentOwner, arg1);
    currentOwner = arg1
}

function sub_47ab1e30(?) payable {
    require calldata.size - 4 >= 160
    if arg2 < block.timestamp:
        revert with 0, 'EXPIRED'
    if block.timestamp > arg2:
        revert with 0, 'EXPIRED'
    if nonces[address(msg.sender)] + 1 < nonces[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    nonces[address(msg.sender)]++
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, address(stor3), 0, arg1, 1, arg2, nonces[address(msg.sender)])), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'INVALID_SIGNATURE'
    if address(signer) != stor2:
        revert with 0, 'INVALID_SIGNATURE'
    mem[584 len 96] = unknown_0x23b872dd(?????), msg.sender, address(deadAddress), Mask(224, 32, arg1) >> 32
    mem[708 len 4] = uint32(arg1)
    call address(stor3) with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[680 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[688 len 20],
                        uint32(arg1),
                        mem[712 len 4]
        if not msg.sender, Mask(96, 0, stor3):
            revert with 0, 
                        32,
                        36,
                        0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[688 len 20],
                        uint32(arg1),
                        mem[712 len 4]
    else:
        mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 689 len 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[616]:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 689 len 28]
    emit 0x21e9d29a: arg1, block.timestamp, msg.sender
}

function sub_c1791e1a(?) payable {
    require calldata.size - 4 >= 256
    if arg4 != 2:
        if arg4 != 3:
            revert with 0, 'invalid type'
    if block.timestamp > arg5:
        revert with 0, 'EXPIRED'
    if nonces[address(msg.sender)] + 1 < nonces[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    nonces[address(msg.sender)]++
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, arg1, arg2, arg3, arg4, arg5, nonces[address(msg.sender)])), arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'INVALID_SIGNATURE'
    if address(signer) != stor2:
        revert with 0, 'INVALID_SIGNATURE'
    mem[584 len 96] = unknown_0x23b872dd(?????), msg.sender, address(deadAddress), Mask(224, 32, arg2) >> 32
    mem[708 len 4] = uint32(arg2)
    call arg1 with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[680 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[688 len 20],
                        uint32(arg2),
                        mem[712 len 4]
        if not msg.sender, Mask(96, 64, arg1) >> 64:
            revert with 0, 
                        32,
                        36,
                        0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[688 len 20],
                        uint32(arg2),
                        mem[712 len 4]
        mem[716 len 96] = 0, msg.sender, address(deadAddress), Mask(224, 32, arg3) >> 32
        mem[840 len 4] = uint32(arg3)
        call address(stor3) with:
           funct uint32(stor4)
             gas gas_remaining wei
            args arg3, address(deadAddress), Mask(224, 32, arg3) >> 32 >> 224, mem[812 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[820 len 20],
                            uint32(arg3),
                            mem[844 len 4]
            if not msg.sender, Mask(96, 64, arg1) >> 64:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[820 len 20],
                            uint32(arg3),
                            mem[844 len 4]
        else:
            mem[748 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 821 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[748]:
                    revert with 0, 
                                32,
                                36,
                                0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(return_data.size) + 821 len 28]
    else:
        mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 689 len 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[616]:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 689 len 28]
        mem[ceil32(return_data.size) + 717 len 96] = 0, msg.sender, address(deadAddress), Mask(224, 32, arg3) >> 32
        mem[ceil32(return_data.size) + 841 len 4] = uint32(arg3)
        call address(stor3) with:
           funct uint32(stor4)
             gas gas_remaining wei
            args arg3, address(deadAddress), Mask(224, 32, arg3) >> 32 >> 224, mem[ceil32(return_data.size) + 813 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 821 len 20],
                            uint32(arg3),
                            mem[ceil32(return_data.size) + 845 len 4]
            if not msg.sender, Mask(96, 64, arg1) >> 64:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 821 len 20],
                            uint32(arg3),
                            mem[ceil32(return_data.size) + 845 len 4]
        else:
            mem[ceil32(return_data.size) + 749 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(2 * ceil32(return_data.size)) + 822 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 749]:
                    revert with 0, 
                                32,
                                36,
                                0x735472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(2 * ceil32(return_data.size)) + 822 len 28]
    emit 0x328221d9: arg2, arg3, block.timestamp, arg4, msg.sender, arg1
}



}
