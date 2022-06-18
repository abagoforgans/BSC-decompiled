contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address sub_d7370de9Address;
uint256 stor0;

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
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TTP_transfer: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
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

function sub_54b3044c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require 2 * ('cd', 4).length <= test266151307()
    if uint255(('cd', 4).length):
        mem[128 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[(64 * ('cd', 4).length) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require 2 * idx < 2 * ('cd', 4).length
        require (2 * idx) + 1 < 2 * ('cd', 4).length
        mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
        mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 192 len 2 * Mask(251, 4, ('cd', 4).length)] = mem[128 len 2 * Mask(251, 4, ('cd', 4).length)]
    return Array(len=2 * ('cd', 4).length, data=mem[128 len 2 * Mask(251, 4, ('cd', 4).length)], mem[(64 * ('cd', 4).length) + (2 * Mask(251, 4, ('cd', 4).length)) + 192 len (64 * ('cd', 4).length) - (2 * Mask(251, 4, ('cd', 4).length))]), 
}



}
