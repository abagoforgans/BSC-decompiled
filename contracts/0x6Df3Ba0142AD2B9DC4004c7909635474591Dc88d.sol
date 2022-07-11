contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18


address owner;
address stor1;
uint256 geUnlockTime;
mapping of uint256 stor3;
mapping of uint256 allowance;
mapping of uint8 stor6;
uint256 totalSupply;
uint256 stor8;
uint256 totalFees;
array of uint256 name;
array of uint256 symbol;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 _burnFee;
uint256 _devFee;
mapping of uint8 stor21;
address burnAddress;
address sub_89ff0dfaAddress;
address devAddress;
address uniswapV2RouterAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint8 sub_dac92df0; offset 176
uint128 stor26; offset 176
uint128 stor26; offset 168
address uniswapV2PairAddress;

function name() {
    return name[0 len name.length]
}

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function devAddress() {
    return devAddress
}

function _taxFee() {
    return _taxFee
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function sub_55e24539(?) {
    require calldata.size - 4 >= 32
    return bool(stor21[address(arg1)])
}

function _liquidityFee() {
    return _liquidityFee
}

function burnAddress() {
    return burnAddress
}

function sub_89ff0dfa(?) {
    return sub_89ff0dfaAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor21[arg1])
}

function _devFee() {
    return _devFee
}

function geUnlockTime() {
    return geUnlockTime
}

function _burnFee() {
    return _burnFee
}

function sub_dac92df0(?) {
    return bool(sub_dac92df0)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _taxFee = arg1
}

function setDevFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _devFee = arg1
}

function setBurnFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _burnFee = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
}

function whitelistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21[address(arg1)] = uint8(arg2)
}

function setSwapDevEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor26.field_176) = Mask(80, 0, arg1)
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    geUnlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor26.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tokenFromReflection(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if stor8 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor8 / totalSupply
    return (arg1 / stor8 / totalSupply)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if stor3[address(arg1)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if stor8 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor8 / totalSupply
    return (stor3[address(arg1)] / stor8 / totalSupply)
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
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6b45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            if not arg1:
                if not arg1:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1
                    if arg1 * _devFee / arg1 != _devFee:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _devFee / 100:
                            return 0
                        require arg1 * _devFee / 100
                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _devFee / 100 * stor8 / totalSupply)
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _devFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1
                if arg1 * _burnFee / arg1 != _burnFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                if not arg1:
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _burnFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _burnFee / 100:
                            return 0
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _burnFee / 100 * stor8 / totalSupply)
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _burnFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1
                if arg1 * _devFee / arg1 != _devFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 > arg1 - (arg1 * _burnFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _devFee / 100:
                            return 0
                        require arg1 * _devFee / 100
                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _devFee / 100 * stor8 / totalSupply)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _devFee / 100:
                        if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _burnFee / 100 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _burnFee / 100:
                    if not arg1 * _devFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _devFee / 100:
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg1:
                if not arg1:
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _liquidityFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply)
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
                require arg1
                if arg1 * _devFee / arg1 != _devFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _liquidityFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 > arg1 - (arg1 * _liquidityFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        if not arg1 * _devFee / 100:
                            return 0
                        require arg1 * _devFee / 100
                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _devFee / 100 * stor8 / totalSupply)
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _devFee / 100:
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _liquidityFee / 100:
                    if not arg1 * _devFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _devFee / 100:
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1
            if arg1 * _burnFee / arg1 != _burnFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 > arg1 - (arg1 * _liquidityFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _liquidityFee / 100) - (arg1 * _burnFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        if not arg1 * _burnFee / 100:
                            return 0
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _burnFee / 100 * stor8 / totalSupply)
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _burnFee / 100:
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _liquidityFee / 100:
                    if not arg1 * _burnFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _burnFee / 100:
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
            require arg1
            if arg1 * _devFee / arg1 != _devFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 > arg1 - (arg1 * _liquidityFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _devFee / 100 > arg1 - (arg1 * _liquidityFee / 100) - (arg1 * _burnFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * _liquidityFee / 100:
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _devFee / 100:
                            return 0
                        require arg1 * _devFee / 100
                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _devFee / 100 * stor8 / totalSupply)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _devFee / 100:
                        if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _burnFee / 100 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _burnFee / 100:
                    if not arg1 * _devFee / 100:
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _devFee / 100:
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _liquidityFee / 100:
                if not arg1 * _burnFee / 100:
                    if not arg1 * _devFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _devFee / 100:
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _burnFee / 100:
                if not arg1 * _devFee / 100:
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1 * _burnFee / 100
            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _devFee / 100:
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
            require arg1 * _devFee / 100
            if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if 0 > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
        require arg1
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not arg1:
            if not arg1:
                if not arg1:
                    if arg1 * _taxFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply)
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply))
                require arg1
                if arg1 * _devFee / arg1 != _devFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if arg1 * _taxFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _taxFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 > arg1 - (arg1 * _taxFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _devFee / 100:
                            return 0
                        require arg1 * _devFee / 100
                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _devFee / 100 * stor8 / totalSupply)
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _devFee / 100:
                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _devFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _devFee / 100:
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1
            if arg1 * _burnFee / arg1 != _burnFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if not arg1:
                if arg1 * _taxFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _taxFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 > arg1 - (arg1 * _taxFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _burnFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _burnFee / 100:
                            return 0
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _burnFee / 100 * stor8 / totalSupply)
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _burnFee / 100:
                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _burnFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _burnFee / 100:
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
            require arg1
            if arg1 * _devFee / arg1 != _devFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _devFee / 100 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _burnFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _devFee / 100:
                            return 0
                        require arg1 * _devFee / 100
                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _devFee / 100 * stor8 / totalSupply)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _devFee / 100:
                        if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _burnFee / 100 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _burnFee / 100:
                    if not arg1 * _devFee / 100:
                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _devFee / 100:
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _taxFee / 100:
                if not arg1 * _burnFee / 100:
                    if not arg1 * _devFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _devFee / 100:
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _burnFee / 100:
                if not arg1 * _devFee / 100:
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1 * _burnFee / 100
            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _devFee / 100:
                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
            require arg1 * _devFee / 100
            if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
        require arg1
        if arg1 * _liquidityFee / arg1 != _liquidityFee:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg1:
            if not arg1:
                if arg1 * _taxFee / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _liquidityFee / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply)
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply)
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
                require arg1
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply))
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
            require arg1
            if arg1 * _devFee / arg1 != _devFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _liquidityFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _devFee / 100 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _liquidityFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        if not arg1 * _devFee / 100:
                            return 0
                        require arg1 * _devFee / 100
                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _devFee / 100 * stor8 / totalSupply)
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _devFee / 100:
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _liquidityFee / 100:
                    if not arg1 * _devFee / 100:
                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _devFee / 100:
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if not arg1 * _devFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _devFee / 100:
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _liquidityFee / 100:
                if not arg1 * _devFee / 100:
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _devFee / 100:
                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
            require arg1 * _devFee / 100
            if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
        require arg1
        if arg1 * _burnFee / arg1 != _burnFee:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if not arg1:
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _liquidityFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _liquidityFee / 100) - (arg1 * _burnFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        if not arg1 * _burnFee / 100:
                            return 0
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _burnFee / 100 * stor8 / totalSupply)
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _burnFee / 100:
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _liquidityFee / 100:
                    if not arg1 * _burnFee / 100:
                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _burnFee / 100:
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
            require arg1
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if not arg1 * _burnFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _burnFee / 100:
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _liquidityFee / 100:
                if not arg1 * _burnFee / 100:
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _burnFee / 100:
                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
            require arg1 * _burnFee / 100
            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
        require arg1
        if arg1 * _devFee / arg1 != _devFee:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if arg1 * _taxFee / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 * _burnFee / 100 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _liquidityFee / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 * _devFee / 100 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _liquidityFee / 100) - (arg1 * _burnFee / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _devFee / 100:
                            return 0
                        require arg1 * _devFee / 100
                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _devFee / 100 * stor8 / totalSupply)
                    require arg1 * _burnFee / 100
                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _devFee / 100:
                        if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _burnFee / 100 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _burnFee / 100:
                    if not arg1 * _devFee / 100:
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _devFee / 100:
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _liquidityFee / 100:
                if not arg1 * _burnFee / 100:
                    if not arg1 * _devFee / 100:
                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _devFee / 100:
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _burnFee / 100:
                if not arg1 * _devFee / 100:
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1 * _burnFee / 100
            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _devFee / 100:
                if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
            require arg1 * _devFee / 100
            if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _devFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
        require arg1
        if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
        if not arg1 * _taxFee / 100:
            if not arg1 * _liquidityFee / 100:
                if not arg1 * _burnFee / 100:
                    if not arg1 * _devFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (arg1 * stor8 / totalSupply)
                    require arg1 * _devFee / 100
                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
                require arg1 * _burnFee / 100
                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if not arg1 * _devFee / 100:
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _burnFee / 100:
                if not arg1 * _devFee / 100:
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1 * _burnFee / 100
            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _devFee / 100:
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
            require arg1 * _devFee / 100
            if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if 0 > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
        require arg1 * _taxFee / 100
        if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
        if not arg1 * _liquidityFee / 100:
            if not arg1 * _burnFee / 100:
                if not arg1 * _devFee / 100:
                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply))
                require arg1 * _devFee / 100
                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
            require arg1 * _burnFee / 100
            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if not arg1 * _devFee / 100:
                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
            require arg1 * _devFee / 100
            if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
        require arg1 * _liquidityFee / 100
        if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
        if not arg1 * _burnFee / 100:
            if not arg1 * _devFee / 100:
                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply))
            require arg1 * _devFee / 100
            if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
            if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
        require arg1 * _burnFee / 100
        if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
        if not arg1 * _devFee / 100:
            if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply))
        require arg1 * _devFee / 100
        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
        if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply) - (arg1 * _devFee / 100 * stor8 / totalSupply))
    if not arg1:
        if not arg1:
            if not arg1:
                if not arg1:
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * _devFee / arg1 != _devFee:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if arg1 * _devFee / 100:
                            require arg1 * _devFee / 100
                            if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                return 0
                        else:
                            return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _devFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _devFee / 100
                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * _burnFee / arg1 != _burnFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                if not arg1:
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _burnFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if arg1 * _burnFee / 100:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                return 0
                        else:
                            return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _burnFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * _devFee / arg1 != _devFee:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 > arg1 - (arg1 * _burnFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _burnFee / 100:
                            if arg1 * _devFee / 100:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _devFee / 100:
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _burnFee / 100:
                        if not arg1 * _devFee / 100:
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _devFee / 100
                            if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _burnFee / 100
                        if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if not arg1 * _devFee / 100:
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _devFee / 100
                            if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg1:
                if not arg1:
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _liquidityFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if arg1 * _liquidityFee / 100:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                return 0
                        else:
                            return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * _devFee / arg1 != _devFee:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _liquidityFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 > arg1 - (arg1 * _liquidityFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _devFee / 100:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _devFee / 100:
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _liquidityFee / 100:
                        if not arg1 * _devFee / 100:
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _devFee / 100
                            if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if not arg1 * _devFee / 100:
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _devFee / 100
                            if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * _burnFee / arg1 != _burnFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                if not arg1:
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 > arg1 - (arg1 * _liquidityFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _liquidityFee / 100) - (arg1 * _burnFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _burnFee / 100:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _burnFee / 100:
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _liquidityFee / 100:
                        if not arg1 * _burnFee / 100:
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if not arg1 * _burnFee / 100:
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * _devFee / arg1 != _devFee:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 > arg1 - (arg1 * _liquidityFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 > arg1 - (arg1 * _liquidityFee / 100) - (arg1 * _burnFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            if not arg1 * _burnFee / 100:
                                if arg1 * _devFee / 100:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if not arg1 * _devFee / 100:
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _burnFee / 100:
                                if not arg1 * _devFee / 100:
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if not arg1 * _devFee / 100:
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _liquidityFee / 100:
                        if not arg1 * _burnFee / 100:
                            if not arg1 * _devFee / 100:
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _devFee / 100:
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if not arg1 * _burnFee / 100:
                            if not arg1 * _devFee / 100:
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _devFee / 100:
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
    else:
        require arg1
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not arg1:
            if not arg1:
                if not arg1:
                    if arg1 * _taxFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if arg1 * _taxFee / 100:
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                return 0
                        else:
                            return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * _devFee / arg1 != _devFee:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if arg1 * _taxFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if arg1 * _devFee / 100:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _devFee / 100:
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _devFee / 100:
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _devFee / 100
                            if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if not arg1 * _devFee / 100:
                            if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _devFee / 100
                            if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * _burnFee / arg1 != _burnFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                if not arg1:
                    if arg1 * _taxFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _burnFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if arg1 * _burnFee / 100:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _burnFee / 100:
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _burnFee / 100:
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if not arg1 * _burnFee / 100:
                            if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * _devFee / arg1 != _devFee:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if arg1 * _taxFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _burnFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _burnFee / 100:
                                if arg1 * _devFee / 100:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if not arg1 * _devFee / 100:
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _burnFee / 100:
                                if not arg1 * _devFee / 100:
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if not arg1 * _devFee / 100:
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _burnFee / 100:
                            if not arg1 * _devFee / 100:
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _devFee / 100:
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if not arg1 * _burnFee / 100:
                            if not arg1 * _devFee / 100:
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _burnFee / 100
                            if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _devFee / 100:
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg1:
                if not arg1:
                    if arg1 * _taxFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _liquidityFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if arg1 * _liquidityFee / 100:
                                require arg1 * _liquidityFee / 100
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _liquidityFee / 100:
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _liquidityFee / 100
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if 0 > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * _devFee / arg1 != _devFee:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if arg1 * _taxFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _liquidityFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _liquidityFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                if arg1 * _devFee / 100:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _liquidityFee / 100
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if not arg1 * _devFee / 100:
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _liquidityFee / 100:
                                if not arg1 * _devFee / 100:
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _liquidityFee / 100
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if not arg1 * _devFee / 100:
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if not arg1 * _devFee / 100:
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _devFee / 100:
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if not arg1 * _liquidityFee / 100:
                            if not arg1 * _devFee / 100:
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _devFee / 100:
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _devFee / 100
                                if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * _burnFee / arg1 != _burnFee:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                if not arg1:
                    if arg1 * _taxFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _liquidityFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _liquidityFee / 100) - (arg1 * _burnFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                if arg1 * _burnFee / 100:
                                    require arg1 * _burnFee / 100
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _liquidityFee / 100
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if not arg1 * _burnFee / 100:
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _burnFee / 100
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _liquidityFee / 100:
                                if not arg1 * _burnFee / 100:
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _burnFee / 100
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _liquidityFee / 100
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if not arg1 * _burnFee / 100:
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _burnFee / 100
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if not arg1 * _burnFee / 100:
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _burnFee / 100:
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if 0 > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if not arg1 * _liquidityFee / 100:
                            if not arg1 * _burnFee / 100:
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _burnFee / 100:
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * _devFee / arg1 != _devFee:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if arg1 * _taxFee / 100 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _burnFee / 100 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _liquidityFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _devFee / 100 > arg1 - (arg1 * _taxFee / 100) - (arg1 * _liquidityFee / 100) - (arg1 * _burnFee / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                if not arg1 * _burnFee / 100:
                                    if arg1 * _devFee / 100:
                                        require arg1 * _devFee / 100
                                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                        if arg1 * _devFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _burnFee / 100
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if not arg1 * _devFee / 100:
                                        if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require arg1 * _devFee / 100
                                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                        if arg1 * _burnFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _burnFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _liquidityFee / 100
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if not arg1 * _burnFee / 100:
                                    if not arg1 * _devFee / 100:
                                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require arg1 * _devFee / 100
                                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _burnFee / 100
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if not arg1 * _devFee / 100:
                                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require arg1 * _devFee / 100
                                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _devFee / 100 * stor8 / totalSupply > (-1 * arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _taxFee / 100
                            if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _liquidityFee / 100:
                                if not arg1 * _burnFee / 100:
                                    if not arg1 * _devFee / 100:
                                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require arg1 * _devFee / 100
                                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _devFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _burnFee / 100
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if not arg1 * _devFee / 100:
                                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require arg1 * _devFee / 100
                                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _burnFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _devFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _liquidityFee / 100
                                if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if not arg1 * _burnFee / 100:
                                    if not arg1 * _devFee / 100:
                                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require arg1 * _devFee / 100
                                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _devFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _burnFee / 100
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if not arg1 * _devFee / 100:
                                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _burnFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if 0 > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require arg1 * _devFee / 100
                                        if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                        if arg1 * _taxFee / 100 * stor8 / totalSupply > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _liquidityFee / 100 * stor8 / totalSupply > -1 * arg1 * _taxFee / 100 * stor8 / totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _burnFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if arg1 * _devFee / 100 * stor8 / totalSupply > (-1 * arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                            revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    require arg1
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if not arg1 * _burnFee / 100:
                                if not arg1 * _devFee / 100:
                                    if 0 > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if 0 > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if not arg1 * _devFee / 100:
                                    if 0 > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if 0 > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _burnFee / 100:
                                if not arg1 * _devFee / 100:
                                    if 0 > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if 0 > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if not arg1 * _devFee / 100:
                                    if 0 > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if 0 > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor8 / totalSupply / arg1 * _taxFee / 100 != stor8 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                        if not arg1 * _liquidityFee / 100:
                            if not arg1 * _burnFee / 100:
                                if not arg1 * _devFee / 100:
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if not arg1 * _devFee / 100:
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor8 / totalSupply / arg1 * _liquidityFee / 100 != stor8 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                            if not arg1 * _burnFee / 100:
                                if not arg1 * _devFee / 100:
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require arg1 * _burnFee / 100
                                if arg1 * _burnFee / 100 * stor8 / totalSupply / arg1 * _burnFee / 100 != stor8 / totalSupply:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                if not arg1 * _devFee / 100:
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    require arg1 * _devFee / 100
                                    if arg1 * _devFee / 100 * stor8 / totalSupply / arg1 * _devFee / 100 != stor8 / totalSupply:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1317 len 31]
                                    if arg1 * _taxFee / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _liquidityFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _burnFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if arg1 * _devFee / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _taxFee / 100 * stor8 / totalSupply) - (arg1 * _liquidityFee / 100 * stor8 / totalSupply) - (arg1 * _burnFee / 100 * stor8 / totalSupply):
                                        revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 * stor8 / totalSupply)
}



}
