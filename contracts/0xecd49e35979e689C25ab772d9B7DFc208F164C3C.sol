contract main {




// =====================  Runtime code  =====================


uint256 balance;

function balance() payable {
    return balance
}

function _fallback() payable {
    revert
}

function setBalance() payable {
    require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
    call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args 0xc362fa359031a081d21cb9d57c29e055fecbcb06
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balance = ext_call.return_data[0]
}



}
