contract main {




// =====================  Runtime code  =====================


#
#  - sub_88433225(?)
#  - sub_8962ad2f(?)
#  - buy(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint8 arg8, bytes32 arg9, bytes32 arg10)
#
address owner;
uint256 buyerFee;
address beneficiaryAddress;
address transferProxyAddress;
address nonceHolderAddress;
mapping of address stor5;
mapping of uint256 bidderPrice;

function beneficiary() {
    return beneficiaryAddress
}

function nonceHolder() {
    return nonceHolderAddress
}

function buyerFee() {
    return buyerFee
}

function bidderPrice(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bidderPrice[arg1][address(arg2)]
}

function transferProxy() {
    return transferProxyAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function hasBidder(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return not not bidderPrice[arg1][address(arg2)]
}

function setBuyerFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    buyerFee = arg1
}

function setBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    beneficiaryAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function cancelBid(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor5[arg2][address(arg3)] != msg.sender:
        revert with 0, 'msg.sender is not bidder'
    bidderPrice[arg2][address(arg3)] = 0
    stor5[arg2][address(arg3)] = 0
    call stor5[arg2][address(arg3)] with:
       value bidderPrice[arg2][address(arg3)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x17c2d6ab: address(arg3), bidderPrice[arg2][address(arg3)], stor5[arg2][address(arg3)], arg1, arg2
}

function cancel(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(nonceHolderAddress)
    staticcall nonceHolderAddress.getNonce(address rg1, uint256 rg2, address rg3) with:
            gas gas_remaining wei
           args address(arg1), arg2, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(nonceHolderAddress)
    call nonceHolderAddress.setNonce(address rg1, uint256 rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args address(arg1), arg2, msg.sender, ext_call.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not bidderPrice[arg2][address(msg.sender)]:
        emit 0x902ebcbc: msg.sender, ext_call.return_data[0] + 1, 0, 0, arg1, arg2
    else:
        bidderPrice[arg2][address(msg.sender)] = 0
        stor5[arg2][address(msg.sender)] = 0
        call stor5[arg2][address(msg.sender)] with:
           value bidderPrice[arg2][address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x902ebcbc: msg.sender, ext_call.return_data[0] + 1, bidderPrice[arg2][address(msg.sender)], stor5[arg2][address(msg.sender)], arg1, arg2
}



}
