contract main {




// =====================  Runtime code  =====================


const version = '', 0


address _OWNER_;
uint8 stor1; offset 160
address _NEW_OWNER_;
address _DPP_Address;
address _OPERATOR_Address;
address _DODO_APPROVE_Address;
uint256 _FREEZE_TIMESTAMP_;

function _OWNER_() payable {
    return _OWNER_
}

function _FREEZE_TIMESTAMP_() payable {
    return _FREEZE_TIMESTAMP_
}

function _DODO_APPROVE_() payable {
    return _DODO_APPROVE_Address
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function _DPP_() payable {
    return _DPP_Address
}

function _OPERATOR_() payable {
    return _OPERATOR_Address
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

function setFreezeTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < _FREEZE_TIMESTAMP_:
        revert with 0, 'ADMIN_FREEZED'
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    _FREEZE_TIMESTAMP_ = arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < _FREEZE_TIMESTAMP_:
        revert with 0, 'ADMIN_FREEZED'
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    _OPERATOR_Address = arg1
}

function sync() payable {
    if block.timestamp < _FREEZE_TIMESTAMP_:
        revert with 0, 'ADMIN_FREEZED'
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    require ext_code.size(_DPP_Address)
    call _DPP_Address.0xc57a5d03 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function init(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor1:
        revert with 0, 'DODO_INITIALIZED'
    stor1 = 1
    _OWNER_ = arg1
    _DPP_Address = arg2
    _OPERATOR_Address = arg3
    _DODO_APPROVE_Address = arg4
}

function retrieve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if block.timestamp < _FREEZE_TIMESTAMP_:
        revert with 0, 'ADMIN_FREEZED'
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    require ext_code.size(_DPP_Address)
    call _DPP_Address.0x28c4e24c with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reset(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) payable {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    if block.timestamp < _FREEZE_TIMESTAMP_:
        revert with 0, 'ADMIN_FREEZED'
    if msg.sender == _OWNER_:
        require ext_code.size(_DPP_Address)
        call _DPP_Address.0x8ff3928c with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, arg3, arg4, arg5, arg6, arg7, arg8
    else:
        require ext_code.size(_DODO_APPROVE_Address)
        staticcall _DODO_APPROVE_Address.getDODOProxy() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 32, 18, 0x524553455420464f5242494444454eefbc810000000000000000000000000000
        if _OPERATOR_Address != arg1:
            revert with 0, 32, 18, 0x524553455420464f5242494444454eefbc810000000000000000000000000000
        require ext_code.size(_DPP_Address)
        call _DPP_Address.0x8ff3928c with:
             gas gas_remaining wei
            args msg.sender, arg2, arg3, arg4, arg5, arg6, arg7, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}



}
