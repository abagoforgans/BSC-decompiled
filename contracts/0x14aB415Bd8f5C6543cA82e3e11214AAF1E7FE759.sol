contract main {




// =====================  Runtime code  =====================


address currentOwner;
mapping of uint256 nonces;
address stor2;
uint128 stor3;
address stor3;
mapping of struct sub_9575a5f2;

function CurrentOwner() payable {
    return currentOwner
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function sub_9575a5f2(?) payable {
    require calldata.size - 4 >= 32
    return sub_9575a5f2[4][address(stor3)][address(arg1)].field_256
}

function _fallback() payable {
    revert
}

function getDeposit(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    mem[384 len 0] = None
    mem[480 len 0] = None
    return 64, 160, 2, mem[384 len 64], 2, mem[480 len 64]
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

function withdrawSingle(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256 <= 0:
        revert with 0, 'not enough'
    if arg1 <= 0:
        revert with 0, 'amount0'
    if arg1 > sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256 -= arg1
    emit 0xb06f2dd3: arg1, block.timestamp, msg.sender
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call address(stor3) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
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
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, address(stor3), 0, arg1, 4, arg2, nonces[address(msg.sender)])), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'INVALID_SIGNATURE'
    if address(signer) != stor2:
        revert with 0, 'INVALID_SIGNATURE'
    mem[584 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[708 len 4] = uint32(arg1)
    call address(stor3) with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[680 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[688 len 20],
                        uint32(arg1),
                        mem[712 len 4]
        if not msg.sender, Mask(96, 0, stor3):
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[688 len 20],
                        uint32(arg1),
                        mem[712 len 4]
        if sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256 + arg1 < sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256 + arg1:
            sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256 = 0
        else:
            require sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256 + arg1
            if (99 * sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256) + (99 * arg1) / sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256 + arg1 != 99:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[685 len 23],
                            uint32(arg1),
                            mem[712 len 4]
            sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256 = (99 * sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256) + (99 * arg1) / 100
    else:
        mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 689 len 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[616]:
                revert with 0, 
                            32,
                            36,
                            0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 689 len 28]
        if sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256 + arg1 < sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256 + arg1:
            sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256 = 0
        else:
            require sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256 + arg1
            if (99 * sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256) + (99 * arg1) / sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256 + arg1 != 99:
                revert with 0, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 686 len 31]
            sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256 = (99 * sub_9575a5f2[4][address(stor3)][address(msg.sender)].field_256) + (99 * arg1) / 100
    emit 0x21e9d29a: arg1, block.timestamp, msg.sender
}

function sub_c1791e1a(?) payable {
    require calldata.size - 4 >= 256
    if arg4 != 5:
        if arg4 != 6:
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
    mem[584 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[708 len 4] = uint32(arg2)
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[680 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[688 len 20],
                        uint32(arg2),
                        mem[712 len 4]
        if not msg.sender, Mask(96, 64, arg1) >> 64:
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[688 len 20],
                        uint32(arg2),
                        mem[712 len 4]
        mem[716 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
        mem[840 len 4] = uint32(arg3)
        call address(stor3) with:
             gas gas_remaining wei
            args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[812 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[820 len 20],
                            uint32(arg3),
                            mem[844 len 4]
            if not msg.sender, Mask(96, 64, arg1) >> 64:
                revert with 0, 
                            32,
                            36,
                            0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[820 len 20],
                            uint32(arg3),
                            mem[844 len 4]
            if sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_0 + arg2 < sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_0 += arg2
            if sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3 < sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3:
                sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 = 0
            else:
                require sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3
                if (99 * sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256) + (99 * arg3) / sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3 != 99:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[817 len 23],
                                uint32(arg3),
                                mem[844 len 4]
                sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 = (99 * sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256) + (99 * arg3) / 100
        else:
            mem[748 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 821 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[748]:
                    revert with 0, 
                                32,
                                36,
                                0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(return_data.size) + 821 len 28]
            if sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_0 + arg2 < sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_0 += arg2
            if sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3 < sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3:
                sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 = 0
            else:
                require sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3
                if (99 * sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256) + (99 * arg3) / sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3 != 99:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 818 len 31]
                sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 = (99 * sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256) + (99 * arg3) / 100
    else:
        mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 689 len 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[616]:
                revert with 0, 
                            32,
                            36,
                            0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 689 len 28]
        mem[ceil32(return_data.size) + 717 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
        mem[ceil32(return_data.size) + 841 len 4] = uint32(arg3)
        call address(stor3) with:
             gas gas_remaining wei
            args arg3, address(this.address), Mask(224, 32, arg3) >> 32 >> 224, mem[ceil32(return_data.size) + 813 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 821 len 20],
                            uint32(arg3),
                            mem[ceil32(return_data.size) + 845 len 4]
            if not msg.sender, Mask(96, 64, arg1) >> 64:
                revert with 0, 
                            32,
                            36,
                            0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 821 len 20],
                            uint32(arg3),
                            mem[ceil32(return_data.size) + 845 len 4]
            if sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_0 + arg2 < sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_0 += arg2
            if sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3 < sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3:
                sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 = 0
            else:
                require sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3
                if (99 * sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256) + (99 * arg3) / sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3 != 99:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 818 len 23],
                                uint32(arg3),
                                mem[ceil32(return_data.size) + 845 len 4]
                sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 = (99 * sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256) + (99 * arg3) / 100
        else:
            mem[ceil32(return_data.size) + 749 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[(2 * ceil32(return_data.size)) + 822 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 749]:
                    revert with 0, 
                                32,
                                36,
                                0x775472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[(2 * ceil32(return_data.size)) + 822 len 28]
            if sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_0 + arg2 < sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_0 += arg2
            if sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3 < sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3:
                sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 = 0
            else:
                require sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3
                if (99 * sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256) + (99 * arg3) / sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 + arg3 != 99:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(2 * ceil32(return_data.size)) + 819 len 31]
                sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256 = (99 * sub_9575a5f2[arg4][address(arg1)][address(msg.sender)].field_256) + (99 * arg3) / 100
    emit 0x328221d9: arg2, arg3, block.timestamp, arg4, msg.sender, arg1
}

function withdraw(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 == 5:
        if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 <= 0:
            revert with 0, 'not enough'
        if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 <= 0:
            revert with 0, 'not enough'
        if not sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0:
            if not sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256:
                if 0 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit 0x7b993414: 0, 0, block.timestamp, arg1, msg.sender, arg3
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                call arg3 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[260 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[296 len 64] = 0, msg.sender, 0
                    call address(stor3) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, Mask(224, 32, 0, msg.sender, 0) >> 32, mem[360 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[328]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[228]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[ceil32(return_data.size) + 297 len 64] = 0, msg.sender, 0
                    call address(stor3) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, Mask(224, 32, 0, msg.sender, 0) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 329]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                require sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256
                if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 != arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 0 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 -= sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000
                emit 0x7b993414: 0, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000, block.timestamp, arg1, msg.sender, arg3
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                call arg3 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[260 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[296 len 64] = 0, msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) >> 32
                    call address(stor3) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000, Mask(224, 32, 0, msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) >> 32) >> 32, mem[360 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[328]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[228]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[ceil32(return_data.size) + 297 len 64] = 0, msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) >> 32
                    call address(stor3) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000, Mask(224, 32, 0, msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 329]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            require sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0
            if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 != arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256:
                if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 -= sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000
                if 0 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit 0x7b993414: sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000, 0, block.timestamp, arg1, msg.sender, arg3
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000) >> 32
                call arg3 with:
                   funct uint32(arg1)
                     gas gas_remaining wei
                    args Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000) << 224, mem[260 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[296 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call address(stor3) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[360 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[328]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[228]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call address(stor3) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 361 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'TransferHelper: TRANSFER_FAILED',
                                        mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 329]:
                                revert with 0, 
                                            'TransferHelper: TRANSFER_FAILED',
                                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256
                if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 != arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 -= sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000
                if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 -= sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000
                emit 0x7b993414: sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000, block.timestamp, arg1, msg.sender, arg3
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000) >> 32
                call arg3 with:
                   funct uint32(arg1)
                     gas gas_remaining wei
                    args Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000) << 224, mem[260 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[296 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) >> 32
                    call address(stor3) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) << 224, mem[360 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[328]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) >> 32
                        call address(stor3) with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 329]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        require return_data.size >= 32
                        if not mem[228]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) >> 32
                        call address(stor3) with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'TransferHelper: TRANSFER_FAILED',
                                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 329]:
                                    revert with 0, 
                                                'TransferHelper: TRANSFER_FAILED',
                                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        if arg1 != 6:
            revert with 0, 'invalid type'
        if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 <= 0:
            revert with 0, 'not enough'
        if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 <= 0:
            revert with 0, 'not enough'
        if not sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0:
            if not sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256:
                if 0 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit 0x7b993414: 0, 0, block.timestamp, arg1, msg.sender, arg3
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                call arg3 with:
                   funct uint32(arg1)
                     gas gas_remaining wei
                    args 0, mem[260 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[296 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call address(stor3) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[360 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[328]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                        call address(stor3) with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 329]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        require return_data.size >= 32
                        if not mem[228]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                        call address(stor3) with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'TransferHelper: TRANSFER_FAILED',
                                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 329]:
                                    revert with 0, 
                                                'TransferHelper: TRANSFER_FAILED',
                                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256
                if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 != arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 0 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 -= sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000
                emit 0x7b993414: 0, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000, block.timestamp, arg1, msg.sender, arg3
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                call arg3 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[260 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[296 len 64] = 0, msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) >> 32
                    call address(stor3) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000, Mask(224, 32, 0, msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) >> 32) >> 32, mem[360 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[328]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[228]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[ceil32(return_data.size) + 297 len 64] = 0, msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) >> 32
                    call address(stor3) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000, Mask(224, 32, 0, msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 329]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            require sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0
            if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 != arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256:
                if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 -= sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000
                if 0 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit 0x7b993414: sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000, 0, block.timestamp, arg1, msg.sender, arg3
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000) >> 32
                call arg3 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000) << 224, mem[260 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[296 len 64] = 0, msg.sender, 0
                    call address(stor3) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, Mask(224, 32, 0, msg.sender, 0) >> 32, mem[360 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[328]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[228]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[ceil32(return_data.size) + 297 len 64] = 0, msg.sender, 0
                    call address(stor3) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, Mask(224, 32, 0, msg.sender, 0) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 329]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                require sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256
                if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 != arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 -= sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000
                if sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000 > sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 -= sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000
                emit 0x7b993414: sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000, block.timestamp, arg1, msg.sender, arg3
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000) >> 32
                call arg3 with:
                   funct uint32(arg1)
                     gas gas_remaining wei
                    args Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_0 * arg2 / 10000) << 224, mem[260 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    mem[296 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) >> 32
                    call address(stor3) with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) << 224, mem[360 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[328]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) >> 32
                        call address(stor3) with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            'TransferHelper: TRANSFER_FAILED',
                                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 329]:
                                    revert with 0, 
                                                'TransferHelper: TRANSFER_FAILED',
                                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    else:
                        require return_data.size >= 32
                        if not mem[228]:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) >> 32
                        call address(stor3) with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, sub_9575a5f2[arg1][address(arg3)][address(msg.sender)].field_256 * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 329]:
                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
}



}
