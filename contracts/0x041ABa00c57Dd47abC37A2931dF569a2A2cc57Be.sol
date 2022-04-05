contract main {




// =====================  Runtime code  =====================


#
#  - settle()
#  - getSettleResult()
#  - getExpectedAvgPrice()
#  - bidderClaim(address arg1, bytes arg2)
#  - cancel(address arg1, uint256 arg2, bytes arg3)
#
uint32 stor0;
address _OWNER_;
uint256 stor0;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint8 stor1; offset 176
uint128 stor1; offset 176
address _NEW_OWNER_;
uint256 _PHASE_BID_STARTTIME_;
uint256 _PHASE_BID_ENDTIME_;
uint256 _PHASE_CALM_ENDTIME_;
uint256 _SETTLED_TIME_;
uint8 stor6;
address _BASE_TOKEN_Address; offset 8
address _QUOTE_TOKEN_Address;
uint256 _TOTAL_BASE_;
uint256 _POOL_QUOTE_CAP_;
uint256 _QUOTE_RESERVE_;
uint256 _UNUSED_BASE_;
uint256 _UNUSED_QUOTE_;
uint256 _TOTAL_SHARES_;
mapping of uint256 shares;
mapping of uint8 stor15;
address _POOL_FACTORY_Address;
address _POOL_Address;
uint256 _AVG_SETTLED_PRICE_;
uint32 stor19;
address _MAINTAINER_Address;
uint256 stor19;
address _MT_FEE_RATE_MODEL_Address;
address _BIDDER_PERMISSION_Address;
uint256 _K_;
uint256 _I_;
uint256 _TOTAL_LP_AMOUNT_;
uint256 _FREEZE_DURATION_;
uint256 _VESTING_DURATION_;
uint256 _CLIFF_RATE_;

function _OWNER_() {
    return address(_OWNER_)
}

function _UNUSED_QUOTE_() {
    return _UNUSED_QUOTE_
}

function _POOL_() {
    return _POOL_Address
}

function _CLIFF_RATE_() {
    return _CLIFF_RATE_
}

function _IS_OPEN_TWAP_() {
    return bool(uint8(stor1.field_176))
}

function _VESTING_DURATION_() {
    return _VESTING_DURATION_
}

function _MAINTAINER_() {
    return address(_MAINTAINER_Address)
}

function _UNUSED_BASE_() {
    return _UNUSED_BASE_
}

function _BASE_TOKEN_() {
    return _BASE_TOKEN_Address
}

function _SETTLED_TIME_() {
    return _SETTLED_TIME_
}

function _TOTAL_BASE_() {
    return _TOTAL_BASE_
}

function _POOL_QUOTE_CAP_() {
    return _POOL_QUOTE_CAP_
}

function _CLAIMED_(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function _PHASE_BID_STARTTIME_() {
    return _PHASE_BID_STARTTIME_
}

function _BIDDER_PERMISSION_() {
    return _BIDDER_PERMISSION_Address
}

function _NEW_OWNER_() {
    return _NEW_OWNER_
}

function _POOL_FACTORY_() {
    return _POOL_FACTORY_Address
}

function _TOTAL_LP_AMOUNT_() {
    return _TOTAL_LP_AMOUNT_
}

function _QUOTE_RESERVE_() {
    return _QUOTE_RESERVE_
}

function _TOTAL_SHARES_() {
    return _TOTAL_SHARES_
}

function _AVG_SETTLED_PRICE_() {
    return _AVG_SETTLED_PRICE_
}

function _PHASE_CALM_ENDTIME_() {
    return _PHASE_CALM_ENDTIME_
}

function _FREEZE_DURATION_() {
    return _FREEZE_DURATION_
}

function _QUOTE_TOKEN_() {
    return _QUOTE_TOKEN_Address
}

function _PHASE_BID_ENDTIME_() {
    return _PHASE_BID_ENDTIME_
}

function _SETTLED_() {
    return bool(stor6)
}

function _K_() {
    return _K_
}

function getShares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function _MT_FEE_RATE_MODEL_() {
    return _MT_FEE_RATE_MODEL_Address
}

function _I_() {
    return _I_
}

function _fallback() payable {
    revert
}

function claimOwnership() {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(address(_OWNER_), _NEW_OWNER_);
    address(_OWNER_) = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function initOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_160):
        revert with 0, 'DODO_INITIALIZED'
    uint8(stor1.field_160) = 1
    address(_OWNER_) = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(_OWNER_) != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit OwnershipTransferPrepared(address(_OWNER_), arg1);
    _NEW_OWNER_ = arg1
}

function emergencySettle() {
    if block.timestamp < _PHASE_CALM_ENDTIME_:
        revert with 0, 'NOT_PHASE_EXE'
    if uint8(stor1.field_168):
        revert with 0, 'REENTRANT'
    uint8(stor1.field_168) = 1
    if _PHASE_CALM_ENDTIME_ + (168 * 24 * 3600) < _PHASE_CALM_ENDTIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _PHASE_CALM_ENDTIME_ + (168 * 24 * 3600):
        revert with 0, 'NOT_EMERGENCY'
    if stor6:
        revert with 0, 'ALREADY_SETTLED'
    stor6 = 1
    _SETTLED_TIME_ = block.timestamp
    require ext_code.size(_QUOTE_TOKEN_Address)
    staticcall _QUOTE_TOKEN_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _UNUSED_QUOTE_ = ext_call.return_data[0]
    uint8(stor1.field_168) = 0
}

function getRemainingLPRatio(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor6:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ > arg1:
        revert with 0, 'SUB_ERROR'
    if arg1 - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
        return 0
    if arg1 - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
        revert with 0, 'SUB_ERROR'
    if _CLIFF_RATE_ > 10^18:
        revert with 0, 'SUB_ERROR'
    if not -_CLIFF_RATE_ + 10^18:
        if _VESTING_DURATION_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        if _VESTING_DURATION_:
            return (0 / _VESTING_DURATION_)
    else:
        if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * arg1) + (_CLIFF_RATE_ * arg1) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - arg1 + _FREEZE_DURATION_ + _SETTLED_TIME_:
            revert with 0, 'MUL_ERROR'
        if _VESTING_DURATION_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        if _VESTING_DURATION_:
            return ((10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * arg1) + (_CLIFF_RATE_ * arg1) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_)
    ('iszero', ('stor', ('name', '_VESTING_DURATION_', 26)))
    revert
}

