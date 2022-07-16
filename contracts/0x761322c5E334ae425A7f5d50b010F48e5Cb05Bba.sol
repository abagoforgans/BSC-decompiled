contract main {




// =====================  Runtime code  =====================


address owner;
address sub_f9817570Address;
address boxAddress;
uint8 stor3; offset 160
uint128 stor3; offset 160
address stor3;
mapping of uint8 stor4;
uint256 stor5;

function sub_44cc4470(?) payable {
    return bool(uint8(stor3.field_160))
}

function box() payable {
    return boxAddress
}

function owner() payable {
    return owner
}

function sub_f9817570(?) payable {
    return sub_f9817570Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function grantPermission(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    stor4[address(arg1)] = 1
}

function revokePermission(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    stor4[address(arg1)] = 0
}

function sub_c0cb1fac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, bool(arg1))
}

function sub_8b3d19bb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor4[address(msg.sender)]:
        require owner == msg.sender
    boxAddress = address(arg1)
    sub_f9817570Address = address(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function openBox(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == tx.origin
    require not uint32(ext_code.size(msg.sender))
    staticcall boxAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You cannot open this box'
    staticcall boxAddress.getTokenInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if ext_call.return_data[32] >= block.timestamp:
        revert with 0, 'Not the time to open this box'
    if ext_call.return_data[64]:
        revert with 0, 'This box ready open'
    require ext_code.size(boxAddress)
    call boxAddress.0xfe0d572 with:
         gas gas_remaining wei
        args arg1, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(stor3.field_0).randomBetween(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 1, 10000, stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall address(stor3.field_0).randomBetween(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 1, 3, stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall address(stor3.field_0).randomBetween(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 1, 6, stor5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if stor5 > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] <= 4400:
        staticcall address(stor3.field_0).randomBetween(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args 1, 25, stor5 + ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        call sub_f9817570Address.0xf2aa325c with:
             gas gas_remaining wei
            args msg.sender, 64, 6, 1, 1, ext_call.return_data[0], 0, ext_call.return_data[0], 0
    else:
        if ext_call.return_data[0] > 7900:
            staticcall address(stor3.field_0).randomBetween(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 50, 70, stor5 + ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            call sub_f9817570Address.0xf2aa325c with:
                 gas gas_remaining wei
                args msg.sender, 64, 6, 3, 3, ext_call.return_data[0], 0, ext_call.return_data[0], 0
        else:
            staticcall address(stor3.field_0).randomBetween(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args 25, 50, stor5 + ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            call sub_f9817570Address.0xf2aa325c with:
                 gas gas_remaining wei
                args msg.sender, 64, 6, 2, 2, ext_call.return_data[0], 0, ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    emit 0xbc8467a1: ext_call.return_data[0], arg1
    return ext_call.return_data[0]
}



}
