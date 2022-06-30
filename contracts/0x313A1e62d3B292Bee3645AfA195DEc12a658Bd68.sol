contract main {




// =====================  Runtime code  =====================


#
#  - getFeeRate(address arg1, address arg2)
#
address _OWNER_;
uint8 stor1; offset 160
address _NEW_OWNER_;
uint256 _LP_MT_RATIO_;
mapping of struct stor3;
mapping of uint256 specPoolList;

function _OWNER_() payable {
    return _OWNER_
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function specPoolList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return specPoolList[arg1]
}

function _LP_MT_RATIO_() payable {
    return _LP_MT_RATIO_
}

function _fallback() payable {
    revert
}

function setLpMtRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    _LP_MT_RATIO_ = arg1
}

function initOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1:
        revert with 0, 'DODO_INITIALIZED'
    stor1 = 1
    _OWNER_ = arg1
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function setSpecPoolList(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    specPoolList[address(arg1)] = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function setCpPoolInfo(address arg1, address arg2, int256 arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    require arg5 == arg5
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    stor3[address(arg1)].field_0 = arg2
    stor3[address(arg1)].field_512 = arg4
    stor3[address(arg1)].field_768 = arg5
    stor3[address(arg1)].field_256 = arg3
}

function addCpPoolInfo(address arg1, address arg2, int256 arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    require arg5 == arg5
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    stor3[address(arg1)].field_0 = arg2
    stor3[address(arg1)].field_256 = arg3
    stor3[address(arg1)].field_512 = arg4
    stor3[address(arg1)].field_768 = arg5
}

function getCPInfoByUser(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[address(arg1)].field_0:
        return 0, -1, 0
    if not stor3[address(arg1)].field_768:
        if -1 == stor3[address(arg1)].field_256:
            if not stor3[address(arg1)].field_512:
                return 0, stor3[address(arg1)].field_256, 0
            require ext_code.size(stor3[address(arg1)].field_512)
            staticcall stor3[address(arg1)].field_512.getUserFee(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return 0, stor3[address(arg1)].field_256, ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.getShares(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > stor3[address(arg1)].field_256:
            revert with 0, 'SUB_ERROR'
        if not stor3[address(arg1)].field_512:
            return 1, stor3[address(arg1)].field_256 - ext_call.return_data[0], 0
        require ext_code.size(stor3[address(arg1)].field_512)
        staticcall stor3[address(arg1)].field_512.getUserFee(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 1, stor3[address(arg1)].field_256 - ext_call.return_data[0], ext_call.return_data[0]
    require ext_code.size(stor3[address(arg1)].field_768)
    staticcall stor3[address(arg1)].field_768.getUserQuota(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -1 == ext_call.return_data[0]:
        if not stor3[address(arg1)].field_512:
            return 0, ext_call.return_data[0], 0
        require ext_code.size(stor3[address(arg1)].field_512)
        staticcall stor3[address(arg1)].field_512.getUserFee(address arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0, ext_call.return_data[0], ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.getShares(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SUB_ERROR'
    if not stor3[address(arg1)].field_512:
        return 1, 0, 0
    require ext_code.size(stor3[address(arg1)].field_512)
    staticcall stor3[address(arg1)].field_512.getUserFee(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1, 0, ext_call.return_data[0]
}



}