function init(address[] arg1, uint256[] arg2, uint256[] arg3, bool arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    if arg1.length != 7:
        revert with 0, 'LIST_LENGTH_WRONG'
    require 0 < arg1.length
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    if uint8(stor1.field_160):
        revert with 0, 'DODO_INITIALIZED'
    uint8(stor1.field_160) = 1
    address(_OWNER_) = address(cd[(arg1 + 36)])
    require 1 < arg1.length
    require cd[(arg1 + 68)] == address(cd[(arg1 + 68)])
    address(_MAINTAINER_Address) = address(cd[(arg1 + 68)])
    require 2 < arg1.length
    require cd[(arg1 + 100)] == address(cd[(arg1 + 100)])
    _BASE_TOKEN_Address = address(cd[(arg1 + 100)])
    require 3 < arg1.length
    require cd[(arg1 + 132)] == address(cd[(arg1 + 132)])
    _QUOTE_TOKEN_Address = address(cd[(arg1 + 132)])
    require 4 < arg1.length
    require cd[(arg1 + 164)] == address(cd[(arg1 + 164)])
    _BIDDER_PERMISSION_Address = address(cd[(arg1 + 164)])
    require 5 < arg1.length
    require cd[(arg1 + 196)] == address(cd[(arg1 + 196)])
    _MT_FEE_RATE_MODEL_Address = address(cd[(arg1 + 196)])
    require 6 < arg1.length
    require cd[(arg1 + 228)] == address(cd[(arg1 + 228)])
    _POOL_FACTORY_Address = address(cd[(arg1 + 228)])
    if arg2.length != 5:
        revert with 0, 'LIST_LENGTH_WRONG'
    require 0 < arg2.length
    _PHASE_BID_STARTTIME_ = cd[(arg2 + 36)]
    require 1 < arg2.length
    if cd[(arg2 + 68)] + _PHASE_BID_STARTTIME_ < _PHASE_BID_STARTTIME_:
        revert with 0, 'ADD_ERROR'
    _PHASE_BID_ENDTIME_ = cd[(arg2 + 68)] + _PHASE_BID_STARTTIME_
    require 2 < arg2.length
    if cd[(arg2 + 100)] + _PHASE_BID_ENDTIME_ < _PHASE_BID_ENDTIME_:
        revert with 0, 'ADD_ERROR'
    _PHASE_CALM_ENDTIME_ = cd[(arg2 + 100)] + _PHASE_BID_ENDTIME_
    require 3 < arg2.length
    _FREEZE_DURATION_ = cd[(arg2 + 132)]
    require 4 < arg2.length
    _VESTING_DURATION_ = cd[(arg2 + 164)]
    if block.timestamp > _PHASE_BID_STARTTIME_:
        revert with 0, 'TIMELINE_WRONG'
    if arg3.length != 4:
        revert with 0, 'LIST_LENGTH_WRONG'
    require 0 < arg3.length
    _POOL_QUOTE_CAP_ = cd[(arg3 + 36)]
    require 1 < arg3.length
    _K_ = cd[(arg3 + 68)]
    require 2 < arg3.length
    _I_ = cd[(arg3 + 100)]
    require 3 < arg3.length
    _CLIFF_RATE_ = cd[(arg3 + 132)]
    if not _I_:
        revert with 0, 'I_VALUE_WRONG'
    if _I_ > 1000000000000000000 * 10^18:
        revert with 0, 'I_VALUE_WRONG'
    if _K_ > 10^18:
        revert with 0, 'K_VALUE_WRONG'
    if _CLIFF_RATE_ > 10^18:
        revert with 0, 'CLIFF_RATE_WRONG'
    require ext_code.size(_BASE_TOKEN_Address)
    staticcall _BASE_TOKEN_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _TOTAL_BASE_ = ext_call.return_data[0]
    Mask(80, 0, stor1.field_176) = Mask(80, 0, arg4)
    if eth.balance(this.address) != 2 * 10^17:
        revert with 0, 'SETTLE_FUND_NOT_MATCH'
}

