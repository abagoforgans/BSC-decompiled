contract main {




// =====================  Runtime code  =====================


#
#  - buyToken(uint256 arg1, address arg2)
#  - receiveApproval(address arg1, uint256 arg2, bytes arg3)
#  - sub_c51a9f1d(?)
#
address owner;
address sub_a4f4d379Address;
uint256 decimals;
uint256 sub_08c171da;
mapping of struct sub_ed56eb9e;
mapping of struct stor106;
address stor107;
address stor455;
mapping of uint256 sub_ffa85bcb;

function sub_08c171da(?) {
    return sub_08c171da
}

function decimals() {
    return decimals
}

function owner() {
    return owner
}

function sub_a4f4d379(?) {
    return sub_a4f4d379Address
}

function sub_ed56eb9e(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_ed56eb9e[address(arg2)][arg1].field_0, 
           bool(sub_ed56eb9e[address(arg2)][arg1].field_512),
           sub_ed56eb9e[address(arg2)][arg1].field_256,
           sub_ed56eb9e[address(arg2)][arg1].field_768
}

function sub_ffa85bcb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ffa85bcb[address(arg1)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_1267d917(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_08c171da = arg1
    emit 0x648bc749: arg1, msg.sender
}

function sub_50c0866c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor455 = address(arg1)
}

function sub_a96ec5d8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'zero address specified'
    sub_a4f4d379Address = address(arg1)
    emit 0x788964f0: address(arg1), msg.sender
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_57e1862b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'zero address specified'
    if not arg2:
        revert with 0, 'percentage cannot be zero'
    sub_ffa85bcb[address(arg1)] = arg2
    emit 0xa2f6591c: arg2, address(arg1)
}

function sub_3428cebb(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if not sub_ed56eb9e[address(arg2)][arg1].field_512:
        revert with 0, 'Token is not on buy sale'
    if sub_ed56eb9e[address(arg2)][arg1].field_0 != msg.sender:
        revert with 0, 'Caller is not the seller'
    if not arg3:
        revert with 0, 'Price cannot be zero'
    if arg3 == sub_ed56eb9e[address(arg2)][arg1].field_256:
        revert with 0, 'Nothing to update on price'
    sub_ed56eb9e[address(arg2)][arg1].field_256 = arg3
    emit 0x34ddea44: arg3, msg.sender, arg1, address(arg2)
}

function sub_1eecc6d1(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor106[address(arg2)][arg1].field_0 != msg.sender:
        revert with 0, 'Caller not the owner/ no offers'
    if not sub_ed56eb9e[address(arg2)][arg1].field_512:
        require ext_code.size(stor107)
        call stor107.transferToken(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args msg.sender, arg1, address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor106[address(arg2)][arg1].field_0 = 0
    stor106[address(arg2)][arg1].field_256 = 0
    stor106[address(arg2)][arg1].field_512 = 0
    stor106[address(arg2)][arg1].field_768 = 0
    emit 0x316cdd4d: msg.sender, arg1, address(arg2)
}

function sub_31775152(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not sub_ed56eb9e[address(arg2)][arg1].field_512:
        revert with 0, 'Token is not on buy sale'
    if sub_ed56eb9e[address(arg2)][arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner of the token'
    sub_ed56eb9e[address(arg2)][arg1].field_512 = 0
    if not stor106[address(arg2)][arg1].field_512:
        require ext_code.size(stor107)
        call stor107.transferToken(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args sub_ed56eb9e[address(arg2)][arg1].field_0, arg1, address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x14b7ba10: msg.sender, arg1, address(arg2)
}

function sub_c1118f45(?) {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    if sub_ed56eb9e[address(arg2)][arg1].field_512:
        revert with 0, 'Token is already on buy sale'
    if not arg3:
        revert with 0, 'Price cannot be zero'
    if arg4 != 1:
        if arg4 != 2:
            revert with 0, 'invalid currency'
    if not stor106[address(arg2)][arg1].field_512:
        revert with 0, 'No offers found'
    if stor106[address(arg2)][arg1].field_0 != msg.sender:
        revert with 0, 'Caller not the owner'
    sub_ed56eb9e[address(arg2)][arg1].field_512 = 1
    sub_ed56eb9e[address(arg2)][arg1].field_256 = arg3
    sub_ed56eb9e[address(arg2)][arg1].field_0 = msg.sender or Mask(96, 160, sub_ed56eb9e[address(arg2)][arg1].field_0)
    sub_ed56eb9e[address(arg2)][arg1].field_768 = arg4
    emit 0x17f7b571: arg3, arg4, msg.sender, arg1, address(arg2)
}

function sub_f8c3e267(?) {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    if sub_ed56eb9e[address(arg2)][arg1].field_512:
        revert with 0, 'Token is already on buy sale'
    require ext_code.size(address(arg2))
    staticcall address(arg2).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not the owner of the token'
    if not arg3:
        revert with 0, 'Price cannot be zero'
    if arg4 != 1:
        if arg4 != 2:
            revert with 0, 'invalid currency'
    sub_ed56eb9e[address(arg2)][arg1].field_512 = 1
    sub_ed56eb9e[address(arg2)][arg1].field_256 = arg3
    sub_ed56eb9e[address(arg2)][arg1].field_0 = msg.sender or Mask(96, 160, sub_ed56eb9e[address(arg2)][arg1].field_0)
    sub_ed56eb9e[address(arg2)][arg1].field_768 = arg4
    require ext_code.size(stor107)
    call stor107.0x699f25a9 with:
         gas gas_remaining wei
        args msg.sender, arg1, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x17f7b571: arg3, arg4, msg.sender, arg1, address(arg2)
}

function sub_2e0351d7(?) {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not arg4:
        revert with 0, 'Price cannot be zero'
    if arg5 != 1:
        if arg5 != 2:
            revert with 0, 'invalid currency'
    if stor106[address(arg2)][arg1].field_512:
        if stor106[address(arg2)][arg1].field_0 != msg.sender:
            revert with 0, 'Caller not the owner'
    else:
        if sub_ed56eb9e[address(arg2)][arg1].field_512:
            if sub_ed56eb9e[address(arg2)][arg1].field_0 != msg.sender:
                revert with 0, 'Caller not the owner'
        else:
            require ext_code.size(address(arg2))
            staticcall address(arg2).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Caller not the owner'
            require ext_code.size(stor107)
            call stor107.0x699f25a9 with:
                 gas gas_remaining wei
                args msg.sender, arg1, address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor106[address(arg2)][arg1].field_256 = address(arg3)
    stor106[address(arg2)][arg1].field_512 = arg4
    stor106[address(arg2)][arg1].field_0 = msg.sender or Mask(96, 160, stor106[address(arg2)][arg1].field_0)
    stor106[address(arg2)][arg1].field_768 = arg5
    emit 0x9900cf2f: address(arg2), arg4, arg5, msg.sender, arg1, address(arg3)
}



}
