contract main {




// =====================  Runtime code  =====================


address owner;
address busdAddress;
uint256 stor2;
address daoAddress;
address operatorAddress;
uint32 stor5;
address sub_745fba84Address;
uint256 stor5;
uint256 stor5;
uint256 sub_a1f7bba9;

function daoAddress() payable {
    return daoAddress
}

function busd() payable {
    return address(busdAddress)
}

function operator() payable {
    return operatorAddress
}

function sub_745fba84(?) payable {
    return address(sub_745fba84Address)
}

function owner() payable {
    return owner
}

function sub_a1f7bba9(?) payable {
    return sub_a1f7bba9
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

function sub_ec0f4a06(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a1f7bba9 = arg1
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

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(daoAddress)
    staticcall daoAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > sub_a1f7bba9
    operatorAddress = arg1
}

function setDex(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(daoAddress)
    staticcall daoAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > sub_a1f7bba9
    address(sub_745fba84Address) = arg1
}

function sub_4599b0c3(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == uint32(arg3)
    if block.timestamp / 1000 > -1 * 10^6:
        revert with 0, 17
    if (block.timestamp / 1000) + 999999 < block.timestamp / 1000:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(daoAddress)
    call daoAddress.0xd293aba4 with:
         gas gas_remaining wei
        args address(busdAddress), 96, 0, 68, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), -1, 0, Mask(192, 0, stor2) >> 288, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(sub_745fba84Address))
    call address(sub_745fba84Address).forceToSyncState() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 2147483648 > -uint32(arg3) + test266151307():
        revert with 0, 17
    require ext_code.size(address(sub_745fba84Address))
    call address(sub_745fba84Address).queryTrade(uint256 arg1, address arg2, int256 arg3, address arg4, uint32 arg5) with:
         gas gas_remaining wei
        args arg1, daoAddress, arg2, 0, uint32(uint32(arg3) + 2147483648)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(daoAddress)
    call daoAddress.0xd293aba4 with:
         gas gas_remaining wei
        args address(sub_745fba84Address), 96, 0, 228, 3804414626, arg1, daoAddress, arg2, ext_call.return_data[0], (block.timestamp / 1000) + 999999, 0, uint32(uint32(arg3) + 2147483648), 0, Mask(192, 0, stor5) >> 1568, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e615edfe(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == uint32(arg3)
    if block.timestamp / 1000 > -1 * 10^6:
        revert with 0, 17
    if (block.timestamp / 1000) + 999999 < block.timestamp / 1000:
        revert with 0, 'SafeMath: addition overflow'
    mem[392 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), -1, 0, Mask(192, 0, stor2)
    mem[460] = 0
    require ext_code.size(daoAddress)
    call daoAddress.0xd293aba4 with:
         gas gas_remaining wei
        args address(busdAddress), 96, 0, 68, approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), -1, 0, Mask(192, 0, stor2) >> 288, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 364] = address(busdAddress)
    mem[ceil32(return_data.size) + 396] = 96
    mem[ceil32(return_data.size) + 460] = 68
    mem[ceil32(return_data.size) + 492 len 96] = approve(address arg1, uint256 arg2), this.address, -1, 0, Mask(192, 0, stor2)
    mem[ceil32(return_data.size) + 560] = 0
    mem[ceil32(return_data.size) + 428] = 0
    require ext_code.size(daoAddress)
    call daoAddress.0xd293aba4 with:
         gas gas_remaining wei
        args address(busdAddress), 96, 0, 68, approve(address arg1, uint256 arg2), this.address, -1, 0, Mask(192, 0, stor2) >> 288, 0
    mem[ceil32(return_data.size) + 360] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 364] = address(sub_745fba84Address)
    mem[(2 * ceil32(return_data.size)) + 396] = 253
    require ext_code.size(address(busdAddress))
    call address(busdAddress).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 364 len ceil32(return_data.size) + 64]
    mem[(2 * ceil32(return_data.size)) + 360] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 360] = 0x7086fd3200000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(sub_745fba84Address))
    call address(sub_745fba84Address).forceToSyncState() with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 364 len 5 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1073741824 > -uint32(arg3) + test266151307():
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 460] = arg1
    mem[(4 * ceil32(return_data.size)) + 492] = daoAddress
    mem[(4 * ceil32(return_data.size)) + 524] = arg2
    mem[(4 * ceil32(return_data.size)) + 556] = 0
    mem[(4 * ceil32(return_data.size)) + 588] = uint32(uint32(arg3) + 1073741824)
    require ext_code.size(address(sub_745fba84Address))
    call address(sub_745fba84Address).queryTrade(uint256 arg1, address arg2, int256 arg3, address arg4, uint32 arg5) with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 460 len (5 * ceil32(return_data.size)) + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[(6 * ceil32(return_data.size)) + 720] = address(sub_745fba84Address)
    mem[(6 * ceil32(return_data.size)) + 752] = 96
    mem[(6 * ceil32(return_data.size)) + 816] = (8 * ceil32(return_data.size)) + 228
    mem[(6 * ceil32(return_data.size)) + 848 len floor32((8 * ceil32(return_data.size)) + 259)] = 3804414626, arg1, daoAddress, arg2, ext_call.return_data[0], (block.timestamp / 1000) + 999999, 0, uint32(uint32(arg3) + 1073741824), 0, mem[(6 * ceil32(return_data.size)) + 720 len floor32((8 * ceil32(return_data.size)) + 259) - 232]
    if floor32((8 * ceil32(return_data.size)) + 259) > (8 * ceil32(return_data.size)) + 228:
        mem[(15 * ceil32(return_data.size)) + 1076] = 0
    require ext_code.size(daoAddress)
    call daoAddress.0xd293aba4 with:
         gas gas_remaining wei
        args address(sub_745fba84Address), 96, 0, (8 * ceil32(return_data.size)) + 228, mem[(6 * ceil32(return_data.size)) + 848 len floor32((8 * ceil32(return_data.size)) + 259)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
