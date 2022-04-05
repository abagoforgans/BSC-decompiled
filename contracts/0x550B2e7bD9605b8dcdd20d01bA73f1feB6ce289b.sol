contract main {




// =====================  Runtime code  =====================


#
#  - init(address arg1, address arg2, address arg3, address arg4, uint256 arg5, address arg6, uint256 arg7, uint256 arg8, bool arg9)
#  - retrieve(address arg1, address arg2, uint256 arg3)
#  - querySellQuote(address arg1, uint256 arg2)
#  - querySellBase(address arg1, uint256 arg2)
#  - reset(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8)
#  - sellBase(address arg1)
#  - ratioSync()
#  - flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4)
#  - sellQuote(address arg1)
#
const version = '', 0


address _OWNER_;
uint8 stor1; offset 160
uint8 stor1; offset 176
address _NEW_OWNER_;
address _MAINTAINER_Address;
address _BASE_TOKEN_Address;
address _QUOTE_TOKEN_Address;
uint32 _BLOCK_TIMESTAMP_LAST_; offset 224
uint128 _BASE_RESERVE_;
uint128 _QUOTE_RESERVE_; offset 112
uint32 _RState_; offset 224
uint128 _BASE_TARGET_;
uint128 _QUOTE_TARGET_; offset 112
uint256 _BASE_PRICE_CUMULATIVE_LAST_;
uint64 stor8;
uint64 _LP_FEE_RATE_; offset 160
address _MT_FEE_RATE_MODEL_Address;
uint64 _K_;
uint128 stor9;
uint128 _I_; offset 64

function _OWNER_() payable {
    return _OWNER_
}

function _IS_OPEN_TWAP_() payable {
    return bool(uint8(stor1.field_176))
}

function _MAINTAINER_() payable {
    return _MAINTAINER_Address
}

function _BASE_TOKEN_() payable {
    return _BASE_TOKEN_Address
}

function _QUOTE_TARGET_() payable {
    return _QUOTE_TARGET_
}

function _BASE_RESERVE_() payable {
    return _BASE_RESERVE_
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function _BLOCK_TIMESTAMP_LAST_() payable {
    return _BLOCK_TIMESTAMP_LAST_
}

function _LP_FEE_RATE_() payable {
    return _LP_FEE_RATE_
}

function _QUOTE_RESERVE_() payable {
    return _QUOTE_RESERVE_
}

function _RState_() payable {
    return _RState_
}

function _QUOTE_TOKEN_() payable {
    return _QUOTE_TOKEN_Address
}

function _BASE_TARGET_() payable {
    return _BASE_TARGET_
}

function _K_() payable {
    return _K_
}

function _MT_FEE_RATE_MODEL_() payable {
    return _MT_FEE_RATE_MODEL_Address
}

function _I_() payable {
    return _I_
}

function _BASE_PRICE_CUMULATIVE_LAST_() payable {
    return _BASE_PRICE_CUMULATIVE_LAST_
}

function _fallback() payable {
    revert
}

function getVaultReserve() payable {
    return _BASE_RESERVE_, _QUOTE_RESERVE_
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function initOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_160):
        revert with 0, 'DODO_INITIALIZED'
    uint8(stor1.field_160) = 1
    _OWNER_ = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function getUserFeeRate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(_MT_FEE_RATE_MODEL_Address)
    staticcall _MT_FEE_RATE_MODEL_Address.0x8198edbf with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor8, ext_call.return_data[0]
}

function getBaseInput() payable {
    require ext_code.size(_BASE_TOKEN_Address)
    staticcall _BASE_TOKEN_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if _BASE_RESERVE_ > ext_call.return_data[0]:
        revert with 0, 'SUB_ERROR'
    return (ext_call.return_data[0] - _BASE_RESERVE_)
}

function getQuoteInput() payable {
    require ext_code.size(_QUOTE_TOKEN_Address)
    staticcall _QUOTE_TOKEN_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if _QUOTE_RESERVE_ > ext_call.return_data[0]:
        revert with 0, 'SUB_ERROR'
    return (ext_call.return_data[0] - _QUOTE_RESERVE_)
}

function getPMMState() payable {
    require _RState_ <= 2
    require _RState_ <= 2
    if _RState_ == 2:
        if _BASE_TARGET_ > _BASE_RESERVE_:
            revert with 0, 'SUB_ERROR'
        if not _QUOTE_RESERVE_:
            if _RState_ < 3:
                return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, 0, _RState_
        else:
            if not _K_:
                if not _I_:
                    if _QUOTE_RESERVE_ < _QUOTE_RESERVE_:
                        revert with 0, 'ADD_ERROR'
                    if _RState_ < 3:
                        return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, _BASE_RESERVE_, _RState_
                else:
                    if (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / _I_ != _BASE_RESERVE_ - _BASE_TARGET_:
                        revert with 0, 'MUL_ERROR'
                    if ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + _QUOTE_RESERVE_ < _QUOTE_RESERVE_:
                        revert with 0, 'ADD_ERROR'
                    if _RState_ < 3:
                        return stor9, 
                               _K_,
                               _BASE_RESERVE_,
                               _BASE_RESERVE_,
                               _BASE_TARGET_,
                               ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + _QUOTE_RESERVE_,
                               _RState_
                ('ge', ('stor', ('name', '_RState_', 6)), 3)
            else:
                if not 4 * _K_:
                    if 2 * _K_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    if 2 * _K_:
                        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                            revert with 0, 'ADD_ERROR'
                        if not _QUOTE_RESERVE_:
                            if _RState_ < 3:
                                return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, 0, _RState_
                        else:
                            if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                revert with 0, 'MUL_ERROR'
                            if _RState_ < 3:
                                return stor9, 
                                       _K_,
                                       _BASE_RESERVE_,
                                       _BASE_RESERVE_,
                                       _BASE_TARGET_,
                                       (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18,
                                       _RState_
                        ('ge', ('stor', ('name', '_RState_', 6)), 3)
                else:
                    if _I_ * 4 * _K_ / 4 * _K_ != _I_:
                        revert with 0, 'MUL_ERROR'
                    if not _I_ * 4 * _K_:
                        if 2 * _K_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        if 2 * _K_:
                            if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                revert with 0, 'ADD_ERROR'
                            if not _QUOTE_RESERVE_:
                                if _RState_ < 3:
                                    return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, 0, _RState_
                            else:
                                if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                    revert with 0, 'MUL_ERROR'
                                if _RState_ < 3:
                                    return stor9, 
                                           _K_,
                                           _BASE_RESERVE_,
                                           _BASE_RESERVE_,
                                           _BASE_TARGET_,
                                           (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18,
                                           _RState_
                            ('ge', ('stor', ('name', '_RState_', 6)), 3)
                    else:
                        if _QUOTE_RESERVE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        if (_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _I_ * 4 * _K_ == _BASE_RESERVE_ - _BASE_TARGET_:
                            if _QUOTE_RESERVE_:
                                if ((_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 < (_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_:
                                    revert with 0, 'ADD_ERROR'
                                s = (((_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
                                t = ((_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18
                                while s < t:
                                    require s
                                    s = (((_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                    t = s
                                    continue 
                                if 10^18 > t:
                                    revert with 0, 'SUB_ERROR'
                                if not t - 10^18:
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_RESERVE_:
                                            if _RState_ < 3:
                                                return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, 0, _RState_
                                        else:
                                            if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ < 3:
                                                return stor9, 
                                                       _K_,
                                                       _BASE_RESERVE_,
                                                       _BASE_RESERVE_,
                                                       _BASE_TARGET_,
                                                       (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18,
                                                       _RState_
                                        ('ge', ('stor', ('name', '_RState_', 6)), 3)
                                else:
                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_RESERVE_:
                                            if _RState_ < 3:
                                                return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, 0, _RState_
                                        else:
                                            if (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ < 3:
                                                return stor9, 
                                                       _K_,
                                                       _BASE_RESERVE_,
                                                       _BASE_RESERVE_,
                                                       _BASE_TARGET_,
                                                       (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18,
                                                       _RState_
                                        ('ge', ('stor', ('name', '_RState_', 6)), 3)
                        else:
                            if _QUOTE_RESERVE_:
                                if not _I_ * 4 * _K_ / _QUOTE_RESERVE_:
                                    s = 0x604be73de4838ad9a5cf8800000001
                                    t = 1000000000000000000 * 10^18
                                    while s < t:
                                        require s
                                        s = (1000000000000000000 * 10^18 / s) + s / 2
                                        t = s
                                        continue 
                                else:
                                    if (_BASE_RESERVE_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) - (_BASE_TARGET_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) / _I_ * 4 * _K_ / _QUOTE_RESERVE_ != _BASE_RESERVE_ - _BASE_TARGET_:
                                        revert with 0, 'MUL_ERROR'
                                    s = ((_BASE_RESERVE_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + (-1 * _BASE_TARGET_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
                                    t = (_BASE_RESERVE_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + (-1 * _BASE_TARGET_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18
                                    while s < t:
                                        require s
                                        s = ((_BASE_RESERVE_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + (-1 * _BASE_TARGET_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                        t = s
                                        continue 
                                if 10^18 > t:
                                    revert with 0, 'SUB_ERROR'
                                if not t - 10^18:
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_RESERVE_:
                                            if _RState_ < 3:
                                                return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, 0, _RState_
                                        else:
                                            if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ < 3:
                                                return stor9, 
                                                       _K_,
                                                       _BASE_RESERVE_,
                                                       _BASE_RESERVE_,
                                                       _BASE_TARGET_,
                                                       (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18,
                                                       _RState_
                                        ('ge', ('stor', ('name', '_RState_', 6)), 3)
                                else:
                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_RESERVE_:
                                            if _RState_ < 3:
                                                return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, 0, _RState_
                                        else:
                                            if (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ < 3:
                                                return stor9, 
                                                       _K_,
                                                       _BASE_RESERVE_,
                                                       _BASE_RESERVE_,
                                                       _BASE_TARGET_,
                                                       (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18,
                                                       _RState_
                                        ('ge', ('stor', ('name', '_RState_', 6)), 3)
    else:
        if _RState_ <= 2:
            if _RState_ != 1:
                if _RState_ < 3:
                    return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, _BASE_TARGET_, _RState_
            else:
                if _QUOTE_TARGET_ > _QUOTE_RESERVE_:
                    revert with 0, 'SUB_ERROR'
                if _I_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                if _I_:
                    if not _BASE_RESERVE_:
                        if _RState_ < 3:
                            return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, _BASE_TARGET_, _RState_
                    else:
                        if not _K_:
                            if not 1000000000000000000 * 10^18 / _I_:
                                if _BASE_RESERVE_ < _BASE_RESERVE_:
                                    revert with 0, 'ADD_ERROR'
                                if _RState_ < 3:
                                    return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, _RState_
                            else:
                                if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 1000000000000000000 * 10^18 / _I_ != _QUOTE_RESERVE_ - _QUOTE_TARGET_:
                                    revert with 0, 'MUL_ERROR'
                                if ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + _BASE_RESERVE_ < _BASE_RESERVE_:
                                    revert with 0, 'ADD_ERROR'
                                if _RState_ < 3:
                                    return stor9, 
                                           _K_,
                                           _BASE_RESERVE_,
                                           _BASE_RESERVE_,
                                           ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + _BASE_RESERVE_,
                                           _BASE_TARGET_,
                                           _RState_
                            ('ge', ('stor', ('name', '_RState_', 6)), 3)
                        else:
                            if not 4 * _K_:
                                if 2 * _K_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if 2 * _K_:
                                    if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                        revert with 0, 'ADD_ERROR'
                                    if not _BASE_RESERVE_:
                                        if _RState_ < 3:
                                            return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, _BASE_TARGET_, _RState_
                                    else:
                                        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _RState_ < 3:
                                            return stor9, 
                                                   _K_,
                                                   _BASE_RESERVE_,
                                                   _BASE_RESERVE_,
                                                   (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18,
                                                   _BASE_TARGET_,
                                                   _RState_
                                    ('ge', ('stor', ('name', '_RState_', 6)), 3)
                            else:
                                if 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / 4 * _K_ != 1000000000000000000 * 10^18 / _I_:
                                    revert with 0, 'MUL_ERROR'
                                if not 1000000000000000000 * 10^18 / _I_ * 4 * _K_:
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _BASE_RESERVE_:
                                            if _RState_ < 3:
                                                return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, _BASE_TARGET_, _RState_
                                        else:
                                            if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ < 3:
                                                return stor9, 
                                                       _K_,
                                                       _BASE_RESERVE_,
                                                       _BASE_RESERVE_,
                                                       (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18,
                                                       _BASE_TARGET_,
                                                       _RState_
                                        ('ge', ('stor', ('name', '_RState_', 6)), 3)
                                else:
                                    if _BASE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / 1000000000000000000 * 10^18 / _I_ * 4 * _K_ == _QUOTE_RESERVE_ - _QUOTE_TARGET_:
                                        if _BASE_RESERVE_:
                                            if ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_) + 1000000000000000000 * 10^18 < (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_:
                                                revert with 0, 'ADD_ERROR'
                                            s = (((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
                                            t = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_) + 1000000000000000000 * 10^18
                                            while s < t:
                                                require s
                                                s = (((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                t = s
                                                continue 
                                            if 10^18 > t:
                                                revert with 0, 'SUB_ERROR'
                                            if not t - 10^18:
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_RESERVE_:
                                                        if _RState_ < 3:
                                                            return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, _BASE_TARGET_, _RState_
                                                    else:
                                                        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _RState_ < 3:
                                                            return stor9, 
                                                                   _K_,
                                                                   _BASE_RESERVE_,
                                                                   _BASE_RESERVE_,
                                                                   (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18,
                                                                   _BASE_TARGET_,
                                                                   _RState_
                                                    ('ge', ('stor', ('name', '_RState_', 6)), 3)
                                            else:
                                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_RESERVE_:
                                                        if _RState_ < 3:
                                                            return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, _BASE_TARGET_, _RState_
                                                    else:
                                                        if (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _RState_ < 3:
                                                            return stor9, 
                                                                   _K_,
                                                                   _BASE_RESERVE_,
                                                                   _BASE_RESERVE_,
                                                                   (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18,
                                                                   _BASE_TARGET_,
                                                                   _RState_
                                                    ('ge', ('stor', ('name', '_RState_', 6)), 3)
                                    else:
                                        if _BASE_RESERVE_:
                                            if not 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_:
                                                s = 0x604be73de4838ad9a5cf8800000001
                                                t = 1000000000000000000 * 10^18
                                                while s < t:
                                                    require s
                                                    s = (1000000000000000000 * 10^18 / s) + s / 2
                                                    t = s
                                                    continue 
                                            else:
                                                if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) / 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_ != _QUOTE_RESERVE_ - _QUOTE_TARGET_:
                                                    revert with 0, 'MUL_ERROR'
                                                s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + (-1 * _QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                t = (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + (-1 * _QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18
                                                while s < t:
                                                    require s
                                                    s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + (-1 * _QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                    t = s
                                                    continue 
                                            if 10^18 > t:
                                                revert with 0, 'SUB_ERROR'
                                            if not t - 10^18:
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_RESERVE_:
                                                        if _RState_ < 3:
                                                            return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, _BASE_TARGET_, _RState_
                                                    else:
                                                        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _RState_ < 3:
                                                            return stor9, 
                                                                   _K_,
                                                                   _BASE_RESERVE_,
                                                                   _BASE_RESERVE_,
                                                                   (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18,
                                                                   _BASE_TARGET_,
                                                                   _RState_
                                                    ('ge', ('stor', ('name', '_RState_', 6)), 3)
                                            else:
                                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_RESERVE_:
                                                        if _RState_ < 3:
                                                            return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, _BASE_TARGET_, _RState_
                                                    else:
                                                        if (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _RState_ < 3:
                                                            return stor9, 
                                                                   _K_,
                                                                   _BASE_RESERVE_,
                                                                   _BASE_RESERVE_,
                                                                   (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18,
                                                                   _BASE_TARGET_,
                                                                   _RState_
                                                    ('ge', ('stor', ('name', '_RState_', 6)), 3)
    revert
}

function getPMMStateForCall() payable {
    require _RState_ <= 2
    require _RState_ <= 2
    if _RState_ == 2:
        if _BASE_TARGET_ > _BASE_RESERVE_:
            revert with 0, 'SUB_ERROR'
        if not _QUOTE_RESERVE_:
            if _RState_ <= 2:
                return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, 0, _RState_
        else:
            if not _K_:
                if not _I_:
                    if _QUOTE_RESERVE_ < _QUOTE_RESERVE_:
                        revert with 0, 'ADD_ERROR'
                    if _RState_ <= 2:
                        return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, _BASE_RESERVE_, _RState_
                else:
                    if (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / _I_ != _BASE_RESERVE_ - _BASE_TARGET_:
                        revert with 0, 'MUL_ERROR'
                    if ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + _QUOTE_RESERVE_ < _QUOTE_RESERVE_:
                        revert with 0, 'ADD_ERROR'
                    if _RState_ <= 2:
                        return stor9, 
                               _K_,
                               _BASE_RESERVE_,
                               _BASE_RESERVE_,
                               _BASE_TARGET_,
                               ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + _QUOTE_RESERVE_,
                               _RState_
                ('gt', ('stor', ('name', '_RState_', 6)), 2)
            else:
                if not 4 * _K_:
                    if 2 * _K_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    if 2 * _K_:
                        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                            revert with 0, 'ADD_ERROR'
                        if not _QUOTE_RESERVE_:
                            if _RState_ <= 2:
                                return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, 0, _RState_
                        else:
                            if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                revert with 0, 'MUL_ERROR'
                            if _RState_ <= 2:
                                return stor9, 
                                       _K_,
                                       _BASE_RESERVE_,
                                       _BASE_RESERVE_,
                                       _BASE_TARGET_,
                                       (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18,
                                       _RState_
                        ('gt', ('stor', ('name', '_RState_', 6)), 2)
                else:
                    if _I_ * 4 * _K_ / 4 * _K_ != _I_:
                        revert with 0, 'MUL_ERROR'
                    if not _I_ * 4 * _K_:
                        if 2 * _K_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        if 2 * _K_:
                            if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                revert with 0, 'ADD_ERROR'
                            if not _QUOTE_RESERVE_:
                                if _RState_ <= 2:
                                    return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, 0, _RState_
                            else:
                                if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                    revert with 0, 'MUL_ERROR'
                                if _RState_ <= 2:
                                    return stor9, 
                                           _K_,
                                           _BASE_RESERVE_,
                                           _BASE_RESERVE_,
                                           _BASE_TARGET_,
                                           (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18,
                                           _RState_
                            ('gt', ('stor', ('name', '_RState_', 6)), 2)
                    else:
                        if _QUOTE_RESERVE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        if (_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _I_ * 4 * _K_ == _BASE_RESERVE_ - _BASE_TARGET_:
                            if _QUOTE_RESERVE_:
                                if ((_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 < (_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_:
                                    revert with 0, 'ADD_ERROR'
                                s = (((_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
                                t = ((_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18
                                while s < t:
                                    require s
                                    s = (((_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                    t = s
                                    continue 
                                if 10^18 > t:
                                    revert with 0, 'SUB_ERROR'
                                if not t - 10^18:
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_RESERVE_:
                                            if _RState_ <= 2:
                                                return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, 0, _RState_
                                        else:
                                            if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ <= 2:
                                                return stor9, 
                                                       _K_,
                                                       _BASE_RESERVE_,
                                                       _BASE_RESERVE_,
                                                       _BASE_TARGET_,
                                                       (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18,
                                                       _RState_
                                        ('gt', ('stor', ('name', '_RState_', 6)), 2)
                                else:
                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_RESERVE_:
                                            if _RState_ <= 2:
                                                return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, 0, _RState_
                                        else:
                                            if (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ <= 2:
                                                return stor9, 
                                                       _K_,
                                                       _BASE_RESERVE_,
                                                       _BASE_RESERVE_,
                                                       _BASE_TARGET_,
                                                       (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18,
                                                       _RState_
                                        ('gt', ('stor', ('name', '_RState_', 6)), 2)
                        else:
                            if _QUOTE_RESERVE_:
                                if not _I_ * 4 * _K_ / _QUOTE_RESERVE_:
                                    s = 0x604be73de4838ad9a5cf8800000001
                                    t = 1000000000000000000 * 10^18
                                    while s < t:
                                        require s
                                        s = (1000000000000000000 * 10^18 / s) + s / 2
                                        t = s
                                        continue 
                                else:
                                    if (_BASE_RESERVE_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) - (_BASE_TARGET_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) / _I_ * 4 * _K_ / _QUOTE_RESERVE_ != _BASE_RESERVE_ - _BASE_TARGET_:
                                        revert with 0, 'MUL_ERROR'
                                    s = ((_BASE_RESERVE_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + (-1 * _BASE_TARGET_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
                                    t = (_BASE_RESERVE_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + (-1 * _BASE_TARGET_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18
                                    while s < t:
                                        require s
                                        s = ((_BASE_RESERVE_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + (-1 * _BASE_TARGET_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                        t = s
                                        continue 
                                if 10^18 > t:
                                    revert with 0, 'SUB_ERROR'
                                if not t - 10^18:
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_RESERVE_:
                                            if _RState_ <= 2:
                                                return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, 0, _RState_
                                        else:
                                            if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ <= 2:
                                                return stor9, 
                                                       _K_,
                                                       _BASE_RESERVE_,
                                                       _BASE_RESERVE_,
                                                       _BASE_TARGET_,
                                                       (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18,
                                                       _RState_
                                        ('gt', ('stor', ('name', '_RState_', 6)), 2)
                                else:
                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_RESERVE_:
                                            if _RState_ <= 2:
                                                return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, 0, _RState_
                                        else:
                                            if (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ <= 2:
                                                return stor9, 
                                                       _K_,
                                                       _BASE_RESERVE_,
                                                       _BASE_RESERVE_,
                                                       _BASE_TARGET_,
                                                       (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18,
                                                       _RState_
                                        ('gt', ('stor', ('name', '_RState_', 6)), 2)
    else:
        if _RState_ <= 2:
            if _RState_ != 1:
                if _RState_ <= 2:
                    return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, _BASE_TARGET_, _RState_
            else:
                if _QUOTE_TARGET_ > _QUOTE_RESERVE_:
                    revert with 0, 'SUB_ERROR'
                if _I_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                if _I_:
                    if not _BASE_RESERVE_:
                        if _RState_ <= 2:
                            return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, _BASE_TARGET_, _RState_
                    else:
                        if not _K_:
                            if not 1000000000000000000 * 10^18 / _I_:
                                if _BASE_RESERVE_ < _BASE_RESERVE_:
                                    revert with 0, 'ADD_ERROR'
                                if _RState_ <= 2:
                                    return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_TARGET_, _RState_
                            else:
                                if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 1000000000000000000 * 10^18 / _I_ != _QUOTE_RESERVE_ - _QUOTE_TARGET_:
                                    revert with 0, 'MUL_ERROR'
                                if ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + _BASE_RESERVE_ < _BASE_RESERVE_:
                                    revert with 0, 'ADD_ERROR'
                                if _RState_ <= 2:
                                    return stor9, 
                                           _K_,
                                           _BASE_RESERVE_,
                                           _BASE_RESERVE_,
                                           ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + _BASE_RESERVE_,
                                           _BASE_TARGET_,
                                           _RState_
                            ('gt', ('stor', ('name', '_RState_', 6)), 2)
                        else:
                            if not 4 * _K_:
                                if 2 * _K_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if 2 * _K_:
                                    if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                        revert with 0, 'ADD_ERROR'
                                    if not _BASE_RESERVE_:
                                        if _RState_ <= 2:
                                            return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, _BASE_TARGET_, _RState_
                                    else:
                                        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _RState_ <= 2:
                                            return stor9, 
                                                   _K_,
                                                   _BASE_RESERVE_,
                                                   _BASE_RESERVE_,
                                                   (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18,
                                                   _BASE_TARGET_,
                                                   _RState_
                                    ('gt', ('stor', ('name', '_RState_', 6)), 2)
                            else:
                                if 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / 4 * _K_ != 1000000000000000000 * 10^18 / _I_:
                                    revert with 0, 'MUL_ERROR'
                                if not 1000000000000000000 * 10^18 / _I_ * 4 * _K_:
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _BASE_RESERVE_:
                                            if _RState_ <= 2:
                                                return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, _BASE_TARGET_, _RState_
                                        else:
                                            if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ <= 2:
                                                return stor9, 
                                                       _K_,
                                                       _BASE_RESERVE_,
                                                       _BASE_RESERVE_,
                                                       (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18,
                                                       _BASE_TARGET_,
                                                       _RState_
                                        ('gt', ('stor', ('name', '_RState_', 6)), 2)
                                else:
                                    if _BASE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / 1000000000000000000 * 10^18 / _I_ * 4 * _K_ == _QUOTE_RESERVE_ - _QUOTE_TARGET_:
                                        if _BASE_RESERVE_:
                                            if ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_) + 1000000000000000000 * 10^18 < (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_:
                                                revert with 0, 'ADD_ERROR'
                                            s = (((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
                                            t = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_) + 1000000000000000000 * 10^18
                                            while s < t:
                                                require s
                                                s = (((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                t = s
                                                continue 
                                            if 10^18 > t:
                                                revert with 0, 'SUB_ERROR'
                                            if not t - 10^18:
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_RESERVE_:
                                                        if _RState_ <= 2:
                                                            return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, _BASE_TARGET_, _RState_
                                                    else:
                                                        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _RState_ <= 2:
                                                            return stor9, 
                                                                   _K_,
                                                                   _BASE_RESERVE_,
                                                                   _BASE_RESERVE_,
                                                                   (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18,
                                                                   _BASE_TARGET_,
                                                                   _RState_
                                                    ('gt', ('stor', ('name', '_RState_', 6)), 2)
                                            else:
                                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_RESERVE_:
                                                        if _RState_ <= 2:
                                                            return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, _BASE_TARGET_, _RState_
                                                    else:
                                                        if (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _RState_ <= 2:
                                                            return stor9, 
                                                                   _K_,
                                                                   _BASE_RESERVE_,
                                                                   _BASE_RESERVE_,
                                                                   (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18,
                                                                   _BASE_TARGET_,
                                                                   _RState_
                                                    ('gt', ('stor', ('name', '_RState_', 6)), 2)
                                    else:
                                        if _BASE_RESERVE_:
                                            if not 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_:
                                                s = 0x604be73de4838ad9a5cf8800000001
                                                t = 1000000000000000000 * 10^18
                                                while s < t:
                                                    require s
                                                    s = (1000000000000000000 * 10^18 / s) + s / 2
                                                    t = s
                                                    continue 
                                            else:
                                                if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) / 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_ != _QUOTE_RESERVE_ - _QUOTE_TARGET_:
                                                    revert with 0, 'MUL_ERROR'
                                                s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + (-1 * _QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                t = (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + (-1 * _QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18
                                                while s < t:
                                                    require s
                                                    s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + (-1 * _QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                    t = s
                                                    continue 
                                            if 10^18 > t:
                                                revert with 0, 'SUB_ERROR'
                                            if not t - 10^18:
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_RESERVE_:
                                                        if _RState_ <= 2:
                                                            return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, _BASE_TARGET_, _RState_
                                                    else:
                                                        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _RState_ <= 2:
                                                            return stor9, 
                                                                   _K_,
                                                                   _BASE_RESERVE_,
                                                                   _BASE_RESERVE_,
                                                                   (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18,
                                                                   _BASE_TARGET_,
                                                                   _RState_
                                                    ('gt', ('stor', ('name', '_RState_', 6)), 2)
                                            else:
                                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_RESERVE_:
                                                        if _RState_ <= 2:
                                                            return stor9, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, _BASE_TARGET_, _RState_
                                                    else:
                                                        if (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _RState_ <= 2:
                                                            return stor9, 
                                                                   _K_,
                                                                   _BASE_RESERVE_,
                                                                   _BASE_RESERVE_,
                                                                   (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18,
                                                                   _BASE_TARGET_,
                                                                   _RState_
                                                    ('gt', ('stor', ('name', '_RState_', 6)), 2)
    revert
}

function getMidPrice() payable {
    require _RState_ <= 2
    require _RState_ <= 2
    if _RState_ == 2:
        if _BASE_TARGET_ > _BASE_RESERVE_:
            revert with 0, 'SUB_ERROR'
        if not _QUOTE_RESERVE_:
            if _RState_ <= 2:
                if _RState_ != 2:
                    if not _BASE_TARGET_:
                        if _BASE_RESERVE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        require _BASE_RESERVE_
                        if not 0 / _BASE_RESERVE_:
                            if _BASE_RESERVE_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            require _BASE_RESERVE_
                            if not _K_:
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if not _I_:
                                    return 0
                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                    revert with 0, 'MUL_ERROR'
                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                revert with 0, 'MUL_ERROR'
                            if _K_ > 10^18:
                                revert with 0, 'SUB_ERROR'
                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                revert with 0, 'ADD_ERROR'
                            if not _I_:
                                return 0
                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                revert with 0, 'MUL_ERROR'
                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                        if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                            revert with 0, 'MUL_ERROR'
                        if _BASE_RESERVE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        require _BASE_RESERVE_
                        if not _K_:
                            if _K_ > 10^18:
                                revert with 0, 'SUB_ERROR'
                            if not _I_:
                                return 0
                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                revert with 0, 'MUL_ERROR'
                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                            revert with 0, 'MUL_ERROR'
                        if _K_ > 10^18:
                            revert with 0, 'SUB_ERROR'
                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                            revert with 0, 'ADD_ERROR'
                        if not _I_:
                            return 0
                        if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                            revert with 0, 'MUL_ERROR'
                        return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                    if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                        revert with 0, 'MUL_ERROR'
                    if _BASE_RESERVE_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _BASE_RESERVE_
                    if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                        if _BASE_RESERVE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        require _BASE_RESERVE_
                        if not _K_:
                            if _K_ > 10^18:
                                revert with 0, 'SUB_ERROR'
                            if not _I_:
                                return 0
                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                revert with 0, 'MUL_ERROR'
                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                            revert with 0, 'MUL_ERROR'
                        if _K_ > 10^18:
                            revert with 0, 'SUB_ERROR'
                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                            revert with 0, 'ADD_ERROR'
                        if not _I_:
                            return 0
                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                            revert with 0, 'MUL_ERROR'
                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                        revert with 0, 'MUL_ERROR'
                    if _BASE_RESERVE_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _BASE_RESERVE_
                    if not _K_:
                        if _K_ > 10^18:
                            revert with 0, 'SUB_ERROR'
                        if not _I_:
                            return 0
                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                            revert with 0, 'MUL_ERROR'
                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                        revert with 0, 'MUL_ERROR'
                    if _K_ > 10^18:
                        revert with 0, 'SUB_ERROR'
                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                        revert with 0, 'ADD_ERROR'
                    if not _I_:
                        return 0
                    if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                        revert with 0, 'MUL_ERROR'
                    return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                if _QUOTE_RESERVE_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                if _QUOTE_RESERVE_:
                    if not 0 / _QUOTE_RESERVE_:
                        if _QUOTE_RESERVE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        if _QUOTE_RESERVE_:
                            if not _K_:
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if not _I_:
                                    if -_K_ + 10^18 <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if -_K_ + 10^18:
                                        return (0 / -_K_ + 10^18)
                                else:
                                    if 10^18 * _I_ / _I_ != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if -_K_ + 10^18 <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if -_K_ + 10^18:
                                        return (10^18 * _I_ / -_K_ + 10^18)
                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                            else:
                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                    revert with 0, 'MUL_ERROR'
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                    revert with 0, 'ADD_ERROR'
                                if not _I_:
                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                else:
                                    if 10^18 * _I_ / _I_ != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                    else:
                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                            revert with 0, 'MUL_ERROR'
                        if _QUOTE_RESERVE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        if _QUOTE_RESERVE_:
                            if not _K_:
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if not _I_:
                                    if -_K_ + 10^18 <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if -_K_ + 10^18:
                                        return (0 / -_K_ + 10^18)
                                else:
                                    if 10^18 * _I_ / _I_ != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if -_K_ + 10^18 <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if -_K_ + 10^18:
                                        return (10^18 * _I_ / -_K_ + 10^18)
                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                            else:
                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                    revert with 0, 'MUL_ERROR'
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                    revert with 0, 'ADD_ERROR'
                                if not _I_:
                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                else:
                                    if 10^18 * _I_ / _I_ != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
        else:
            if not _K_:
                if not _I_:
                    if _QUOTE_RESERVE_ < _QUOTE_RESERVE_:
                        revert with 0, 'ADD_ERROR'
                    if _RState_ <= 2:
                        if _RState_ != 2:
                            if not _BASE_TARGET_:
                                if _BASE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                require _BASE_RESERVE_
                                if not 0 / _BASE_RESERVE_:
                                    if _BASE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    require _BASE_RESERVE_
                                    if not _K_:
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if not _I_:
                                            return 0
                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                    if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                        revert with 0, 'MUL_ERROR'
                                    if _K_ > 10^18:
                                        revert with 0, 'SUB_ERROR'
                                    if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                        revert with 0, 'ADD_ERROR'
                                    if not _I_:
                                        return 0
                                    if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                    revert with 0, 'MUL_ERROR'
                                if _BASE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                require _BASE_RESERVE_
                                if not _K_:
                                    if _K_ > 10^18:
                                        revert with 0, 'SUB_ERROR'
                                    if not _I_:
                                        return 0
                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                    revert with 0, 'MUL_ERROR'
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                    revert with 0, 'ADD_ERROR'
                                if not _I_:
                                    return 0
                                if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                    revert with 0, 'MUL_ERROR'
                                return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                            if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                                revert with 0, 'MUL_ERROR'
                            if _BASE_RESERVE_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            require _BASE_RESERVE_
                            if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                                if _BASE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                require _BASE_RESERVE_
                                if not _K_:
                                    if _K_ > 10^18:
                                        revert with 0, 'SUB_ERROR'
                                    if not _I_:
                                        return 0
                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                    revert with 0, 'MUL_ERROR'
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                    revert with 0, 'ADD_ERROR'
                                if not _I_:
                                    return 0
                                if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                    revert with 0, 'MUL_ERROR'
                                return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                            if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                                revert with 0, 'MUL_ERROR'
                            if _BASE_RESERVE_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            require _BASE_RESERVE_
                            if not _K_:
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if not _I_:
                                    return 0
                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                    revert with 0, 'MUL_ERROR'
                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                            if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                revert with 0, 'MUL_ERROR'
                            if _K_ > 10^18:
                                revert with 0, 'SUB_ERROR'
                            if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                revert with 0, 'ADD_ERROR'
                            if not _I_:
                                return 0
                            if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                revert with 0, 'MUL_ERROR'
                            return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                        if not _QUOTE_RESERVE_:
                            if _QUOTE_RESERVE_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            if _QUOTE_RESERVE_:
                                if not 0 / _QUOTE_RESERVE_:
                                    if _QUOTE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _QUOTE_RESERVE_:
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (0 / -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (10^18 * _I_ / -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                else:
                                    if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if _QUOTE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _QUOTE_RESERVE_:
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (0 / -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (10^18 * _I_ / -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                        else:
                            if _QUOTE_RESERVE_ * _QUOTE_RESERVE_ / _QUOTE_RESERVE_ != _QUOTE_RESERVE_:
                                revert with 0, 'MUL_ERROR'
                            if _QUOTE_RESERVE_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            if _QUOTE_RESERVE_:
                                if not _QUOTE_RESERVE_ * _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                    if _QUOTE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _QUOTE_RESERVE_:
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (0 / -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (10^18 * _I_ / -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                else:
                                    if 10^18 * _QUOTE_RESERVE_ * _QUOTE_RESERVE_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _QUOTE_RESERVE_ / _QUOTE_RESERVE_ != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if _QUOTE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _QUOTE_RESERVE_:
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (0 / -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (10^18 * _I_ / -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if 10^18 * _QUOTE_RESERVE_ * _QUOTE_RESERVE_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_RESERVE_ * _QUOTE_RESERVE_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 10^18 * _QUOTE_RESERVE_ * _QUOTE_RESERVE_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                if (10^18 * _QUOTE_RESERVE_ * _QUOTE_RESERVE_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (10^18 * _QUOTE_RESERVE_ * _QUOTE_RESERVE_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (0 / (10^18 * _QUOTE_RESERVE_ * _QUOTE_RESERVE_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if (10^18 * _QUOTE_RESERVE_ * _QUOTE_RESERVE_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (10^18 * _QUOTE_RESERVE_ * _QUOTE_RESERVE_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (10^18 * _I_ / (10^18 * _QUOTE_RESERVE_ * _QUOTE_RESERVE_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_RESERVE_', 5)), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                else:
                    if (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / _I_ != _BASE_RESERVE_ - _BASE_TARGET_:
                        revert with 0, 'MUL_ERROR'
                    if ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + _QUOTE_RESERVE_ < _QUOTE_RESERVE_:
                        revert with 0, 'ADD_ERROR'
                    if _RState_ <= 2:
                        if _RState_ != 2:
                            if not _BASE_TARGET_:
                                if _BASE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                require _BASE_RESERVE_
                                if not 0 / _BASE_RESERVE_:
                                    if _BASE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    require _BASE_RESERVE_
                                    if not _K_:
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if not _I_:
                                            return 0
                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                    if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                        revert with 0, 'MUL_ERROR'
                                    if _K_ > 10^18:
                                        revert with 0, 'SUB_ERROR'
                                    if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                        revert with 0, 'ADD_ERROR'
                                    if not _I_:
                                        return 0
                                    if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                    revert with 0, 'MUL_ERROR'
                                if _BASE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                require _BASE_RESERVE_
                                if not _K_:
                                    if _K_ > 10^18:
                                        revert with 0, 'SUB_ERROR'
                                    if not _I_:
                                        return 0
                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                    revert with 0, 'MUL_ERROR'
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                    revert with 0, 'ADD_ERROR'
                                if not _I_:
                                    return 0
                                if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                    revert with 0, 'MUL_ERROR'
                                return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                            if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                                revert with 0, 'MUL_ERROR'
                            if _BASE_RESERVE_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            require _BASE_RESERVE_
                            if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                                if _BASE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                require _BASE_RESERVE_
                                if not _K_:
                                    if _K_ > 10^18:
                                        revert with 0, 'SUB_ERROR'
                                    if not _I_:
                                        return 0
                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                    revert with 0, 'MUL_ERROR'
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                    revert with 0, 'ADD_ERROR'
                                if not _I_:
                                    return 0
                                if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                    revert with 0, 'MUL_ERROR'
                                return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                            if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                                revert with 0, 'MUL_ERROR'
                            if _BASE_RESERVE_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            require _BASE_RESERVE_
                            if not _K_:
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if not _I_:
                                    return 0
                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                    revert with 0, 'MUL_ERROR'
                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                            if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                revert with 0, 'MUL_ERROR'
                            if _K_ > 10^18:
                                revert with 0, 'SUB_ERROR'
                            if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                revert with 0, 'ADD_ERROR'
                            if not _I_:
                                return 0
                            if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                revert with 0, 'MUL_ERROR'
                            return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                        if not ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + _QUOTE_RESERVE_:
                            if _QUOTE_RESERVE_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            if _QUOTE_RESERVE_:
                                if not 0 / _QUOTE_RESERVE_:
                                    if _QUOTE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _QUOTE_RESERVE_:
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (0 / -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (10^18 * _I_ / -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                else:
                                    if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if _QUOTE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _QUOTE_RESERVE_:
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (0 / -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (10^18 * _I_ / -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                        else:
                            if ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + (_QUOTE_RESERVE_ * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * _QUOTE_RESERVE_) + (_QUOTE_RESERVE_ * _QUOTE_RESERVE_) / ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + _QUOTE_RESERVE_ != ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + _QUOTE_RESERVE_:
                                revert with 0, 'MUL_ERROR'
                            if _QUOTE_RESERVE_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            if _QUOTE_RESERVE_:
                                if not ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + (_QUOTE_RESERVE_ * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * _QUOTE_RESERVE_) + (_QUOTE_RESERVE_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_:
                                    if _QUOTE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _QUOTE_RESERVE_:
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (0 / -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (10^18 * _I_ / -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                else:
                                    if 10^18 * ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + (_QUOTE_RESERVE_ * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * _QUOTE_RESERVE_) + (_QUOTE_RESERVE_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ / ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + (_QUOTE_RESERVE_ * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * _QUOTE_RESERVE_) + (_QUOTE_RESERVE_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if _QUOTE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _QUOTE_RESERVE_:
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (0 / -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if -_K_ + 10^18:
                                                    return (10^18 * _I_ / -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if 10^18 * ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + (_QUOTE_RESERVE_ * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * _QUOTE_RESERVE_) + (_QUOTE_RESERVE_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + (_QUOTE_RESERVE_ * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * _QUOTE_RESERVE_) + (_QUOTE_RESERVE_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 10^18 * ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + (_QUOTE_RESERVE_ * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * _QUOTE_RESERVE_) + (_QUOTE_RESERVE_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                if (10^18 * ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + (_QUOTE_RESERVE_ * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * _QUOTE_RESERVE_) + (_QUOTE_RESERVE_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (10^18 * ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + (_QUOTE_RESERVE_ * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * _QUOTE_RESERVE_) + (_QUOTE_RESERVE_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (0 / (10^18 * ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + (_QUOTE_RESERVE_ * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * _QUOTE_RESERVE_) + (_QUOTE_RESERVE_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            else:
                                                if 10^18 * _I_ / _I_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if (10^18 * ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + (_QUOTE_RESERVE_ * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * _QUOTE_RESERVE_) + (_QUOTE_RESERVE_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if (10^18 * ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + (_QUOTE_RESERVE_ * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * _QUOTE_RESERVE_) + (_QUOTE_RESERVE_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    return (10^18 * _I_ / (10^18 * ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + (_QUOTE_RESERVE_ * (_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18) + ((_BASE_RESERVE_ * _I_) - (_BASE_TARGET_ * _I_) / 10^18 * _QUOTE_RESERVE_) + (_QUOTE_RESERVE_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                            ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('add', ('mul', ('div', ('add', ('mul', ('stor', ('name', '_BASE_RESERVE_', 5)), ('stor', ('name', '_I_', 9))), ('mul', -1, ('stor', ('name', '_BASE_TARGET_', 6)), ('stor', ('name', '_I_', 9)))), 1000000000000000000), ('div', ('add', ('mul', ('stor', ('name', '_BASE_RESERVE_', 5)), ('stor', ('name', '_I_', 9))), ('mul', -1, ('stor', ('name', '_BASE_TARGET_', 6)), ('stor', ('name', '_I_', 9)))), 1000000000000000000)), ('mul', ('stor', ('name', '_QUOTE_RESERVE_', 5)), ('div', ('add', ('mul', ('stor', ('name', '_BASE_RESERVE_', 5)), ('stor', ('name', '_I_', 9))), ('mul', -1, ('stor', ('name', '_BASE_TARGET_', 6)), ('stor', ('name', '_I_', 9)))), 1000000000000000000)), ('mul', ('div', ('add', ('mul', ('stor', ('name', '_BASE_RESERVE_', 5)), ('stor', ('name', '_I_', 9))), ('mul', -1, ('stor', ('name', '_BASE_TARGET_', 6)), ('stor', ('name', '_I_', 9)))), 1000000000000000000), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('mul', ('stor', ('name', '_QUOTE_RESERVE_', 5)), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
            else:
                if not 4 * _K_:
                    if 2 * _K_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    if 2 * _K_:
                        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                            revert with 0, 'ADD_ERROR'
                        if not _QUOTE_RESERVE_:
                            if _RState_ <= 2:
                                if _RState_ != 2:
                                    if not _BASE_TARGET_:
                                        if _BASE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        require _BASE_RESERVE_
                                        if not 0 / _BASE_RESERVE_:
                                            if _BASE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            require _BASE_RESERVE_
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _BASE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        require _BASE_RESERVE_
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                            revert with 0, 'MUL_ERROR'
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                            revert with 0, 'ADD_ERROR'
                                        if not _I_:
                                            return 0
                                        if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                    if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                                        revert with 0, 'MUL_ERROR'
                                    if _BASE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    require _BASE_RESERVE_
                                    if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                                        if _BASE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        require _BASE_RESERVE_
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                            revert with 0, 'MUL_ERROR'
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                            revert with 0, 'ADD_ERROR'
                                        if not _I_:
                                            return 0
                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if _BASE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    require _BASE_RESERVE_
                                    if not _K_:
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if not _I_:
                                            return 0
                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                        revert with 0, 'MUL_ERROR'
                                    if _K_ > 10^18:
                                        revert with 0, 'SUB_ERROR'
                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                        revert with 0, 'ADD_ERROR'
                                    if not _I_:
                                        return 0
                                    if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                if _QUOTE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if _QUOTE_RESERVE_:
                                    if not 0 / _QUOTE_RESERVE_:
                                        if _QUOTE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _QUOTE_RESERVE_:
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    if -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if -_K_ + 10^18:
                                                        return (0 / -_K_ + 10^18)
                                                else:
                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if -_K_ + 10^18:
                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                    revert with 0, 'MUL_ERROR'
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _I_:
                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                else:
                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                    else:
                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _QUOTE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _QUOTE_RESERVE_:
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    if -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if -_K_ + 10^18:
                                                        return (0 / -_K_ + 10^18)
                                                else:
                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if -_K_ + 10^18:
                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                    revert with 0, 'MUL_ERROR'
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _I_:
                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                else:
                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                        else:
                            if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                revert with 0, 'MUL_ERROR'
                            if _RState_ <= 2:
                                if _RState_ != 2:
                                    if not _BASE_TARGET_:
                                        if _BASE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        require _BASE_RESERVE_
                                        if not 0 / _BASE_RESERVE_:
                                            if _BASE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            require _BASE_RESERVE_
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _BASE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        require _BASE_RESERVE_
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                            revert with 0, 'MUL_ERROR'
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                            revert with 0, 'ADD_ERROR'
                                        if not _I_:
                                            return 0
                                        if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                    if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                                        revert with 0, 'MUL_ERROR'
                                    if _BASE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    require _BASE_RESERVE_
                                    if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                                        if _BASE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        require _BASE_RESERVE_
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                            revert with 0, 'MUL_ERROR'
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                            revert with 0, 'ADD_ERROR'
                                        if not _I_:
                                            return 0
                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if _BASE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    require _BASE_RESERVE_
                                    if not _K_:
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if not _I_:
                                            return 0
                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                        revert with 0, 'MUL_ERROR'
                                    if _K_ > 10^18:
                                        revert with 0, 'SUB_ERROR'
                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                        revert with 0, 'ADD_ERROR'
                                    if not _I_:
                                        return 0
                                    if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                if not (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18:
                                    if _QUOTE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _QUOTE_RESERVE_:
                                        if not 0 / _QUOTE_RESERVE_:
                                            if _QUOTE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if _QUOTE_RESERVE_:
                                                if not _K_:
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if not _I_:
                                                        if -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if -_K_ + 10^18:
                                                            return (0 / -_K_ + 10^18)
                                                    else:
                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if -_K_ + 10^18:
                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                else:
                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                    else:
                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _QUOTE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if _QUOTE_RESERVE_:
                                                if not _K_:
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if not _I_:
                                                        if -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if -_K_ + 10^18:
                                                            return (0 / -_K_ + 10^18)
                                                    else:
                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if -_K_ + 10^18:
                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                else:
                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                    else:
                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                else:
                                    if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 != (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if _QUOTE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _QUOTE_RESERVE_:
                                        if not (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_:
                                            if _QUOTE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if _QUOTE_RESERVE_:
                                                if not _K_:
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if not _I_:
                                                        if -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if -_K_ + 10^18:
                                                            return (0 / -_K_ + 10^18)
                                                    else:
                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if -_K_ + 10^18:
                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                else:
                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                    else:
                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _QUOTE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if _QUOTE_RESERVE_:
                                                if not _K_:
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if not _I_:
                                                        if -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if -_K_ + 10^18:
                                                            return (0 / -_K_ + 10^18)
                                                    else:
                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if -_K_ + 10^18:
                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                else:
                                                    if 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            return (0 / (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                    else:
                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            return (10^18 * _I_ / (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('div', ('add', ('mul', 1000000000000000000, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('mul', ('div', 0, ('mask_shl', 255, 0, 1, ('stor', ('name', '_K_', 9)))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), 1000000000000000000), ('div', ('add', ('mul', 1000000000000000000, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('mul', ('div', 0, ('mask_shl', 255, 0, 1, ('stor', ('name', '_K_', 9)))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), 1000000000000000000)), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                else:
                    if _I_ * 4 * _K_ / 4 * _K_ != _I_:
                        revert with 0, 'MUL_ERROR'
                    if not _I_ * 4 * _K_:
                        if 2 * _K_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        if 2 * _K_:
                            if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                revert with 0, 'ADD_ERROR'
                            if not _QUOTE_RESERVE_:
                                if _RState_ <= 2:
                                    if _RState_ != 2:
                                        if not _BASE_TARGET_:
                                            if _BASE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            require _BASE_RESERVE_
                                            if not 0 / _BASE_RESERVE_:
                                                if _BASE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                require _BASE_RESERVE_
                                                if not _K_:
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                    revert with 0, 'MUL_ERROR'
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _BASE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            require _BASE_RESERVE_
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                                            revert with 0, 'MUL_ERROR'
                                        if _BASE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        require _BASE_RESERVE_
                                        if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                                            if _BASE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            require _BASE_RESERVE_
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _BASE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        require _BASE_RESERVE_
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                            revert with 0, 'MUL_ERROR'
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                            revert with 0, 'ADD_ERROR'
                                        if not _I_:
                                            return 0
                                        if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                    if _QUOTE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _QUOTE_RESERVE_:
                                        if not 0 / _QUOTE_RESERVE_:
                                            if _QUOTE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if _QUOTE_RESERVE_:
                                                if not _K_:
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if not _I_:
                                                        if -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if -_K_ + 10^18:
                                                            return (0 / -_K_ + 10^18)
                                                    else:
                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if -_K_ + 10^18:
                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                else:
                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                    else:
                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _QUOTE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if _QUOTE_RESERVE_:
                                                if not _K_:
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if not _I_:
                                                        if -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if -_K_ + 10^18:
                                                            return (0 / -_K_ + 10^18)
                                                    else:
                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if -_K_ + 10^18:
                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                else:
                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                    else:
                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                            else:
                                if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                    revert with 0, 'MUL_ERROR'
                                if _RState_ <= 2:
                                    if _RState_ != 2:
                                        if not _BASE_TARGET_:
                                            if _BASE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            require _BASE_RESERVE_
                                            if not 0 / _BASE_RESERVE_:
                                                if _BASE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                require _BASE_RESERVE_
                                                if not _K_:
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                    revert with 0, 'MUL_ERROR'
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _BASE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            require _BASE_RESERVE_
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                                            revert with 0, 'MUL_ERROR'
                                        if _BASE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        require _BASE_RESERVE_
                                        if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                                            if _BASE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            require _BASE_RESERVE_
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _BASE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        require _BASE_RESERVE_
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                            revert with 0, 'MUL_ERROR'
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                            revert with 0, 'ADD_ERROR'
                                        if not _I_:
                                            return 0
                                        if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                    if not (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18:
                                        if _QUOTE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _QUOTE_RESERVE_:
                                            if not 0 / _QUOTE_RESERVE_:
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (0 / -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (10^18 * _I_ / -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (0 / -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (10^18 * _I_ / -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                    else:
                                        if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 != (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _QUOTE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _QUOTE_RESERVE_:
                                            if not (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_:
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (0 / -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (10^18 * _I_ / -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (0 / -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (10^18 * _I_ / -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (0 / (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (10^18 * _I_ / (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('div', ('add', ('mul', 1000000000000000000, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('mul', ('div', 0, ('mask_shl', 255, 0, 1, ('stor', ('name', '_K_', 9)))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), 1000000000000000000), ('div', ('add', ('mul', 1000000000000000000, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('mul', ('div', 0, ('mask_shl', 255, 0, 1, ('stor', ('name', '_K_', 9)))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), 1000000000000000000)), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                    else:
                        if _QUOTE_RESERVE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        if (_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _I_ * 4 * _K_ == _BASE_RESERVE_ - _BASE_TARGET_:
                            if _QUOTE_RESERVE_:
                                if ((_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 < (_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_:
                                    revert with 0, 'ADD_ERROR'
                                s = (((_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
                                t = ((_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18
                                while s < t:
                                    require s
                                    s = (((_BASE_RESERVE_ * _I_ * 4 * _K_) - (_BASE_TARGET_ * _I_ * 4 * _K_) / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                    t = s
                                    continue 
                                if 10^18 > t:
                                    revert with 0, 'SUB_ERROR'
                                if not t - 10^18:
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_RESERVE_:
                                            if _RState_ <= 2:
                                                if _RState_ != 2:
                                                    if not _BASE_TARGET_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not 0 / _BASE_RESERVE_:
                                                            if _BASE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            require _BASE_RESERVE_
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not 0 / _QUOTE_RESERVE_:
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ <= 2:
                                                if _RState_ != 2:
                                                    if not _BASE_TARGET_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not 0 / _BASE_RESERVE_:
                                                            if _BASE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            require _BASE_RESERVE_
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if not (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18:
                                                    if _QUOTE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if _QUOTE_RESERVE_:
                                                        if not 0 / _QUOTE_RESERVE_:
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                        else:
                                                            if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                else:
                                                    if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 != (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if _QUOTE_RESERVE_:
                                                        if not (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_:
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                        else:
                                                            if 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('div', ('add', ('mul', 1000000000000000000, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('mul', ('div', 0, ('mask_shl', 255, 0, 1, ('stor', ('name', '_K_', 9)))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), 1000000000000000000), ('div', ('add', ('mul', 1000000000000000000, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('mul', ('div', 0, ('mask_shl', 255, 0, 1, ('stor', ('name', '_K_', 9)))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), 1000000000000000000)), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                else:
                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_RESERVE_:
                                            if _RState_ <= 2:
                                                if _RState_ != 2:
                                                    if not _BASE_TARGET_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not 0 / _BASE_RESERVE_:
                                                            if _BASE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            require _BASE_RESERVE_
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not 0 / _QUOTE_RESERVE_:
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ <= 2:
                                                if _RState_ != 2:
                                                    if not _BASE_TARGET_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not 0 / _BASE_RESERVE_:
                                                            if _BASE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            require _BASE_RESERVE_
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if not (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18:
                                                    if _QUOTE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if _QUOTE_RESERVE_:
                                                        if not 0 / _QUOTE_RESERVE_:
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                        else:
                                                            if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                else:
                                                    if (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 != (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if _QUOTE_RESERVE_:
                                                        if not (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_:
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                        else:
                                                            if 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('div', ('add', ('mul', 1000000000000000000, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('mul', ('div', ('add', -1000000000000000000000000000000000000, ('mul', 1000000000000000000, ('var', 2))), ('mask_shl', 255, 0, 1, ('stor', ('name', '_K_', 9)))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), 1000000000000000000), ('div', ('add', ('mul', 1000000000000000000, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('mul', ('div', ('add', -1000000000000000000000000000000000000, ('mul', 1000000000000000000, ('var', 2))), ('mask_shl', 255, 0, 1, ('stor', ('name', '_K_', 9)))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), 1000000000000000000)), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                        else:
                            if _QUOTE_RESERVE_:
                                if not _I_ * 4 * _K_ / _QUOTE_RESERVE_:
                                    s = 0x604be73de4838ad9a5cf8800000001
                                    t = 1000000000000000000 * 10^18
                                    while s < t:
                                        require s
                                        s = (1000000000000000000 * 10^18 / s) + s / 2
                                        t = s
                                        continue 
                                else:
                                    if (_BASE_RESERVE_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) - (_BASE_TARGET_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) / _I_ * 4 * _K_ / _QUOTE_RESERVE_ != _BASE_RESERVE_ - _BASE_TARGET_:
                                        revert with 0, 'MUL_ERROR'
                                    s = ((_BASE_RESERVE_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + (-1 * _BASE_TARGET_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
                                    t = (_BASE_RESERVE_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + (-1 * _BASE_TARGET_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18
                                    while s < t:
                                        require s
                                        s = ((_BASE_RESERVE_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + (-1 * _BASE_TARGET_ * _I_ * 4 * _K_ / _QUOTE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                        t = s
                                        continue 
                                if 10^18 > t:
                                    revert with 0, 'SUB_ERROR'
                                if not t - 10^18:
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_RESERVE_:
                                            if _RState_ <= 2:
                                                if _RState_ != 2:
                                                    if not _BASE_TARGET_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not 0 / _BASE_RESERVE_:
                                                            if _BASE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            require _BASE_RESERVE_
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not 0 / _QUOTE_RESERVE_:
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ <= 2:
                                                if _RState_ != 2:
                                                    if not _BASE_TARGET_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not 0 / _BASE_RESERVE_:
                                                            if _BASE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            require _BASE_RESERVE_
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if not (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18:
                                                    if _QUOTE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if _QUOTE_RESERVE_:
                                                        if not 0 / _QUOTE_RESERVE_:
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                        else:
                                                            if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                else:
                                                    if (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 != (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if _QUOTE_RESERVE_:
                                                        if not (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_:
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                        else:
                                                            if 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + (0 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('div', ('add', ('mul', 1000000000000000000, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('mul', ('div', 0, ('mask_shl', 255, 0, 1, ('stor', ('name', '_K_', 9)))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), 1000000000000000000), ('div', ('add', ('mul', 1000000000000000000, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('mul', ('div', 0, ('mask_shl', 255, 0, 1, ('stor', ('name', '_K_', 9)))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), 1000000000000000000)), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                else:
                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_RESERVE_:
                                            if _RState_ <= 2:
                                                if _RState_ != 2:
                                                    if not _BASE_TARGET_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not 0 / _BASE_RESERVE_:
                                                            if _BASE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            require _BASE_RESERVE_
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not 0 / _QUOTE_RESERVE_:
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / _QUOTE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ <= 2:
                                                if _RState_ != 2:
                                                    if not _BASE_TARGET_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not 0 / _BASE_RESERVE_:
                                                            if _BASE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            require _BASE_RESERVE_
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if not (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18:
                                                    if _QUOTE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if _QUOTE_RESERVE_:
                                                        if not 0 / _QUOTE_RESERVE_:
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                        else:
                                                            if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                else:
                                                    if (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 != (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if _QUOTE_RESERVE_:
                                                        if not (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_:
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                        else:
                                                            if 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 * (10^18 * _QUOTE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_RESERVE_) / 10^18 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('div', ('add', ('mul', 1000000000000000000, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('mul', ('div', ('add', -1000000000000000000000000000000000000, ('mul', 1000000000000000000, ('var', 2))), ('mask_shl', 255, 0, 1, ('stor', ('name', '_K_', 9)))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), 1000000000000000000), ('div', ('add', ('mul', 1000000000000000000, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('mul', ('div', ('add', -1000000000000000000000000000000000000, ('mul', 1000000000000000000, ('var', 2))), ('mask_shl', 255, 0, 1, ('stor', ('name', '_K_', 9)))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), 1000000000000000000)), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
    else:
        if _RState_ <= 2:
            if _RState_ != 1:
                if _RState_ <= 2:
                    if _RState_ != 2:
                        if not _BASE_TARGET_:
                            if _BASE_RESERVE_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            require _BASE_RESERVE_
                            if not 0 / _BASE_RESERVE_:
                                if _BASE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                require _BASE_RESERVE_
                                if not _K_:
                                    if _K_ > 10^18:
                                        revert with 0, 'SUB_ERROR'
                                    if not _I_:
                                        return 0
                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                    revert with 0, 'MUL_ERROR'
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                    revert with 0, 'ADD_ERROR'
                                if not _I_:
                                    return 0
                                if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                    revert with 0, 'MUL_ERROR'
                                return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                            if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                revert with 0, 'MUL_ERROR'
                            if _BASE_RESERVE_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            require _BASE_RESERVE_
                            if not _K_:
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if not _I_:
                                    return 0
                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                    revert with 0, 'MUL_ERROR'
                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                            if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                revert with 0, 'MUL_ERROR'
                            if _K_ > 10^18:
                                revert with 0, 'SUB_ERROR'
                            if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                revert with 0, 'ADD_ERROR'
                            if not _I_:
                                return 0
                            if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                revert with 0, 'MUL_ERROR'
                            return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                        if _BASE_TARGET_ * _BASE_TARGET_ / _BASE_TARGET_ != _BASE_TARGET_:
                            revert with 0, 'MUL_ERROR'
                        if _BASE_RESERVE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        require _BASE_RESERVE_
                        if not _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_:
                            if _BASE_RESERVE_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            require _BASE_RESERVE_
                            if not _K_:
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if not _I_:
                                    return 0
                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                    revert with 0, 'MUL_ERROR'
                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                revert with 0, 'MUL_ERROR'
                            if _K_ > 10^18:
                                revert with 0, 'SUB_ERROR'
                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                revert with 0, 'ADD_ERROR'
                            if not _I_:
                                return 0
                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                revert with 0, 'MUL_ERROR'
                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                        if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ != 10^18:
                            revert with 0, 'MUL_ERROR'
                        if _BASE_RESERVE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        require _BASE_RESERVE_
                        if not _K_:
                            if _K_ > 10^18:
                                revert with 0, 'SUB_ERROR'
                            if not _I_:
                                return 0
                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                revert with 0, 'MUL_ERROR'
                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                        if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                            revert with 0, 'MUL_ERROR'
                        if _K_ > 10^18:
                            revert with 0, 'SUB_ERROR'
                        if 10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                            revert with 0, 'ADD_ERROR'
                        if not _I_:
                            return 0
                        if (10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                            revert with 0, 'MUL_ERROR'
                        return ((10^18 * _I_) + (10^18 * _BASE_TARGET_ * _BASE_TARGET_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                    if not _QUOTE_TARGET_:
                        if _QUOTE_RESERVE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        if _QUOTE_RESERVE_:
                            if not 0 / _QUOTE_RESERVE_:
                                if _QUOTE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if _QUOTE_RESERVE_:
                                    if not _K_:
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if not _I_:
                                            if -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if -_K_ + 10^18:
                                                return (0 / -_K_ + 10^18)
                                        else:
                                            if 10^18 * _I_ / _I_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if -_K_ + 10^18:
                                                return (10^18 * _I_ / -_K_ + 10^18)
                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                    else:
                                        if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                            revert with 0, 'MUL_ERROR'
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                            revert with 0, 'ADD_ERROR'
                                        if not _I_:
                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                        else:
                                            if 10^18 * _I_ / _I_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                            else:
                                if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                    revert with 0, 'MUL_ERROR'
                                if _QUOTE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if _QUOTE_RESERVE_:
                                    if not _K_:
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if not _I_:
                                            if -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if -_K_ + 10^18:
                                                return (0 / -_K_ + 10^18)
                                        else:
                                            if 10^18 * _I_ / _I_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if -_K_ + 10^18:
                                                return (10^18 * _I_ / -_K_ + 10^18)
                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                    else:
                                        if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                            revert with 0, 'MUL_ERROR'
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                            revert with 0, 'ADD_ERROR'
                                        if not _I_:
                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                        else:
                                            if 10^18 * _I_ / _I_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                    else:
                        if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                            revert with 0, 'MUL_ERROR'
                        if _QUOTE_RESERVE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        if _QUOTE_RESERVE_:
                            if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                if _QUOTE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if _QUOTE_RESERVE_:
                                    if not _K_:
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if not _I_:
                                            if -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if -_K_ + 10^18:
                                                return (0 / -_K_ + 10^18)
                                        else:
                                            if 10^18 * _I_ / _I_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if -_K_ + 10^18:
                                                return (10^18 * _I_ / -_K_ + 10^18)
                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                    else:
                                        if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                            revert with 0, 'MUL_ERROR'
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                            revert with 0, 'ADD_ERROR'
                                        if not _I_:
                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                        else:
                                            if 10^18 * _I_ / _I_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                            else:
                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                    revert with 0, 'MUL_ERROR'
                                if _QUOTE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if _QUOTE_RESERVE_:
                                    if not _K_:
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if not _I_:
                                            if -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if -_K_ + 10^18:
                                                return (0 / -_K_ + 10^18)
                                        else:
                                            if 10^18 * _I_ / _I_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if -_K_ + 10^18:
                                                return (10^18 * _I_ / -_K_ + 10^18)
                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                    else:
                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                            revert with 0, 'MUL_ERROR'
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                            revert with 0, 'ADD_ERROR'
                                        if not _I_:
                                            if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                        else:
                                            if 10^18 * _I_ / _I_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
            else:
                if _QUOTE_TARGET_ > _QUOTE_RESERVE_:
                    revert with 0, 'SUB_ERROR'
                if _I_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                if _I_:
                    if not _BASE_RESERVE_:
                        if _RState_ <= 2:
                            if _RState_ != 2:
                                if _BASE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                require _BASE_RESERVE_
                                if not 0 / _BASE_RESERVE_:
                                    if _BASE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    require _BASE_RESERVE_
                                    if not _K_:
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if not _I_:
                                            return 0
                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                    if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                        revert with 0, 'MUL_ERROR'
                                    if _K_ > 10^18:
                                        revert with 0, 'SUB_ERROR'
                                    if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                        revert with 0, 'ADD_ERROR'
                                    if not _I_:
                                        return 0
                                    if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                    revert with 0, 'MUL_ERROR'
                                if _BASE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                require _BASE_RESERVE_
                                if not _K_:
                                    if _K_ > 10^18:
                                        revert with 0, 'SUB_ERROR'
                                    if not _I_:
                                        return 0
                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                    revert with 0, 'MUL_ERROR'
                                if _K_ > 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                    revert with 0, 'ADD_ERROR'
                                if not _I_:
                                    return 0
                                if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                    revert with 0, 'MUL_ERROR'
                                return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                            if not _QUOTE_TARGET_:
                                if _QUOTE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if _QUOTE_RESERVE_:
                                    if not 0 / _QUOTE_RESERVE_:
                                        if _QUOTE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _QUOTE_RESERVE_:
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    if -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if -_K_ + 10^18:
                                                        return (0 / -_K_ + 10^18)
                                                else:
                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if -_K_ + 10^18:
                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                    revert with 0, 'MUL_ERROR'
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _I_:
                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                else:
                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                    else:
                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _QUOTE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _QUOTE_RESERVE_:
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    if -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if -_K_ + 10^18:
                                                        return (0 / -_K_ + 10^18)
                                                else:
                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if -_K_ + 10^18:
                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                    revert with 0, 'MUL_ERROR'
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _I_:
                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                else:
                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                            else:
                                if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                    revert with 0, 'MUL_ERROR'
                                if _QUOTE_RESERVE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if _QUOTE_RESERVE_:
                                    if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                        if _QUOTE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _QUOTE_RESERVE_:
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    if -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if -_K_ + 10^18:
                                                        return (0 / -_K_ + 10^18)
                                                else:
                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if -_K_ + 10^18:
                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                    revert with 0, 'MUL_ERROR'
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _I_:
                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                else:
                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                    else:
                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _QUOTE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _QUOTE_RESERVE_:
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    if -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if -_K_ + 10^18:
                                                        return (0 / -_K_ + 10^18)
                                                else:
                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if -_K_ + 10^18:
                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                    revert with 0, 'MUL_ERROR'
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _I_:
                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                else:
                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                    else:
                        if not _K_:
                            if not 1000000000000000000 * 10^18 / _I_:
                                if _BASE_RESERVE_ < _BASE_RESERVE_:
                                    revert with 0, 'ADD_ERROR'
                                if _RState_ <= 2:
                                    if _RState_ != 2:
                                        if not _BASE_RESERVE_:
                                            if _BASE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            require _BASE_RESERVE_
                                            if not 0 / _BASE_RESERVE_:
                                                if _BASE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                require _BASE_RESERVE_
                                                if not _K_:
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                    revert with 0, 'MUL_ERROR'
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _BASE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            require _BASE_RESERVE_
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if _BASE_RESERVE_ * _BASE_RESERVE_ / _BASE_RESERVE_ != _BASE_RESERVE_:
                                            revert with 0, 'MUL_ERROR'
                                        if _BASE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        require _BASE_RESERVE_
                                        if not _BASE_RESERVE_ * _BASE_RESERVE_ / _BASE_RESERVE_:
                                            if _BASE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            require _BASE_RESERVE_
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if 10^18 * _BASE_RESERVE_ * _BASE_RESERVE_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _BASE_RESERVE_ / _BASE_RESERVE_ != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _BASE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        require _BASE_RESERVE_
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if 10^18 * _BASE_RESERVE_ * _BASE_RESERVE_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * _BASE_RESERVE_ * _BASE_RESERVE_ / _BASE_RESERVE_ / _BASE_RESERVE_:
                                            revert with 0, 'MUL_ERROR'
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if 10^18 * _BASE_RESERVE_ * _BASE_RESERVE_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                            revert with 0, 'ADD_ERROR'
                                        if not _I_:
                                            return 0
                                        if (10^18 * _I_) + (10^18 * _BASE_RESERVE_ * _BASE_RESERVE_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * _BASE_RESERVE_ * _BASE_RESERVE_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        return ((10^18 * _I_) + (10^18 * _BASE_RESERVE_ * _BASE_RESERVE_ / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                    if not _QUOTE_TARGET_:
                                        if _QUOTE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _QUOTE_RESERVE_:
                                            if not 0 / _QUOTE_RESERVE_:
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (0 / -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (10^18 * _I_ / -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (0 / -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (10^18 * _I_ / -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                    else:
                                        if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                            revert with 0, 'MUL_ERROR'
                                        if _QUOTE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _QUOTE_RESERVE_:
                                            if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (0 / -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (10^18 * _I_ / -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (0 / -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (10^18 * _I_ / -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                            else:
                                if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 1000000000000000000 * 10^18 / _I_ != _QUOTE_RESERVE_ - _QUOTE_TARGET_:
                                    revert with 0, 'MUL_ERROR'
                                if ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + _BASE_RESERVE_ < _BASE_RESERVE_:
                                    revert with 0, 'ADD_ERROR'
                                if _RState_ <= 2:
                                    if _RState_ != 2:
                                        if not ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + _BASE_RESERVE_:
                                            if _BASE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            require _BASE_RESERVE_
                                            if not 0 / _BASE_RESERVE_:
                                                if _BASE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                require _BASE_RESERVE_
                                                if not _K_:
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                    revert with 0, 'MUL_ERROR'
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _BASE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            require _BASE_RESERVE_
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + (_BASE_RESERVE_ * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + _BASE_RESERVE_ != ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + _BASE_RESERVE_:
                                            revert with 0, 'MUL_ERROR'
                                        if _BASE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        require _BASE_RESERVE_
                                        if not ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + (_BASE_RESERVE_ * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_:
                                            if _BASE_RESERVE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            require _BASE_RESERVE_
                                            if not _K_:
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                revert with 0, 'MUL_ERROR'
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                revert with 0, 'ADD_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if 10^18 * ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + (_BASE_RESERVE_ * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ / ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + (_BASE_RESERVE_ * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _BASE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        require _BASE_RESERVE_
                                        if not _K_:
                                            if _K_ > 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if not _I_:
                                                return 0
                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                        if 10^18 * ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + (_BASE_RESERVE_ * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + (_BASE_RESERVE_ * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ / _BASE_RESERVE_:
                                            revert with 0, 'MUL_ERROR'
                                        if _K_ > 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if 10^18 * ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + (_BASE_RESERVE_ * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                            revert with 0, 'ADD_ERROR'
                                        if not _I_:
                                            return 0
                                        if (10^18 * _I_) + (10^18 * ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + (_BASE_RESERVE_ * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + (_BASE_RESERVE_ * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        return ((10^18 * _I_) + (10^18 * ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + (_BASE_RESERVE_ * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18) + ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_) / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                    if not _QUOTE_TARGET_:
                                        if _QUOTE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _QUOTE_RESERVE_:
                                            if not 0 / _QUOTE_RESERVE_:
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (0 / -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (10^18 * _I_ / -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (0 / -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (10^18 * _I_ / -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                    else:
                                        if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                            revert with 0, 'MUL_ERROR'
                                        if _QUOTE_RESERVE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _QUOTE_RESERVE_:
                                            if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (0 / -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (10^18 * _I_ / -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (0 / -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if -_K_ + 10^18:
                                                                return (10^18 * _I_ / -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        else:
                                                            if 10^18 * _I_ / _I_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                        ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                        else:
                            if not 4 * _K_:
                                if 2 * _K_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if 2 * _K_:
                                    if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                        revert with 0, 'ADD_ERROR'
                                    if not _BASE_RESERVE_:
                                        if _RState_ <= 2:
                                            if _RState_ != 2:
                                                if _BASE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                require _BASE_RESERVE_
                                                if not 0 / _BASE_RESERVE_:
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if _BASE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                require _BASE_RESERVE_
                                                if not _K_:
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                    revert with 0, 'MUL_ERROR'
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if not _QUOTE_TARGET_:
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not 0 / _QUOTE_RESERVE_:
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                    else:
                                        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _RState_ <= 2:
                                            if _RState_ != 2:
                                                if not (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18:
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not 0 / _BASE_RESERVE_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 != (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if _BASE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                require _BASE_RESERVE_
                                                if not (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_:
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if _BASE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                require _BASE_RESERVE_
                                                if not _K_:
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                    revert with 0, 'MUL_ERROR'
                                                if _K_ > 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _I_:
                                                    return 0
                                                if (10^18 * _I_) + (10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                return ((10^18 * _I_) + (10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                            if not _QUOTE_TARGET_:
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not 0 / _QUOTE_RESERVE_:
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_RESERVE_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if _QUOTE_RESERVE_:
                                                    if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _QUOTE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if _QUOTE_RESERVE_:
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (0 / -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if -_K_ + 10^18:
                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                else:
                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                            else:
                                if 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / 4 * _K_ != 1000000000000000000 * 10^18 / _I_:
                                    revert with 0, 'MUL_ERROR'
                                if not 1000000000000000000 * 10^18 / _I_ * 4 * _K_:
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                            revert with 0, 'ADD_ERROR'
                                        if not _BASE_RESERVE_:
                                            if _RState_ <= 2:
                                                if _RState_ != 2:
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not 0 / _BASE_RESERVE_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if not _QUOTE_TARGET_:
                                                    if _QUOTE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if _QUOTE_RESERVE_:
                                                        if not 0 / _QUOTE_RESERVE_:
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                        else:
                                                            if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                else:
                                                    if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if _QUOTE_RESERVE_:
                                                        if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                        else:
                                                            if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                        else:
                                            if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _RState_ <= 2:
                                                if _RState_ != 2:
                                                    if not (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not 0 / _BASE_RESERVE_:
                                                            if _BASE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            require _BASE_RESERVE_
                                                            if not _K_:
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 != (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_:
                                                        if _BASE_RESERVE_ <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        require _BASE_RESERVE_
                                                        if not _K_:
                                                            if _K_ > 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if not _I_:
                                                                return 0
                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _BASE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    require _BASE_RESERVE_
                                                    if not _K_:
                                                        if _K_ > 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if not _I_:
                                                            return 0
                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                    if 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _K_ > 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _I_:
                                                        return 0
                                                    if (10^18 * _I_) + (10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    return ((10^18 * _I_) + (10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                if not _QUOTE_TARGET_:
                                                    if _QUOTE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if _QUOTE_RESERVE_:
                                                        if not 0 / _QUOTE_RESERVE_:
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                        else:
                                                            if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                else:
                                                    if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_RESERVE_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if _QUOTE_RESERVE_:
                                                        if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                        else:
                                                            if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _QUOTE_RESERVE_ <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if _QUOTE_RESERVE_:
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (0 / -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if -_K_ + 10^18:
                                                                            return (10^18 * _I_ / -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                else:
                                                                    if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    else:
                                                                        if 10^18 * _I_ / _I_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                    ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                else:
                                    if _BASE_RESERVE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / 1000000000000000000 * 10^18 / _I_ * 4 * _K_ == _QUOTE_RESERVE_ - _QUOTE_TARGET_:
                                        if _BASE_RESERVE_:
                                            if ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_) + 1000000000000000000 * 10^18 < (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_:
                                                revert with 0, 'ADD_ERROR'
                                            s = (((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
                                            t = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_) + 1000000000000000000 * 10^18
                                            while s < t:
                                                require s
                                                s = (((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_) / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                t = s
                                                continue 
                                            if 10^18 > t:
                                                revert with 0, 'SUB_ERROR'
                                            if not t - 10^18:
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_RESERVE_:
                                                        if _RState_ <= 2:
                                                            if _RState_ != 2:
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not 0 / _BASE_RESERVE_:
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not _K_:
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if not _QUOTE_TARGET_:
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not 0 / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _RState_ <= 2:
                                                            if _RState_ != 2:
                                                                if not (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18:
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not 0 / _BASE_RESERVE_:
                                                                        if _BASE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        require _BASE_RESERVE_
                                                                        if not _K_:
                                                                            if _K_ > 10^18:
                                                                                revert with 0, 'SUB_ERROR'
                                                                            if not _I_:
                                                                                return 0
                                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                                revert with 0, 'MUL_ERROR'
                                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                            revert with 0, 'ADD_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not _K_:
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 != (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_:
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not _K_:
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ != 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) + (10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) + (10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if not _QUOTE_TARGET_:
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not 0 / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_RESERVE_:
                                                        if _RState_ <= 2:
                                                            if _RState_ != 2:
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not 0 / _BASE_RESERVE_:
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not _K_:
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if not _QUOTE_TARGET_:
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not 0 / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _RState_ <= 2:
                                                            if _RState_ != 2:
                                                                if not (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18:
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not 0 / _BASE_RESERVE_:
                                                                        if _BASE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        require _BASE_RESERVE_
                                                                        if not _K_:
                                                                            if _K_ > 10^18:
                                                                                revert with 0, 'SUB_ERROR'
                                                                            if not _I_:
                                                                                return 0
                                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                                revert with 0, 'MUL_ERROR'
                                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                            revert with 0, 'ADD_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not _K_:
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 != (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_:
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not _K_:
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ != 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) + (10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) + (10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if not _QUOTE_TARGET_:
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not 0 / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                    else:
                                        if _BASE_RESERVE_:
                                            if not 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_:
                                                s = 0x604be73de4838ad9a5cf8800000001
                                                t = 1000000000000000000 * 10^18
                                                while s < t:
                                                    require s
                                                    s = (1000000000000000000 * 10^18 / s) + s / 2
                                                    t = s
                                                    continue 
                                            else:
                                                if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) - (_QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) / 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_ != _QUOTE_RESERVE_ - _QUOTE_TARGET_:
                                                    revert with 0, 'MUL_ERROR'
                                                s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + (-1 * _QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                t = (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + (-1 * _QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18
                                                while s < t:
                                                    require s
                                                    s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + (-1 * _QUOTE_TARGET_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                    t = s
                                                    continue 
                                            if 10^18 > t:
                                                revert with 0, 'SUB_ERROR'
                                            if not t - 10^18:
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_RESERVE_:
                                                        if _RState_ <= 2:
                                                            if _RState_ != 2:
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not 0 / _BASE_RESERVE_:
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not _K_:
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if not _QUOTE_TARGET_:
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not 0 / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _RState_ <= 2:
                                                            if _RState_ != 2:
                                                                if not (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18:
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not 0 / _BASE_RESERVE_:
                                                                        if _BASE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        require _BASE_RESERVE_
                                                                        if not _K_:
                                                                            if _K_ > 10^18:
                                                                                revert with 0, 'SUB_ERROR'
                                                                            if not _I_:
                                                                                return 0
                                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                                revert with 0, 'MUL_ERROR'
                                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                            revert with 0, 'ADD_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not _K_:
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 != (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_:
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not _K_:
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ != 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) + (10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) + (10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if not _QUOTE_TARGET_:
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not 0 / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                            else:
                                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_RESERVE_:
                                                        if _RState_ <= 2:
                                                            if _RState_ != 2:
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not 0 / _BASE_RESERVE_:
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not _K_:
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if not _QUOTE_TARGET_:
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not 0 / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                    else:
                                                        if (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _RState_ <= 2:
                                                            if _RState_ != 2:
                                                                if not (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18:
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not 0 / _BASE_RESERVE_:
                                                                        if _BASE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        require _BASE_RESERVE_
                                                                        if not _K_:
                                                                            if _K_ > 10^18:
                                                                                revert with 0, 'SUB_ERROR'
                                                                            if not _I_:
                                                                                return 0
                                                                            if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                                revert with 0, 'MUL_ERROR'
                                                                            return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                        if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                            revert with 0, 'ADD_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 10^18 * 0 / _BASE_RESERVE_ / 0 / _BASE_RESERVE_ != 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not _K_:
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) + (10^18 * 0 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 != (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_:
                                                                    if _BASE_RESERVE_ <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    require _BASE_RESERVE_
                                                                    if not _K_:
                                                                        if _K_ > 10^18:
                                                                            revert with 0, 'SUB_ERROR'
                                                                        if not _I_:
                                                                            return 0
                                                                        if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                    if 0 / _BASE_RESERVE_ * _K_ / _K_ != 0 / _BASE_RESERVE_:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if 0 / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                        revert with 0, 'ADD_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (0 / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) + (0 / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ != 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                require _BASE_RESERVE_
                                                                if not _K_:
                                                                    if _K_ > 10^18:
                                                                        revert with 0, 'SUB_ERROR'
                                                                    if not _I_:
                                                                        return 0
                                                                    if (10^18 * _I_) - (_K_ * _I_) / _I_ != -_K_ + 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    return ((10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                                if 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _K_ > 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not _I_:
                                                                    return 0
                                                                if (10^18 * _I_) + (10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                return ((10^18 * _I_) + (10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 * (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18 / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
                                                            if not _QUOTE_TARGET_:
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not 0 / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * 0 / _QUOTE_RESERVE_ / 0 / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * 0 / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                            else:
                                                                if _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_TARGET_ != _QUOTE_TARGET_:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _QUOTE_RESERVE_ <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if _QUOTE_RESERVE_:
                                                                    if not _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_:
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / _K_ != 0 / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 0 / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (0 / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', 0, ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                    else:
                                                                        if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ != 10^18:
                                                                            revert with 0, 'MUL_ERROR'
                                                                        if _QUOTE_RESERVE_ <= 0:
                                                                            revert with 0, 'DIVIDING_ERROR'
                                                                        if _QUOTE_RESERVE_:
                                                                            if not _K_:
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if not _I_:
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (0 / -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('mul', -1, ('stor', ('name', '_K_', 9)))))
                                                                            else:
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / _K_ != 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_:
                                                                                    revert with 0, 'MUL_ERROR'
                                                                                if _K_ > 10^18:
                                                                                    revert with 0, 'SUB_ERROR'
                                                                                if 10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18 < 0:
                                                                                    revert with 0, 'ADD_ERROR'
                                                                                if not _I_:
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (0 / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                else:
                                                                                    if 10^18 * _I_ / _I_ != 10^18:
                                                                                        revert with 0, 'MUL_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18 <= 0:
                                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                                    if (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
                                                                                        return (10^18 * _I_ / (10^18 * _QUOTE_TARGET_ * _QUOTE_TARGET_ / _QUOTE_RESERVE_ / _QUOTE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18)
                                                                                ('iszero', ('add', 1000000000000000000, ('div', ('mul', ('div', ('mul', 1000000000000000000, ('div', ('mul', ('stor', ('name', '_QUOTE_TARGET_', 6)), ('stor', ('name', '_QUOTE_TARGET_', 6))), ('stor', ('name', '_QUOTE_RESERVE_', 5)))), ('stor', ('name', '_QUOTE_RESERVE_', 5))), ('stor', ('name', '_K_', 9))), 1000000000000000000), ('mul', -1, ('stor', ('name', '_K_', 9)))))
    revert
}



}
