contract main {




// =====================  Runtime code  =====================


#
#  - withdrawAllQuoteTo(address arg1)
#  - getWithdrawQuotePenalty(uint256 arg1)
#  - withdrawQuoteTo(address arg1, uint256 arg2)
#  - queryBuyBaseToken(uint256 arg1)
#  - withdrawAllBaseTo(address arg1)
#  - claimAssets()
#  - depositBase(uint256 arg1)
#  - donateQuoteToken(uint256 arg1)
#  - depositQuoteTo(address arg1, uint256 arg2)
#  - sub_8dae7333(?)
#  - withdrawBaseTo(address arg1, uint256 arg2)
#  - querySellBaseToken(uint256 arg1)
#  - depositBaseTo(address arg1, uint256 arg2)
#  - withdrawQuote(uint256 arg1)
#  - retrieve(address arg1, uint256 arg2)
#  - withdrawAllQuote()
#  - withdrawAllBase()
#  - buyBaseToken(uint256 arg1, uint256 arg2, bytes arg3)
#  - donateBaseToken(uint256 arg1)
#  - getMidPrice()
#  - getWithdrawBasePenalty(uint256 arg1)
#  - depositQuote(uint256 arg1)
#  - withdrawBase(uint256 arg1)
#
const version = 101


address _OWNER_;
bool stor1; offset 256
uint8 stor1; offset 168
uint8 stor1; offset 176
uint8 stor1; offset 184
uint8 stor1; offset 192
uint8 stor1; offset 200
uint32 stor1; offset 184
uint64 stor1; offset 208
address _NEW_OWNER_;
uint256 sub_4de4527e;
bool stor3; offset 256
uint8 stor3;
uint8 stor3; offset 8
uint256 sub_9b020fba;
uint256 sub_1769ddaa;
address sub_3960f142Address;
address _MAINTAINER_Address;
address _BASE_TOKEN_Address;
address _QUOTE_TOKEN_Address;
address sub_73a2ab7cAddress;
uint256 _LP_FEE_RATE_;
uint256 _MT_FEE_RATE_;
uint256 _K_;
uint8 _R_STATUS_;
uint256 sub_b2094fd3;
uint256 sub_245c9685;
uint256 _BASE_BALANCE_;
uint256 _QUOTE_BALANCE_;
address _BASE_CAPITAL_TOKEN_Address;
address _QUOTE_CAPITAL_TOKEN_Address;
uint256 sub_c6b73cf9;
uint256 sub_0e6518e9;
mapping of uint8 stor23;

function sub_0e6518e9(?) payable {
    return sub_0e6518e9
}

function _OWNER_() payable {
    return _OWNER_
}

function sub_1769ddaa(?) payable {
    return sub_1769ddaa
}

function _R_STATUS_() payable {
    require _R_STATUS_ < 3
    return _R_STATUS_
}

function sub_245c9685(?) payable {
    return sub_245c9685
}

function sub_3960f142(?) payable {
    return sub_3960f142Address
}

function _MAINTAINER_() payable {
    return _MAINTAINER_Address
}

function _BASE_TOKEN_() payable {
    return _BASE_TOKEN_Address
}

function sub_4de4527e(?) payable {
    return sub_4de4527e
}

function _CLAIMED_(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor23[arg1])
}

function sub_6ec6a58d(?) payable {
    return bool(uint8(stor1.field_176))
}

function sub_73a2ab7c(?) payable {
    return sub_73a2ab7cAddress
}

function _QUOTE_BALANCE_() payable {
    return _QUOTE_BALANCE_
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function sub_8ff5e742(?) payable {
    return bool(uint8(stor3.field_8))
}

function sub_9b020fba(?) payable {
    return sub_9b020fba
}

function sub_a3161a56(?) payable {
    return bool(uint8(stor3.field_0))
}

function sub_a598aca7(?) payable {
    return bool(uint8(stor1.field_192))
}

function _LP_FEE_RATE_() payable {
    return _LP_FEE_RATE_
}

function _QUOTE_CAPITAL_TOKEN_() payable {
    return _QUOTE_CAPITAL_TOKEN_Address
}

function sub_b2094fd3(?) payable {
    return sub_b2094fd3
}

function _MT_FEE_RATE_() payable {
    return _MT_FEE_RATE_
}

function sub_c5bbffe8(?) payable {
    return bool(uint8(stor1.field_184))
}

function sub_c6b73cf9(?) payable {
    return sub_c6b73cf9
}

function _QUOTE_TOKEN_() payable {
    return _QUOTE_TOKEN_Address
}

function _BASE_CAPITAL_TOKEN_() payable {
    return _BASE_CAPITAL_TOKEN_Address
}

function _TRADE_ALLOWED_() payable {
    return bool(uint8(stor1.field_200))
}

function _BASE_BALANCE_() payable {
    return _BASE_BALANCE_
}

function _K_() payable {
    return _K_
}

function _fallback() payable {
    revert
}

function disableBuying() payable {
    if sub_3960f142Address != msg.sender:
        if _OWNER_ != msg.sender:
            revert with 0, 'NOT_SUPERVISOR_OR_OWNER'
    uint8(stor3.field_0) = 0
}

function disableSelling() payable {
    if sub_3960f142Address != msg.sender:
        if _OWNER_ != msg.sender:
            revert with 0, 'NOT_SUPERVISOR_OR_OWNER'
    uint8(stor3.field_8) = 0
}

function disableTrading() payable {
    if sub_3960f142Address != msg.sender:
        if _OWNER_ != msg.sender:
            revert with 0, 'NOT_SUPERVISOR_OR_OWNER'
    uint8(stor1.field_200) = 0
}

function enableBuying() payable {
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if uint8(stor1.field_176):
        revert with 0, 'DODO_CLOSED'
    uint8(stor3.field_0) = 1
}

function enableSelling() payable {
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if uint8(stor1.field_176):
        revert with 0, 'DODO_CLOSED'
    uint8(stor3.field_8) = 1
}

function enableTrading() payable {
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if uint8(stor1.field_176):
        revert with 0, 'DODO_CLOSED'
    uint8(stor1.field_200) = 1
}

function disableBaseDeposit() payable {
    if sub_3960f142Address != msg.sender:
        if _OWNER_ != msg.sender:
            revert with 0, 'NOT_SUPERVISOR_OR_OWNER'
    uint8(stor1.field_192) = 0
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    sub_73a2ab7cAddress = arg1
}

function disableQuoteDeposit() payable {
    if sub_3960f142Address != msg.sender:
        if _OWNER_ != msg.sender:
            revert with 0, 'NOT_SUPERVISOR_OR_OWNER'
    uint8(stor1.field_184) = 0
}

function enableBaseDeposit() payable {
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if uint8(stor1.field_176):
        revert with 0, 'DODO_CLOSED'
    uint8(stor1.field_192) = 1
}

function setMaintainer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    _MAINTAINER_Address = arg1
}

function enableQuoteDeposit() payable {
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if uint8(stor1.field_176):
        revert with 0, 'DODO_CLOSED'
    uint8(stor1.field_184) = 1
}

function setSupervisor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    sub_3960f142Address = arg1
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function setBaseBalanceLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if uint8(stor1.field_176):
        revert with 0, 'DODO_CLOSED'
    sub_9b020fba = arg1
}

function setQuoteBalanceLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if uint8(stor1.field_176):
        revert with 0, 'DODO_CLOSED'
    sub_1769ddaa = arg1
}

function setGasPriceLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_3960f142Address != msg.sender:
        if _OWNER_ != msg.sender:
            revert with 0, 'NOT_SUPERVISOR_OR_OWNER'
    emit UpdateGasPriceLimit(sub_4de4527e, arg1);
    sub_4de4527e = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not arg1:
        revert with 0, 'INVALID_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function getOraclePrice() payable {
    require ext_code.size(sub_73a2ab7cAddress)
    staticcall sub_73a2ab7cAddress.getPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalBaseCapital() payable {
    require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
    staticcall _BASE_CAPITAL_TOKEN_Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalQuoteCapital() payable {
    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getBaseCapitalBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
    staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setK(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit UpdateK(_K_, arg1);
    _K_ = arg1
    if _K_ >= 10^18:
        revert with 0, 'K>=1'
    if _K_ <= 0:
        revert with 0, 'K=0'
    if _MT_FEE_RATE_ + _LP_FEE_RATE_ < _LP_FEE_RATE_:
        revert with 0, 'ADD_ERROR'
    if _MT_FEE_RATE_ + _LP_FEE_RATE_ >= 10^18:
        revert with 0, 'FEE_RATE>=1'
}

function getQuoteCapitalBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setMaintainerFeeRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit UpdateMaintainerFeeRate(_MT_FEE_RATE_, arg1);
    _MT_FEE_RATE_ = arg1
    if _K_ >= 10^18:
        revert with 0, 'K>=1'
    if _K_ <= 0:
        revert with 0, 'K=0'
    if _MT_FEE_RATE_ + _LP_FEE_RATE_ < _LP_FEE_RATE_:
        revert with 0, 'ADD_ERROR'
    if _MT_FEE_RATE_ + _LP_FEE_RATE_ >= 10^18:
        revert with 0, 'FEE_RATE>=1'
}

function setLiquidityProviderFeeRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit UpdateLiquidityProviderFeeRate(_LP_FEE_RATE_, arg1);
    _LP_FEE_RATE_ = arg1
    if _K_ >= 10^18:
        revert with 0, 'K>=1'
    if _K_ <= 0:
        revert with 0, 'K=0'
    if _MT_FEE_RATE_ + _LP_FEE_RATE_ < _LP_FEE_RATE_:
        revert with 0, 'ADD_ERROR'
    if _MT_FEE_RATE_ + _LP_FEE_RATE_ >= 10^18:
        revert with 0, 'FEE_RATE>=1'
}

