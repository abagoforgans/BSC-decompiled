contract main {




// =====================  Runtime code  =====================


address primaryOwner;
address stor1;
mapping of uint8 stor2;

function systemWallets(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function primaryOwner() payable {
    return primaryOwner
}

function _fallback() payable {
    revert
}

function sub_94717412(?) payable {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'ERR_OWNER_ADDRESS_ONLY'
    if not stor2[address(arg1)]:
        revert with 0, 'NOT_SYSTEM_WALLET'
    stor2[address(arg1)] = 0
    emit 0xbb074c74: arg1
    return 1
}

function sub_d4c9a539(?) payable {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'ERR_OWNER_ADDRESS_ONLY'
    if stor2[address(arg1)]:
        revert with 0, 'ALREADY_SYSTEM_WALLET'
    stor2[address(arg1)] = 1
    emit 0x876c2427: arg1
    return 1
}

function sub_c4d34268(?) payable {
    require calldata.size - 4 >= 32
    if primaryOwner != msg.sender:
        revert with 0, 'ERR_OWNER_ADDRESS_ONLY'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    emit OwnershipTransferred(primaryOwner, arg1);
    primaryOwner = arg1
    return 1
}

function sub_7f07f17b(?) payable {
    require calldata.size - 4 >= 64
    emit 0x975eeecb: address(msg.sender), Array(len=23, data='addWalletBehalfExchange')
    require ext_code.size(stor1)
    call stor1.0x7f07f17b with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_e7dc9b91(?) payable {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        revert with 0, 'ERR_NOT_SYSTEM_ADDRESS'
    emit 0x975eeecb: address(msg.sender), Array(len=11, data='changeFlags')
    require ext_code.size(stor1)
    call stor1.0xe7dc9b91 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_82747d43(?) payable {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        revert with 0, 'ERR_NOT_SYSTEM_ADDRESS'
    emit 0x975eeecb: address(msg.sender), Array(len=15, data='updateMaxWallet')
    require ext_code.size(stor1)
    call stor1.0x82747d43 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_a156fab3(?) payable {
    require calldata.size - 4 >= 96
    if not stor2[address(msg.sender)]:
        revert with 0, 'ERR_NOT_SYSTEM_ADDRESS'
    emit 0x975eeecb: address(msg.sender), Array(len=15, data='addSystemWallet')
    require ext_code.size(stor1)
    call stor1.0xa156fab3 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
