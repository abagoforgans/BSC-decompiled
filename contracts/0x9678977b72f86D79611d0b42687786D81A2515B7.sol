contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(address arg1, address arg2, uint256 arg3)
#
address adminAddress;
address fundReceiverAddress;
mapping of uint8 stor2;
uint256 sub_b7dbd232;
address busdTokenAddress;
uint256 sub_de48fb8b;
uint256 sub_cf8515f4;
uint256 maxSell;
uint8 stor8;

function initialized() payable {
    return bool(stor8)
}

function sub_b7dbd232(?) payable {
    return sub_b7dbd232
}

function maxSell() payable {
    return maxSell
}

function sub_cf8515f4(?) payable {
    return sub_cf8515f4
}

function busdToken() payable {
    return busdTokenAddress
}

function sub_de48fb8b(?) payable {
    return sub_de48fb8b
}

function admin() payable {
    return adminAddress
}

function fundReceiver() payable {
    return fundReceiverAddress
}

function sub_febf8733(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    return bool(stor2[arg1][arg2][arg3])
}

function _fallback() payable {
    revert
}

function sub_4a0af68d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if not address(arg1):
        revert with 0, '_newAdmin is zero address'
    adminAddress = address(arg1)
}

function sub_26f8695c(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if not stor8:
        stor8 = 1
    if address(arg1):
        busdTokenAddress = address(arg1)
    if arg2 > 0:
        sub_de48fb8b = arg2
    if address(arg4):
        fundReceiverAddress = address(arg4)
    maxSell = arg3
    emit 0xcf2d15cf: address(arg1), arg2
}

function sub_873d3fc6(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not fundReceiverAddress:
        revert with 0, 'Invalid deposit'
    if sub_de48fb8b <= 0:
        revert with 0, 'Join pool has not started yet'
    if block.timestamp < sub_de48fb8b:
        revert with 0, 'Join pool has not started yet'
    mem[388 len arg4.length] = arg4[all]
    mem[arg4.length + 388] = 0
    require arg4.length == 65
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, arg1, arg2, arg3, this.address)), 0, mem[388], mem[420]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != adminAddress:
        revert with 0, 'wrong signature'
    if stor2[address(msg.sender)][arg2][arg3]:
        revert with 0, 'Already joined'
    if maxSell > 0:
        if sub_cf8515f4 >= maxSell:
            revert with 0, 'Full slots'
    stor2[address(msg.sender)][arg2][arg3] = 1
    if sub_b7dbd232 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_b7dbd232 += arg1
    if sub_cf8515f4 > -2:
        revert with 'NH{q', 17
    sub_cf8515f4++
    require ext_code.size(busdTokenAddress)
    call busdTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, fundReceiverAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x7651bfc6: arg1, arg2, arg3, block.timestamp, msg.sender
    return 1
}



}
