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

function sub_48fb3521(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function sub_4a06bfbd(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function sub_cc037ddb(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    call stor1.0x2f3fc7c3 with:
         gas gas_remaining wei
        args stor2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_5d73397c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _11 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0x32051f3a00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_11)
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(stor1)
        call stor1.0x32051f3a with:
             gas gas_remaining wei
            args address(_11), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_4077b534(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _11 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0x919a38f800000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_11)
        mem[(32 * arg1.length) + 164] = arg2
        mem[(32 * arg1.length) + 196] = arg3
        require ext_code.size(stor1)
        call stor1.0x919a38f8 with:
             gas gas_remaining wei
            args address(_11), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
