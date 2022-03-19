contract main {




// =====================  Runtime code  =====================


address chefAddress;
address toAddress;
uint256 desiredLiquidity;

function to() payable {
    return toAddress
}

function chef() payable {
    return chefAddress
}

function desiredLiquidity() payable {
    return desiredLiquidity
}

function _fallback() payable {
    revert
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    if chefAddress != msg.sender:
        revert with 0, 'not from master chef'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, toAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return arg1
}



}
