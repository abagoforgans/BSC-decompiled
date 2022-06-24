contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'MICRO HITLER'

const decimals = 4

const symbol = 'MH'


function swapThreshold() {
    return ('storage', 256, 0, 32)
}

function totalSupply() {
    return ('storage', 256, 0, 6)
}

function totalFee() {
    return ('storage', 256, 0, 18)
}

function swapEnabled() {
    return bool(('storage', 8, 0, 31))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 9)))
}

function cooldownTimerInterval() {
    return ('storage', 8, 8, 29)
}

function _maxWalletToken() {
    return ('storage', 256, 0, 8)
}

function _maxTxAmount() {
    return ('storage', 256, 0, 7)
}

function getOwner() {
    return ('storage', 160, 0, 0)
}

function pair() {
    return ('storage', 160, 0, 25)
}

function launchedAt() {
    return ('storage', 256, 0, 26)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 10)))))
}

function sellCooldownEnabled() {
    return bool(('storage', 8, 0, 29))
}

function marketingFeeReceiver() {
    return ('storage', 160, 0, 21)
}

function router() {
    return ('storage', 160, 0, 24)
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1))))
}

function tradingOpen() {
    return bool(('storage', 8, 0, 27))
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == ('storage', 160, 0, 0))
}

function tradingStatus(bool arg1) {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, '!OWNER'
    uint8(stor[27].field_0) = uint8(arg1)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, '!OWNER'
    uint8(stor[sha3(address(arg1), 1)].field_0) = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, '!OWNER'
    uint8(stor[sha3(address(arg1), 1)].field_0) = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    uint256(stor[sha3(address(arg1), sha3(address(msg.sender), 10))].field_0) = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    uint256(stor[sha3(address(arg1), sha3(address(msg.sender), 10))].field_0) = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, '!OWNER'
    uint256(stor[8].field_0) = ('storage', 256, 0, 6) * arg1 / 100
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
        revert with 0, '!AUTHORIZED'
    uint256(stor[7].field_0) = arg1
}

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, '!OWNER'
    uint8(stor[29].field_0) = uint8(arg1)
    uint8(stor[29].field_8) = arg2
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    uint256(stor[28].field_0) = arg1
}

function setTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
        revert with 0, '!AUTHORIZED'
    uint8(stor[sha3(address(arg1), 12)].field_0) = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, '!OWNER'
    address(stor[0].field_0) = arg1
    uint8(stor[sha3(address(arg1), 1)].field_0) = 1
    emit OwnershipTransferred(arg1);
}

function setIsTimelockExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
        revert with 0, '!AUTHORIZED'
    uint8(stor[sha3(address(arg1), 13)].field_0) = uint8(arg2)
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
        revert with 0, '!AUTHORIZED'
    address(stor[20].field_0) = arg1
    address(stor[21].field_0) = arg2
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
        revert with 0, '!AUTHORIZED'
    uint256(stor[22].field_0) = arg1
    uint256(stor[23].field_0) = arg2
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
        revert with 0, '!AUTHORIZED'
    uint8(stor[31].field_0) = uint8(arg1)
    uint256(stor[32].field_0) = arg2
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, '!OWNER'
    call ('storage', 160, 0, 21) with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
        revert with 0, '!AUTHORIZED'
    require ext_code.size(('storage', 160, 8, 27))
    call ('storage', 160, 8, 27).0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) > ('storage', 256, 0, 6):
        revert with 0, 'SafeMath: subtraction overflow'
    if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) > ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))):
        revert with 0, 'SafeMath: subtraction overflow'
    return (('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))))
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
        revert with 0, '!AUTHORIZED'
    uint256(stor[15].field_0) = arg1
    uint256(stor[16].field_0) = arg2
    uint256(stor[17].field_0) = arg3
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    uint256(stor[18].field_0) = arg1 + arg2 + arg3
    uint256(stor[19].field_0) = arg4
    require ('storage', 256, 0, 18) < ('storage', 254, 2, 19)
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != ('storage', 160, 0, 25)
    uint8(stor[sha3(address(arg1), 14)].field_0) = uint8(arg2)
    require ext_code.size(('storage', 160, 8, 27))
    if not arg2:
        call ('storage', 160, 8, 27).setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 9)))
    else:
        call ('storage', 160, 8, 27).setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) > ('storage', 256, 0, 6):
        revert with 0, 'SafeMath: subtraction overflow'
    if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) > ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))):
        revert with 0, 'SafeMath: subtraction overflow'
    if not ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 25), 9))):
        if not arg1:
            if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))):
                return (0 / ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))))
        else:
            if arg1:
                if 0 / arg1:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))):
                    return (0 / ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))))
    else:
        if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 25), 9))):
            if 2 * ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 25), 9))) / ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 25), 9))) != 2:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg1:
                if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))):
                    return (0 / ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))))
            else:
                if arg1:
                    if arg1 * 2 * ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 25), 9))) / arg1 != 2 * ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 25), 9))):
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))):
                        return (arg1 * 2 * ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 25), 9))) / ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))))
    revert
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) > ('storage', 256, 0, 6):
        revert with 0, 'SafeMath: subtraction overflow'
    if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) > ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))):
        revert with 0, 'SafeMath: subtraction overflow'
    if not ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 25), 9))):
        if not arg2:
            if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))):
                return (0 / ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) > arg1)
        else:
            if arg2:
                if 0 / arg2:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))):
                    return (0 / ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) > arg1)
    else:
        if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 25), 9))):
            if 2 * ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 25), 9))) / ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 25), 9))) != 2:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg2:
                if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))):
                    return (0 / ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) > arg1)
            else:
                if arg2:
                    if arg2 * 2 * ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 25), 9))) / arg2 != 2 * ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 25), 9))):
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))):
                        return (arg2 * 2 * ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 25), 9))) / ('storage', 256, 0, 6) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 4), 9))) - ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, 5), 9))) > arg1)
    revert
}

function airdrop(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, '!OWNER'
    if arg2.length != arg3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d69736d61746368206265747765656e204164647265737320616e6420746f6b656e20636f756e,
                    mem[204 len 24]
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg3.length
        idx = idx + 1
        s = s + cd[((32 * idx) + arg3 + 36)]
        continue 
    mem[0] = arg1
    mem[32] = 9
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 9))) < s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length:
        revert with 0, 'Not enough tokens to airdrop'
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        _63 = mem[64]
        mem[64] = mem[64] + 64
        mem[_63] = 20
        mem[_63 + 32] = 'Insufficient Balance'
        mem[32] = 9
        if cd[((32 * idx) + arg3 + 36)] > ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 9))):
            _65 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[_65 + idx + 68] = mem[_63 + idx + 32]
                idx = idx + 32
                continue 
            mem[_65 + 68] = mem[_65 + 80 len 20]
            revert with memory
              from mem[64]
               len _65 + -mem[64] + 100
        uint256(stor[sha3(address(arg1), 9)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 9))) - cd[((32 * idx) + arg3 + 36)]
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg2')))), 9))) + cd[((32 * idx) + arg3 + 36)] < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg2')))), 9))):
            revert with 0, 'SafeMath: addition overflow'
        uint256(stor[sha3(address(cd[((32 * idx) + arg2 + 36)]), 9)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg2')))), 9))) + cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = cd[((32 * idx) + arg3 + 36)]
        emit Transfer(cd[((32 * idx) + arg3 + 36)], arg1, address(cd[((32 * idx) + arg2 + 36)]));
        require idx < arg2.length
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 14
        if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg2')))), 14))):
            require idx < arg2.length
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 9
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg2')))), 9)))
            require ext_code.size(('storage', 160, 8, 27))
            call ('storage', 160, 8, 27).setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg2')))), 9)))
        idx = idx + 1
        continue 
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 14))):
        require ext_code.size(('storage', 160, 8, 27))
        call ('storage', 160, 8, 27).setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 9)))
}



}
