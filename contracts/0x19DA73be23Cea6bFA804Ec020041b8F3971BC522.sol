contract main {




// =====================  Runtime code  =====================


address _OWNER_;
address _NEW_OWNER_;
address _DODO_PROXY_Address;

function _OWNER_() payable {
    return _OWNER_
}

function getDODOProxy() payable {
    return _DODO_PROXY_Address
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function _DODO_PROXY_() payable {
    return _DODO_PROXY_Address
}

function _fallback() payable {
    revert
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function sub_9efe2682(?) payable {
    require calldata.size - 4 >= 32
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit SetDODOProxy(_DODO_PROXY_Address, arg1);
    _DODO_PROXY_Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not arg1:
        revert with 0, 'INVALID_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function claimTokens(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if _DODO_PROXY_Address != msg.sender:
        revert with 0, 'DODOApprove:Access restricted'
    if arg4:
        mem[228 len 96] = unknown_0x23b872dd(?????), address(arg2) << 64, 0, address(arg3), Mask(224, 32, arg4) >> 32
        mem[352 len 4] = uint32(arg4)
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg4) << 480, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), address(arg2) << 64:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            uint32(arg4),
                            mem[356 len 4]
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
}



}
