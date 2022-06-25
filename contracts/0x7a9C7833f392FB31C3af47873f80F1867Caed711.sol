contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint32 stor0;
address stor0; offset 8
uint256 stor0;
address stor1;
uint256 stor2; offset 32
uint256 stor2;
big480 stor2;
uint256 stor3;
uint32 stor4;
address sub_d7370de9Address;
uint256 stor4;

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
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
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

function sub_ed8fbb43(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    uint8(stor0.field_0) = uint8(bool(cd[4]))
    require ('cd', 36).length
    address(stor0.field_8) = address(('cd', 36)[0])
    require 1 < ('cd', 36).length
    stor1 = address(('cd', 36)[1])
    require 1 < ('cd', 68).length
    uint256(stor2.field_0) = ('cd', 68)[1]
    require 2 < ('cd', 68).length
    stor3 = ('cd', 68)[2]
    require 1 < ('cd', 36).length
    require 0 < ('cd', 68).length
    require ext_code.size(address(('cd', 36)[1]))
    if not cd[4]:
        call address(('cd', 36)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ('cd', 68)[0], address(this.address), 128, 1, mem[159 len 1]
    else:
        call address(('cd', 36)[1]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ('cd', 68)[0], 0, address(this.address), 128, 1, mem[159 len 1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_13b977c1(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a5cc261d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b9103bf3(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c0b6d79f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cdc84872(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f05ffd30(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f17194aa(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function babyCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cafeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function shibaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function BiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function definixCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pantherCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function jetswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function stableXCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function BSCswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pinkswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function ThugswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function waultSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), Mask(224, 0, stor2.field_32)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, 0, stor2.field_0), mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TTP_transfer: TRANSFER_FAILED'
    require ext_code.size(address(stor0.field_8))
    if not uint8(stor0.field_0):
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args stor3, 0, stor1, 128, 0
    else:
        call address(stor0.field_8).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, stor3, stor1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
