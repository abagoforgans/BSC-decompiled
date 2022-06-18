contract main {




// =====================  Runtime code  =====================


address owner;
address busdAddress;
uint256 stor2;
uint32 stor3;
address poolAddress;
uint256 stor3;
uint32 stor4;
address sub_a6c26aa6Address;
uint256 stor4;
uint32 stor5;
address sub_fe2f9bf2Address;
uint256 stor5;
address daoAddress;
address operatorAddress;
uint32 stor8;
address sub_745fba84Address;
uint256 stor8;
uint256 stor8;
uint256 sub_a1f7bba9;

function poolAddress() payable {
    return address(poolAddress)
}

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

function sub_a6c26aa6(?) payable {
    return address(sub_a6c26aa6Address)
}

function sub_fe2f9bf2(?) payable {
    return address(sub_fe2f9bf2Address)
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

function setLiquidityPool(address arg1) payable {
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
    address(poolAddress) = arg1
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
        args address(busdAddress), 96, 0, 68, approve(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), -1, 0, Mask(192, 0, stor2) >> 288, 0
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
        args address(sub_745fba84Address), 96, 0, 228, 3804414626, arg1, daoAddress, arg2, ext_call.return_data[0], (block.timestamp / 1000) + 999999, 0, uint32(uint32(arg3) + 2147483648), 0, Mask(192, 0, stor8) >> 1568, 0
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
    require ext_code.size(daoAddress)
    call daoAddress.0xd293aba4 with:
         gas gas_remaining wei
        args address(busdAddress), 96, 0, 68, approve(address arg1, uint256 arg2), Mask(224, 0, stor8), uint32(stor8), -1, 0, Mask(192, 0, stor2) >> 288, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 460] = 68
    mem[ceil32(return_data.size) + 492 len 96] = approve(address arg1, uint256 arg2), address(this.address) << 64, 0, -1, 0, Mask(192, 0, stor2)
    mem[ceil32(return_data.size) + 560] = 0
    require ext_code.size(daoAddress)
    call daoAddress.0xd293aba4 with:
         gas gas_remaining wei
        args address(busdAddress), 96, 0, 68, approve(address arg1, uint256 arg2), address(this.address) << 64, 0, -1, 0, Mask(192, 0, stor2) >> 288, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 464] = address(busdAddress)
    mem[(2 * ceil32(return_data.size)) + 496] = 96
    mem[(2 * ceil32(return_data.size)) + 560] = ceil32(return_data.size) + 68
    mem[(2 * ceil32(return_data.size)) + 592 len floor32(ceil32(return_data.size) + 99)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), -1, 0, mem[(2 * ceil32(return_data.size)) + 464 len floor32(ceil32(return_data.size) + 99) - 72]
    if floor32(ceil32(return_data.size) + 99) > ceil32(return_data.size) + 68:
        mem[(4 * ceil32(return_data.size)) + 660] = 0
    require ext_code.size(daoAddress)
    call daoAddress.0xd293aba4 with:
         gas gas_remaining wei
        args address(busdAddress), 96, 0, ceil32(return_data.size) + 68, mem[(2 * ceil32(return_data.size)) + 592 len floor32(ceil32(return_data.size) + 99)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 564] = address(busdAddress)
    mem[(4 * ceil32(return_data.size)) + 596] = 96
    mem[(4 * ceil32(return_data.size)) + 660] = (5 * ceil32(return_data.size)) + 68
    mem[(4 * ceil32(return_data.size)) + 692 len floor32((5 * ceil32(return_data.size)) + 99)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor4), uint32(stor4), -1, 0, mem[(4 * ceil32(return_data.size)) + 564 len floor32((5 * ceil32(return_data.size)) + 99) - 72]
    if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
        mem[(10 * ceil32(return_data.size)) + 760] = 0
    require ext_code.size(daoAddress)
    call daoAddress.0xd293aba4 with:
         gas gas_remaining wei
        args address(busdAddress), 96, 0, (5 * ceil32(return_data.size)) + 68, mem[(4 * ceil32(return_data.size)) + 692 len floor32((5 * ceil32(return_data.size)) + 99)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 664] = address(busdAddress)
    mem[(6 * ceil32(return_data.size)) + 696] = 96
    mem[(6 * ceil32(return_data.size)) + 760] = (8 * ceil32(return_data.size)) + 68
    mem[(6 * ceil32(return_data.size)) + 792 len floor32((8 * ceil32(return_data.size)) + 99)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), -1, 0, mem[(6 * ceil32(return_data.size)) + 664 len floor32((8 * ceil32(return_data.size)) + 99) - 72]
    if floor32((8 * ceil32(return_data.size)) + 99) > (8 * ceil32(return_data.size)) + 68:
        mem[(15 * ceil32(return_data.size)) + 860] = 0
    mem[(6 * ceil32(return_data.size)) + 728] = 0
    require ext_code.size(daoAddress)
    call daoAddress.0xd293aba4 with:
         gas gas_remaining wei
        args address(busdAddress), 96, 0, (8 * ceil32(return_data.size)) + 68, mem[(6 * ceil32(return_data.size)) + 792 len floor32((8 * ceil32(return_data.size)) + 99)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 664] = address(sub_745fba84Address)
    mem[(7 * ceil32(return_data.size)) + 696] = 253
    require ext_code.size(address(busdAddress))
    call address(busdAddress).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(sub_745fba84Address), 253
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(9 * ceil32(return_data.size)) + 660] = 0x7086fd3200000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(sub_745fba84Address))
    call address(sub_745fba84Address).forceToSyncState() with:
         gas gas_remaining wei
        args mem[(9 * ceil32(return_data.size)) + 664 len 4 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1073741824 > -uint32(arg3) + test266151307():
        revert with 0, 17
    require ext_code.size(address(sub_745fba84Address))
    call address(sub_745fba84Address).queryTrade(uint256 arg1, address arg2, int256 arg3, address arg4, uint32 arg5) with:
         gas gas_remaining wei
        args arg1, daoAddress, arg2, 0, uint32(arg3) + 1073741824 << 224, mem[(9 * ceil32(return_data.size)) + 920 len 5 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    mem[(11 * ceil32(return_data.size)) + 1020] = address(sub_745fba84Address)
    mem[(11 * ceil32(return_data.size)) + 1052] = 96
    mem[(11 * ceil32(return_data.size)) + 1116] = (8 * ceil32(return_data.size)) + 228
    mem[(11 * ceil32(return_data.size)) + 1148 len floor32((8 * ceil32(return_data.size)) + 259)] = 3804414626, arg1, daoAddress, arg2, ext_call.return_data[0], (block.timestamp / 1000) + 999999, 0, uint32(uint32(arg3) + 1073741824), 0, mem[(11 * ceil32(return_data.size)) + 1020 len floor32((8 * ceil32(return_data.size)) + 259) - 232]
    if floor32((8 * ceil32(return_data.size)) + 259) > (8 * ceil32(return_data.size)) + 228:
        mem[(20 * ceil32(return_data.size)) + 1376] = 0
    require ext_code.size(daoAddress)
    call daoAddress.0xd293aba4 with:
         gas gas_remaining wei
        args address(sub_745fba84Address), 96, 0, (8 * ceil32(return_data.size)) + 228, mem[(11 * ceil32(return_data.size)) + 1148 len floor32((8 * ceil32(return_data.size)) + 259)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
