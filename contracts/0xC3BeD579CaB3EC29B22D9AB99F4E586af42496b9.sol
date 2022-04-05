contract main {




// =====================  Runtime code  =====================


#
#  - buyShares(address arg1)
#  - init(address arg1, address arg2, address arg3, uint256 arg4, address arg5, uint256 arg6, uint256 arg7, bool arg8)
#  - querySellQuote(address arg1, uint256 arg2)
#  - querySellBase(address arg1, uint256 arg2)
#  - sellShares(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5, uint256 arg6)
#  - sellBase(address arg1)
#  - flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4)
#  - sellQuote(address arg1)
#  - sync()
#
const version = '', 0

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9


uint8 stor0; offset 8
address _MAINTAINER_Address; offset 16
address _BASE_TOKEN_Address;
address _QUOTE_TOKEN_Address;
uint32 _BLOCK_TIMESTAMP_LAST_; offset 224
uint128 _BASE_RESERVE_;
uint128 _QUOTE_RESERVE_; offset 112
uint256 _BASE_PRICE_CUMULATIVE_LAST_;
array of uint256 symbol;
uint8 decimals;
array of uint256 name;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 DOMAIN_SEPARATOR;
mapping of uint256 nonces;
uint256 _LP_FEE_RATE_;
address _MT_FEE_RATE_MODEL_Address;
uint256 _K_;
uint256 _I_;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function _IS_OPEN_TWAP_() payable {
    return bool(stor0)
}

function decimals() payable {
    return decimals
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function _MAINTAINER_() payable {
    return _MAINTAINER_Address
}

function _BASE_TOKEN_() payable {
    return _BASE_TOKEN_Address
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _BASE_RESERVE_() payable {
    return _BASE_RESERVE_
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function _BLOCK_TIMESTAMP_LAST_() payable {
    return _BLOCK_TIMESTAMP_LAST_
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _LP_FEE_RATE_() payable {
    return _LP_FEE_RATE_
}

function _QUOTE_RESERVE_() payable {
    return _QUOTE_RESERVE_
}

function _QUOTE_TOKEN_() payable {
    return _QUOTE_TOKEN_Address
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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
    return _LP_FEE_RATE_, ext_call.return_data[0]
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 'BALANCE_NOT_ENOUGH'
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 'SUB_ERROR'
    balanceOf[msg.sender] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'ADD_ERROR'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function addressToShortString(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[192 len 8] = call.data[calldata.size len 8]
    idx = 0
    while idx < 4:
        require idx + 12 < 32
        require 2 * idx < 8
        mem[(2 * idx) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        require idx + 12 < 32
        require Mask(4, -(('mask_shl', 160, 0, -3, ('param', 'arg1')), 0) + 256, idx + 12) << (('mask_shl', 160, 0, -3, ('param', 'arg1')), 0) - 256 < 16
        require (2 * idx) + 1 < 8
        mem[(2 * idx) + 193 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    return 32, 8, mem[192 len 8], 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'BALANCE_NOT_ENOUGH'
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'ALLOWANCE_NOT_ENOUGH'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SUB_ERROR'
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'ADD_ERROR'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SUB_ERROR'
    allowance[address(arg1)][msg.sender] -= arg3
    emit 0xfeddf252: arg3, arg1, arg2
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    if arg4 < block.timestamp:
        revert with 0, 'DODO_DVM_LP: EXPIRED'
    nonces[address(arg1)]++
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'DODO_DVM_LP: INVALID_SIGNATURE'
    if address(signer) != arg1:
        revert with 0, 'DODO_DVM_LP: INVALID_SIGNATURE'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function getPMMState() payable {
    if 0 > _QUOTE_RESERVE_:
        revert with 0, 'SUB_ERROR'
    if _I_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require _I_
    if not _BASE_RESERVE_:
        return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, 0, 1
    if not _K_:
        if not 1000000000000000000 * 10^18 / _I_:
            if _BASE_RESERVE_ < _BASE_RESERVE_:
                revert with 0, 'ADD_ERROR'
            return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_RESERVE_, 0, 1
        if _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 1000000000000000000 * 10^18 / _I_ != _QUOTE_RESERVE_:
            revert with 0, 'MUL_ERROR'
        if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + _BASE_RESERVE_ < _BASE_RESERVE_:
            revert with 0, 'ADD_ERROR'
        return _I_, 
               _K_,
               _BASE_RESERVE_,
               _BASE_RESERVE_,
               (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + _BASE_RESERVE_,
               0,
               1
    if not 4 * _K_:
        if 2 * _K_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require 2 * _K_
        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
            revert with 0, 'ADD_ERROR'
        if not _BASE_RESERVE_:
            return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, 0, 1
        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
            revert with 0, 'MUL_ERROR'
        return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18, 0, 1
    if 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / 4 * _K_ != 1000000000000000000 * 10^18 / _I_:
        revert with 0, 'MUL_ERROR'
    if not 1000000000000000000 * 10^18 / _I_ * 4 * _K_:
        if 2 * _K_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require 2 * _K_
        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
            revert with 0, 'ADD_ERROR'
        if not _BASE_RESERVE_:
            return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, 0, 1
        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
            revert with 0, 'MUL_ERROR'
        return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18, 0, 1
    if _BASE_RESERVE_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require _BASE_RESERVE_
    if _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / 1000000000000000000 * 10^18 / _I_ * 4 * _K_ == _QUOTE_RESERVE_:
        if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 < _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_:
            revert with 0, 'ADD_ERROR'
        s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
        t = (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18
        while s < t:
            require s
            s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
            t = s
            continue 
    else:
        if not 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_:
            s = 0x604be73de4838ad9a5cf8800000001
            t = 1000000000000000000 * 10^18
            while s < t:
                require s
                s = (1000000000000000000 * 10^18 / s) + s / 2
                t = s
                continue 
        else:
            if _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_ / 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_ != _QUOTE_RESERVE_:
                revert with 0, 'MUL_ERROR'
            s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
            t = (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18
            while s < t:
                require s
                s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                t = s
                continue 
    if 10^18 > t:
        revert with 0, 'SUB_ERROR'
    if not t - 10^18:
        if 2 * _K_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require 2 * _K_
        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
            revert with 0, 'ADD_ERROR'
        if not _BASE_RESERVE_:
            return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, 0, 1
        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
            revert with 0, 'MUL_ERROR'
        return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18, 0, 1
    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
        revert with 0, 'MUL_ERROR'
    if 2 * _K_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require 2 * _K_
    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
        revert with 0, 'ADD_ERROR'
    if not _BASE_RESERVE_:
        return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, 0, 1
    if (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
        revert with 0, 'MUL_ERROR'
    return _I_, 
           _K_,
           _BASE_RESERVE_,
           _BASE_RESERVE_,
           (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18,
           0,
           1
}

function getPMMStateForCall() payable {
    if 0 > _QUOTE_RESERVE_:
        revert with 0, 'SUB_ERROR'
    if _I_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require _I_
    if not _BASE_RESERVE_:
        return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, 0, 1
    if not _K_:
        if not 1000000000000000000 * 10^18 / _I_:
            if _BASE_RESERVE_ < _BASE_RESERVE_:
                revert with 0, 'ADD_ERROR'
            return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, _BASE_RESERVE_, 0, 1
        if _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 1000000000000000000 * 10^18 / _I_ != _QUOTE_RESERVE_:
            revert with 0, 'MUL_ERROR'
        if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + _BASE_RESERVE_ < _BASE_RESERVE_:
            revert with 0, 'ADD_ERROR'
        return _I_, 
               _K_,
               _BASE_RESERVE_,
               _BASE_RESERVE_,
               (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + _BASE_RESERVE_,
               0,
               1
    if not 4 * _K_:
        if 2 * _K_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require 2 * _K_
        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
            revert with 0, 'ADD_ERROR'
        if not _BASE_RESERVE_:
            return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, 0, 1
        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
            revert with 0, 'MUL_ERROR'
        return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18, 0, 1
    if 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / 4 * _K_ != 1000000000000000000 * 10^18 / _I_:
        revert with 0, 'MUL_ERROR'
    if not 1000000000000000000 * 10^18 / _I_ * 4 * _K_:
        if 2 * _K_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require 2 * _K_
        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
            revert with 0, 'ADD_ERROR'
        if not _BASE_RESERVE_:
            return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, 0, 1
        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
            revert with 0, 'MUL_ERROR'
        return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18, 0, 1
    if _BASE_RESERVE_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require _BASE_RESERVE_
    if _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / 1000000000000000000 * 10^18 / _I_ * 4 * _K_ == _QUOTE_RESERVE_:
        if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 < _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_:
            revert with 0, 'ADD_ERROR'
        s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
        t = (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18
        while s < t:
            require s
            s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
            t = s
            continue 
    else:
        if not 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_:
            s = 0x604be73de4838ad9a5cf8800000001
            t = 1000000000000000000 * 10^18
            while s < t:
                require s
                s = (1000000000000000000 * 10^18 / s) + s / 2
                t = s
                continue 
        else:
            if _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_ / 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_ != _QUOTE_RESERVE_:
                revert with 0, 'MUL_ERROR'
            s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
            t = (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18
            while s < t:
                require s
                s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                t = s
                continue 
    if 10^18 > t:
        revert with 0, 'SUB_ERROR'
    if not t - 10^18:
        if 2 * _K_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require 2 * _K_
        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
            revert with 0, 'ADD_ERROR'
        if not _BASE_RESERVE_:
            return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, 0, 1
        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
            revert with 0, 'MUL_ERROR'
        return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / 10^18, 0, 1
    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
        revert with 0, 'MUL_ERROR'
    if 2 * _K_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require 2 * _K_
    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
        revert with 0, 'ADD_ERROR'
    if not _BASE_RESERVE_:
        return _I_, _K_, _BASE_RESERVE_, _BASE_RESERVE_, 0, 0, 1
    if (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
        revert with 0, 'MUL_ERROR'
    return _I_, 
           _K_,
           _BASE_RESERVE_,
           _BASE_RESERVE_,
           (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / 10^18,
           0,
           1
}

function getMidPrice() payable {
    if 0 > _QUOTE_RESERVE_:
        revert with 0, 'SUB_ERROR'
    if _I_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require _I_
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
    if not _K_:
        if not 1000000000000000000 * 10^18 / _I_:
            if _BASE_RESERVE_ < _BASE_RESERVE_:
                revert with 0, 'ADD_ERROR'
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
        if _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 1000000000000000000 * 10^18 / _I_ != _QUOTE_RESERVE_:
            revert with 0, 'MUL_ERROR'
        if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + _BASE_RESERVE_ < _BASE_RESERVE_:
            revert with 0, 'ADD_ERROR'
        if not (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + _BASE_RESERVE_:
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
        if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_BASE_RESERVE_ * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + _BASE_RESERVE_ != (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + _BASE_RESERVE_:
            revert with 0, 'MUL_ERROR'
        if _BASE_RESERVE_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require _BASE_RESERVE_
        if not (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_BASE_RESERVE_ * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_:
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
        if 10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_BASE_RESERVE_ * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ / (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_BASE_RESERVE_ * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ != 10^18:
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
        if 10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_BASE_RESERVE_ * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / _K_ != 10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_BASE_RESERVE_ * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ / _BASE_RESERVE_:
            revert with 0, 'MUL_ERROR'
        if _K_ > 10^18:
            revert with 0, 'SUB_ERROR'
        if 10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_BASE_RESERVE_ * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 < 0:
            revert with 0, 'ADD_ERROR'
        if not _I_:
            return 0
        if (10^18 * _I_) + (10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_BASE_RESERVE_ * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / _I_ != (10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_BASE_RESERVE_ * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18) + -_K_ + 10^18:
            revert with 0, 'MUL_ERROR'
        return ((10^18 * _I_) + (10^18 * (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_BASE_RESERVE_ * _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18) + (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ / 10^18 * _BASE_RESERVE_) + (_BASE_RESERVE_ * _BASE_RESERVE_) / _BASE_RESERVE_ / _BASE_RESERVE_ * _K_ / 10^18 * _I_) - (_K_ * _I_) / 10^18)
    if not 4 * _K_:
        if 2 * _K_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require 2 * _K_
        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
            revert with 0, 'ADD_ERROR'
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
        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
            revert with 0, 'MUL_ERROR'
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
    if 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / 4 * _K_ != 1000000000000000000 * 10^18 / _I_:
        revert with 0, 'MUL_ERROR'
    if not 1000000000000000000 * 10^18 / _I_ * 4 * _K_:
        if 2 * _K_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require 2 * _K_
        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
            revert with 0, 'ADD_ERROR'
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
        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
            revert with 0, 'MUL_ERROR'
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
    if _BASE_RESERVE_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require _BASE_RESERVE_
    if _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / 1000000000000000000 * 10^18 / _I_ * 4 * _K_ == _QUOTE_RESERVE_:
        if (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 < _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_:
            revert with 0, 'ADD_ERROR'
        s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
        t = (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18
        while s < t:
            require s
            s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
            t = s
            continue 
    else:
        if not 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_:
            s = 0x604be73de4838ad9a5cf8800000001
            t = 1000000000000000000 * 10^18
            while s < t:
                require s
                s = (1000000000000000000 * 10^18 / s) + s / 2
                t = s
                continue 
        else:
            if _QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_ / 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_ != _QUOTE_RESERVE_:
                revert with 0, 'MUL_ERROR'
            s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / 2) + 1
            t = (_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18
            while s < t:
                require s
                s = ((_QUOTE_RESERVE_ * 1000000000000000000 * 10^18 / _I_ * 4 * _K_ / _BASE_RESERVE_) + 1000000000000000000 * 10^18 / s) + s / 2
                t = s
                continue 
    if 10^18 > t:
        revert with 0, 'SUB_ERROR'
    if not t - 10^18:
        if 2 * _K_ <= 0:
            revert with 0, 'DIVIDING_ERROR'
        require 2 * _K_
        if (0 / 2 * _K_) + 10^18 < 0 / 2 * _K_:
            revert with 0, 'ADD_ERROR'
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
        if (10^18 * _BASE_RESERVE_) + (0 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != (0 / 2 * _K_) + 10^18:
            revert with 0, 'MUL_ERROR'
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
    if (10^18 * t) - 1000000000000000000 * 10^18 / t - 10^18 != 10^18:
        revert with 0, 'MUL_ERROR'
    if 2 * _K_ <= 0:
        revert with 0, 'DIVIDING_ERROR'
    require 2 * _K_
    if ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18 < (10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_:
        revert with 0, 'ADD_ERROR'
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
    if (10^18 * _BASE_RESERVE_) + ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_ * _BASE_RESERVE_) / _BASE_RESERVE_ != ((10^18 * t) - 1000000000000000000 * 10^18 / 2 * _K_) + 10^18:
        revert with 0, 'MUL_ERROR'
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
}



}
