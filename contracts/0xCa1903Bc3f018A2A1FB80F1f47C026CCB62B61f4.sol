contract main {




// =====================  Runtime code  =====================


address _governanceAddress;

function _governance() payable {
    return _governanceAddress
}

function _fallback() payable {
    revert
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    emit GovernanceTransferred(_governanceAddress, arg1);
    _governanceAddress = arg1
}



}
