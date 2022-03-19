contract main {




// =====================  Runtime code  =====================


address stor0;
address tokenAddress;
address token_bAddress;

function token_b() payable {
    return token_bAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    require arg1
    require arg2
    require not tokenAddress
    require not token_bAddress
    tokenAddress = arg1
    token_bAddress = arg2
    return 1
}

function sub_9c9d505a(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(token_bAddress)
    call token_bAddress.burnFrom(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_067259fe(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(token_bAddress)
    call token_bAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
