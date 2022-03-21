contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getReward() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[132 len 0] = None
    call stor2.mem[132 len 4] with:
         gas gas_remaining wei
    if not return_data.size:
        mem[168 len 0] = None
        call stor1.mem[168 len 4] with:
             gas gas_remaining wei
        if not return_data.size:
            return bool(ext_call.success), 64, 4, 0
        return bool(ext_call.success), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(return_data.size) + 169 len 0] = None
    call stor1.mem[ceil32(return_data.size) + 169 len 4] with:
         gas gas_remaining wei
    if not return_data.size:
        return bool(ext_call.success), Array(len=4, data=Mask(32, 32, return_data.size) >> 32)
    mem[ceil32(return_data.size) + 201 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 170] = bool(ext_call.success)
    mem[(2 * ceil32(return_data.size)) + 266 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 201 len ceil32(return_data.size) - return_data.size]
    return bool(ext_call.success), 
           Array(len=return_data.size, data=mem[(2 * ceil32(return_data.size)) + 266 len (2 * ceil32(return_data.size)) + return_data.size - (2 * ceil32(return_data.size))])
}



}
