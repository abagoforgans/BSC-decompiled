contract main {




// =====================  Runtime code  =====================


address currentOwner;
mapping of uint256 nonces;
address stor2;
uint128 stor3;
address stor3;
uint32 stor4;
address deadAddress;
uint256 stor4;

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

function sub_09c2779c(?) payable {
    require calldata.size - 4 >= 32
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
    call address(stor3) with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    emit 0xc3dfcf5d: arg1, msg.sender, address(stor3)
}

function claim(uint256 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    if block.timestamp > arg2:
        revert with 0, 'EXPIRED'
    if nonces[address(msg.sender)] + 1 < nonces[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    nonces[address(msg.sender)]++
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, address(stor3), arg1, this.address, arg2, nonces[address(msg.sender)])), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'INVALID_SIGNATURE'
    if address(signer) != stor2:
        revert with 0, 'INVALID_SIGNATURE'
    mem[508 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call address(stor3) with:
       funct uint32(arg5)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[572 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not msg.sender, Mask(96, 0, stor3):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[540 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[540]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    emit Claim(arg1, msg.sender, address(stor3));
}



}
