contract main {




// =====================  Runtime code  =====================


address _OWNER_;
uint8 stor1; offset 160
address _NEW_OWNER_;
address feeRateImplAddress;

function _OWNER_() payable {
    return _OWNER_
}

function feeRateImpl() payable {
    return feeRateImplAddress
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function _fallback() payable {
    revert
}

function initOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1:
        revert with 0, 'DODO_INITIALIZED'
    stor1 = 1
    _OWNER_ = arg1
}

function setFeeProxy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    feeRateImplAddress = arg1
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function getFeeRate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not feeRateImplAddress:
        return 0
    require ext_code.size(feeRateImplAddress)
    staticcall feeRateImplAddress.getFeeRate(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
