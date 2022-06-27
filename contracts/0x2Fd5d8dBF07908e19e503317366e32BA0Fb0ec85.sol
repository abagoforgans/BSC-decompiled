contract main {




// =====================  Runtime code  =====================


#
#  - buyToken(uint256 arg1)
#  - receiveApproval(address arg1, uint256 arg2, bytes arg3)
#  - sub_b558e65d(?)
#
address owner;
address sub_a4f4d379Address;
uint256 decimals;
uint256 sub_08c171da;
uint256 sub_614d94ce;
mapping of struct stor105;
mapping of uint256 sub_729688ec;
address stor107;
address stor108;
mapping of uint256 sub_cd79f5c2;
mapping of struct stor1113;

function sub_08c171da(?) {
    return sub_08c171da
}

function decimals() {
    return decimals
}

function sub_614d94ce(?) {
    return sub_614d94ce
}

function sub_729688ec(?) {
    require calldata.size - 4 >= 32
    return sub_729688ec[arg1]
}

function owner() {
    return owner
}

function sub_a4f4d379(?) {
    return sub_a4f4d379Address
}

function sub_cd79f5c2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_cd79f5c2[address(arg1)]
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

function sub_66d837e9(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_614d94ce = arg1
    emit 0xf56d857d: arg1, msg.sender
}

function getTokenSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    return stor105[arg1].field_0, 
           bool(stor105[arg1].field_512),
           stor105[arg1].field_256,
           sub_729688ec[arg1],
           stor105[arg1].field_768
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

function sub_3c624890(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'zero address specified'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'commision percentage cannot be zero'
    sub_cd79f5c2[address(arg1)] = arg2
    emit 0x3fc2b5a2: arg2, address(arg1)
}

function updateTokenPrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor105[arg1].field_512:
        revert with 0, 'Token is not on buy sale'
    if stor105[arg1].field_0 != msg.sender:
        revert with 0, 'Caller is not the seller'
    if not arg2:
        revert with 0, 'Price cannot be zero'
    if arg2 == stor105[arg1].field_256:
        revert with 0, 'Nothing to update on price'
    stor105[arg1].field_256 = arg2
    emit 0x62e2c9c7: arg2, msg.sender, arg1
}

function revokeOffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor459[arg1].field_0 != msg.sender:
        revert with 0, 'Caller not the owner/ no offers'
    if not stor105[arg1].field_512:
        require ext_code.size(stor108)
        call stor108.transferToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor459[arg1].field_0 = 0
    stor459[arg1].field_256 = 0
    stor459[arg1].field_512 = 0
    stor459[arg1].field_768 = 0
    emit 0xf9ddbe65: msg.sender, arg1
}

function sub_3bbf4b95(?) {
    require calldata.size - 4 >= 32
    if not stor105[arg1].field_512:
        revert with 0, 'Token is not on buy sale'
    if stor105[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the owner of the token'
    stor105[arg1].field_512 = 0
    if not stor459[arg1].field_512:
        require ext_code.size(stor108)
        call stor108.transferToken(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor105[arg1].field_0, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xfd29d407: msg.sender, arg1
}

function sub_fbe886d6(?) {
    require calldata.size - 4 >= 128
    if stor105[arg1].field_512:
        revert with 0, 'Token is already on buy sale'
    if not arg2:
        revert with 0, 'Price cannot be zero'
    if arg4 != 1:
        if arg4 != 2:
            revert with 0, 'invalid currency'
    if not stor459[arg1].field_512:
        revert with 0, 'No offers found'
    if stor459[arg1].field_0 != msg.sender:
        revert with 0, 'Caller not the owner'
    stor105[arg1].field_512 = 1
    stor105[arg1].field_256 = arg2
    stor105[arg1].field_0 = msg.sender or Mask(96, 160, stor105[arg1].field_0)
    stor105[arg1].field_768 = arg4
    require ext_code.size(stor107)
    staticcall stor107.getTokenCreator(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        if arg3 > sub_614d94ce:
            revert with 0, 'Royalty cannot be grater than defined limit'
        sub_729688ec[arg1] = arg3
        emit 0x4fbdd531: arg3, msg.sender, arg1
    emit 0xd5c34542: arg2, arg4, msg.sender, arg1
}

function acceptOffer(uint256 arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    if not arg3:
        revert with 0, 'Price cannot be zero'
    if arg4 != 1:
        if arg4 != 2:
            revert with 0, 'invalid currency'
    if stor459[arg1].field_512:
        if stor459[arg1].field_0 != msg.sender:
            revert with 0, 'Caller not the owner'
    else:
        if stor105[arg1].field_512:
            if stor105[arg1].field_0 != msg.sender:
                revert with 0, 'Caller not the owner'
        else:
            require ext_code.size(stor107)
            staticcall stor107.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Caller not the owner'
            require ext_code.size(stor108)
            call stor108.0x81028694 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor459[arg1].field_256 = arg2
    stor459[arg1].field_512 = arg3
    stor459[arg1].field_0 = msg.sender or Mask(96, 160, stor459[arg1].field_0)
    stor459[arg1].field_768 = arg4
    emit 0xe6a76942: arg3, arg4, msg.sender, arg1, arg2
}

function sub_cbcaf12c(?) {
    require calldata.size - 4 >= 128
    if stor105[arg1].field_512:
        revert with 0, 'Token is already on buy sale'
    require ext_code.size(stor107)
    staticcall stor107.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not the owner of the token'
    if not arg2:
        revert with 0, 'Price cannot be zero'
    if arg4 != 1:
        if arg4 != 2:
            revert with 0, 'invalid currency'
    stor105[arg1].field_512 = 1
    stor105[arg1].field_256 = arg2
    stor105[arg1].field_0 = msg.sender or Mask(96, 160, stor105[arg1].field_0)
    stor105[arg1].field_768 = arg4
    require ext_code.size(stor107)
    staticcall stor107.getTokenCreator(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        if arg3 > sub_614d94ce:
            revert with 0, 'Royalty cannot be grater than defined limit'
        sub_729688ec[arg1] = arg3
        emit 0x4fbdd531: arg3, msg.sender, arg1
    require ext_code.size(stor108)
    call stor108.0x81028694 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd5c34542: arg2, arg4, msg.sender, arg1
}



}