function init(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10) payable {
    require calldata.size - 4 >= 320
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if uint8(stor1.field_168):
        revert with 0, 'DODO_INITIALIZED'
    uint8(stor1.field_168) = 1
    _OWNER_ = arg1
    emit OwnershipTransferred(0, arg1);
    sub_3960f142Address = arg2
    _MAINTAINER_Address = arg3
    _BASE_TOKEN_Address = arg4
    _QUOTE_TOKEN_Address = arg5
    sub_73a2ab7cAddress = arg6
    stor1.field_184 % 16777216 = 0
    sub_4de4527e = arg10
    uint8(stor3.field_0) = 1
    uint8(stor3.field_8) = 1
    stor3.field_256 % 1 = 0
    sub_9b020fba = -1
    sub_1769ddaa = -1
    _LP_FEE_RATE_ = arg7
    _MT_FEE_RATE_ = arg8
    _K_ = arg9
    _R_STATUS_ = 0
    create contract with 0 wei
                    code: code.data[19202 len 4141], address(arg4)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    _BASE_CAPITAL_TOKEN_Address = address(create.new_address)
    create contract with 0 wei
                    code: code.data[19202 len 4141], _QUOTE_TOKEN_Address
    _QUOTE_CAPITAL_TOKEN_Address = address(create.new_address)
    if _K_ >= 10^18:
        revert with 0, 'K>=1'
    if _K_ <= 0:
        revert with 0, 'K=0'
    if _MT_FEE_RATE_ + _LP_FEE_RATE_ < _LP_FEE_RATE_:
        revert with 0, 'ADD_ERROR'
    if _MT_FEE_RATE_ + _LP_FEE_RATE_ >= 10^18:
        revert with 0, 'FEE_RATE>=1'
}

