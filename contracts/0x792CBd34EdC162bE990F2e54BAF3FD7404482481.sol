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
    delegate stor2.0x3d18b912 with:
         gas gas_remaining wei
        args 0
    if not return_data.size:
        delegate stor1.0x3d18b912 with:
             gas gas_remaining wei
            args 0
        if not return_data.size:
            return bool(delegate.return_code), 64, 32, 0x3d18b91200000000000000000000000000000000000000000000000000000000
        return bool(delegate.return_code), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(return_data.size) + 289 len 0] = None
    delegate stor1.0x3d18b912 with:
         gas gas_remaining wei
        args 0
    if not return_data.size:
        return bool(delegate.return_code), 64, 0, 32, 0x3d18b91200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 257 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 226] = bool(delegate.return_code)
    mem[(2 * ceil32(return_data.size)) + 322 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 257 len ceil32(return_data.size) - return_data.size]
    return bool(delegate.return_code), 
           Array(len=return_data.size, data=mem[(2 * ceil32(return_data.size)) + 322 len (2 * ceil32(return_data.size)) + return_data.size - (2 * ceil32(return_data.size))])
}



}
