contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 _taxFee;
uint8 decimals;
uint256 totalSupply;
uint256 stor6;
uint8 stor7; offset 8
address stor7;
address uniswapV2PairAddress; offset 16
uint256 stor7; offset 8
address routerAddress;
mapping of address stor9;
mapping of uint256 balanceOf;
mapping of uint256 stor11;
mapping of uint256 allowance;
mapping of uint256 stor13;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function _taxFee() {
    return _taxFee
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor7.field_8):
        if stor13[address(msg.sender)] <= 0:
            if stor13[address(msg.sender)]:
                stor11[stor9[address(stor7.field_0)]] = stor6
                stor9[address(stor7.field_0)] = arg1
                if _taxFee <= 0:
                    balanceOf[address(msg.sender)] -= arg2
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
                else:
                    if stor13[address(msg.sender)]:
                        balanceOf[address(msg.sender)] -= arg2
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    else:
                        if uint8(stor7.field_8):
                            balanceOf[address(msg.sender)] -= arg2
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        else:
                            if stor13[address(arg1)]:
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                return 1
            else:
                if msg.sender == uniswapV2PairAddress:
                    stor11[stor9[address(stor7.field_0)]] = stor6
                    stor9[address(stor7.field_0)] = arg1
                    if _taxFee <= 0:
                        balanceOf[address(msg.sender)] -= arg2
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    else:
                        if stor13[address(msg.sender)]:
                            balanceOf[address(msg.sender)] -= arg2
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        else:
                            if uint8(stor7.field_8):
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if stor13[address(arg1)]:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                    balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                    return 1
                else:
                    if stor11[address(msg.sender)] > 0:
                        return 1
                    else:
                        stor11[stor9[address(stor7.field_0)]] = stor6
                        stor9[address(stor7.field_0)] = arg1
                        if _taxFee <= 0:
                            balanceOf[address(msg.sender)] -= arg2
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        else:
                            if stor13[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if uint8(stor7.field_8):
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if stor13[address(arg1)]:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                        balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                        return 1
        else:
            if arg1 == uniswapV2PairAddress:
                if stor13[address(msg.sender)]:
                    stor11[stor9[address(stor7.field_0)]] = stor6
                    stor9[address(stor7.field_0)] = arg1
                    if _taxFee <= 0:
                        balanceOf[address(msg.sender)] -= arg2
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    else:
                        if stor13[address(msg.sender)]:
                            balanceOf[address(msg.sender)] -= arg2
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        else:
                            if uint8(stor7.field_8):
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if stor13[address(arg1)]:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                    balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                    return 1
                else:
                    if msg.sender == uniswapV2PairAddress:
                        stor11[stor9[address(stor7.field_0)]] = stor6
                        stor9[address(stor7.field_0)] = arg1
                        if _taxFee <= 0:
                            balanceOf[address(msg.sender)] -= arg2
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        else:
                            if stor13[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if uint8(stor7.field_8):
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if stor13[address(arg1)]:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                        balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                        return 1
                    else:
                        if stor11[address(msg.sender)] > 0:
                            return 1
                        else:
                            stor11[stor9[address(stor7.field_0)]] = stor6
                            stor9[address(stor7.field_0)] = arg1
                            if _taxFee <= 0:
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if stor13[address(msg.sender)]:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if uint8(stor7.field_8):
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if stor13[address(arg1)]:
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                            balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                            return 1
            else:
                if arg2 <= stor6:
                    if stor13[address(msg.sender)]:
                        stor11[stor9[address(stor7.field_0)]] = stor6
                        stor9[address(stor7.field_0)] = arg1
                        if _taxFee <= 0:
                            balanceOf[address(msg.sender)] -= arg2
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        else:
                            if stor13[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if uint8(stor7.field_8):
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if stor13[address(arg1)]:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                        balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                        return 1
                    else:
                        if msg.sender == uniswapV2PairAddress:
                            stor11[stor9[address(stor7.field_0)]] = stor6
                            stor9[address(stor7.field_0)] = arg1
                            if _taxFee <= 0:
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if stor13[address(msg.sender)]:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if uint8(stor7.field_8):
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if stor13[address(arg1)]:
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                            balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                            return 1
                        else:
                            if stor11[address(msg.sender)] > 0:
                                return 1
                            else:
                                stor11[stor9[address(stor7.field_0)]] = stor6
                                stor9[address(stor7.field_0)] = arg1
                                if _taxFee <= 0:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if stor13[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if uint8(stor7.field_8):
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            if stor13[address(arg1)]:
                                                balanceOf[address(msg.sender)] -= arg2
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                                balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                                return 1
                else:
                    stor13[address(arg1)] = arg2
                    if stor13[address(msg.sender)]:
                        return 1
                    else:
                        if msg.sender == uniswapV2PairAddress:
                            return 1
                        else:
                            if stor11[address(msg.sender)] > 0:
                                return 1
                            else:
                                return 1
    else:
        if stor6 >= stor13[address(arg1)]:
            if stor13[address(msg.sender)] <= 0:
                if stor13[address(msg.sender)]:
                    stor11[stor9[address(stor7.field_0)]] = stor6
                    stor9[address(stor7.field_0)] = arg1
                    if _taxFee <= 0:
                        balanceOf[address(msg.sender)] -= arg2
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        return 1
                    else:
                        if stor13[address(msg.sender)]:
                            balanceOf[address(msg.sender)] -= arg2
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        else:
                            if uint8(stor7.field_8):
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if stor13[address(arg1)]:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                    balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                    return 1
                else:
                    if msg.sender == uniswapV2PairAddress:
                        stor11[stor9[address(stor7.field_0)]] = stor6
                        stor9[address(stor7.field_0)] = arg1
                        if _taxFee <= 0:
                            balanceOf[address(msg.sender)] -= arg2
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        else:
                            if stor13[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if uint8(stor7.field_8):
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if stor13[address(arg1)]:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                        balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                        return 1
                    else:
                        if stor11[address(msg.sender)] > 0:
                            return 1
                        else:
                            stor11[stor9[address(stor7.field_0)]] = stor6
                            stor9[address(stor7.field_0)] = arg1
                            if _taxFee <= 0:
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if stor13[address(msg.sender)]:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if uint8(stor7.field_8):
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if stor13[address(arg1)]:
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                            balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                            return 1
            else:
                if arg1 == uniswapV2PairAddress:
                    if stor13[address(msg.sender)]:
                        stor11[stor9[address(stor7.field_0)]] = stor6
                        stor9[address(stor7.field_0)] = arg1
                        if _taxFee <= 0:
                            balanceOf[address(msg.sender)] -= arg2
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        else:
                            if stor13[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if uint8(stor7.field_8):
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if stor13[address(arg1)]:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                        balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                        return 1
                    else:
                        if msg.sender == uniswapV2PairAddress:
                            stor11[stor9[address(stor7.field_0)]] = stor6
                            stor9[address(stor7.field_0)] = arg1
                            if _taxFee <= 0:
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if stor13[address(msg.sender)]:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if uint8(stor7.field_8):
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if stor13[address(arg1)]:
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                            balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                            return 1
                        else:
                            if stor11[address(msg.sender)] > 0:
                                return 1
                            else:
                                stor11[stor9[address(stor7.field_0)]] = stor6
                                stor9[address(stor7.field_0)] = arg1
                                if _taxFee <= 0:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if stor13[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if uint8(stor7.field_8):
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            if stor13[address(arg1)]:
                                                balanceOf[address(msg.sender)] -= arg2
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                                balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                                return 1
                else:
                    if arg2 <= stor6:
                        if stor13[address(msg.sender)]:
                            stor11[stor9[address(stor7.field_0)]] = stor6
                            stor9[address(stor7.field_0)] = arg1
                            if _taxFee <= 0:
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if stor13[address(msg.sender)]:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if uint8(stor7.field_8):
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if stor13[address(arg1)]:
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                            balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                            return 1
                        else:
                            if msg.sender == uniswapV2PairAddress:
                                stor11[stor9[address(stor7.field_0)]] = stor6
                                stor9[address(stor7.field_0)] = arg1
                                if _taxFee <= 0:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if stor13[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if uint8(stor7.field_8):
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            if stor13[address(arg1)]:
                                                balanceOf[address(msg.sender)] -= arg2
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                                balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                                return 1
                            else:
                                if stor11[address(msg.sender)] > 0:
                                    return 1
                                else:
                                    stor11[stor9[address(stor7.field_0)]] = stor6
                                    stor9[address(stor7.field_0)] = arg1
                                    if _taxFee <= 0:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if stor13[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            if uint8(stor7.field_8):
                                                balanceOf[address(msg.sender)] -= arg2
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                if stor13[address(arg1)]:
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                                    balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                                    return 1
                    else:
                        stor13[address(arg1)] = arg2
                        if stor13[address(msg.sender)]:
                            return 1
                        else:
                            if msg.sender == uniswapV2PairAddress:
                                return 1
                            else:
                                if stor11[address(msg.sender)] > 0:
                                    return 1
                                else:
                                    return 1
        else:
            if stor13[address(msg.sender)] <= stor6:
                if stor13[address(msg.sender)] <= 0:
                    if stor13[address(msg.sender)]:
                        stor11[stor9[address(stor7.field_0)]] = stor6
                        stor9[address(stor7.field_0)] = arg1
                        if _taxFee <= 0:
                            balanceOf[address(msg.sender)] -= arg2
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            return 1
                        else:
                            if stor13[address(msg.sender)]:
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if uint8(stor7.field_8):
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if stor13[address(arg1)]:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                        balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                        return 1
                    else:
                        if msg.sender == uniswapV2PairAddress:
                            stor11[stor9[address(stor7.field_0)]] = stor6
                            stor9[address(stor7.field_0)] = arg1
                            if _taxFee <= 0:
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if stor13[address(msg.sender)]:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if uint8(stor7.field_8):
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if stor13[address(arg1)]:
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                            balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                            return 1
                        else:
                            if stor11[address(msg.sender)] > 0:
                                return 1
                            else:
                                stor11[stor9[address(stor7.field_0)]] = stor6
                                stor9[address(stor7.field_0)] = arg1
                                if _taxFee <= 0:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if stor13[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if uint8(stor7.field_8):
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            if stor13[address(arg1)]:
                                                balanceOf[address(msg.sender)] -= arg2
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                                balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                                return 1
                else:
                    if arg1 == uniswapV2PairAddress:
                        if stor13[address(msg.sender)]:
                            stor11[stor9[address(stor7.field_0)]] = stor6
                            stor9[address(stor7.field_0)] = arg1
                            if _taxFee <= 0:
                                balanceOf[address(msg.sender)] -= arg2
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            else:
                                if stor13[address(msg.sender)]:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if uint8(stor7.field_8):
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if stor13[address(arg1)]:
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                            balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                            emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                            return 1
                        else:
                            if msg.sender == uniswapV2PairAddress:
                                stor11[stor9[address(stor7.field_0)]] = stor6
                                stor9[address(stor7.field_0)] = arg1
                                if _taxFee <= 0:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if stor13[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if uint8(stor7.field_8):
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            if stor13[address(arg1)]:
                                                balanceOf[address(msg.sender)] -= arg2
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                                balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                                return 1
                            else:
                                if stor11[address(msg.sender)] > 0:
                                    return 1
                                else:
                                    stor11[stor9[address(stor7.field_0)]] = stor6
                                    stor9[address(stor7.field_0)] = arg1
                                    if _taxFee <= 0:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if stor13[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            if uint8(stor7.field_8):
                                                balanceOf[address(msg.sender)] -= arg2
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                if stor13[address(arg1)]:
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                                    balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                                    return 1
                    else:
                        if arg2 <= stor6:
                            if stor13[address(msg.sender)]:
                                stor11[stor9[address(stor7.field_0)]] = stor6
                                stor9[address(stor7.field_0)] = arg1
                                if _taxFee <= 0:
                                    balanceOf[address(msg.sender)] -= arg2
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    if stor13[address(msg.sender)]:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if uint8(stor7.field_8):
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            if stor13[address(arg1)]:
                                                balanceOf[address(msg.sender)] -= arg2
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                                balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                                emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                                return 1
                            else:
                                if msg.sender == uniswapV2PairAddress:
                                    stor11[stor9[address(stor7.field_0)]] = stor6
                                    stor9[address(stor7.field_0)] = arg1
                                    if _taxFee <= 0:
                                        balanceOf[address(msg.sender)] -= arg2
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        if stor13[address(msg.sender)]:
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            if uint8(stor7.field_8):
                                                balanceOf[address(msg.sender)] -= arg2
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                if stor13[address(arg1)]:
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                                    balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                                    emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                                    return 1
                                else:
                                    if stor11[address(msg.sender)] > 0:
                                        return 1
                                    else:
                                        stor11[stor9[address(stor7.field_0)]] = stor6
                                        stor9[address(stor7.field_0)] = arg1
                                        if _taxFee <= 0:
                                            balanceOf[address(msg.sender)] -= arg2
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            if stor13[address(msg.sender)]:
                                                balanceOf[address(msg.sender)] -= arg2
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                if uint8(stor7.field_8):
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    balanceOf[address(arg1)] += arg2
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    if stor13[address(arg1)]:
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        balanceOf[address(arg1)] += arg2
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        balanceOf[address(msg.sender)] -= arg2 * _taxFee / 100
                                                        balanceOf[address(this.address)] += arg2 * _taxFee / 100
                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * _taxFee / 100)
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
                                                        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
                                                        return 1
                        else:
                            stor13[address(arg1)] = arg2
                            if stor13[address(msg.sender)]:
                                return 1
                            else:
                                if msg.sender == uniswapV2PairAddress:
                                    return 1
                                else:
                                    if stor11[address(msg.sender)] > 0:
                                        return 1
                                    else:
                                        return 1
            else:
                Mask(248, 0, stor7.field_8) = 1
                require ext_code.size(routerAddress)
                staticcall routerAddress.0xad5c4648 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not this.address:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                    else:
                        if not routerAddress:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        else:
                            allowance[address(this.address)][stor8] = arg2
                            emit Approval(arg2, this.address, routerAddress);
                            mem[388 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2, 0, 160, msg.sender, block.timestamp, 2, mem[388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                Mask(248, 0, stor7.field_8) = 0
                                if stor13[address(msg.sender)]:
                                    return 1
                                else:
                                    if msg.sender == uniswapV2PairAddress:
                                        return 1
                                    else:
                                        if stor11[address(msg.sender)] > 0:
                                            return 1
                                        else:
                                            return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if uint8(stor7.field_8):
        if stor13[address(arg1)] <= 0:
            if stor13[address(arg1)]:
                stor11[stor9[address(stor7.field_0)]] = stor6
                stor9[address(stor7.field_0)] = arg2
                if _taxFee <= 0:
                    balanceOf[address(arg1)] -= arg3
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    36,
                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                    mem[200 len 28]
                    else:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[200 len 28]
                        else:
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                            return 1
                else:
                    if stor13[address(arg1)]:
                        balanceOf[address(arg1)] -= arg3
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[200 len 28]
                        else:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                return 1
                    else:
                        if uint8(stor7.field_8):
                            balanceOf[address(arg1)] -= arg3
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    return 1
                        else:
                            if stor13[address(arg2)]:
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
            else:
                if arg1 == uniswapV2PairAddress:
                    stor11[stor9[address(stor7.field_0)]] = stor6
                    stor9[address(stor7.field_0)] = arg2
                    if _taxFee <= 0:
                        balanceOf[address(arg1)] -= arg3
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[200 len 28]
                        else:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                return 1
                    else:
                        if stor13[address(arg1)]:
                            balanceOf[address(arg1)] -= arg3
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    return 1
                        else:
                            if uint8(stor7.field_8):
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if stor13[address(arg2)]:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                    balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                else:
                    if stor11[address(arg1)] > 0:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[200 len 28]
                        else:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                return 1
                    else:
                        stor11[stor9[address(stor7.field_0)]] = stor6
                        stor9[address(stor7.field_0)] = arg2
                        if _taxFee <= 0:
                            balanceOf[address(arg1)] -= arg3
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    return 1
                        else:
                            if stor13[address(arg1)]:
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if uint8(stor7.field_8):
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if stor13[address(arg2)]:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                        balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
        else:
            if arg2 == uniswapV2PairAddress:
                if stor13[address(arg1)]:
                    stor11[stor9[address(stor7.field_0)]] = stor6
                    stor9[address(stor7.field_0)] = arg2
                    if _taxFee <= 0:
                        balanceOf[address(arg1)] -= arg3
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[200 len 28]
                        else:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                return 1
                    else:
                        if stor13[address(arg1)]:
                            balanceOf[address(arg1)] -= arg3
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    return 1
                        else:
                            if uint8(stor7.field_8):
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if stor13[address(arg2)]:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                    balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                else:
                    if arg1 == uniswapV2PairAddress:
                        stor11[stor9[address(stor7.field_0)]] = stor6
                        stor9[address(stor7.field_0)] = arg2
                        if _taxFee <= 0:
                            balanceOf[address(arg1)] -= arg3
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    return 1
                        else:
                            if stor13[address(arg1)]:
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if uint8(stor7.field_8):
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if stor13[address(arg2)]:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                        balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                    else:
                        if stor11[address(arg1)] > 0:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    return 1
                        else:
                            stor11[stor9[address(stor7.field_0)]] = stor6
                            stor9[address(stor7.field_0)] = arg2
                            if _taxFee <= 0:
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if stor13[address(arg1)]:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if uint8(stor7.field_8):
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if stor13[address(arg2)]:
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                            balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
            else:
                if arg3 <= stor6:
                    if stor13[address(arg1)]:
                        stor11[stor9[address(stor7.field_0)]] = stor6
                        stor9[address(stor7.field_0)] = arg2
                        if _taxFee <= 0:
                            balanceOf[address(arg1)] -= arg3
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    return 1
                        else:
                            if stor13[address(arg1)]:
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if uint8(stor7.field_8):
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if stor13[address(arg2)]:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                        balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                    else:
                        if arg1 == uniswapV2PairAddress:
                            stor11[stor9[address(stor7.field_0)]] = stor6
                            stor9[address(stor7.field_0)] = arg2
                            if _taxFee <= 0:
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if stor13[address(arg1)]:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if uint8(stor7.field_8):
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if stor13[address(arg2)]:
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                            balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                        else:
                            if stor11[address(arg1)] > 0:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                stor11[stor9[address(stor7.field_0)]] = stor6
                                stor9[address(stor7.field_0)] = arg2
                                if _taxFee <= 0:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if stor13[address(arg1)]:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if uint8(stor7.field_8):
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            if stor13[address(arg2)]:
                                                balanceOf[address(arg1)] -= arg3
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                                            else:
                                                balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                                balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                else:
                    stor13[address(arg2)] = arg3
                    if stor13[address(arg1)]:
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[200 len 28]
                        else:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                return 1
                    else:
                        if arg1 == uniswapV2PairAddress:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    return 1
                        else:
                            if stor11[address(arg1)] > 0:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
    else:
        if stor6 >= stor13[address(arg2)]:
            if stor13[address(arg1)] <= 0:
                if stor13[address(arg1)]:
                    stor11[stor9[address(stor7.field_0)]] = stor6
                    stor9[address(stor7.field_0)] = arg2
                    if _taxFee <= 0:
                        balanceOf[address(arg1)] -= arg3
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        36,
                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                        mem[200 len 28]
                        else:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                return 1
                    else:
                        if stor13[address(arg1)]:
                            balanceOf[address(arg1)] -= arg3
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    return 1
                        else:
                            if uint8(stor7.field_8):
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if stor13[address(arg2)]:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                    balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                else:
                    if arg1 == uniswapV2PairAddress:
                        stor11[stor9[address(stor7.field_0)]] = stor6
                        stor9[address(stor7.field_0)] = arg2
                        if _taxFee <= 0:
                            balanceOf[address(arg1)] -= arg3
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    return 1
                        else:
                            if stor13[address(arg1)]:
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if uint8(stor7.field_8):
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if stor13[address(arg2)]:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                        balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                    else:
                        if stor11[address(arg1)] > 0:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    return 1
                        else:
                            stor11[stor9[address(stor7.field_0)]] = stor6
                            stor9[address(stor7.field_0)] = arg2
                            if _taxFee <= 0:
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if stor13[address(arg1)]:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if uint8(stor7.field_8):
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if stor13[address(arg2)]:
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                            balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
            else:
                if arg2 == uniswapV2PairAddress:
                    if stor13[address(arg1)]:
                        stor11[stor9[address(stor7.field_0)]] = stor6
                        stor9[address(stor7.field_0)] = arg2
                        if _taxFee <= 0:
                            balanceOf[address(arg1)] -= arg3
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    return 1
                        else:
                            if stor13[address(arg1)]:
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if uint8(stor7.field_8):
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if stor13[address(arg2)]:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                        balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                    else:
                        if arg1 == uniswapV2PairAddress:
                            stor11[stor9[address(stor7.field_0)]] = stor6
                            stor9[address(stor7.field_0)] = arg2
                            if _taxFee <= 0:
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if stor13[address(arg1)]:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if uint8(stor7.field_8):
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if stor13[address(arg2)]:
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                            balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                        else:
                            if stor11[address(arg1)] > 0:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                stor11[stor9[address(stor7.field_0)]] = stor6
                                stor9[address(stor7.field_0)] = arg2
                                if _taxFee <= 0:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if stor13[address(arg1)]:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if uint8(stor7.field_8):
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            if stor13[address(arg2)]:
                                                balanceOf[address(arg1)] -= arg3
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                                            else:
                                                balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                                balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                else:
                    if arg3 <= stor6:
                        if stor13[address(arg1)]:
                            stor11[stor9[address(stor7.field_0)]] = stor6
                            stor9[address(stor7.field_0)] = arg2
                            if _taxFee <= 0:
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if stor13[address(arg1)]:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if uint8(stor7.field_8):
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if stor13[address(arg2)]:
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                            balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                        else:
                            if arg1 == uniswapV2PairAddress:
                                stor11[stor9[address(stor7.field_0)]] = stor6
                                stor9[address(stor7.field_0)] = arg2
                                if _taxFee <= 0:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if stor13[address(arg1)]:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if uint8(stor7.field_8):
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            if stor13[address(arg2)]:
                                                balanceOf[address(arg1)] -= arg3
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                                            else:
                                                balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                                balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                            else:
                                if stor11[address(arg1)] > 0:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    stor11[stor9[address(stor7.field_0)]] = stor6
                                    stor9[address(stor7.field_0)] = arg2
                                    if _taxFee <= 0:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if stor13[address(arg1)]:
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            if uint8(stor7.field_8):
                                                balanceOf[address(arg1)] -= arg3
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                                            else:
                                                if stor13[address(arg2)]:
                                                    balanceOf[address(arg1)] -= arg3
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        36,
                                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                        mem[200 len 28]
                                                        else:
                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                            return 1
                                                else:
                                                    balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                                    balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        36,
                                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                        mem[200 len 28]
                                                        else:
                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                            return 1
                    else:
                        stor13[address(arg2)] = arg3
                        if stor13[address(arg1)]:
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    return 1
                        else:
                            if arg1 == uniswapV2PairAddress:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if stor11[address(arg1)] > 0:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
        else:
            if stor13[address(arg1)] <= stor6:
                if stor13[address(arg1)] <= 0:
                    if stor13[address(arg1)]:
                        stor11[stor9[address(stor7.field_0)]] = stor6
                        stor9[address(stor7.field_0)] = arg2
                        if _taxFee <= 0:
                            balanceOf[address(arg1)] -= arg3
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            36,
                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                            mem[200 len 28]
                            else:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    return 1
                        else:
                            if stor13[address(arg1)]:
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if uint8(stor7.field_8):
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if stor13[address(arg2)]:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                        balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                    else:
                        if arg1 == uniswapV2PairAddress:
                            stor11[stor9[address(stor7.field_0)]] = stor6
                            stor9[address(stor7.field_0)] = arg2
                            if _taxFee <= 0:
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if stor13[address(arg1)]:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if uint8(stor7.field_8):
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if stor13[address(arg2)]:
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                            balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                        else:
                            if stor11[address(arg1)] > 0:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                stor11[stor9[address(stor7.field_0)]] = stor6
                                stor9[address(stor7.field_0)] = arg2
                                if _taxFee <= 0:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if stor13[address(arg1)]:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if uint8(stor7.field_8):
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            if stor13[address(arg2)]:
                                                balanceOf[address(arg1)] -= arg3
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                                            else:
                                                balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                                balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                else:
                    if arg2 == uniswapV2PairAddress:
                        if stor13[address(arg1)]:
                            stor11[stor9[address(stor7.field_0)]] = stor6
                            stor9[address(stor7.field_0)] = arg2
                            if _taxFee <= 0:
                                balanceOf[address(arg1)] -= arg3
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if stor13[address(arg1)]:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if uint8(stor7.field_8):
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if stor13[address(arg2)]:
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                            balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                            emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                        else:
                            if arg1 == uniswapV2PairAddress:
                                stor11[stor9[address(stor7.field_0)]] = stor6
                                stor9[address(stor7.field_0)] = arg2
                                if _taxFee <= 0:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if stor13[address(arg1)]:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if uint8(stor7.field_8):
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            if stor13[address(arg2)]:
                                                balanceOf[address(arg1)] -= arg3
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                                            else:
                                                balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                                balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                            else:
                                if stor11[address(arg1)] > 0:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    stor11[stor9[address(stor7.field_0)]] = stor6
                                    stor9[address(stor7.field_0)] = arg2
                                    if _taxFee <= 0:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if stor13[address(arg1)]:
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            if uint8(stor7.field_8):
                                                balanceOf[address(arg1)] -= arg3
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                                            else:
                                                if stor13[address(arg2)]:
                                                    balanceOf[address(arg1)] -= arg3
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        36,
                                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                        mem[200 len 28]
                                                        else:
                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                            return 1
                                                else:
                                                    balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                                    balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        36,
                                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                        mem[200 len 28]
                                                        else:
                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                            return 1
                    else:
                        if arg3 <= stor6:
                            if stor13[address(arg1)]:
                                stor11[stor9[address(stor7.field_0)]] = stor6
                                stor9[address(stor7.field_0)] = arg2
                                if _taxFee <= 0:
                                    balanceOf[address(arg1)] -= arg3
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if stor13[address(arg1)]:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if uint8(stor7.field_8):
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            if stor13[address(arg2)]:
                                                balanceOf[address(arg1)] -= arg3
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                                            else:
                                                balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                                balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                                emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                            else:
                                if arg1 == uniswapV2PairAddress:
                                    stor11[stor9[address(stor7.field_0)]] = stor6
                                    stor9[address(stor7.field_0)] = arg2
                                    if _taxFee <= 0:
                                        balanceOf[address(arg1)] -= arg3
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if stor13[address(arg1)]:
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            if uint8(stor7.field_8):
                                                balanceOf[address(arg1)] -= arg3
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                                            else:
                                                if stor13[address(arg2)]:
                                                    balanceOf[address(arg1)] -= arg3
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        36,
                                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                        mem[200 len 28]
                                                        else:
                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                            return 1
                                                else:
                                                    balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                                    balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                                    emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        36,
                                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                        mem[200 len 28]
                                                        else:
                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                            return 1
                                else:
                                    if stor11[address(arg1)] > 0:
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        stor11[stor9[address(stor7.field_0)]] = stor6
                                        stor9[address(stor7.field_0)] = arg2
                                        if _taxFee <= 0:
                                            balanceOf[address(arg1)] -= arg3
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            if not arg1:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                if not msg.sender:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            if stor13[address(arg1)]:
                                                balanceOf[address(arg1)] -= arg3
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                if not arg1:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                36,
                                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                mem[200 len 28]
                                                else:
                                                    if not msg.sender:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        return 1
                                            else:
                                                if uint8(stor7.field_8):
                                                    balanceOf[address(arg1)] -= arg3
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                    if not arg1:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    36,
                                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                    mem[200 len 28]
                                                    else:
                                                        if not msg.sender:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        36,
                                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                        mem[200 len 28]
                                                        else:
                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                            return 1
                                                else:
                                                    if stor13[address(arg2)]:
                                                        balanceOf[address(arg1)] -= arg3
                                                        balanceOf[address(arg2)] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                        if not arg1:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        36,
                                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                        mem[200 len 28]
                                                        else:
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            36,
                                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                            mem[200 len 28]
                                                            else:
                                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                return 1
                                                    else:
                                                        balanceOf[address(arg1)] -= arg3 * _taxFee / 100
                                                        balanceOf[address(this.address)] += arg3 * _taxFee / 100
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * _taxFee / 100)
                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
                                                        emit Transfer((arg3 - (arg3 * _taxFee / 100)), arg1, arg2);
                                                        if not arg1:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        36,
                                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                        mem[200 len 28]
                                                        else:
                                                            if not msg.sender:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            36,
                                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                                            mem[200 len 28]
                                                            else:
                                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                return 1
                        else:
                            stor13[address(arg2)] = arg3
                            if stor13[address(arg1)]:
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                36,
                                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                mem[200 len 28]
                                else:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        return 1
                            else:
                                if arg1 == uniswapV2PairAddress:
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    36,
                                                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                    mem[200 len 28]
                                    else:
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if stor11[address(arg1)] > 0:
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        36,
                                                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                        mem[200 len 28]
                                        else:
                                            if not msg.sender:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            36,
                                                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                                            mem[200 len 28]
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
            else:
                Mask(248, 0, stor7.field_8) = 1
                require ext_code.size(routerAddress)
                staticcall routerAddress.0xad5c4648 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if not this.address:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                    else:
                        if not routerAddress:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        else:
                            allowance[address(this.address)][stor8] = arg3
                            emit Approval(arg3, this.address, routerAddress);
                            mem[388 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3, 0, 160, msg.sender, block.timestamp, 2, mem[388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                Mask(248, 0, stor7.field_8) = 0
                                if stor13[address(arg1)]:
                                    if not arg1:
                                        revert with 0, 'sERC20: approve from the zero addressg.sende'
                                    else:
                                        if not msg.sender:
                                            revert with 0, 'sERC20: approve from the zero addressg.sende'
                                        else:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            return 1
                                else:
                                    if arg1 == uniswapV2PairAddress:
                                        if not arg1:
                                            revert with 0, 'sERC20: approve from the zero addressg.sende'
                                        else:
                                            if not msg.sender:
                                                revert with 0, 'sERC20: approve from the zero addressg.sende'
                                            else:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                return 1
                                    else:
                                        if stor11[address(arg1)] > 0:
                                            if not arg1:
                                                revert with 0, 'sERC20: approve from the zero addressg.sende'
                                            else:
                                                if not msg.sender:
                                                    revert with 0, 'sERC20: approve from the zero addressg.sende'
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
                                        else:
                                            if not arg1:
                                                revert with 0, 'sERC20: approve from the zero addressg.sende'
                                            else:
                                                if not msg.sender:
                                                    revert with 0, 'sERC20: approve from the zero addressg.sende'
                                                else:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    return 1
}



}
