contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
address wbnbAddress;
uint256 stor2;
uint32 stor3;
address distributorAddress;
uint256 stor3;
uint256 stor3;
address daoAddress;
uint32 stor5;
address operatorAddress;
uint256 stor5;
array of address vaults;
uint256 sub_a1f7bba9;

function daoAddress() payable {
    return daoAddress
}

function operator() payable {
    return address(operatorAddress)
}

function vaults(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < vaults.length
    return vaults[arg1]
}

function wbnb() payable {
    return address(wbnbAddress)
}

function owner() payable {
    return owner
}

function sub_a1f7bba9(?) payable {
    return sub_a1f7bba9
}

function distributor() payable {
    return address(distributorAddress)
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

function setDistributor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(distributorAddress) = arg1
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

function setR(address arg1) payable {
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
    address(operatorAddress) = arg1
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
    address(operatorAddress) = arg1
}

function sub_608ea673(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(daoAddress)
    staticcall daoAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > sub_a1f7bba9
    require ext_code.size(daoAddress)
    call daoAddress.0xd293aba4 with:
         gas gas_remaining wei
        args address(wbnbAddress), 96, 0, 68, 3733675897, Mask(224, 0, stor5), uint32(stor5), arg1, 0, Mask(192, 0, stor2) >> 288, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b3cf97f5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(daoAddress)
    staticcall daoAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > sub_a1f7bba9
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args daoAddress, address(distributorAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(daoAddress)
        call daoAddress.0xd293aba4 with:
             gas gas_remaining wei
            args address(distributorAddress), 96, 0, 68, 435389567, address(arg1) << 64, 0, arg2, 0, Mask(192, 0, stor3) >> 288, 0
    else:
        mem[(2 * ceil32(return_data.size)) + 296] = 68
        mem[(2 * ceil32(return_data.size)) + 328 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), -1, 0, address(arg1) << 32
        mem[(2 * ceil32(return_data.size)) + 396] = 0
        require ext_code.size(daoAddress)
        call daoAddress.0xd293aba4 with:
             gas gas_remaining wei
            args address(arg1), 96, 0, 68, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), -1, 0, address(arg1) << 32 >> 288, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 300] = address(distributorAddress)
        mem[(4 * ceil32(return_data.size)) + 332] = 96
        mem[(4 * ceil32(return_data.size)) + 396] = (5 * ceil32(return_data.size)) + 68
        mem[(4 * ceil32(return_data.size)) + 428 len floor32((5 * ceil32(return_data.size)) + 99)] = 435389567, address(arg1) << 64, 0, arg2, 0, mem[(4 * ceil32(return_data.size)) + 300 len floor32((5 * ceil32(return_data.size)) + 99) - 72]
        if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
            mem[(10 * ceil32(return_data.size)) + 496] = 0
        require ext_code.size(daoAddress)
        call daoAddress.0xd293aba4 with:
             gas gas_remaining wei
            args address(distributorAddress), 96, 0, (5 * ceil32(return_data.size)) + 68, mem[(4 * ceil32(return_data.size)) + 428 len floor32((5 * ceil32(return_data.size)) + 99)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor0 = 1
}

function sub_e32fb6dc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(daoAddress)
    staticcall daoAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > sub_a1f7bba9
    require ext_code.size(address(wbnbAddress))
    staticcall address(wbnbAddress).0xdd62ed3e with:
            gas gas_remaining wei
           args daoAddress, address(distributorAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(daoAddress)
        call daoAddress.0xd293aba4 with:
             gas gas_remaining wei
            args address(distributorAddress), 96, 0, 68, 131049980, address(arg1) << 64, 0, arg2, 0, Mask(192, 0, stor3) >> 288, 0
    else:
        mem[(2 * ceil32(return_data.size)) + 296] = 68
        mem[(2 * ceil32(return_data.size)) + 328 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), -1, 0, Mask(192, 0, stor2)
        mem[(2 * ceil32(return_data.size)) + 396] = 0
        require ext_code.size(daoAddress)
        call daoAddress.0xd293aba4 with:
             gas gas_remaining wei
            args address(wbnbAddress), 96, 0, 68, approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), -1, 0, Mask(192, 0, stor2) >> 288, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 300] = address(distributorAddress)
        mem[(4 * ceil32(return_data.size)) + 332] = 96
        mem[(4 * ceil32(return_data.size)) + 396] = (5 * ceil32(return_data.size)) + 68
        mem[(4 * ceil32(return_data.size)) + 428 len floor32((5 * ceil32(return_data.size)) + 99)] = 131049980, address(arg1) << 64, 0, arg2, 0, mem[(4 * ceil32(return_data.size)) + 300 len floor32((5 * ceil32(return_data.size)) + 99) - 72]
        if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
            mem[(10 * ceil32(return_data.size)) + 496] = 0
        require ext_code.size(daoAddress)
        call daoAddress.0xd293aba4 with:
             gas gas_remaining wei
            args address(distributorAddress), 96, 0, (5 * ceil32(return_data.size)) + 68, mem[(4 * ceil32(return_data.size)) + 428 len floor32((5 * ceil32(return_data.size)) + 99)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor0 = 1
}



}
