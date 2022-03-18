contract main {




// =====================  Runtime code  =====================


const PERCENT_DENOMINATOR = 10000


uint32 stor0;
address OWNER_ADDRESS;
uint256 stor0;
address MANAGER_ADDRESS;
address sub_5234e2dcAddress;
address sub_1ff51c86Address;
uint256 sub_d296345e;

function OWNER_ADDRESS() payable {
    return address(OWNER_ADDRESS)
}

function sub_1ff51c86(?) payable {
    return sub_1ff51c86Address
}

function MANAGER_ADDRESS() payable {
    return MANAGER_ADDRESS
}

function sub_5234e2dc(?) payable {
    return sub_5234e2dcAddress
}

function sub_d296345e(?) payable {
    return sub_d296345e
}

function _fallback() payable {
    revert
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    MANAGER_ADDRESS = arg1
    return 0
}

function sub_534d02b8(?) payable {
    require calldata.size - 4 >= 32
    if address(OWNER_ADDRESS) != msg.sender:
        revert with 0, 'CROSSFI USER: ONLY_OWNER'
    sub_d296345e = arg1
    return 1
}

function sub_fd1a2397(?) payable {
    require calldata.size - 4 >= 32
    if address(OWNER_ADDRESS) != msg.sender:
        revert with 0, 'CROSSFI USER: ONLY_OWNER'
    sub_1ff51c86Address = arg1
    return 1
}

function sub_1e58d4f7(?) payable {
    require calldata.size - 4 >= 32
    if address(OWNER_ADDRESS) != msg.sender:
        revert with 0, 'CROSSFI USER: ONLY_OWNER'
    require ext_code.size(sub_5234e2dcAddress)
    staticcall sub_5234e2dcAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg1) >> 32
        call sub_5234e2dcAddress with:
           funct uint32(stor0)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[260 len 4]
    else:
        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
        call sub_5234e2dcAddress with:
           funct uint32(stor0)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    return 1
}

function sub_3a2ee252(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(MANAGER_ADDRESS)
    staticcall MANAGER_ADDRESS.users(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x7743524f535346494e205245574152443a20434f4e54524143545f414444524553535f4e4f545f4d415443,
                    mem[207 len 21]
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[352 len 4] = uint32(arg1)
    call sub_5234e2dcAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x485472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg1),
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        36,
                        0x485472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg1),
                        mem[356 len 4]
        if not arg1:
            mem[392 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, 0
            call sub_1ff51c86Address with:
                 gas gas_remaining wei
                args 0, mem[456 len 4]
        else:
            require arg1
            if arg1 * sub_d296345e / arg1 != sub_d296345e:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[329 len 23],
                            uint32(arg1),
                            mem[356 len 4]
            mem[392 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg1 * sub_d296345e / 10000) >> 32
            call sub_1ff51c86Address with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1 * sub_d296345e / 10000) << 224, mem[456 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[424]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
        return 0
    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    36,
                    0x485472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                    mem[ceil32(return_data.size) + 333 len 28]
    if return_data.size:
        require return_data.size >= 32
        if not mem[260]:
            revert with 0, 
                        32,
                        36,
                        0x485472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 333 len 28]
    if not arg1:
        mem[ceil32(return_data.size) + 393 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, 0
        mem[ceil32(return_data.size) + 485 len 4] = 0
        call sub_1ff51c86Address with:
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 457 len 4]
    else:
        require arg1
        if arg1 * sub_d296345e / arg1 != sub_d296345e:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 330 len 31]
        mem[ceil32(return_data.size) + 393 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg1 * sub_d296345e / 10000) >> 32
        mem[ceil32(return_data.size) + 485 len 4] = Mask(32, 64, arg1 * sub_d296345e / 10000) >> 64
        call sub_1ff51c86Address with:
             gas gas_remaining wei
            args Mask(224, 32, arg1 * sub_d296345e / 10000) << 224, mem[ceil32(return_data.size) + 457 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            return 0
    mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    'TransferHelper: TRANSFER_FAILED',
                    mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 425]:
            revert with 0, 
                        'TransferHelper: TRANSFER_FAILED',
                        mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    return 0, mem[(2 * ceil32(return_data.size)) + 426 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