function finalSettlement() payable {
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if uint8(stor1.field_176):
        revert with 0, 'DODO_CLOSED'
    uint8(stor1.field_176) = 1
    stor1.field_184 % 16777216 = 0
    stor1.field_208 % 281474976710656 = 0
    stor1.field_256 % 1 = 0
    require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
    staticcall _BASE_CAPITAL_TOKEN_Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if _QUOTE_BALANCE_ <= sub_245c9685:
        sub_245c9685 = _QUOTE_BALANCE_
    else:
        if sub_245c9685 > _QUOTE_BALANCE_:
            revert with 0, 'SUB_ERROR'
        if not _QUOTE_BALANCE_ - sub_245c9685:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require ext_call.return_data[0]
            sub_c6b73cf9 = 0 / ext_call.return_data[0]
        else:
            if (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / _QUOTE_BALANCE_ - sub_245c9685 != 10^18:
                revert with 0, 'MUL_ERROR'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require ext_call.return_data[0]
            sub_c6b73cf9 = (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0]
    if _BASE_BALANCE_ <= sub_b2094fd3:
        sub_b2094fd3 = _BASE_BALANCE_
    else:
        if sub_b2094fd3 > _BASE_BALANCE_:
            revert with 0, 'SUB_ERROR'
        if not _BASE_BALANCE_ - sub_b2094fd3:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require ext_call.return_data[0]
            sub_0e6518e9 = 0 / ext_call.return_data[0]
        else:
            if (10^18 * _BASE_BALANCE_) - (10^18 * sub_b2094fd3) / _BASE_BALANCE_ - sub_b2094fd3 != 10^18:
                revert with 0, 'MUL_ERROR'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require ext_call.return_data[0]
            sub_0e6518e9 = (10^18 * _BASE_BALANCE_) - (10^18 * sub_b2094fd3) / ext_call.return_data[0]
    _R_STATUS_ = 0
}

function getExpectedTarget() payable {
    require _R_STATUS_ <= 2
    if not _R_STATUS_:
        return sub_b2094fd3, sub_245c9685
    require _R_STATUS_ <= 2
    if _R_STATUS_ == 2:
        if sub_b2094fd3 > _BASE_BALANCE_:
            revert with 0, 'SUB_ERROR'
        require ext_code.size(sub_73a2ab7cAddress)
        staticcall sub_73a2ab7cAddress.getPrice() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not _BASE_BALANCE_ - sub_b2094fd3:
            if _K_:
                if 0 / _K_:
                    revert with 0, 'MUL_ERROR'
            if _QUOTE_BALANCE_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _QUOTE_BALANCE_
            if -1 * 0 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_:
                if not (0 / _QUOTE_BALANCE_) + 1000000000000000001:
                    revert with 0, 'SUB_ERROR'
                if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                    revert with 0, 'MUL_ERROR'
                s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                while s < t:
                    require s
                    s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                    t = s
                    continue 
            else:
                if (0 / _QUOTE_BALANCE_) + 10^18 < 0 / _QUOTE_BALANCE_:
                    revert with 0, 'ADD_ERROR'
                if not (0 / _QUOTE_BALANCE_) + 10^18:
                    revert with 0, 'SUB_ERROR'
                if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                    revert with 0, 'MUL_ERROR'
                s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                while s < t:
                    require s
                    s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                    t = s
                    continue 
        else:
            if (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / _BASE_BALANCE_ - sub_b2094fd3 != ext_call.return_data[0]:
                revert with 0, 'MUL_ERROR'
            if not _K_:
                if _QUOTE_BALANCE_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _QUOTE_BALANCE_
                if -1 * 0 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_:
                    if not (0 / _QUOTE_BALANCE_) + 1000000000000000001:
                        revert with 0, 'SUB_ERROR'
                    if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                        revert with 0, 'MUL_ERROR'
                    s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                    t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                    while s < t:
                        require s
                        s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                        t = s
                        continue 
                else:
                    if (0 / _QUOTE_BALANCE_) + 10^18 < 0 / _QUOTE_BALANCE_:
                        revert with 0, 'ADD_ERROR'
                    if not (0 / _QUOTE_BALANCE_) + 10^18:
                        revert with 0, 'SUB_ERROR'
                    if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                        revert with 0, 'MUL_ERROR'
                    s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                    t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                    while s < t:
                        require s
                        s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                        t = s
                        continue 
            else:
                if (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / _K_ != (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'MUL_ERROR'
                if not (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18:
                    if _QUOTE_BALANCE_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _QUOTE_BALANCE_
                    if -1 * 0 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_:
                        if not (0 / _QUOTE_BALANCE_) + 1000000000000000001:
                            revert with 0, 'SUB_ERROR'
                        if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                            revert with 0, 'MUL_ERROR'
                        s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                        t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                        while s < t:
                            require s
                            s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                            t = s
                            continue 
                    else:
                        if (0 / _QUOTE_BALANCE_) + 10^18 < 0 / _QUOTE_BALANCE_:
                            revert with 0, 'ADD_ERROR'
                        if not (0 / _QUOTE_BALANCE_) + 10^18:
                            revert with 0, 'SUB_ERROR'
                        if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                            revert with 0, 'MUL_ERROR'
                        s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                        t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                        while s < t:
                            require s
                            s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                            t = s
                            continue 
                else:
                    if 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 != 4:
                        revert with 0, 'MUL_ERROR'
                    if not 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18:
                        if _QUOTE_BALANCE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        require _QUOTE_BALANCE_
                        if -1 * 0 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_:
                            if not (0 / _QUOTE_BALANCE_) + 1000000000000000001:
                                revert with 0, 'SUB_ERROR'
                            if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                                revert with 0, 'MUL_ERROR'
                            s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                            t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                            while s < t:
                                require s
                                s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                t = s
                                continue 
                        else:
                            if (0 / _QUOTE_BALANCE_) + 10^18 < 0 / _QUOTE_BALANCE_:
                                revert with 0, 'ADD_ERROR'
                            if not (0 / _QUOTE_BALANCE_) + 10^18:
                                revert with 0, 'SUB_ERROR'
                            if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                                revert with 0, 'MUL_ERROR'
                            s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                            t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                            while s < t:
                                require s
                                s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                t = s
                                continue 
                    else:
                        if 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 != 10^18:
                            revert with 0, 'MUL_ERROR'
                        if _QUOTE_BALANCE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        require _QUOTE_BALANCE_
                        if (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18) - (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_):
                            if not (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001:
                                revert with 0, 'SUB_ERROR'
                            if (10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                                revert with 0, 'MUL_ERROR'
                            s = ((10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                            t = (10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                            while s < t:
                                require s
                                s = ((10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                t = s
                                continue 
                        else:
                            if (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 10^18 < 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_:
                                revert with 0, 'ADD_ERROR'
                            if not (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 10^18:
                                revert with 0, 'SUB_ERROR'
                            if (10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                                revert with 0, 'MUL_ERROR'
                            s = ((10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                            t = (10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                            while s < t:
                                require s
                                s = ((10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                t = s
                                continue 
        if 10^18 > t:
            revert with 0, 'SUB_ERROR'
        if not _K_:
            if t - 10^18:
                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                    revert with 0, 'MUL_ERROR'
            revert with 0, 'DIVIDING_ERROR'
        if 2 * _K_ / _K_ != 2:
            revert with 0, 'MUL_ERROR'
        if not t - 10^18:
            if 2 * _K_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require 2 * _K_
            if not -1 * 0 / 2 * _K_ * 2 * _K_:
                if (0 / 2 * _K_) + 10^18 < 10^18:
                    revert with 0, 'ADD_ERROR'
                if not _QUOTE_BALANCE_:
                    if _QUOTE_BALANCE_ > 0:
                        revert with 0, 'SUB_ERROR'
                    if 0 < _QUOTE_BALANCE_:
                        revert with 0, 'ADD_ERROR'
                    return sub_b2094fd3, 0
                if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                    revert with 0, 'MUL_ERROR'
                if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                    revert with 0, 'SUB_ERROR'
                if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                    revert with 0, 'ADD_ERROR'
                return sub_b2094fd3, (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18
            if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                revert with 0, 'ADD_ERROR'
            if not _QUOTE_BALANCE_:
                if _QUOTE_BALANCE_ > 0:
                    revert with 0, 'SUB_ERROR'
                if 0 < _QUOTE_BALANCE_:
                    revert with 0, 'ADD_ERROR'
                return sub_b2094fd3, 0
            if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                revert with 0, 'MUL_ERROR'
            if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                revert with 0, 'SUB_ERROR'
            if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                revert with 0, 'ADD_ERROR'
            return sub_b2094fd3, (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18
        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
            revert with 0, 'MUL_ERROR'
        if 2 * _K_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require 2 * _K_
        if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                revert with 0, 'ADD_ERROR'
            if not _QUOTE_BALANCE_:
                if _QUOTE_BALANCE_ > 0:
                    revert with 0, 'SUB_ERROR'
                if 0 < _QUOTE_BALANCE_:
                    revert with 0, 'ADD_ERROR'
                return sub_b2094fd3, 0
            if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                revert with 0, 'MUL_ERROR'
            if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                revert with 0, 'SUB_ERROR'
            if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                revert with 0, 'ADD_ERROR'
            return sub_b2094fd3, 
                   (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18
        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
            revert with 0, 'ADD_ERROR'
        if not _QUOTE_BALANCE_:
            if _QUOTE_BALANCE_ > 0:
                revert with 0, 'SUB_ERROR'
            if 0 < _QUOTE_BALANCE_:
                revert with 0, 'ADD_ERROR'
            return sub_b2094fd3, 0
        if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
            revert with 0, 'MUL_ERROR'
        if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
            revert with 0, 'SUB_ERROR'
        if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
            revert with 0, 'ADD_ERROR'
        return sub_b2094fd3, 
               (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18
    require _R_STATUS_ <= 2
    if _R_STATUS_ != 1:
        return 0
    if sub_245c9685 > _QUOTE_BALANCE_:
        revert with 0, 'SUB_ERROR'
    require ext_code.size(sub_73a2ab7cAddress)
    staticcall sub_73a2ab7cAddress.getPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not _QUOTE_BALANCE_ - sub_245c9685:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require ext_call.return_data[0]
        if not _K_:
            if _BASE_BALANCE_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _BASE_BALANCE_
            if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                    revert with 0, 'SUB_ERROR'
                if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                    revert with 0, 'MUL_ERROR'
                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                while s < t:
                    require s
                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                    t = s
                    continue 
            else:
                if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                    revert with 0, 'ADD_ERROR'
                if not (0 / _BASE_BALANCE_) + 10^18:
                    revert with 0, 'SUB_ERROR'
                if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                    revert with 0, 'MUL_ERROR'
                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                while s < t:
                    require s
                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                    t = s
                    continue 
        else:
            if 0 / ext_call.return_data[0] * _K_ / _K_ != 0 / ext_call.return_data[0]:
                revert with 0, 'MUL_ERROR'
            if not 0 / ext_call.return_data[0] * _K_ / 10^18:
                if _BASE_BALANCE_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _BASE_BALANCE_
                if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                    if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                        revert with 0, 'SUB_ERROR'
                    if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                        revert with 0, 'MUL_ERROR'
                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                    t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                    while s < t:
                        require s
                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                        t = s
                        continue 
                else:
                    if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                        revert with 0, 'ADD_ERROR'
                    if not (0 / _BASE_BALANCE_) + 10^18:
                        revert with 0, 'SUB_ERROR'
                    if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                        revert with 0, 'MUL_ERROR'
                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                    t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                    while s < t:
                        require s
                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                        t = s
                        continue 
            else:
                if 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / 0 / ext_call.return_data[0] * _K_ / 10^18 != 4:
                    revert with 0, 'MUL_ERROR'
                if not 4 * 0 / ext_call.return_data[0] * _K_ / 10^18:
                    if _BASE_BALANCE_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _BASE_BALANCE_
                    if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                        if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                            revert with 0, 'SUB_ERROR'
                        if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                            revert with 0, 'MUL_ERROR'
                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                        t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                        while s < t:
                            require s
                            s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                            t = s
                            continue 
                    else:
                        if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                            revert with 0, 'ADD_ERROR'
                        if not (0 / _BASE_BALANCE_) + 10^18:
                            revert with 0, 'SUB_ERROR'
                        if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                            revert with 0, 'MUL_ERROR'
                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                        t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                        while s < t:
                            require s
                            s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                            t = s
                            continue 
                else:
                    if 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 != 10^18:
                        revert with 0, 'MUL_ERROR'
                    if _BASE_BALANCE_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _BASE_BALANCE_
                    if (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18) - (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_ * _BASE_BALANCE_):
                        if not (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001:
                            revert with 0, 'SUB_ERROR'
                        if (10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                            revert with 0, 'MUL_ERROR'
                        s = ((10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                        t = (10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                        while s < t:
                            require s
                            s = ((10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                            t = s
                            continue 
                    else:
                        if (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18 < 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_:
                            revert with 0, 'ADD_ERROR'
                        if not (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18:
                            revert with 0, 'SUB_ERROR'
                        if (10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18 != 10^18:
                            revert with 0, 'MUL_ERROR'
                        s = ((10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                        t = (10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                        while s < t:
                            require s
                            s = ((10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                            t = s
                            continue 
    else:
        if (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / _QUOTE_BALANCE_ - sub_245c9685 != 10^18:
            revert with 0, 'MUL_ERROR'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require ext_call.return_data[0]
        if not _K_:
            if _BASE_BALANCE_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _BASE_BALANCE_
            if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                    revert with 0, 'SUB_ERROR'
                if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                    revert with 0, 'MUL_ERROR'
                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                while s < t:
                    require s
                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                    t = s
                    continue 
            else:
                if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                    revert with 0, 'ADD_ERROR'
                if not (0 / _BASE_BALANCE_) + 10^18:
                    revert with 0, 'SUB_ERROR'
                if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                    revert with 0, 'MUL_ERROR'
                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                while s < t:
                    require s
                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                    t = s
                    continue 
        else:
            if (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / _K_ != (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0]:
                revert with 0, 'MUL_ERROR'
            if not (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18:
                if _BASE_BALANCE_ <= 0:
                    revert with 0, 'DIVIDING_ERROR'
                require _BASE_BALANCE_
                if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                    if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                        revert with 0, 'SUB_ERROR'
                    if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                        revert with 0, 'MUL_ERROR'
                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                    t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                    while s < t:
                        require s
                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                        t = s
                        continue 
                else:
                    if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                        revert with 0, 'ADD_ERROR'
                    if not (0 / _BASE_BALANCE_) + 10^18:
                        revert with 0, 'SUB_ERROR'
                    if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                        revert with 0, 'MUL_ERROR'
                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                    t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                    while s < t:
                        require s
                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                        t = s
                        continue 
            else:
                if 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 != 4:
                    revert with 0, 'MUL_ERROR'
                if not 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18:
                    if _BASE_BALANCE_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _BASE_BALANCE_
                    if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                        if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                            revert with 0, 'SUB_ERROR'
                        if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                            revert with 0, 'MUL_ERROR'
                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                        t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                        while s < t:
                            require s
                            s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                            t = s
                            continue 
                    else:
                        if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                            revert with 0, 'ADD_ERROR'
                        if not (0 / _BASE_BALANCE_) + 10^18:
                            revert with 0, 'SUB_ERROR'
                        if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                            revert with 0, 'MUL_ERROR'
                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                        t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                        while s < t:
                            require s
                            s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                            t = s
                            continue 
                else:
                    if 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 != 10^18:
                        revert with 0, 'MUL_ERROR'
                    if _BASE_BALANCE_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    require _BASE_BALANCE_
                    if (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18) - (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_ * _BASE_BALANCE_):
                        if not (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001:
                            revert with 0, 'SUB_ERROR'
                        if (10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                            revert with 0, 'MUL_ERROR'
                        s = ((10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                        t = (10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                        while s < t:
                            require s
                            s = ((10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                            t = s
                            continue 
                    else:
                        if (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18 < 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_:
                            revert with 0, 'ADD_ERROR'
                        if not (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18:
                            revert with 0, 'SUB_ERROR'
                        if (10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18 != 10^18:
                            revert with 0, 'MUL_ERROR'
                        s = ((10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                        t = (10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                        while s < t:
                            require s
                            s = ((10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                            t = s
                            continue 
    if 10^18 > t:
        revert with 0, 'SUB_ERROR'
    if not _K_:
        if t - 10^18:
            if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                revert with 0, 'MUL_ERROR'
        revert with 0, 'DIVIDING_ERROR'
    if 2 * _K_ / _K_ != 2:
        revert with 0, 'MUL_ERROR'
    if not t - 10^18:
        if 2 * _K_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require 2 * _K_
        if not -1 * 0 / 2 * _K_ * 2 * _K_:
            if (0 / 2 * _K_) + 10^18 < 10^18:
                revert with 0, 'ADD_ERROR'
            if not _BASE_BALANCE_:
                if _BASE_BALANCE_ > 0:
                    revert with 0, 'SUB_ERROR'
                if 0 < _BASE_BALANCE_:
                    revert with 0, 'ADD_ERROR'
                return 0, sub_245c9685
            if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                revert with 0, 'MUL_ERROR'
            if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                revert with 0, 'SUB_ERROR'
            if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                revert with 0, 'ADD_ERROR'
            return (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18, sub_245c9685
        if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
            revert with 0, 'ADD_ERROR'
        if not _BASE_BALANCE_:
            if _BASE_BALANCE_ > 0:
                revert with 0, 'SUB_ERROR'
            if 0 < _BASE_BALANCE_:
                revert with 0, 'ADD_ERROR'
            return 0, sub_245c9685
        if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
            revert with 0, 'MUL_ERROR'
        if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
            revert with 0, 'SUB_ERROR'
        if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
            revert with 0, 'ADD_ERROR'
        return (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18, sub_245c9685
    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
        revert with 0, 'MUL_ERROR'
    if 2 * _K_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require 2 * _K_
    if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
            revert with 0, 'ADD_ERROR'
        if not _BASE_BALANCE_:
            if _BASE_BALANCE_ > 0:
                revert with 0, 'SUB_ERROR'
            if 0 < _BASE_BALANCE_:
                revert with 0, 'ADD_ERROR'
            return 0, sub_245c9685
        if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
            revert with 0, 'MUL_ERROR'
        if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
            revert with 0, 'SUB_ERROR'
        if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
            revert with 0, 'ADD_ERROR'
        return (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18, sub_245c9685
    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
        revert with 0, 'ADD_ERROR'
    if not _BASE_BALANCE_:
        if _BASE_BALANCE_ > 0:
            revert with 0, 'SUB_ERROR'
        if 0 < _BASE_BALANCE_:
            revert with 0, 'ADD_ERROR'
        return 0, sub_245c9685
    if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
        revert with 0, 'MUL_ERROR'
    if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
        revert with 0, 'SUB_ERROR'
    if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
        revert with 0, 'ADD_ERROR'
    return (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18, 
           sub_245c9685
}

function getLpQuoteBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require _R_STATUS_ <= 2
    if not _R_STATUS_:
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'DIVIDING_ERROR'
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                revert with 0, 'MUL_ERROR'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'DIVIDING_ERROR'
            if ext_call.return_data[0]:
                return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
        ('iszero', ('ext_call.return_data', 0, 32))
    else:
        if _R_STATUS_ <= 2:
            if _R_STATUS_ == 2:
                if sub_b2094fd3 > _BASE_BALANCE_:
                    revert with 0, 'SUB_ERROR'
                require ext_code.size(sub_73a2ab7cAddress)
                staticcall sub_73a2ab7cAddress.getPrice() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not _BASE_BALANCE_ - sub_b2094fd3:
                    if _K_:
                        if 0 / _K_:
                            revert with 0, 'MUL_ERROR'
                    if _QUOTE_BALANCE_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    if _QUOTE_BALANCE_:
                        if -1 * 0 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_:
                            if not (0 / _QUOTE_BALANCE_) + 1000000000000000001:
                                revert with 0, 'SUB_ERROR'
                            if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                                revert with 0, 'MUL_ERROR'
                            s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                            t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                            while s < t:
                                require s
                                s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                t = s
                                continue 
                        else:
                            if (0 / _QUOTE_BALANCE_) + 10^18 < 0 / _QUOTE_BALANCE_:
                                revert with 0, 'ADD_ERROR'
                            if not (0 / _QUOTE_BALANCE_) + 10^18:
                                revert with 0, 'SUB_ERROR'
                            if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                                revert with 0, 'MUL_ERROR'
                            s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                            t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                            while s < t:
                                require s
                                s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                t = s
                                continue 
                        if 10^18 > t:
                            revert with 0, 'SUB_ERROR'
                        if not _K_:
                            if t - 10^18:
                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                    revert with 0, 'MUL_ERROR'
                            revert with 0, 'DIVIDING_ERROR'
                        if 2 * _K_ / _K_ != 2:
                            revert with 0, 'MUL_ERROR'
                        if not t - 10^18:
                            if 2 * _K_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            if 2 * _K_:
                                if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                    if (0 / 2 * _K_) + 10^18 < 10^18:
                                        revert with 0, 'ADD_ERROR'
                                    if not _QUOTE_BALANCE_:
                                        if _QUOTE_BALANCE_ > 0:
                                            revert with 0, 'SUB_ERROR'
                                        if 0 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                        if not ext_call.return_data[0]:
                                            return 0
                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            if 0 / ext_call.return_data[0]:
                                                revert with 0, 'MUL_ERROR'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if ext_call.return_data[0]:
                                            return (0 / ext_call.return_data[0])
                                    else:
                                        if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                        if not ext_call.return_data[0]:
                                            return 0
                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return (0 / ext_call.return_data[0])
                                        else:
                                            if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return ((10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                else:
                                    if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                        revert with 0, 'ADD_ERROR'
                                    if not _QUOTE_BALANCE_:
                                        if _QUOTE_BALANCE_ > 0:
                                            revert with 0, 'SUB_ERROR'
                                        if 0 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                        if not ext_call.return_data[0]:
                                            return 0
                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            if 0 / ext_call.return_data[0]:
                                                revert with 0, 'MUL_ERROR'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if ext_call.return_data[0]:
                                            return (0 / ext_call.return_data[0])
                                    else:
                                        if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                            revert with 0, 'MUL_ERROR'
                                        if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                        if not ext_call.return_data[0]:
                                            return 0
                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return (0 / ext_call.return_data[0])
                                        else:
                                            if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return ((1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                revert with 0, 'MUL_ERROR'
                            if 2 * _K_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            if 2 * _K_:
                                if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                        revert with 0, 'ADD_ERROR'
                                    if not _QUOTE_BALANCE_:
                                        if _QUOTE_BALANCE_ > 0:
                                            revert with 0, 'SUB_ERROR'
                                        if 0 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                        if not ext_call.return_data[0]:
                                            return 0
                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            if 0 / ext_call.return_data[0]:
                                                revert with 0, 'MUL_ERROR'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if ext_call.return_data[0]:
                                            return (0 / ext_call.return_data[0])
                                    else:
                                        if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                        if not ext_call.return_data[0]:
                                            return 0
                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return (0 / ext_call.return_data[0])
                                        else:
                                            if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return ((10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                else:
                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                        revert with 0, 'ADD_ERROR'
                                    if not _QUOTE_BALANCE_:
                                        if _QUOTE_BALANCE_ > 0:
                                            revert with 0, 'SUB_ERROR'
                                        if 0 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                        if not ext_call.return_data[0]:
                                            return 0
                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            if 0 / ext_call.return_data[0]:
                                                revert with 0, 'MUL_ERROR'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if ext_call.return_data[0]:
                                            return (0 / ext_call.return_data[0])
                                    else:
                                        if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                            revert with 0, 'MUL_ERROR'
                                        if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                        if not ext_call.return_data[0]:
                                            return 0
                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return (0 / ext_call.return_data[0])
                                        else:
                                            if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return ((1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    if (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / _BASE_BALANCE_ - sub_b2094fd3 != ext_call.return_data[0]:
                        revert with 0, 'MUL_ERROR'
                    if not _K_:
                        if _QUOTE_BALANCE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        if _QUOTE_BALANCE_:
                            if -1 * 0 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_:
                                if not (0 / _QUOTE_BALANCE_) + 1000000000000000001:
                                    revert with 0, 'SUB_ERROR'
                                if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                                    revert with 0, 'MUL_ERROR'
                                s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                                while s < t:
                                    require s
                                    s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                    t = s
                                    continue 
                            else:
                                if (0 / _QUOTE_BALANCE_) + 10^18 < 0 / _QUOTE_BALANCE_:
                                    revert with 0, 'ADD_ERROR'
                                if not (0 / _QUOTE_BALANCE_) + 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                                    revert with 0, 'MUL_ERROR'
                                s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                                while s < t:
                                    require s
                                    s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                    t = s
                                    continue 
                            if 10^18 > t:
                                revert with 0, 'SUB_ERROR'
                            if not _K_:
                                if t - 10^18:
                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                revert with 0, 'DIVIDING_ERROR'
                            if 2 * _K_ / _K_ != 2:
                                revert with 0, 'MUL_ERROR'
                            if not t - 10^18:
                                if 2 * _K_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if 2 * _K_:
                                    if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                        if (0 / 2 * _K_) + 10^18 < 10^18:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_BALANCE_:
                                            if _QUOTE_BALANCE_ > 0:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                            if not ext_call.return_data[0]:
                                                return 0
                                            require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                            staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                if 0 / ext_call.return_data[0]:
                                                    revert with 0, 'MUL_ERROR'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return (0 / ext_call.return_data[0])
                                        else:
                                            if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                            if not ext_call.return_data[0]:
                                                return 0
                                            require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                            staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (0 / ext_call.return_data[0])
                                            else:
                                                if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return ((10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                    else:
                                        if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_BALANCE_:
                                            if _QUOTE_BALANCE_ > 0:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                            if not ext_call.return_data[0]:
                                                return 0
                                            require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                            staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                if 0 / ext_call.return_data[0]:
                                                    revert with 0, 'MUL_ERROR'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return (0 / ext_call.return_data[0])
                                        else:
                                            if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                revert with 0, 'MUL_ERROR'
                                            if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                            if not ext_call.return_data[0]:
                                                return 0
                                            require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                            staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (0 / ext_call.return_data[0])
                                            else:
                                                if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return ((1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                    ('iszero', ('ext_call.return_data', 0, 32))
                            else:
                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                    revert with 0, 'MUL_ERROR'
                                if 2 * _K_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if 2 * _K_:
                                    if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_BALANCE_:
                                            if _QUOTE_BALANCE_ > 0:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                            if not ext_call.return_data[0]:
                                                return 0
                                            require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                            staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                if 0 / ext_call.return_data[0]:
                                                    revert with 0, 'MUL_ERROR'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return (0 / ext_call.return_data[0])
                                        else:
                                            if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                            if not ext_call.return_data[0]:
                                                return 0
                                            require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                            staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (0 / ext_call.return_data[0])
                                            else:
                                                if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return ((10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                    else:
                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_BALANCE_:
                                            if _QUOTE_BALANCE_ > 0:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                            if not ext_call.return_data[0]:
                                                return 0
                                            require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                            staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                                if 0 / ext_call.return_data[0]:
                                                    revert with 0, 'MUL_ERROR'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return (0 / ext_call.return_data[0])
                                        else:
                                            if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                revert with 0, 'MUL_ERROR'
                                            if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                            if not ext_call.return_data[0]:
                                                return 0
                                            require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                            staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (0 / ext_call.return_data[0])
                                            else:
                                                if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return ((1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                    ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / _K_ != (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18:
                            revert with 0, 'MUL_ERROR'
                        if not (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18:
                            if _QUOTE_BALANCE_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            if _QUOTE_BALANCE_:
                                if -1 * 0 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_:
                                    if not (0 / _QUOTE_BALANCE_) + 1000000000000000001:
                                        revert with 0, 'SUB_ERROR'
                                    if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                    t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                                    while s < t:
                                        require s
                                        s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                        t = s
                                        continue 
                                else:
                                    if (0 / _QUOTE_BALANCE_) + 10^18 < 0 / _QUOTE_BALANCE_:
                                        revert with 0, 'ADD_ERROR'
                                    if not (0 / _QUOTE_BALANCE_) + 10^18:
                                        revert with 0, 'SUB_ERROR'
                                    if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                    t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                                    while s < t:
                                        require s
                                        s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                        t = s
                                        continue 
                                if 10^18 > t:
                                    revert with 0, 'SUB_ERROR'
                                if not _K_:
                                    if t - 10^18:
                                        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                    revert with 0, 'DIVIDING_ERROR'
                                if 2 * _K_ / _K_ != 2:
                                    revert with 0, 'MUL_ERROR'
                                if not t - 10^18:
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                            if (0 / 2 * _K_) + 10^18 < 10^18:
                                                revert with 0, 'ADD_ERROR'
                                            if not _QUOTE_BALANCE_:
                                                if _QUOTE_BALANCE_ > 0:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    if 0 / ext_call.return_data[0]:
                                                        revert with 0, 'MUL_ERROR'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (0 / ext_call.return_data[0])
                                            else:
                                                if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return ((10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                        else:
                                            if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                revert with 0, 'ADD_ERROR'
                                            if not _QUOTE_BALANCE_:
                                                if _QUOTE_BALANCE_ > 0:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    if 0 / ext_call.return_data[0]:
                                                        revert with 0, 'MUL_ERROR'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (0 / ext_call.return_data[0])
                                            else:
                                                if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return ((1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                        ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                revert with 0, 'ADD_ERROR'
                                            if not _QUOTE_BALANCE_:
                                                if _QUOTE_BALANCE_ > 0:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    if 0 / ext_call.return_data[0]:
                                                        revert with 0, 'MUL_ERROR'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (0 / ext_call.return_data[0])
                                            else:
                                                if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return ((10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                        else:
                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                revert with 0, 'ADD_ERROR'
                                            if not _QUOTE_BALANCE_:
                                                if _QUOTE_BALANCE_ > 0:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    if 0 / ext_call.return_data[0]:
                                                        revert with 0, 'MUL_ERROR'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (0 / ext_call.return_data[0])
                                            else:
                                                if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return ((1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                        ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 != 4:
                                revert with 0, 'MUL_ERROR'
                            if not 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18:
                                if _QUOTE_BALANCE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if _QUOTE_BALANCE_:
                                    if -1 * 0 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_:
                                        if not (0 / _QUOTE_BALANCE_) + 1000000000000000001:
                                            revert with 0, 'SUB_ERROR'
                                        if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                        t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                                        while s < t:
                                            require s
                                            s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                            t = s
                                            continue 
                                    else:
                                        if (0 / _QUOTE_BALANCE_) + 10^18 < 0 / _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                        if not (0 / _QUOTE_BALANCE_) + 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                        t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                                        while s < t:
                                            require s
                                            s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                            t = s
                                            continue 
                                    if 10^18 > t:
                                        revert with 0, 'SUB_ERROR'
                                    if not _K_:
                                        if t - 10^18:
                                            if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_ / _K_ != 2:
                                        revert with 0, 'MUL_ERROR'
                                    if not t - 10^18:
                                        if 2 * _K_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if 2 * _K_:
                                            if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                if (0 / 2 * _K_) + 10^18 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        if 0 / ext_call.return_data[0]:
                                                            revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return ((10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                            else:
                                                if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        if 0 / ext_call.return_data[0]:
                                                            revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return ((1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if 2 * _K_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if 2 * _K_:
                                            if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        if 0 / ext_call.return_data[0]:
                                                            revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return ((10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                            else:
                                                if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        if 0 / ext_call.return_data[0]:
                                                            revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return ((1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                            ('iszero', ('ext_call.return_data', 0, 32))
                            else:
                                if 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 != 10^18:
                                    revert with 0, 'MUL_ERROR'
                                if _QUOTE_BALANCE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if _QUOTE_BALANCE_:
                                    if (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18) - (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_):
                                        if not (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001:
                                            revert with 0, 'SUB_ERROR'
                                        if (10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        s = ((10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                        t = (10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                                        while s < t:
                                            require s
                                            s = ((10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                            t = s
                                            continue 
                                    else:
                                        if (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 10^18 < 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                        if not (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if (10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        s = ((10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                        t = (10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                                        while s < t:
                                            require s
                                            s = ((10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                            t = s
                                            continue 
                                    if 10^18 > t:
                                        revert with 0, 'SUB_ERROR'
                                    if not _K_:
                                        if t - 10^18:
                                            if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_ / _K_ != 2:
                                        revert with 0, 'MUL_ERROR'
                                    if not t - 10^18:
                                        if 2 * _K_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if 2 * _K_:
                                            if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                if (0 / 2 * _K_) + 10^18 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        if 0 / ext_call.return_data[0]:
                                                            revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return ((10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                            else:
                                                if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        if 0 / ext_call.return_data[0]:
                                                            revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return ((1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if 2 * _K_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if 2 * _K_:
                                            if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        if 0 / ext_call.return_data[0]:
                                                            revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return ((10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                            else:
                                                if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0]:
                                                        if 0 / ext_call.return_data[0]:
                                                            revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return ((1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                            ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if _R_STATUS_ <= 2:
                    if _R_STATUS_ != 1:
                        if not ext_call.return_data[0]:
                            return 0
                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0]:
                                revert with 0, 'MUL_ERROR'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        if ext_call.return_data[0]:
                            return (0 / ext_call.return_data[0])
                    else:
                        if sub_245c9685 > _QUOTE_BALANCE_:
                            revert with 0, 'SUB_ERROR'
                        require ext_code.size(sub_73a2ab7cAddress)
                        staticcall sub_73a2ab7cAddress.getPrice() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not _QUOTE_BALANCE_ - sub_245c9685:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            if ext_call.return_data[0]:
                                if not _K_:
                                    if _BASE_BALANCE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _BASE_BALANCE_:
                                        if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                                            if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                                                revert with 0, 'SUB_ERROR'
                                            if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                            t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                            while s < t:
                                                require s
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                t = s
                                                continue 
                                        else:
                                            if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                            if not (0 / _BASE_BALANCE_) + 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                            t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                            while s < t:
                                                require s
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                t = s
                                                continue 
                                        if 10^18 > t:
                                            revert with 0, 'SUB_ERROR'
                                        if not _K_:
                                            if t - 10^18:
                                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                            revert with 0, 'DIVIDING_ERROR'
                                        if 2 * _K_ / _K_ != 2:
                                            revert with 0, 'MUL_ERROR'
                                        if not t - 10^18:
                                            if 2 * _K_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if 2 * _K_:
                                                if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                    if (0 / 2 * _K_) + 10^18 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                    else:
                                                        if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                else:
                                                    if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                    else:
                                                        if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                        revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if 2 * _K_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if 2 * _K_:
                                                if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                    else:
                                                        if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                else:
                                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                    else:
                                                        if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                        revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if 0 / ext_call.return_data[0] * _K_ / _K_ != 0 / ext_call.return_data[0]:
                                        revert with 0, 'MUL_ERROR'
                                    if not 0 / ext_call.return_data[0] * _K_ / 10^18:
                                        if _BASE_BALANCE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _BASE_BALANCE_:
                                            if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                                                if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                                                    revert with 0, 'SUB_ERROR'
                                                if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                                t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                                while s < t:
                                                    require s
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                    t = s
                                                    continue 
                                            else:
                                                if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                                if not (0 / _BASE_BALANCE_) + 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                                while s < t:
                                                    require s
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                    t = s
                                                    continue 
                                            if 10^18 > t:
                                                revert with 0, 'SUB_ERROR'
                                            if not _K_:
                                                if t - 10^18:
                                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                revert with 0, 'DIVIDING_ERROR'
                                            if 2 * _K_ / _K_ != 2:
                                                revert with 0, 'MUL_ERROR'
                                            if not t - 10^18:
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                        if (0 / 2 * _K_) + 10^18 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                    else:
                                                        if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                            revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                    ('iszero', ('ext_call.return_data', 0, 32))
                                            else:
                                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                    else:
                                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                            revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                    ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / 0 / ext_call.return_data[0] * _K_ / 10^18 != 4:
                                            revert with 0, 'MUL_ERROR'
                                        if not 4 * 0 / ext_call.return_data[0] * _K_ / 10^18:
                                            if _BASE_BALANCE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if _BASE_BALANCE_:
                                                if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                                                    if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                                    t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                else:
                                                    if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not (0 / _BASE_BALANCE_) + 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                    t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                if 10^18 > t:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _K_:
                                                    if t - 10^18:
                                                        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_ / _K_ != 2:
                                                    revert with 0, 'MUL_ERROR'
                                                if not t - 10^18:
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                            if (0 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
                                                else:
                                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _BASE_BALANCE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if _BASE_BALANCE_:
                                                if (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18) - (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_ * _BASE_BALANCE_):
                                                    if not (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                                    t = (10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                else:
                                                    if (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18 < 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                    t = (10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                if 10^18 > t:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _K_:
                                                    if t - 10^18:
                                                        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_ / _K_ != 2:
                                                    revert with 0, 'MUL_ERROR'
                                                if not t - 10^18:
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                            if (0 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
                                                else:
                                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / _QUOTE_BALANCE_ - sub_245c9685 != 10^18:
                                revert with 0, 'MUL_ERROR'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            if ext_call.return_data[0]:
                                if not _K_:
                                    if _BASE_BALANCE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _BASE_BALANCE_:
                                        if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                                            if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                                                revert with 0, 'SUB_ERROR'
                                            if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                            t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                            while s < t:
                                                require s
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                t = s
                                                continue 
                                        else:
                                            if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                            if not (0 / _BASE_BALANCE_) + 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                            t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                            while s < t:
                                                require s
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                t = s
                                                continue 
                                        if 10^18 > t:
                                            revert with 0, 'SUB_ERROR'
                                        if not _K_:
                                            if t - 10^18:
                                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                            revert with 0, 'DIVIDING_ERROR'
                                        if 2 * _K_ / _K_ != 2:
                                            revert with 0, 'MUL_ERROR'
                                        if not t - 10^18:
                                            if 2 * _K_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if 2 * _K_:
                                                if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                    if (0 / 2 * _K_) + 10^18 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                    else:
                                                        if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                else:
                                                    if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                    else:
                                                        if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                        revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if 2 * _K_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if 2 * _K_:
                                                if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                    else:
                                                        if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                else:
                                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                    else:
                                                        if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                if not ext_call.return_data[0]:
                                                    return 0
                                                require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (0 / ext_call.return_data[0])
                                                else:
                                                    if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                        revert with 0, 'MUL_ERROR'
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if ext_call.return_data[0]:
                                                        return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / _K_ != (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0]:
                                        revert with 0, 'MUL_ERROR'
                                    if not (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18:
                                        if _BASE_BALANCE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _BASE_BALANCE_:
                                            if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                                                if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                                                    revert with 0, 'SUB_ERROR'
                                                if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                                t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                                while s < t:
                                                    require s
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                    t = s
                                                    continue 
                                            else:
                                                if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                                if not (0 / _BASE_BALANCE_) + 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                                while s < t:
                                                    require s
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                    t = s
                                                    continue 
                                            if 10^18 > t:
                                                revert with 0, 'SUB_ERROR'
                                            if not _K_:
                                                if t - 10^18:
                                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                revert with 0, 'DIVIDING_ERROR'
                                            if 2 * _K_ / _K_ != 2:
                                                revert with 0, 'MUL_ERROR'
                                            if not t - 10^18:
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                        if (0 / 2 * _K_) + 10^18 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                    else:
                                                        if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                            revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                    ('iszero', ('ext_call.return_data', 0, 32))
                                            else:
                                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                    else:
                                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                    staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args arg1
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                            revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                    ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 != 4:
                                            revert with 0, 'MUL_ERROR'
                                        if not 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18:
                                            if _BASE_BALANCE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if _BASE_BALANCE_:
                                                if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                                                    if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                                    t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                else:
                                                    if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not (0 / _BASE_BALANCE_) + 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                    t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                if 10^18 > t:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _K_:
                                                    if t - 10^18:
                                                        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_ / _K_ != 2:
                                                    revert with 0, 'MUL_ERROR'
                                                if not t - 10^18:
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                            if (0 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
                                                else:
                                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _BASE_BALANCE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if _BASE_BALANCE_:
                                                if (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18) - (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_ * _BASE_BALANCE_):
                                                    if not (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                                    t = (10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                else:
                                                    if (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18 < 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                    t = (10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                if 10^18 > t:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _K_:
                                                    if t - 10^18:
                                                        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_ / _K_ != 2:
                                                    revert with 0, 'MUL_ERROR'
                                                if not t - 10^18:
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                            if (0 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
                                                else:
                                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        else:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_QUOTE_CAPITAL_TOKEN_Address)
                                                        staticcall _QUOTE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0] != sub_245c9685:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (sub_245c9685 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function getLpBaseBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
    staticcall _BASE_CAPITAL_TOKEN_Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require _R_STATUS_ <= 2
    if not _R_STATUS_:
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'DIVIDING_ERROR'
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0] != sub_b2094fd3:
                revert with 0, 'MUL_ERROR'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'DIVIDING_ERROR'
            if ext_call.return_data[0]:
                return (sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0])
        ('iszero', ('ext_call.return_data', 0, 32))
    else:
        if _R_STATUS_ <= 2:
            if _R_STATUS_ == 2:
                if sub_b2094fd3 > _BASE_BALANCE_:
                    revert with 0, 'SUB_ERROR'
                require ext_code.size(sub_73a2ab7cAddress)
                staticcall sub_73a2ab7cAddress.getPrice() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not _BASE_BALANCE_ - sub_b2094fd3:
                    if _K_:
                        if 0 / _K_:
                            revert with 0, 'MUL_ERROR'
                    if _QUOTE_BALANCE_ <= 0:
                        revert with 0, 'DIVIDING_ERROR'
                    if _QUOTE_BALANCE_:
                        if -1 * 0 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_:
                            if not (0 / _QUOTE_BALANCE_) + 1000000000000000001:
                                revert with 0, 'SUB_ERROR'
                            if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                                revert with 0, 'MUL_ERROR'
                            s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                            t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                            while s < t:
                                require s
                                s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                t = s
                                continue 
                        else:
                            if (0 / _QUOTE_BALANCE_) + 10^18 < 0 / _QUOTE_BALANCE_:
                                revert with 0, 'ADD_ERROR'
                            if not (0 / _QUOTE_BALANCE_) + 10^18:
                                revert with 0, 'SUB_ERROR'
                            if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                                revert with 0, 'MUL_ERROR'
                            s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                            t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                            while s < t:
                                require s
                                s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                t = s
                                continue 
                        if 10^18 > t:
                            revert with 0, 'SUB_ERROR'
                        if not _K_:
                            if t - 10^18:
                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                    revert with 0, 'MUL_ERROR'
                            revert with 0, 'DIVIDING_ERROR'
                        if 2 * _K_ / _K_ != 2:
                            revert with 0, 'MUL_ERROR'
                        if not t - 10^18:
                            if 2 * _K_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            if 2 * _K_:
                                if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                    if (0 / 2 * _K_) + 10^18 < 10^18:
                                        revert with 0, 'ADD_ERROR'
                                    if not _QUOTE_BALANCE_:
                                        if _QUOTE_BALANCE_ > 0:
                                            revert with 0, 'SUB_ERROR'
                                        if 0 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                    else:
                                        if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                else:
                                    if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                        revert with 0, 'ADD_ERROR'
                                    if not _QUOTE_BALANCE_:
                                        if _QUOTE_BALANCE_ > 0:
                                            revert with 0, 'SUB_ERROR'
                                        if 0 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                    else:
                                        if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                            revert with 0, 'MUL_ERROR'
                                        if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                if not ext_call.return_data[0]:
                                    return 0
                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if ext_call.return_data[0]:
                                        return (0 / ext_call.return_data[0])
                                else:
                                    if sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0] != sub_b2094fd3:
                                        revert with 0, 'MUL_ERROR'
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if ext_call.return_data[0]:
                                        return (sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                revert with 0, 'MUL_ERROR'
                            if 2 * _K_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            if 2 * _K_:
                                if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                        revert with 0, 'ADD_ERROR'
                                    if not _QUOTE_BALANCE_:
                                        if _QUOTE_BALANCE_ > 0:
                                            revert with 0, 'SUB_ERROR'
                                        if 0 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                    else:
                                        if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                else:
                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                        revert with 0, 'ADD_ERROR'
                                    if not _QUOTE_BALANCE_:
                                        if _QUOTE_BALANCE_ > 0:
                                            revert with 0, 'SUB_ERROR'
                                        if 0 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                    else:
                                        if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                            revert with 0, 'MUL_ERROR'
                                        if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                if not ext_call.return_data[0]:
                                    return 0
                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if ext_call.return_data[0]:
                                        return (0 / ext_call.return_data[0])
                                else:
                                    if sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0] != sub_b2094fd3:
                                        revert with 0, 'MUL_ERROR'
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if ext_call.return_data[0]:
                                        return (sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0])
                                ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    if (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / _BASE_BALANCE_ - sub_b2094fd3 != ext_call.return_data[0]:
                        revert with 0, 'MUL_ERROR'
                    if not _K_:
                        if _QUOTE_BALANCE_ <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        if _QUOTE_BALANCE_:
                            if -1 * 0 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_:
                                if not (0 / _QUOTE_BALANCE_) + 1000000000000000001:
                                    revert with 0, 'SUB_ERROR'
                                if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                                    revert with 0, 'MUL_ERROR'
                                s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                                while s < t:
                                    require s
                                    s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                    t = s
                                    continue 
                            else:
                                if (0 / _QUOTE_BALANCE_) + 10^18 < 0 / _QUOTE_BALANCE_:
                                    revert with 0, 'ADD_ERROR'
                                if not (0 / _QUOTE_BALANCE_) + 10^18:
                                    revert with 0, 'SUB_ERROR'
                                if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                                    revert with 0, 'MUL_ERROR'
                                s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                                while s < t:
                                    require s
                                    s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                    t = s
                                    continue 
                            if 10^18 > t:
                                revert with 0, 'SUB_ERROR'
                            if not _K_:
                                if t - 10^18:
                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                revert with 0, 'DIVIDING_ERROR'
                            if 2 * _K_ / _K_ != 2:
                                revert with 0, 'MUL_ERROR'
                            if not t - 10^18:
                                if 2 * _K_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if 2 * _K_:
                                    if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                        if (0 / 2 * _K_) + 10^18 < 10^18:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_BALANCE_:
                                            if _QUOTE_BALANCE_ > 0:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                        else:
                                            if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                    else:
                                        if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_BALANCE_:
                                            if _QUOTE_BALANCE_ > 0:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                        else:
                                            if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                revert with 0, 'MUL_ERROR'
                                            if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                    if not ext_call.return_data[0]:
                                        return 0
                                    require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                    staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if ext_call.return_data[0]:
                                            return (0 / ext_call.return_data[0])
                                    else:
                                        if sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0] != sub_b2094fd3:
                                            revert with 0, 'MUL_ERROR'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if ext_call.return_data[0]:
                                            return (sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0])
                                    ('iszero', ('ext_call.return_data', 0, 32))
                            else:
                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                    revert with 0, 'MUL_ERROR'
                                if 2 * _K_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if 2 * _K_:
                                    if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_BALANCE_:
                                            if _QUOTE_BALANCE_ > 0:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                        else:
                                            if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                    else:
                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                            revert with 0, 'ADD_ERROR'
                                        if not _QUOTE_BALANCE_:
                                            if _QUOTE_BALANCE_ > 0:
                                                revert with 0, 'SUB_ERROR'
                                            if 0 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                        else:
                                            if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                revert with 0, 'MUL_ERROR'
                                            if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                    if not ext_call.return_data[0]:
                                        return 0
                                    require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                    staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if ext_call.return_data[0]:
                                            return (0 / ext_call.return_data[0])
                                    else:
                                        if sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0] != sub_b2094fd3:
                                            revert with 0, 'MUL_ERROR'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if ext_call.return_data[0]:
                                            return (sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0])
                                    ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / _K_ != (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18:
                            revert with 0, 'MUL_ERROR'
                        if not (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18:
                            if _QUOTE_BALANCE_ <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            if _QUOTE_BALANCE_:
                                if -1 * 0 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_:
                                    if not (0 / _QUOTE_BALANCE_) + 1000000000000000001:
                                        revert with 0, 'SUB_ERROR'
                                    if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                    t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                                    while s < t:
                                        require s
                                        s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                        t = s
                                        continue 
                                else:
                                    if (0 / _QUOTE_BALANCE_) + 10^18 < 0 / _QUOTE_BALANCE_:
                                        revert with 0, 'ADD_ERROR'
                                    if not (0 / _QUOTE_BALANCE_) + 10^18:
                                        revert with 0, 'SUB_ERROR'
                                    if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                    t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                                    while s < t:
                                        require s
                                        s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                        t = s
                                        continue 
                                if 10^18 > t:
                                    revert with 0, 'SUB_ERROR'
                                if not _K_:
                                    if t - 10^18:
                                        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                    revert with 0, 'DIVIDING_ERROR'
                                if 2 * _K_ / _K_ != 2:
                                    revert with 0, 'MUL_ERROR'
                                if not t - 10^18:
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                            if (0 / 2 * _K_) + 10^18 < 10^18:
                                                revert with 0, 'ADD_ERROR'
                                            if not _QUOTE_BALANCE_:
                                                if _QUOTE_BALANCE_ > 0:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                            else:
                                                if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                        else:
                                            if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                revert with 0, 'ADD_ERROR'
                                            if not _QUOTE_BALANCE_:
                                                if _QUOTE_BALANCE_ > 0:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                            else:
                                                if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                        if not ext_call.return_data[0]:
                                            return 0
                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return (0 / ext_call.return_data[0])
                                        else:
                                            if sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0] != sub_b2094fd3:
                                                revert with 0, 'MUL_ERROR'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return (sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0])
                                        ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                        revert with 0, 'MUL_ERROR'
                                    if 2 * _K_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_:
                                        if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                revert with 0, 'ADD_ERROR'
                                            if not _QUOTE_BALANCE_:
                                                if _QUOTE_BALANCE_ > 0:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                            else:
                                                if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                        else:
                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                revert with 0, 'ADD_ERROR'
                                            if not _QUOTE_BALANCE_:
                                                if _QUOTE_BALANCE_ > 0:
                                                    revert with 0, 'SUB_ERROR'
                                                if 0 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                            else:
                                                if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                    revert with 0, 'MUL_ERROR'
                                                if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                        if not ext_call.return_data[0]:
                                            return 0
                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return (0 / ext_call.return_data[0])
                                        else:
                                            if sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0] != sub_b2094fd3:
                                                revert with 0, 'MUL_ERROR'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if ext_call.return_data[0]:
                                                return (sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0])
                                        ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 != 4:
                                revert with 0, 'MUL_ERROR'
                            if not 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18:
                                if _QUOTE_BALANCE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if _QUOTE_BALANCE_:
                                    if -1 * 0 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_:
                                        if not (0 / _QUOTE_BALANCE_) + 1000000000000000001:
                                            revert with 0, 'SUB_ERROR'
                                        if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                        t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                                        while s < t:
                                            require s
                                            s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                            t = s
                                            continue 
                                    else:
                                        if (0 / _QUOTE_BALANCE_) + 10^18 < 0 / _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                        if not (0 / _QUOTE_BALANCE_) + 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                        t = (10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                                        while s < t:
                                            require s
                                            s = ((10^18 * 0 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                            t = s
                                            continue 
                                    if 10^18 > t:
                                        revert with 0, 'SUB_ERROR'
                                    if not _K_:
                                        if t - 10^18:
                                            if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_ / _K_ != 2:
                                        revert with 0, 'MUL_ERROR'
                                    if not t - 10^18:
                                        if 2 * _K_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if 2 * _K_:
                                            if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                if (0 / 2 * _K_) + 10^18 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                else:
                                                    if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                            else:
                                                if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                else:
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                            if not ext_call.return_data[0]:
                                                return 0
                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (0 / ext_call.return_data[0])
                                            else:
                                                if sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0] != sub_b2094fd3:
                                                    revert with 0, 'MUL_ERROR'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0])
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if 2 * _K_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if 2 * _K_:
                                            if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                else:
                                                    if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                            else:
                                                if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                else:
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                            if not ext_call.return_data[0]:
                                                return 0
                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (0 / ext_call.return_data[0])
                                            else:
                                                if sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0] != sub_b2094fd3:
                                                    revert with 0, 'MUL_ERROR'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0])
                                            ('iszero', ('ext_call.return_data', 0, 32))
                            else:
                                if 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 != 10^18:
                                    revert with 0, 'MUL_ERROR'
                                if _QUOTE_BALANCE_ <= 0:
                                    revert with 0, 'DIVIDING_ERROR'
                                if _QUOTE_BALANCE_:
                                    if (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18) - (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_ * _QUOTE_BALANCE_):
                                        if not (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001:
                                            revert with 0, 'SUB_ERROR'
                                        if (10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        s = ((10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                        t = (10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18
                                        while s < t:
                                            require s
                                            s = ((10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                            t = s
                                            continue 
                                    else:
                                        if (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 10^18 < 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_:
                                            revert with 0, 'ADD_ERROR'
                                        if not (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 10^18:
                                            revert with 0, 'SUB_ERROR'
                                        if (10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / (10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 10^18 != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        s = ((10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                        t = (10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18
                                        while s < t:
                                            require s
                                            s = ((10^18 * 10^18 * 4 * (_BASE_BALANCE_ * ext_call.return_data[0]) - (sub_b2094fd3 * ext_call.return_data[0]) / 10^18 * _K_ / 10^18 / _QUOTE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                            t = s
                                            continue 
                                    if 10^18 > t:
                                        revert with 0, 'SUB_ERROR'
                                    if not _K_:
                                        if t - 10^18:
                                            if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                        revert with 0, 'DIVIDING_ERROR'
                                    if 2 * _K_ / _K_ != 2:
                                        revert with 0, 'MUL_ERROR'
                                    if not t - 10^18:
                                        if 2 * _K_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if 2 * _K_:
                                            if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                if (0 / 2 * _K_) + 10^18 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                else:
                                                    if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                            else:
                                                if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                else:
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + (0 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                            if not ext_call.return_data[0]:
                                                return 0
                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (0 / ext_call.return_data[0])
                                            else:
                                                if sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0] != sub_b2094fd3:
                                                    revert with 0, 'MUL_ERROR'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0])
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                            revert with 0, 'MUL_ERROR'
                                        if 2 * _K_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if 2 * _K_:
                                            if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                else:
                                                    if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                            else:
                                                if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                    revert with 0, 'ADD_ERROR'
                                                if not _QUOTE_BALANCE_:
                                                    if _QUOTE_BALANCE_ > 0:
                                                        revert with 0, 'SUB_ERROR'
                                                    if 0 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                else:
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / _QUOTE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                        revert with 0, 'MUL_ERROR'
                                                    if _QUOTE_BALANCE_ > (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (1000000000000000001 * _QUOTE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _QUOTE_BALANCE_) / 10^18 < _QUOTE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                            if not ext_call.return_data[0]:
                                                return 0
                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args arg1
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (0 / ext_call.return_data[0])
                                            else:
                                                if sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0] != sub_b2094fd3:
                                                    revert with 0, 'MUL_ERROR'
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if ext_call.return_data[0]:
                                                    return (sub_b2094fd3 * ext_call.return_data[0] / ext_call.return_data[0])
                                            ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if _R_STATUS_ <= 2:
                    if _R_STATUS_ != 1:
                        if not ext_call.return_data[0]:
                            return 0
                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 0 / ext_call.return_data[0]:
                                revert with 0, 'MUL_ERROR'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'DIVIDING_ERROR'
                        if ext_call.return_data[0]:
                            return (0 / ext_call.return_data[0])
                    else:
                        if sub_245c9685 > _QUOTE_BALANCE_:
                            revert with 0, 'SUB_ERROR'
                        require ext_code.size(sub_73a2ab7cAddress)
                        staticcall sub_73a2ab7cAddress.getPrice() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not _QUOTE_BALANCE_ - sub_245c9685:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            if ext_call.return_data[0]:
                                if not _K_:
                                    if _BASE_BALANCE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _BASE_BALANCE_:
                                        if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                                            if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                                                revert with 0, 'SUB_ERROR'
                                            if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                            t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                            while s < t:
                                                require s
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                t = s
                                                continue 
                                        else:
                                            if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                            if not (0 / _BASE_BALANCE_) + 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                            t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                            while s < t:
                                                require s
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                t = s
                                                continue 
                                        if 10^18 > t:
                                            revert with 0, 'SUB_ERROR'
                                        if not _K_:
                                            if t - 10^18:
                                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                            revert with 0, 'DIVIDING_ERROR'
                                        if 2 * _K_ / _K_ != 2:
                                            revert with 0, 'MUL_ERROR'
                                        if not t - 10^18:
                                            if 2 * _K_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if 2 * _K_:
                                                if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                    if (0 / 2 * _K_) + 10^18 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0]:
                                                            if 0 / ext_call.return_data[0]:
                                                                revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return ((10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                else:
                                                    if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0]:
                                                            if 0 / ext_call.return_data[0]:
                                                                revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return ((1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if 2 * _K_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if 2 * _K_:
                                                if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0]:
                                                            if 0 / ext_call.return_data[0]:
                                                                revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return ((10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                else:
                                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0]:
                                                            if 0 / ext_call.return_data[0]:
                                                                revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return ((1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if 0 / ext_call.return_data[0] * _K_ / _K_ != 0 / ext_call.return_data[0]:
                                        revert with 0, 'MUL_ERROR'
                                    if not 0 / ext_call.return_data[0] * _K_ / 10^18:
                                        if _BASE_BALANCE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _BASE_BALANCE_:
                                            if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                                                if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                                                    revert with 0, 'SUB_ERROR'
                                                if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                                t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                                while s < t:
                                                    require s
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                    t = s
                                                    continue 
                                            else:
                                                if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                                if not (0 / _BASE_BALANCE_) + 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                                while s < t:
                                                    require s
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                    t = s
                                                    continue 
                                            if 10^18 > t:
                                                revert with 0, 'SUB_ERROR'
                                            if not _K_:
                                                if t - 10^18:
                                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                revert with 0, 'DIVIDING_ERROR'
                                            if 2 * _K_ / _K_ != 2:
                                                revert with 0, 'MUL_ERROR'
                                            if not t - 10^18:
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                        if (0 / 2 * _K_) + 10^18 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0]:
                                                                    revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return ((10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                    else:
                                                        if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0]:
                                                                    revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return ((1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                    ('iszero', ('ext_call.return_data', 0, 32))
                                            else:
                                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0]:
                                                                    revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return ((10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                    else:
                                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0]:
                                                                    revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return ((1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                    ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / 0 / ext_call.return_data[0] * _K_ / 10^18 != 4:
                                            revert with 0, 'MUL_ERROR'
                                        if not 4 * 0 / ext_call.return_data[0] * _K_ / 10^18:
                                            if _BASE_BALANCE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if _BASE_BALANCE_:
                                                if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                                                    if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                                    t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                else:
                                                    if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not (0 / _BASE_BALANCE_) + 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                    t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                if 10^18 > t:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _K_:
                                                    if t - 10^18:
                                                        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_ / _K_ != 2:
                                                    revert with 0, 'MUL_ERROR'
                                                if not t - 10^18:
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                            if (0 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        else:
                                                            if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
                                                else:
                                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        else:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _BASE_BALANCE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if _BASE_BALANCE_:
                                                if (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18) - (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_ * _BASE_BALANCE_):
                                                    if not (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                                    t = (10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                else:
                                                    if (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18 < 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                    t = (10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 10^18 * 4 * 0 / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                if 10^18 > t:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _K_:
                                                    if t - 10^18:
                                                        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_ / _K_ != 2:
                                                    revert with 0, 'MUL_ERROR'
                                                if not t - 10^18:
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                            if (0 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        else:
                                                            if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
                                                else:
                                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        else:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / _QUOTE_BALANCE_ - sub_245c9685 != 10^18:
                                revert with 0, 'MUL_ERROR'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'DIVIDING_ERROR'
                            if ext_call.return_data[0]:
                                if not _K_:
                                    if _BASE_BALANCE_ <= 0:
                                        revert with 0, 'DIVIDING_ERROR'
                                    if _BASE_BALANCE_:
                                        if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                                            if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                                                revert with 0, 'SUB_ERROR'
                                            if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                            t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                            while s < t:
                                                require s
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                t = s
                                                continue 
                                        else:
                                            if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                                                revert with 0, 'ADD_ERROR'
                                            if not (0 / _BASE_BALANCE_) + 10^18:
                                                revert with 0, 'SUB_ERROR'
                                            if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                            t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                            while s < t:
                                                require s
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                t = s
                                                continue 
                                        if 10^18 > t:
                                            revert with 0, 'SUB_ERROR'
                                        if not _K_:
                                            if t - 10^18:
                                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                            revert with 0, 'DIVIDING_ERROR'
                                        if 2 * _K_ / _K_ != 2:
                                            revert with 0, 'MUL_ERROR'
                                        if not t - 10^18:
                                            if 2 * _K_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if 2 * _K_:
                                                if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                    if (0 / 2 * _K_) + 10^18 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0]:
                                                            if 0 / ext_call.return_data[0]:
                                                                revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return ((10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                else:
                                                    if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0]:
                                                            if 0 / ext_call.return_data[0]:
                                                                revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return ((1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if 2 * _K_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if 2 * _K_:
                                                if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0]:
                                                            if 0 / ext_call.return_data[0]:
                                                                revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return ((10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                else:
                                                    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not _BASE_BALANCE_:
                                                        if _BASE_BALANCE_ > 0:
                                                            revert with 0, 'SUB_ERROR'
                                                        if 0 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0]:
                                                            if 0 / ext_call.return_data[0]:
                                                                revert with 0, 'MUL_ERROR'
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'DIVIDING_ERROR'
                                                        if ext_call.return_data[0]:
                                                            return (0 / ext_call.return_data[0])
                                                    else:
                                                        if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                            revert with 0, 'MUL_ERROR'
                                                        if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                            revert with 0, 'SUB_ERROR'
                                                        if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                        staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args arg1
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return ((1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / _K_ != (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0]:
                                        revert with 0, 'MUL_ERROR'
                                    if not (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18:
                                        if _BASE_BALANCE_ <= 0:
                                            revert with 0, 'DIVIDING_ERROR'
                                        if _BASE_BALANCE_:
                                            if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                                                if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                                                    revert with 0, 'SUB_ERROR'
                                                if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                                t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                                while s < t:
                                                    require s
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                    t = s
                                                    continue 
                                            else:
                                                if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                                                    revert with 0, 'ADD_ERROR'
                                                if not (0 / _BASE_BALANCE_) + 10^18:
                                                    revert with 0, 'SUB_ERROR'
                                                if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                                while s < t:
                                                    require s
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                    t = s
                                                    continue 
                                            if 10^18 > t:
                                                revert with 0, 'SUB_ERROR'
                                            if not _K_:
                                                if t - 10^18:
                                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                revert with 0, 'DIVIDING_ERROR'
                                            if 2 * _K_ / _K_ != 2:
                                                revert with 0, 'MUL_ERROR'
                                            if not t - 10^18:
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                        if (0 / 2 * _K_) + 10^18 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0]:
                                                                    revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return ((10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                    else:
                                                        if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0]:
                                                                    revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return ((1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                    ('iszero', ('ext_call.return_data', 0, 32))
                                            else:
                                                if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                    revert with 0, 'MUL_ERROR'
                                                if 2 * _K_ <= 0:
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_:
                                                    if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0]:
                                                                    revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return ((10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                    else:
                                                        if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                            revert with 0, 'ADD_ERROR'
                                                        if not _BASE_BALANCE_:
                                                            if _BASE_BALANCE_ > 0:
                                                                revert with 0, 'SUB_ERROR'
                                                            if 0 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0]:
                                                                if 0 / ext_call.return_data[0]:
                                                                    revert with 0, 'MUL_ERROR'
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'DIVIDING_ERROR'
                                                            if ext_call.return_data[0]:
                                                                return (0 / ext_call.return_data[0])
                                                        else:
                                                            if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                                revert with 0, 'MUL_ERROR'
                                                            if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                revert with 0, 'SUB_ERROR'
                                                            if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not ext_call.return_data[0]:
                                                                return 0
                                                            require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                            staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args arg1
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return ((1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                    ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 != 4:
                                            revert with 0, 'MUL_ERROR'
                                        if not 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18:
                                            if _BASE_BALANCE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if _BASE_BALANCE_:
                                                if -1 * 0 / _BASE_BALANCE_ * _BASE_BALANCE_:
                                                    if not (0 / _BASE_BALANCE_) + 1000000000000000001:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (0 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                                    t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                else:
                                                    if (0 / _BASE_BALANCE_) + 10^18 < 0 / _BASE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not (0 / _BASE_BALANCE_) + 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (0 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                    t = (10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 0 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                if 10^18 > t:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _K_:
                                                    if t - 10^18:
                                                        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_ / _K_ != 2:
                                                    revert with 0, 'MUL_ERROR'
                                                if not t - 10^18:
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                            if (0 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        else:
                                                            if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
                                                else:
                                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        else:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 != 10^18:
                                                revert with 0, 'MUL_ERROR'
                                            if _BASE_BALANCE_ <= 0:
                                                revert with 0, 'DIVIDING_ERROR'
                                            if _BASE_BALANCE_:
                                                if (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18) - (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_ * _BASE_BALANCE_):
                                                    if not (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / 2) + 1
                                                    t = (10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000001 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                else:
                                                    if (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18 < 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_:
                                                        revert with 0, 'ADD_ERROR'
                                                    if not (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18:
                                                        revert with 0, 'SUB_ERROR'
                                                    if (10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / (10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    s = ((10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / 2) + 1
                                                    t = (10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18
                                                    while s < t:
                                                        require s
                                                        s = ((10^18 * 10^18 * 4 * (10^18 * _QUOTE_BALANCE_) - (10^18 * sub_245c9685) / ext_call.return_data[0] * _K_ / 10^18 / _BASE_BALANCE_) + 1000000000000000000 * 10^18 / s) + s / 2
                                                        t = s
                                                        continue 
                                                if 10^18 > t:
                                                    revert with 0, 'SUB_ERROR'
                                                if not _K_:
                                                    if t - 10^18:
                                                        if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                            revert with 0, 'MUL_ERROR'
                                                    revert with 0, 'DIVIDING_ERROR'
                                                if 2 * _K_ / _K_ != 2:
                                                    revert with 0, 'MUL_ERROR'
                                                if not t - 10^18:
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not -1 * 0 / 2 * _K_ * 2 * _K_:
                                                            if (0 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((10^18 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        else:
                                                            if (0 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != (0 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((1000000000000000001 * _BASE_BALANCE_) + (0 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
                                                else:
                                                    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
                                                        revert with 0, 'MUL_ERROR'
                                                    if 2 * _K_ <= 0:
                                                        revert with 0, 'DIVIDING_ERROR'
                                                    if 2 * _K_:
                                                        if not (10^18 * t) + (-1 * (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * 2 * _K_) - 1000000000000000000 * 10^18:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((10^18 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        else:
                                                            if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001 < 10^18:
                                                                revert with 0, 'ADD_ERROR'
                                                            if not _BASE_BALANCE_:
                                                                if _BASE_BALANCE_ > 0:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if 0 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0]:
                                                                    if 0 / ext_call.return_data[0]:
                                                                        revert with 0, 'MUL_ERROR'
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'DIVIDING_ERROR'
                                                                if ext_call.return_data[0]:
                                                                    return (0 / ext_call.return_data[0])
                                                            else:
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / _BASE_BALANCE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 1000000000000000001:
                                                                    revert with 0, 'MUL_ERROR'
                                                                if _BASE_BALANCE_ > (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                    revert with 0, 'SUB_ERROR'
                                                                if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 < _BASE_BALANCE_:
                                                                    revert with 0, 'ADD_ERROR'
                                                                if not ext_call.return_data[0]:
                                                                    return 0
                                                                require ext_code.size(_BASE_CAPITAL_TOKEN_Address)
                                                                staticcall _BASE_CAPITAL_TOKEN_Address.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                if not ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return (0 / ext_call.return_data[0])
                                                                else:
                                                                    if (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18:
                                                                        revert with 0, 'MUL_ERROR'
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'DIVIDING_ERROR'
                                                                    if ext_call.return_data[0]:
                                                                        return ((1000000000000000001 * _BASE_BALANCE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_BALANCE_) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
                                                        ('iszero', ('ext_call.return_data', 0, 32))
    revert
}



}
