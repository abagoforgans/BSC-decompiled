contract main {




// =====================  Runtime code  =====================


address stor0;
address erc20Address;
uint256 totalAmount;
uint256 totalBalance;
mapping of struct stor4;
address operatorAddress;
address sub_30551a01Address;
address sub_ed311af0Address;

function totalAmount() payable {
    return totalAmount
}

function erc20Address() payable {
    return erc20Address
}

function sub_30551a01(?) payable {
    return sub_30551a01Address
}

function operator() payable {
    return operatorAddress
}

function totalBalance() payable {
    return totalBalance
}

function sub_ed311af0(?) payable {
    return sub_ed311af0Address
}

function _fallback() payable {
    revert
}

function sub_c38cf64b(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, sub_30551a01Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    operatorAddress = arg1
}

function sub_934c4db2(?) payable {
    require calldata.size - 4 >= 64
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    stor4[arg1].field_0 = arg2
}

function sub_0d55e4d0(?) payable {
    require calldata.size - 4 >= 32
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    return stor4[arg1].field_768
}

function sub_9d6d04b4(?) payable {
    require calldata.size - 4 >= 64
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    stor4[arg1].field_512 = arg2
}

function sub_e45272f9(?) payable {
    require calldata.size - 4 >= 64
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    stor4[arg1].field_768 = arg2
}

function sub_30743726(?) payable {
    require calldata.size - 4 >= 64
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    stor4[arg1].field_1024 = arg2
}

function sub_3b1c3bac(?) payable {
    require calldata.size - 4 >= 64
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    stor4[arg1].field_1280 = arg2
}

function sub_3be49c4b(?) payable {
    require calldata.size - 4 >= 32
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    return stor4[arg1].field_2560
}

function sub_6ee35a99(?) payable {
    require calldata.size - 4 >= 32
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    return stor4[arg1].field_1280
}

function sub_719519ed(?) payable {
    require calldata.size - 4 >= 64
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    stor4[arg1].field_2304 = arg2
}

function sub_754da77b(?) payable {
    require calldata.size - 4 >= 32
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    return stor4[arg1].field_2304
}

function sub_791cc4f1(?) payable {
    require calldata.size - 4 >= 32
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    return stor4[arg1].field_2048
}

function sub_81280330(?) payable {
    require calldata.size - 4 >= 64
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    stor4[arg1].field_2560 = arg2
}

function sub_85042729(?) payable {
    require calldata.size - 4 >= 32
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    return stor4[arg1].field_1792
}

function sub_9acd0876(?) payable {
    require calldata.size - 4 >= 64
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    stor4[arg1].field_2048 = arg2
}

function sub_a9b1a9db(?) payable {
    require calldata.size - 4 >= 64
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    stor4[arg1].field_1536 = arg2
}

function sub_e921442c(?) payable {
    require calldata.size - 4 >= 32
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    return stor4[arg1].field_1536
}

function sub_ec837fee(?) payable {
    require calldata.size - 4 >= 64
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    stor4[arg1].field_1792 = arg2
}

function getStatus(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    return stor4[arg1].field_0
}

function getSender(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    return stor4[arg1].field_512
}

function getAmount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    return stor4[arg1].field_256
}

function getTimestamp(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    return stor4[arg1].field_1024
}

function sub_8cffa72a(?) payable {
    require calldata.size - 4 >= 128
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    emit Deposit(address(arg1), arg2, arg3, arg4);
}

function setAmount(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    stor4[arg1].field_256 = arg2
}

function sub_d51be454(?) payable {
    require calldata.size - 4 >= 32
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    if arg1 + totalAmount < totalAmount:
        revert with 0, 'SafeMath: addition overflow'
    totalAmount += arg1
}

function sub_f659cc05(?) payable {
    require calldata.size - 4 >= 32
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    if arg1 + totalBalance < totalBalance:
        revert with 0, 'SafeMath: addition overflow'
    totalBalance += arg1
}

function subTotalBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    if arg1 > totalBalance:
        revert with 0, 'SafeMath: subtraction overflow'
    totalBalance -= arg1
}

function sub_370d0420(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if sub_30551a01Address != msg.sender:
        if sub_ed311af0Address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe4f6e6c7920626974636865636b20636f6e7472616374206f722064697370757465206d616e616765722063616e2063616c6c20746869732066756e6374696f6e,
                        mem[229 len 31]
    emit 0xdfd37b57: Array(len=arg1.length, data=arg1[all]), arg2, arg3, arg4
}

function sub_28a92ed4(?) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    sub_ed311af0Address = arg1
    mem[196 len 64] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    call erc20Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if not approve(address rg1, uint256 rg2), address(arg1) << 64:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
    return 1
}

function sub_ed8338ef(?) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e4f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    sub_30551a01Address = arg1
    mem[196 len 64] = approve(address rg1, uint256 rg2), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    call erc20Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if not approve(address rg1, uint256 rg2), address(arg1) << 64:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: APPROVE_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: APPROVE_FAILED'
    return 1
}



}