function getClaimableLPToken() {
    if not stor6:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'FREEZED'
    if not stor6:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
        revert with 0, 'SUB_ERROR'
    if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return ext_call.return_data[0]
    if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
        revert with 0, 'SUB_ERROR'
    if _CLIFF_RATE_ > 10^18:
        revert with 0, 'SUB_ERROR'
    if not -_CLIFF_RATE_ + 10^18:
        if _VESTING_DURATION_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _VESTING_DURATION_
        if not 0 / _VESTING_DURATION_:
            require ext_code.size(_POOL_Address)
            staticcall _POOL_Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SUB_ERROR'
            return ext_call.return_data[0]
        if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
            revert with 0, 'MUL_ERROR'
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return (ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18))
    if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'MUL_ERROR'
    if _VESTING_DURATION_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require _VESTING_DURATION_
    if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        return ext_call.return_data[0]
    if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
        revert with 0, 'MUL_ERROR'
    require ext_code.size(_POOL_Address)
    staticcall _POOL_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
        revert with 0, 'SUB_ERROR'
    return (ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18))
}

function bid(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < _PHASE_BID_STARTTIME_:
        revert with 0, 'NOT_PHASE_BID'
    if block.timestamp >= _PHASE_BID_ENDTIME_:
        revert with 0, 'NOT_PHASE_BID'
    if uint8(stor1.field_168):
        revert with 0, 'REENTRANT'
    uint8(stor1.field_168) = 1
    mem[100] = arg1
    require ext_code.size(_BIDDER_PERMISSION_Address)
    staticcall _BIDDER_PERMISSION_Address.0xbabcc539 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'BIDDER_NOT_ALLOWED'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(_QUOTE_TOKEN_Address)
    staticcall _QUOTE_TOKEN_Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if _QUOTE_RESERVE_ > ext_call.return_data[0]:
        revert with 0, 'SUB_ERROR'
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    require ext_code.size(_MT_FEE_RATE_MODEL_Address)
    staticcall _MT_FEE_RATE_MODEL_Address.0x8198edbf with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] - _QUOTE_RESERVE_:
        if 0 > ext_call.return_data[0] - _QUOTE_RESERVE_:
            revert with 0, 'SUB_ERROR'
        if ext_call.return_data[0] - _QUOTE_RESERVE_ + shares[address(arg1)] < shares[address(arg1)]:
            revert with 0, 'ADD_ERROR'
        shares[address(arg1)] = ext_call.return_data[0] - _QUOTE_RESERVE_ + shares[address(arg1)]
        if ext_call.return_data[0] - _QUOTE_RESERVE_ + _TOTAL_SHARES_ < _TOTAL_SHARES_:
            revert with 0, 'ADD_ERROR'
        _TOTAL_SHARES_ = ext_call.return_data[0] - _QUOTE_RESERVE_ + _TOTAL_SHARES_
        require ext_code.size(_QUOTE_TOKEN_Address)
        staticcall _QUOTE_TOKEN_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _QUOTE_RESERVE_:
            _QUOTE_RESERVE_ = ext_call.return_data[0]
        emit Bid(address(arg1), ext_call.return_data[0] - _QUOTE_RESERVE_, 0);
    else:
        if (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / ext_call.return_data[0] - _QUOTE_RESERVE_ != ext_call.return_data[0]:
            revert with 0, 'MUL_ERROR'
        if (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18:
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor19)
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor19), uint32(stor19), (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18, mem[(4 * ceil32(return_data.size)) + 196 len 28]
            call _QUOTE_TOKEN_Address.mem[(4 * ceil32(return_data.size)) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 228] == bool(mem[(4 * ceil32(return_data.size)) + 228])
                    if not mem[(4 * ceil32(return_data.size)) + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18 > ext_call.return_data[0] - _QUOTE_RESERVE_:
            revert with 0, 'SUB_ERROR'
        if ext_call.return_data[0] - _QUOTE_RESERVE_ - ((ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18) + shares[address(arg1)] < shares[address(arg1)]:
            revert with 0, 'ADD_ERROR'
        shares[address(arg1)] = ext_call.return_data[0] - _QUOTE_RESERVE_ - ((ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18) + shares[address(arg1)]
        if ext_call.return_data[0] - _QUOTE_RESERVE_ - ((ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18) + _TOTAL_SHARES_ < _TOTAL_SHARES_:
            revert with 0, 'ADD_ERROR'
        _TOTAL_SHARES_ = ext_call.return_data[0] - _QUOTE_RESERVE_ - ((ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18) + _TOTAL_SHARES_
        require ext_code.size(_QUOTE_TOKEN_Address)
        staticcall _QUOTE_TOKEN_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != _QUOTE_RESERVE_:
            _QUOTE_RESERVE_ = ext_call.return_data[0]
        emit Bid(address(arg1), ext_call.return_data[0] - _QUOTE_RESERVE_, (ext_call.return_data[0] * ext_call.return_data[0]) - (_QUOTE_RESERVE_ * ext_call.return_data[0]) / 10^18);
    uint8(stor1.field_168) = 0
}

function claimLPToken() {
    if address(_OWNER_) != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not stor6:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'FREEZED'
    if not stor6:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'FREEZED'
    if not stor6:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if block.timestamp < _FREEZE_DURATION_ + _SETTLED_TIME_:
        revert with 0, 'FREEZED'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ < _SETTLED_TIME_:
        revert with 0, 'ADD_ERROR'
    if _FREEZE_DURATION_ + _SETTLED_TIME_ > block.timestamp:
        revert with 0, 'SUB_ERROR'
    if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ >= _VESTING_DURATION_:
        mem[100] = this.address
        require ext_code.size(_POOL_Address)
        staticcall _POOL_Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SUB_ERROR'
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
        call _POOL_Address.mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit ClaimLP(ext_call.return_data[0]);
    else:
        if block.timestamp - _FREEZE_DURATION_ - _SETTLED_TIME_ > _VESTING_DURATION_:
            revert with 0, 'SUB_ERROR'
        if _CLIFF_RATE_ > 10^18:
            revert with 0, 'SUB_ERROR'
        if not -_CLIFF_RATE_ + 10^18:
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not 0 / _VESTING_DURATION_:
                mem[100] = this.address
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
                call _POOL_Address.mem[ceil32(return_data.size) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                        if not mem[ceil32(return_data.size) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit ClaimLP(ext_call.return_data[0]);
            else:
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 0 / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                mem[100] = this.address
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18), mem[ceil32(return_data.size) + 196 len 28]
                call _POOL_Address.mem[ceil32(return_data.size) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                        if not mem[ceil32(return_data.size) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit ClaimLP((ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * 0 / _VESTING_DURATION_ / 10^18)));
        else:
            if (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / -_CLIFF_RATE_ + 10^18 != _VESTING_DURATION_ - block.timestamp + _FREEZE_DURATION_ + _SETTLED_TIME_:
                revert with 0, 'MUL_ERROR'
            if _VESTING_DURATION_ <= 0:
                revert with 0, 'DIVIDING_ERROR'
            require _VESTING_DURATION_
            if not (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_:
                mem[100] = this.address
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
                call _POOL_Address.mem[ceil32(return_data.size) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                        if not mem[ceil32(return_data.size) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit ClaimLP(ext_call.return_data[0]);
            else:
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ != _TOTAL_LP_AMOUNT_:
                    revert with 0, 'MUL_ERROR'
                mem[100] = this.address
                require ext_code.size(_POOL_Address)
                staticcall _POOL_Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18 > ext_call.return_data[0]:
                    revert with 0, 'SUB_ERROR'
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18), mem[ceil32(return_data.size) + 196 len 28]
                call _POOL_Address.mem[ceil32(return_data.size) + 196 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 200 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                        if not mem[ceil32(return_data.size) + 228]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit ClaimLP((ext_call.return_data[0] - (_TOTAL_LP_AMOUNT_ * (10^18 * _VESTING_DURATION_) - (_CLIFF_RATE_ * _VESTING_DURATION_) - (10^18 * block.timestamp) + (_CLIFF_RATE_ * block.timestamp) + (10^18 * _FREEZE_DURATION_) - (_CLIFF_RATE_ * _FREEZE_DURATION_) + (10^18 * _SETTLED_TIME_) - (_CLIFF_RATE_ * _SETTLED_TIME_) / _VESTING_DURATION_ / 10^18)));
}



}
