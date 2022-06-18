contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const name = 'Universe Sonata', 0

const decimals = 9

const sub_805c0e0f(?) = 57005

const symbol = 'Universe Sonata', 0


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
address sub_b43665e2Address;
address sub_bbb9f61fAddress;
uint256 totalSupply;
uint8 stor7;
uint8 stor7; offset 8
uint256 sub_3f70a495;
uint256 sub_b1cb1582;
uint256 sub_60317625;
uint256 sub_c6618d60;
uint256 sub_21dbd9eb;
uint256 sub_61c9a0dc;
uint256 _maxWalletToken;
uint256 _maxTxAmount;
address uniswapV2RouterAddress;
uint8 inSwapAndLiquify; offset 160
uint8 swapAndLiquifyEnabled; offset 168
uint128 stor19; offset 160
address uniswapV2PairAddress;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function sub_21dbd9eb(?) {
    return sub_21dbd9eb
}

function inSwapAndLiquify() {
    return bool(inSwapAndLiquify)
}

function sub_3f70a495(?) {
    return sub_3f70a495
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function sub_60317625(?) {
    return sub_60317625
}

function sub_61c9a0dc(?) {
    return sub_61c9a0dc
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function _maxWalletToken() {
    return _maxWalletToken
}

function _maxTxAmount() {
    return _maxTxAmount
}

function owner() {
    return owner
}

function sub_b1cb1582(?) {
    return sub_b1cb1582
}

function sub_b43665e2(?) {
    return sub_b43665e2Address
}

function sub_bbb9f61f(?) {
    return sub_bbb9f61fAddress
}

function sub_c6618d60(?) {
    return sub_c6618d60
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0, 'ERR: zero address'
    if not arg1:
        revert with 0, 'ERR: zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERR: zero address'
    if not arg1:
        revert with 0, 'ERR: zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERR: zero address'
    if not arg1:
        revert with 0, 'ERR: zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_dafd18e9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if address(arg1) == this.address:
        revert with 0, 'Can not remove native token'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args sub_bbb9f61fAddress, ext_call.return_data[0] * arg2 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == owner:
        if owner != msg.sender:
            if arg2 > _maxTxAmount:
                revert with 0, 'Over transaction limit.'
    else:
        if arg1 == 57005:
            if owner != msg.sender:
                if arg2 > _maxTxAmount:
                    revert with 0, 'Over transaction limit.'
        else:
            if arg1 == this.address:
                if owner != msg.sender:
                    if arg2 > _maxTxAmount:
                        revert with 0, 'Over transaction limit.'
            else:
                if arg1 == uniswapV2PairAddress:
                    if owner != msg.sender:
                        if arg2 > _maxTxAmount:
                            revert with 0, 'Over transaction limit.'
                else:
                    if owner != msg.sender:
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 > _maxWalletToken:
                            revert with 0, 'Over wallet limit.'
                        if owner != msg.sender:
                            if arg2 > _maxTxAmount:
                                revert with 0, 'Over transaction limit.'
    if not msg.sender:
        revert with 0, 'ERR: Using 0 address!'
    if not arg1:
        revert with 0, 'ERR: Using 0 address!'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token value must be higher than zero.'
    if uint8(stor7.field_0) >= uint8(stor7.field_8):
        if not inSwapAndLiquify:
            if uniswapV2PairAddress != msg.sender:
                if swapAndLiquifyEnabled:
                    uint8(stor7.field_0) = 0
                    stor19 = 1
                    if balanceOf[address(this.address)] <= _maxTxAmount:
                        if balanceOf[address(this.address)] and sub_21dbd9eb > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if totalSupply < balanceOf[address(this.address)] * sub_21dbd9eb / 100:
                            revert with 'NH{q', 17
                        totalSupply -= balanceOf[address(this.address)] * sub_21dbd9eb / 100
                        if balanceOf[57005] > -(balanceOf[address(this.address)] * sub_21dbd9eb / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[57005] += balanceOf[address(this.address)] * sub_21dbd9eb / 100
                        if balanceOf[address(this.address)] < balanceOf[address(this.address)] * sub_21dbd9eb / 100:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] -= balanceOf[address(this.address)] * sub_21dbd9eb / 100
                        if balanceOf[address(this.address)] and sub_60317625 > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] and sub_c6618d60 > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] and sub_61c9a0dc > -1 / balanceOf[address(this.address)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)] * sub_61c9a0dc / 200 > -(balanceOf[address(this.address)] * sub_60317625 / 100) - 1:
                            revert with 'NH{q', 17
                        if (balanceOf[address(this.address)] * sub_61c9a0dc / 200) + (balanceOf[address(this.address)] * sub_60317625 / 100) > -(balanceOf[address(this.address)] * sub_c6618d60 / 100) - 1:
                            revert with 'NH{q', 17
                        mem[128] = this.address
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[160] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERR: zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERR: zero address'
                        allowance[address(this.address)][stor18] = (balanceOf[address(this.address)] * sub_61c9a0dc / 200) + (balanceOf[address(this.address)] * sub_60317625 / 100) + (balanceOf[address(this.address)] * sub_c6618d60 / 100)
                        emit Approval(((balanceOf[address(this.address)] * sub_61c9a0dc / 200) + (balanceOf[address(this.address)] * sub_60317625 / 100) + (balanceOf[address(this.address)] * sub_c6618d60 / 100)), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = (balanceOf[address(this.address)] * sub_61c9a0dc / 200) + (balanceOf[address(this.address)] * sub_60317625 / 100) + (balanceOf[address(this.address)] * sub_c6618d60 / 100)
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (balanceOf[address(this.address)] * sub_61c9a0dc / 200) + (balanceOf[address(this.address)] * sub_60317625 / 100) + (balanceOf[address(this.address)] * sub_c6618d60 / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 'NH{q', 17
                        if sub_61c9a0dc > -sub_60317625 - 1:
                            revert with 'NH{q', 17
                        if sub_61c9a0dc + sub_60317625 > -sub_c6618d60 - 1:
                            revert with 'NH{q', 17
                        if sub_60317625 and 100 > -1 / sub_60317625:
                            revert with 'NH{q', 17
                        if not sub_61c9a0dc + sub_60317625 + sub_c6618d60:
                            revert with 'NH{q', 18
                        if False and 100 * sub_60317625 / sub_61c9a0dc + sub_60317625 + sub_c6618d60 > 0:
                            revert with 'NH{q', 17
                        if sub_61c9a0dc > -sub_60317625 - 1:
                            revert with 'NH{q', 17
                        if sub_61c9a0dc + sub_60317625 > -sub_c6618d60 - 1:
                            revert with 'NH{q', 17
                        if sub_c6618d60 and 100 > -1 / sub_c6618d60:
                            revert with 'NH{q', 17
                        if not sub_61c9a0dc + sub_60317625 + sub_c6618d60:
                            revert with 'NH{q', 18
                        if False and 100 * sub_c6618d60 / sub_61c9a0dc + sub_60317625 + sub_c6618d60 > 0:
                            revert with 'NH{q', 17
                        if not this.address:
                            revert with 0, 'ERR: zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERR: zero address'
                        allowance[address(this.address)][stor18] = balanceOf[address(this.address)] * sub_61c9a0dc / 200
                        emit Approval((balanceOf[address(this.address)] * sub_61c9a0dc / 200), this.address, uniswapV2RouterAddress);
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), balanceOf[address(this.address)] * sub_61c9a0dc / 200, 0, 0, 57005, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        emit SwapAndLiquify(balanceOf[address(this.address)] * sub_61c9a0dc / 200, 0, balanceOf[address(this.address)] * sub_61c9a0dc / 200);
                    else:
                        if _maxTxAmount and sub_21dbd9eb > -1 / _maxTxAmount:
                            revert with 'NH{q', 17
                        if totalSupply < _maxTxAmount * sub_21dbd9eb / 100:
                            revert with 'NH{q', 17
                        totalSupply -= _maxTxAmount * sub_21dbd9eb / 100
                        if balanceOf[57005] > -(_maxTxAmount * sub_21dbd9eb / 100) - 1:
                            revert with 'NH{q', 17
                        balanceOf[57005] += _maxTxAmount * sub_21dbd9eb / 100
                        if balanceOf[address(this.address)] < _maxTxAmount * sub_21dbd9eb / 100:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] -= _maxTxAmount * sub_21dbd9eb / 100
                        if _maxTxAmount and sub_60317625 > -1 / _maxTxAmount:
                            revert with 'NH{q', 17
                        if _maxTxAmount and sub_c6618d60 > -1 / _maxTxAmount:
                            revert with 'NH{q', 17
                        if _maxTxAmount and sub_61c9a0dc > -1 / _maxTxAmount:
                            revert with 'NH{q', 17
                        if _maxTxAmount * sub_61c9a0dc / 200 > -(_maxTxAmount * sub_60317625 / 100) - 1:
                            revert with 'NH{q', 17
                        if (_maxTxAmount * sub_61c9a0dc / 200) + (_maxTxAmount * sub_60317625 / 100) > -(_maxTxAmount * sub_c6618d60 / 100) - 1:
                            revert with 'NH{q', 17
                        mem[128] = this.address
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[160] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERR: zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERR: zero address'
                        allowance[address(this.address)][stor18] = (_maxTxAmount * sub_61c9a0dc / 200) + (_maxTxAmount * sub_60317625 / 100) + (_maxTxAmount * sub_c6618d60 / 100)
                        emit Approval(((_maxTxAmount * sub_61c9a0dc / 200) + (_maxTxAmount * sub_60317625 / 100) + (_maxTxAmount * sub_c6618d60 / 100)), this.address, uniswapV2RouterAddress);
                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = (_maxTxAmount * sub_61c9a0dc / 200) + (_maxTxAmount * sub_60317625 / 100) + (_maxTxAmount * sub_c6618d60 / 100)
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (_maxTxAmount * sub_61c9a0dc / 200) + (_maxTxAmount * sub_60317625 / 100) + (_maxTxAmount * sub_c6618d60 / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 'NH{q', 17
                        if sub_61c9a0dc > -sub_60317625 - 1:
                            revert with 'NH{q', 17
                        if sub_61c9a0dc + sub_60317625 > -sub_c6618d60 - 1:
                            revert with 'NH{q', 17
                        if sub_60317625 and 100 > -1 / sub_60317625:
                            revert with 'NH{q', 17
                        if not sub_61c9a0dc + sub_60317625 + sub_c6618d60:
                            revert with 'NH{q', 18
                        if False and 100 * sub_60317625 / sub_61c9a0dc + sub_60317625 + sub_c6618d60 > 0:
                            revert with 'NH{q', 17
                        if sub_61c9a0dc > -sub_60317625 - 1:
                            revert with 'NH{q', 17
                        if sub_61c9a0dc + sub_60317625 > -sub_c6618d60 - 1:
                            revert with 'NH{q', 17
                        if sub_c6618d60 and 100 > -1 / sub_c6618d60:
                            revert with 'NH{q', 17
                        if not sub_61c9a0dc + sub_60317625 + sub_c6618d60:
                            revert with 'NH{q', 18
                        if False and 100 * sub_c6618d60 / sub_61c9a0dc + sub_60317625 + sub_c6618d60 > 0:
                            revert with 'NH{q', 17
                        if not this.address:
                            revert with 0, 'ERR: zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERR: zero address'
                        allowance[address(this.address)][stor18] = _maxTxAmount * sub_61c9a0dc / 200
                        emit Approval((_maxTxAmount * sub_61c9a0dc / 200), this.address, uniswapV2RouterAddress);
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), _maxTxAmount * sub_61c9a0dc / 200, 0, 0, 57005, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_call.return_data[32] == ext_call.return_data[32]
                        require ext_call.return_data[64] == ext_call.return_data[64]
                        emit SwapAndLiquify(_maxTxAmount * sub_61c9a0dc / 200, 0, _maxTxAmount * sub_61c9a0dc / 200);
                    call sub_b43665e2Address with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call sub_bbb9f61fAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    stor19 = 0
    if stor3[address(msg.sender)]:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        if arg1 == 57005:
            if totalSupply < arg2:
                revert with 'NH{q', 17
            totalSupply -= arg2
    else:
        if stor3[address(arg1)]:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            if arg1 == 57005:
                if totalSupply < arg2:
                    revert with 'NH{q', 17
                totalSupply -= arg2
        else:
            if uint8(stor7.field_0) == 255:
                revert with 'NH{q', 17
            uint8(stor7.field_0) = uint8(uint8(stor7.field_0) + 1)
            if uniswapV2PairAddress != msg.sender:
                if arg2 and sub_b1cb1582 > -1 / arg2:
                    revert with 'NH{q', 17
                if arg2 < arg2 * sub_b1cb1582 / 100:
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_b1cb1582 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_b1cb1582 / 100)
                if balanceOf[address(this.address)] > -(arg2 * sub_b1cb1582 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(this.address)] += arg2 * sub_b1cb1582 / 100
                emit Transfer((arg2 - (arg2 * sub_b1cb1582 / 100)), msg.sender, arg1);
                if arg1 == 57005:
                    if totalSupply < arg2 - (arg2 * sub_b1cb1582 / 100):
                        revert with 'NH{q', 17
                    totalSupply = totalSupply - arg2 + (arg2 * sub_b1cb1582 / 100)
            else:
                if arg2 and sub_3f70a495 > -1 / arg2:
                    revert with 'NH{q', 17
                if arg2 < arg2 * sub_3f70a495 / 100:
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 + (arg2 * sub_3f70a495 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_3f70a495 / 100)
                if balanceOf[address(this.address)] > -(arg2 * sub_3f70a495 / 100) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(this.address)] += arg2 * sub_3f70a495 / 100
                emit Transfer((arg2 - (arg2 * sub_3f70a495 / 100)), msg.sender, arg1);
                if arg1 == 57005:
                    if totalSupply < arg2 - (arg2 * sub_3f70a495 / 100):
                        revert with 'NH{q', 17
                    totalSupply = totalSupply - arg2 + (arg2 * sub_3f70a495 / 100)
    return 1
}



}
