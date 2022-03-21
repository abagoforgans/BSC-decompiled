contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint32 stor3;
uint256 stor3;

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
    delegate stor2.mem[132 len 4] with:
         gas gas_remaining wei
        args 
    if not return_data.size:
        mem[168 len 0] = None
        delegate stor1.mem[168 len 4] with:
             gas gas_remaining wei
            args 
        if not return_data.size:
            return bool(delegate.return_code), 64, 4, 0
        return bool(delegate.return_code), Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(return_data.size) + 169 len 0] = None
    delegate stor1.mem[ceil32(return_data.size) + 169 len 4] with:
         gas gas_remaining wei
        args 
    if not return_data.size:
        return bool(delegate.return_code), Array(len=4, data=Mask(32, 32, return_data.size) >> 32)
    mem[ceil32(return_data.size) + 201 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 170] = bool(delegate.return_code)
    mem[(2 * ceil32(return_data.size)) + 266 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(return_data.size) + return_data.size + 201 len ceil32(return_data.size) - return_data.size]
    return bool(delegate.return_code), 
           Array(len=return_data.size, data=mem[(2 * ceil32(return_data.size)) + 266 len (2 * ceil32(return_data.size)) + return_data.size - (2 * ceil32(return_data.size))])
}

function sub_487cb938(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}



}
