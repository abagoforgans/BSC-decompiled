contract main {




// =====================  Runtime code  =====================


address owner;
array of address stor1;
mapping of uint256 stor2;
address tokenAddress;

function owner() payable {
    return owner
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Zero address not allowed'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addGateway(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not stor2[address(arg1)]:
        stor1.length++
        stor1[stor1.length] = arg1
        stor2[address(arg1)] = stor1.length
    emit 0x41ca7b87: arg1
    return 1
}

function sub_cd8065ad(?) payable {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        revert with 0, 'Not Gateway'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_ab20e35b(?) payable {
    require calldata.size - 4 >= 64
    if not stor2[address(msg.sender)]:
        revert with 0, 'Not Gateway'
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function removeGateway(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if stor2[address(arg1)]:
        require stor1.length - 1 < stor1.length
        require stor2[address(arg1)] - 1 < stor1.length
        stor1[stor2[address(arg1)]] = stor1[stor1.length]
        stor2[stor1[stor1.length]] = stor2[address(arg1)]
        require stor1.length
        stor1[stor1.length] = 0
        stor1.length--
        stor2[address(arg1)] = 0
    emit 0x4e9e469e: arg1
    return 1
}



}
