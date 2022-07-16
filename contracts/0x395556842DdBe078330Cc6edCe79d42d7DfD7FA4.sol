contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint256 stor1; offset 32
uint256 stor1;
big480 stor1;
uint256 stor2;
uint32 stor3;
address stor3;
uint256 stor3;
address stor4;
uint32 stor5;
address sub_d7370de9Address;
uint256 stor5;

function sub_d7370de9(?) payable {
    return address(sub_d7370de9Address)
}

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(sub_d7370de9Address) != msg.sender:
        revert with 0, 'ad'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor5)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
}

function sub_13b977c1(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function sub_a5cc261d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function sub_b9103bf3(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function sub_c0b6d79f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function sub_cdc84872(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function sub_f05ffd30(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function sub_f17194aa(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function babyCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function cafeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function shibaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function BiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function definixCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function pantherCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function jetswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function stableXCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function BSCswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function pinkswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function ThugswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function waultSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor1.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor1.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor3))
    if not stor0:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor2, 0, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(stor3).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor2, stor4, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor0 = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
    address(stor3) = 0
    stor4 = 0
}

function sub_ed8fbb43(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require 1 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[1]))
    staticcall address(('cd', 36)[1]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require 4 < ('cd', 68).length
    require 1 < ('cd', 68).length
    require 0 < ('cd', 68).length
    if not cd[4]:
        s = (('cd', 68)[0] * ('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / 1000) + 1 / 2
        t = ('cd', 68)[0] * ('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / 1000
        while s < t:
            require s
            s = (('cd', 68)[0] * ('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / 1000 / s) + s / 2
            t = s
            continue 
        require 3 < ('cd', 68).length
        require 2 < ('cd', 68).length
        s = (('cd', 68)[2] * ('cd', 68)[3] * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14]) + 1 / 2
        u = ('cd', 68)[2] * ('cd', 68)[3] * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14]
        while s < u:
            require s
            s = (('cd', 68)[2] * ('cd', 68)[3] * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / s) + s / 2
            u = s
            continue 
        if t > u:
            require 3 < ('cd', 68).length
            require 4 < ('cd', 68).length
            require 1 < ('cd', 68).length
            require 0 < ('cd', 68).length
            require (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[18 len 14] * ('cd', 68)[0])
            require 0 < ('cd', 68).length
            require 2 < ('cd', 68).length
            require (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[18 len 14] * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[2])
            require 4 < ('cd', 68).length
            require 1 < ('cd', 68).length
            require 3 < ('cd', 68).length
            require (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[18 len 14] * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[0]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[18 len 14] * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[2]) * ('cd', 68)[1] * ('cd', 68)[4] / 1000) + (ext_call.return_data[18 len 14] * ('cd', 68)[3])
            require 5 < ('cd', 68).length
            if ('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[18 len 14] * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[0]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[18 len 14] * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[2]) * ('cd', 68)[1] * ('cd', 68)[4] / 1000 * ext_call.return_data[50 len 14] / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[18 len 14] * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[0]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[18 len 14] * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[2]) * ('cd', 68)[1] * ('cd', 68)[4] / 1000) + (ext_call.return_data[18 len 14] * ('cd', 68)[3]) > ((t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[18 len 14] * ('cd', 68)[0])) + ('cd', 68)[5]:
                stor0 = uint8(bool(cd[4]))
                uint256(stor1.field_0) = (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[18 len 14] * ('cd', 68)[0])
                stor2 = ('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[18 len 14] * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[0]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[18 len 14] * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[2])
                require ('cd', 36).length
                address(stor3) = address(('cd', 36)[0])
                require 1 < ('cd', 36).length
                stor4 = address(('cd', 36)[1])
                require 1 < ('cd', 36).length
                require ext_code.size(address(('cd', 36)[1]))
                if not cd[4]:
                    call address(('cd', 36)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, ('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[0]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[2]) * ('cd', 68)[1] * ('cd', 68)[4] / 1000 * Mask(112, 0, ext_call.return_data[32]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[0]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[2]) * ('cd', 68)[1] * ('cd', 68)[4] / 1000) + (Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[3]), address(this.address), 128, 1, ext_call.return_data[63 len 1]
                else:
                    call address(('cd', 36)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[0]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[2]) * ('cd', 68)[1] * ('cd', 68)[4] / 1000 * Mask(112, 0, ext_call.return_data[32]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[0]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[0]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[2]) * ('cd', 68)[1] * ('cd', 68)[4] / 1000) + (Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[3]), 0, address(this.address), 128, 1, ext_call.return_data[63 len 1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        s = (('cd', 68)[0] * ('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / 1000) + 1 / 2
        t = ('cd', 68)[0] * ('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / 1000
        while s < t:
            require s
            s = (('cd', 68)[0] * ('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] / 1000 / s) + s / 2
            t = s
            continue 
        require 3 < ('cd', 68).length
        require 2 < ('cd', 68).length
        s = (('cd', 68)[2] * ('cd', 68)[3] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) + 1 / 2
        u = ('cd', 68)[2] * ('cd', 68)[3] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]
        while s < u:
            require s
            s = (('cd', 68)[2] * ('cd', 68)[3] * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] / s) + s / 2
            u = s
            continue 
        if t > u:
            require 3 < ('cd', 68).length
            require 4 < ('cd', 68).length
            require 1 < ('cd', 68).length
            require 0 < ('cd', 68).length
            require (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[50 len 14] * ('cd', 68)[0])
            require 0 < ('cd', 68).length
            require 2 < ('cd', 68).length
            require (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[50 len 14] * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[2])
            require 4 < ('cd', 68).length
            require 1 < ('cd', 68).length
            require 3 < ('cd', 68).length
            require (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[50 len 14] * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[32]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[50 len 14] * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[2]) * ('cd', 68)[1] * ('cd', 68)[4] / 1000) + (ext_call.return_data[50 len 14] * ('cd', 68)[3])
            require 5 < ('cd', 68).length
            if ('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[50 len 14] * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[32]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[50 len 14] * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[2]) * ('cd', 68)[1] * ('cd', 68)[4] / 1000 * ext_call.return_data[18 len 14] / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[50 len 14] * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[32]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[50 len 14] * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[2]) * ('cd', 68)[1] * ('cd', 68)[4] / 1000) + (ext_call.return_data[50 len 14] * ('cd', 68)[3]) > ((t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[50 len 14] * ('cd', 68)[0])) + ('cd', 68)[5]:
                stor0 = uint8(bool(cd[4]))
                uint256(stor1.field_0) = (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[50 len 14] * ('cd', 68)[0])
                stor2 = ('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[50 len 14] * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[32]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * ext_call.return_data[50 len 14] * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[2])
                require ('cd', 36).length
                address(stor3) = address(('cd', 36)[0])
                require 1 < ('cd', 36).length
                stor4 = address(('cd', 36)[1])
                require 1 < ('cd', 36).length
                require ext_code.size(address(('cd', 36)[1]))
                if not cd[4]:
                    call address(('cd', 36)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, ('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[32]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[2]) * ('cd', 68)[1] * ('cd', 68)[4] / 1000 * Mask(112, 0, ext_call.return_data[0]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[32]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[2]) * ('cd', 68)[1] * ('cd', 68)[4] / 1000) + (Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[3]), address(this.address), 128, 1, ext_call.return_data[63 len 1]
                else:
                    call address(('cd', 36)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args ('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[32]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[2]) * ('cd', 68)[1] * ('cd', 68)[4] / 1000 * Mask(112, 0, ext_call.return_data[0]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[0]) * Mask(112, 0, ext_call.return_data[32]) / (('cd', 68)[0] * (t * u) - (u * u) / (('cd', 68)[1] * ('cd', 68)[4] * Mask(112, 0, ext_call.return_data[32]) / 1000 * ('cd', 68)[0]) + (('cd', 68)[3] * Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[0])) + (Mask(112, 0, ext_call.return_data[0]) * ('cd', 68)[2]) * ('cd', 68)[1] * ('cd', 68)[4] / 1000) + (Mask(112, 0, ext_call.return_data[32]) * ('cd', 68)[3]), 0, address(this.address), 128, 1, ext_call.return_data[63 len 1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
