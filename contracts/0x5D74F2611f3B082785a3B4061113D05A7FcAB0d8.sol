contract main {




// =====================  Runtime code  =====================


address owner;
address stor2;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_360254fa(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.0x360254fa with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e63edb5d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    call stor2.0xe63edb5d with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dff1fc64(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg3:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[96] = 0x360254fa00000000000000000000000000000000000000000000000000000000
        mem[100] = address(arg1)
        mem[132] = arg2
        require ext_code.size(stor2)
        call stor2.0x360254fa with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6623181c(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg4:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[96] = 0xe63edb5d00000000000000000000000000000000000000000000000000000000
        mem[100] = address(arg1)
        mem[132] = arg2
        mem[164] = arg3
        require ext_code.size(stor2)
        call stor2.0xe63edb5d with:
             gas gas_remaining wei
            args address(arg1), arg2, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
