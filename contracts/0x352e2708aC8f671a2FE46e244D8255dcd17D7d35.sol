contract main {




// =====================  Runtime code  =====================


address governanceAddress;
address sub_31928c0bAddress;

function sub_31928c0b(?) payable {
    return sub_31928c0bAddress
}

function governance() payable {
    return governanceAddress
}

function _fallback() payable {
    revert
}

function acceptGovernanceAddress() payable {
    if sub_31928c0bAddress != msg.sender:
        revert with 0, 'Not allowed'
    emit 0x95b941bb: governanceAddress, sub_31928c0bAddress
    governanceAddress = sub_31928c0bAddress
}

function sub_327ff6f9(?) payable {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        revert with 0, 'Not allowed'
    if not arg1:
        revert with 0, 'Zero address not allowed'
    sub_31928c0bAddress = arg1
}

function sub_e9a40224(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if governanceAddress != msg.sender:
        revert with 0, 'Not Governance'
    call arg1 with:
         gas gas_remaining wei
        args arg2[all]
}



}
