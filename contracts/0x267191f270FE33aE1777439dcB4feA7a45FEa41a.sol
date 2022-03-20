contract main {




// =====================  Runtime code  =====================


address owner;
address zyxAddress;
address preSalerAddress;
uint256 pricePerEther;
uint8 stor4;
uint256 totalPreSaleTokens;
uint256 unSoldTokens;

function PreSaler() {
    return preSalerAddress
}

function PricePerEther() {
    return pricePerEther
}

function owner() {
    return owner
}

function UnSoldTokens() {
    return unSoldTokens
}

function TotalPreSaleTokens() {
    return totalPreSaleTokens
}

function zyx() {
    return zyxAddress
}

function PreSaleClosed() {
    return bool(stor4)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdrawEther(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function closePreSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = 1
    require ext_code.size(zyxAddress)
    staticcall zyxAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(zyxAddress)
    call zyxAddress.0xa9059cbb with:
         gas gas_remaining wei
        args preSalerAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    unSoldTokens = 0
}



}
