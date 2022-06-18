contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;

function getAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function getOwner() payable {
    return owner
}

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

function sub_2aae3db8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = uint8(bool(arg1))
}

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    stor1[address(arg1)] = 1
}

function remove(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    stor1[address(arg1)] = 0
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

function sub_554697e2(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if arg6 != block.number:
        revert with 0, 'R: block'
    if not stor1[address(msg.sender)]:
        revert with 0, 'R: not admin'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0, 'R: pair non-contract'
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg4 <= 0:
        revert with 0, 'PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'
    if address(arg2) < address(arg3):
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
    else:
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
    revert with 0, 'R: insufficient fee'
}

function sub_eca85779(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not stor1[address(msg.sender)]:
        revert with 0, 'R: not admin'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0, 'R: pair non-contract'
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'R: balance 0'
    if address(arg2) < address(arg3):
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
    else:
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'PancakeLibrary: INSUFFICIENT_LIQUIDITY'
    revert with 0, 'R: insufficient fee'
}

function sub_72f01aa6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0, 'token is not contract'
    if arg3 > 0:
        if address(arg2):
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), arg3
        else:
            if not owner:
                revert with 0, 'to is'
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args owner, arg3
    else:
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'amount is zero'
        if address(arg2):
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
        else:
            if not owner:
                revert with 0, 'to is'
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
