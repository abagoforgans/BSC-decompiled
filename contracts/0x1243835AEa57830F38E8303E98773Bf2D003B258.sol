contract main {




// =====================  Runtime code  =====================


#
#  - sub_88b5c7ec(?)
#
address stor0;
address stor2;
uint32 stor3;
address owner;
uint256 stor3;
mapping of uint256 stor4;
mapping of uint8 stor6;
uint256 maxFee;

function maxFee() {
    return maxFee
}

function owner() {
    return address(owner)
}

function _fallback() payable {
    revert
}

function addListener(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only owner'
    stor6[address(arg1)] = 1
}

function setOptions(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Only owner'
    maxFee = arg2
}

function getProfit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (arg2 / ext_call.return_data[0])
}

function returnTokenBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Only owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
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

function sub_99d5ce49(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if not stor6[address(msg.sender)]:
        revert with 0, 'slave'
    mem[(32 * arg1.length) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = arg2
    mem[(32 * arg1.length) + 164] = arg3
    mem[(32 * arg1.length) + 228] = this.address
    mem[(32 * arg1.length) + 260] = block.timestamp
    mem[(32 * arg1.length) + 196] = 160
    mem[(32 * arg1.length) + 292] = arg1.length
    mem[(32 * arg1.length) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor2)
    call stor2.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1.length - 1 < arg1.length
    stor4[mem[(32 * arg1.length - 1) + 140 len 20]] = 1
}

function returnBalance() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Only owner'
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if address(owner) != msg.sender:
        revert with 0, 'Only owner'
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0 len 28]
    call 0xe9e7cea3dedca5984780bafc599bd69add087d56 with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if address(owner) != msg.sender:
            revert with 0, 'Only owner'
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[296 len 64] = 0, address(owner), ext_call.return_data[0 len 28]
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
           funct uint32(stor3)
             gas gas_remaining wei
            args ext_call.return_data[0], Mask(224, 32, address(owner), ext_call.return_data[0 len 28]) >> 32, mem[360 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
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
        if address(owner) != msg.sender:
            revert with 0, 'Only owner'
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 297 len 64] = 0, address(owner), ext_call.return_data[0 len 28]
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
           funct uint32(stor3)
             gas gas_remaining wei
            args ext_call.return_data[0], Mask(224, 32, address(owner), ext_call.return_data[0 len 28]) >> 32, mem[ceil32(return_data.size) + 361 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
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
