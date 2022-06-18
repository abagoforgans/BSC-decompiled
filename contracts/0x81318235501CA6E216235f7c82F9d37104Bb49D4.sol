contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
array of struct stor0;
array of struct stor1;
uint256 totalSupply;
uint8 decimals;
address stor3;
address stor3; offset 8
address uniswapPairAddress;
address devWalletAddress;
uint256 maxWalletLimit;
uint256 _maxTxAmount;
uint8 devFee;
uint8 liquidityFee; offset 8
uint256 addLiquidityAmount;
uint256 sub_d798ed4c;
uint8 stor12; offset 160
uint128 stor12; offset 160
address owner;
address stor13;
mapping of uint256 allowance;
mapping of struct balanceOf;
mapping of uint8 stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;
mapping of uint8 stor19;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function addLiquidityAmount() {
    return addLiquidityAmount
}

function maxWalletLimit() {
    return maxWalletLimit
}

function devFee() {
    return devFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_0
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function devWallet() {
    return devWalletAddress
}

function liquidityFee() {
    return liquidityFee
}

function uniswapPair() {
    return uniswapPairAddress
}

function sub_d798ed4c(?) {
    return sub_d798ed4c
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
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAddresses(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    devWalletAddress = arg1
}

function setInSwap(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    Mask(96, 0, stor12.field_160) = Mask(96, 0, arg1)
}

function setFees(uint8 arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    devFee = arg1
    liquidityFee = arg2
}

function setExcludedFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    stor18[address(arg1)] = uint8(arg2)
}

function setBlacklistWallet(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    stor19[address(arg1)] = uint8(arg2)
}

function setExcludedMaxWallet(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    stor16[address(arg1)] = uint8(arg2)
}

function setExcludedMaxTransaction(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    stor17[address(arg1)] = uint8(arg2)
}

function setExcludedAll(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    stor17[address(arg1)] = 1
    stor16[address(arg1)] = 1
    stor18[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owner can not be the zero address!'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdrawal amount exceeds balance!'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0, 'Decreased allowance below zero!'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    if not uniswapPairAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
    allowance[stor5][address(msg.sender)] = sub_d798ed4c
    emit Approval(sub_d798ed4c, uniswapPairAddress, msg.sender);
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setLimits(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function!'
    if not decimals:
        if arg1 and 1 > -1 / arg1:
            revert with 'NH{q', 17
        maxWalletLimit = arg1
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > -1:
                revert with 'NH{q', 17
            if arg1 and 10^decimals > -1 / arg1:
                revert with 'NH{q', 17
            maxWalletLimit = arg1 * 10^decimals
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg1 and t * s > -1 / arg1:
                revert with 'NH{q', 17
            maxWalletLimit = arg1 * t * s
    if not decimals:
        if arg2 and 1 > -1 / arg2:
            revert with 'NH{q', 17
        _maxTxAmount = arg2
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > -1:
                revert with 'NH{q', 17
            if arg2 and 10^decimals > -1 / arg2:
                revert with 'NH{q', 17
            _maxTxAmount = arg2 * 10^decimals
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg2 and t * s > -1 / arg2:
                revert with 'NH{q', 17
            _maxTxAmount = arg2 * t * s
    if not decimals:
        if arg3 and 1 > -1 / arg3:
            revert with 'NH{q', 17
        addLiquidityAmount = arg3
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > -1:
                revert with 'NH{q', 17
            if arg3 and 10^decimals > -1 / arg3:
                revert with 'NH{q', 17
            addLiquidityAmount = arg3 * 10^decimals
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg3 and t * s > -1 / arg3:
                revert with 'NH{q', 17
            addLiquidityAmount = arg3 * t * s
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'Amount exceeds allowance!'
    if stor19[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender or recipient is blacklisted!'
    if stor19[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender or recipient is blacklisted!'
    if stor17[address(arg1)]:
        if stor16[address(arg2)]:
            if balanceOf[address(arg1)].field_0 < arg3:
                revert with 0, 'Amount exceeds sender's balance!'
            balanceOf[address(arg1)].field_0 -= arg3
            if arg1 == uniswapPairAddress:
                if not stor18[address(arg2)]:
                    if arg3 / 100 and devFee > -1 / arg3 / 100:
                        revert with 'NH{q', 17
                    if arg3 / 100 and liquidityFee > -1 / arg3 / 100:
                        revert with 'NH{q', 17
                    if arg3 / 100 * devFee > (-1 * arg3 / 100 * liquidityFee) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(this.address)].field_0 > (-1 * arg3 / 100 * devFee) + (-1 * arg3 / 100 * liquidityFee) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)
                    emit Transfer(((arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)), arg1, this.address);
                    if arg3 < (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee):
                        revert with 'NH{q', 17
                    if arg2 != uniswapPairAddress:
                        if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                        emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                    else:
                        if uint8(stor12.field_160):
                            if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                            emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                        else:
                            if balanceOf[address(this.address)].field_0 < addLiquidityAmount:
                                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                                emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 'NH{q', 17
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                            else:
                                Mask(96, 0, stor12.field_160) = 1
                                if devFee > -liquidityFee + 255:
                                    revert with 'NH{q', 17
                                if not uint8(devFee + liquidityFee):
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) and devFee > -1 / balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee):
                                    revert with 'NH{q', 17
                                mem[96] = 2
                                mem[128] = this.address
                                require ext_code.size(stor13)
                                staticcall stor13.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'Wallet address can not be the zero address!'
                                if not address(stor3.field_8):
                                    revert with 0, 'Spender can not be the zero address!'
                                allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
                                emit Approval((balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee), this.address, address(stor3.field_8));
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
                                mem[ceil32(return_data.size) + 356] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 292] = devWalletAddress
                                mem[ceil32(return_data.size) + 324] = block.timestamp + 1200
                                require ext_code.size(stor13)
                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee, 0, 160, devWalletAddress, block.timestamp + 1200, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192] = 2
                                mem[ceil32(return_data.size) + 224] = this.address
                                require ext_code.size(stor13)
                                staticcall stor13.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'Wallet address can not be the zero address!'
                                if not address(stor3.field_8):
                                    revert with 0, 'Spender can not be the zero address!'
                                mem[0] = address(stor3.field_8)
                                mem[32] = sha3(address(this.address), 14)
                                allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_1
                                emit Approval(balanceOf[address(this.address)].field_1, this.address, address(stor3.field_8));
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)].field_1
                                mem[(2 * ceil32(return_data.size)) + 324] = 0
                                mem[(2 * ceil32(return_data.size)) + 356] = 160
                                mem[(2 * ceil32(return_data.size)) + 452] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 224
                                t = (2 * ceil32(return_data.size)) + 484
                                while idx < mem[ceil32(return_data.size) + 192]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp + 1200
                                require ext_code.size(stor13)
                                call stor13.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 192]) + -mem[64] + 480]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_1:
                                    revert with 'NH{q', 17
                                if not this.address:
                                    revert with 0, 'Wallet address can not be the zero address!'
                                if not address(stor3.field_8):
                                    revert with 0, 'Spender can not be the zero address!'
                                mem[0] = address(stor3.field_8)
                                mem[32] = sha3(address(this.address), 14)
                                allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
                                emit Approval((balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1), this.address, address(stor3.field_8));
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp + 1200
                                require ext_code.size(stor13)
                                call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1, 0, 0, address(this.address), block.timestamp + 1200
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2019 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_2019] == mem[_2019]
                                require mem[_2019 + 32] == mem[_2019 + 32]
                                require mem[_2019 + 64] == mem[_2019 + 64]
                                Mask(96, 0, stor12.field_160) = 0
                                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                                emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 'NH{q', 17
                                if not arg1:
                                    revert with 0, 'Wallet address can not be the zero address!'
                                if not msg.sender:
                                    revert with 0, 'Spender can not be the zero address!'
                    ('bool', 'msg.sender')
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    return 1
            if arg2 != uniswapPairAddress:
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
            if stor18[address(arg1)]:
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
            if arg3 / 100 and devFee > -1 / arg3 / 100:
                revert with 'NH{q', 17
            if arg3 / 100 and liquidityFee > -1 / arg3 / 100:
                revert with 'NH{q', 17
            if arg3 / 100 * devFee > (-1 * arg3 / 100 * liquidityFee) - 1:
                revert with 'NH{q', 17
            if balanceOf[address(this.address)].field_0 > (-1 * arg3 / 100 * devFee) + (-1 * arg3 / 100 * liquidityFee) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)
            emit Transfer(((arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)), arg1, this.address);
            if arg3 < (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee):
                revert with 'NH{q', 17
            if arg2 != uniswapPairAddress:
                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
            if uint8(stor12.field_160):
                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
            if balanceOf[address(this.address)].field_0 < addLiquidityAmount:
                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
            Mask(96, 0, stor12.field_160) = 1
            if devFee > -liquidityFee + 255:
                revert with 'NH{q', 17
            if not uint8(devFee + liquidityFee):
                revert with 'NH{q', 18
            if balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) and devFee > -1 / balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee):
                revert with 'NH{q', 17
            mem[96] = 2
            mem[128] = this.address
            require ext_code.size(stor13)
            staticcall stor13.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'Wallet address can not be the zero address!'
            if not address(stor3.field_8):
                revert with 0, 'Spender can not be the zero address!'
            allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
            emit Approval((balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee), this.address, address(stor3.field_8));
            if block.timestamp > -1201:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
            mem[ceil32(return_data.size) + 356] = 2
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 292] = devWalletAddress
            mem[ceil32(return_data.size) + 324] = block.timestamp + 1200
            require ext_code.size(stor13)
            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee, 0, 160, devWalletAddress, block.timestamp + 1200, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192] = 2
            mem[ceil32(return_data.size) + 224] = this.address
            require ext_code.size(stor13)
            staticcall stor13.WETH() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'Wallet address can not be the zero address!'
            if not address(stor3.field_8):
                revert with 0, 'Spender can not be the zero address!'
            mem[0] = address(stor3.field_8)
            mem[32] = sha3(address(this.address), 14)
            allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_1
            emit Approval(balanceOf[address(this.address)].field_1, this.address, address(stor3.field_8));
            if block.timestamp > -1201:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)].field_1
            mem[(2 * ceil32(return_data.size)) + 324] = 0
            mem[(2 * ceil32(return_data.size)) + 356] = 160
            mem[(2 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = ceil32(return_data.size) + 224
            t = (2 * ceil32(return_data.size)) + 484
            while idx < mem[ceil32(return_data.size) + 192]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 388] = this.address
            mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp + 1200
            require ext_code.size(stor13)
            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 2 * Mask(256, -1, balanceOf[address(this.address)].field_1), 0, 160, address(this.address), block.timestamp + 1200, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 'NH{q', 17
            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_1:
                revert with 'NH{q', 17
            if not this.address:
                mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 292] = 32
                mem[(2 * ceil32(return_data.size)) + 324] = 43
                mem[(2 * ceil32(return_data.size)) + 356] = 'Wallet address can not be the ze'
                mem[(2 * ceil32(return_data.size)) + 388] = 'ro address!'
                revert with memory
                  from (2 * ceil32(return_data.size)) + 288
                   len ceil32(return_data.size) + 132
            if not address(stor3.field_8):
                mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 292] = 32
                mem[(2 * ceil32(return_data.size)) + 324] = 36
                mem[(2 * ceil32(return_data.size)) + 356] = 'Spender can not be the zero addr'
                mem[(2 * ceil32(return_data.size)) + 388] = 'ess!'
                revert with memory
                  from (2 * ceil32(return_data.size)) + 288
                   len ceil32(return_data.size) + 132
            allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
            emit Approval((balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1), this.address, address(stor3.field_8));
            if block.timestamp > -1201:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
            mem[(2 * ceil32(return_data.size)) + 356] = 0
            mem[(2 * ceil32(return_data.size)) + 388] = 0
            mem[(2 * ceil32(return_data.size)) + 420] = this.address
            mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp + 1200
            require ext_code.size(stor13)
            call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 192]
            mem[(2 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            Mask(96, 0, stor12.field_160) = 0
            if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
            emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 'NH{q', 17
            if not arg1:
                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 292] = 32
                mem[(4 * ceil32(return_data.size)) + 324] = 43
                mem[(4 * ceil32(return_data.size)) + 356] = 'Wallet address can not be the ze'
                mem[(4 * ceil32(return_data.size)) + 388] = 'ro address!'
            else:
                if msg.sender:
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    return 1
                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 292] = 32
                mem[(4 * ceil32(return_data.size)) + 324] = 36
                mem[(4 * ceil32(return_data.size)) + 356] = 'Spender can not be the zero addr'
                mem[(4 * ceil32(return_data.size)) + 388] = 'ess!'
            revert with memory
              from (4 * ceil32(return_data.size)) + 288
               len (5 * ceil32(return_data.size)) + 132
        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
            revert with 'NH{q', 17
        if balanceOf[address(arg2)].field_0 + arg3 > maxWalletLimit:
            revert with 0, 'Exceeds max wallet limit!'
        if balanceOf[address(arg1)].field_0 < arg3:
            revert with 0, 'Amount exceeds sender's balance!'
        balanceOf[address(arg1)].field_0 -= arg3
        if arg1 != uniswapPairAddress:
            if arg2 != uniswapPairAddress:
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
            else:
                if stor18[address(arg1)]:
                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)].field_0 += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                else:
                    if arg3 / 100 and devFee > -1 / arg3 / 100:
                        revert with 'NH{q', 17
                    if arg3 / 100 and liquidityFee > -1 / arg3 / 100:
                        revert with 'NH{q', 17
                    if arg3 / 100 * devFee > (-1 * arg3 / 100 * liquidityFee) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(this.address)].field_0 > (-1 * arg3 / 100 * devFee) + (-1 * arg3 / 100 * liquidityFee) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)
                    emit Transfer(((arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)), arg1, this.address);
                    if arg3 < (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee):
                        revert with 'NH{q', 17
                    if arg2 != uniswapPairAddress:
                        if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                        emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                    else:
                        if uint8(stor12.field_160):
                            if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                            emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                        else:
                            if balanceOf[address(this.address)].field_0 < addLiquidityAmount:
                                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                                emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 'NH{q', 17
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                            else:
                                Mask(96, 0, stor12.field_160) = 1
                                if devFee > -liquidityFee + 255:
                                    revert with 'NH{q', 17
                                if not uint8(devFee + liquidityFee):
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) and devFee > -1 / balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee):
                                    revert with 'NH{q', 17
                                mem[96] = 2
                                mem[128] = this.address
                                require ext_code.size(stor13)
                                staticcall stor13.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'Wallet address can not be the zero address!'
                                if not address(stor3.field_8):
                                    revert with 0, 'Spender can not be the zero address!'
                                allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
                                emit Approval((balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee), this.address, address(stor3.field_8));
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
                                mem[ceil32(return_data.size) + 356] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 292] = devWalletAddress
                                mem[ceil32(return_data.size) + 324] = block.timestamp + 1200
                                require ext_code.size(stor13)
                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee, 0, 160, devWalletAddress, block.timestamp + 1200, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192] = 2
                                mem[ceil32(return_data.size) + 224] = this.address
                                require ext_code.size(stor13)
                                staticcall stor13.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'Wallet address can not be the zero address!'
                                if not address(stor3.field_8):
                                    revert with 0, 'Spender can not be the zero address!'
                                mem[0] = address(stor3.field_8)
                                mem[32] = sha3(address(this.address), 14)
                                allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_1
                                emit Approval(balanceOf[address(this.address)].field_1, this.address, address(stor3.field_8));
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)].field_1
                                mem[(2 * ceil32(return_data.size)) + 324] = 0
                                mem[(2 * ceil32(return_data.size)) + 356] = 160
                                mem[(2 * ceil32(return_data.size)) + 452] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 224
                                t = (2 * ceil32(return_data.size)) + 484
                                while idx < mem[ceil32(return_data.size) + 192]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp + 1200
                                require ext_code.size(stor13)
                                call stor13.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 192]) + -mem[64] + 480]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_1:
                                    revert with 'NH{q', 17
                                if not this.address:
                                    revert with 0, 'Wallet address can not be the zero address!'
                                if not address(stor3.field_8):
                                    revert with 0, 'Spender can not be the zero address!'
                                mem[0] = address(stor3.field_8)
                                mem[32] = sha3(address(this.address), 14)
                                allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
                                emit Approval((balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1), this.address, address(stor3.field_8));
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp + 1200
                                require ext_code.size(stor13)
                                call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1, 0, 0, address(this.address), block.timestamp + 1200
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2021 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_2021] == mem[_2021]
                                require mem[_2021 + 32] == mem[_2021 + 32]
                                require mem[_2021 + 64] == mem[_2021 + 64]
                                Mask(96, 0, stor12.field_160) = 0
                                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                                emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 'NH{q', 17
                                if not arg1:
                                    revert with 0, 'Wallet address can not be the zero address!'
                                if not msg.sender:
                                    revert with 0, 'Spender can not be the zero address!'
        else:
            if not stor18[address(arg2)]:
                if arg3 / 100 and devFee > -1 / arg3 / 100:
                    revert with 'NH{q', 17
                if arg3 / 100 and liquidityFee > -1 / arg3 / 100:
                    revert with 'NH{q', 17
                if arg3 / 100 * devFee > (-1 * arg3 / 100 * liquidityFee) - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(this.address)].field_0 > (-1 * arg3 / 100 * devFee) + (-1 * arg3 / 100 * liquidityFee) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)
                emit Transfer(((arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)), arg1, this.address);
                if arg3 < (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee):
                    revert with 'NH{q', 17
                if arg2 != uniswapPairAddress:
                    if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                    emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                else:
                    if uint8(stor12.field_160):
                        if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                        emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                    else:
                        if balanceOf[address(this.address)].field_0 < addLiquidityAmount:
                            if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                            emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                        else:
                            Mask(96, 0, stor12.field_160) = 1
                            if devFee > -liquidityFee + 255:
                                revert with 'NH{q', 17
                            if not uint8(devFee + liquidityFee):
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) and devFee > -1 / balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee):
                                revert with 'NH{q', 17
                            mem[96] = 2
                            mem[128] = this.address
                            require ext_code.size(stor13)
                            staticcall stor13.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'Wallet address can not be the zero address!'
                            if not address(stor3.field_8):
                                revert with 0, 'Spender can not be the zero address!'
                            allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
                            emit Approval((balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee), this.address, address(stor3.field_8));
                            if block.timestamp > -1201:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
                            mem[ceil32(return_data.size) + 356] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 292] = devWalletAddress
                            mem[ceil32(return_data.size) + 324] = block.timestamp + 1200
                            require ext_code.size(stor13)
                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee, 0, 160, devWalletAddress, block.timestamp + 1200, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192] = 2
                            mem[ceil32(return_data.size) + 224] = this.address
                            require ext_code.size(stor13)
                            staticcall stor13.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'Wallet address can not be the zero address!'
                            if not address(stor3.field_8):
                                revert with 0, 'Spender can not be the zero address!'
                            mem[0] = address(stor3.field_8)
                            mem[32] = sha3(address(this.address), 14)
                            allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_1
                            emit Approval(balanceOf[address(this.address)].field_1, this.address, address(stor3.field_8));
                            if block.timestamp > -1201:
                                revert with 'NH{q', 17
                            mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)].field_1
                            mem[(2 * ceil32(return_data.size)) + 324] = 0
                            mem[(2 * ceil32(return_data.size)) + 356] = 160
                            mem[(2 * ceil32(return_data.size)) + 452] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 224
                            t = (2 * ceil32(return_data.size)) + 484
                            while idx < mem[ceil32(return_data.size) + 192]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 388] = this.address
                            mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp + 1200
                            require ext_code.size(stor13)
                            call stor13.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 192]) + -mem[64] + 480]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_1:
                                revert with 'NH{q', 17
                            if not this.address:
                                revert with 0, 'Wallet address can not be the zero address!'
                            if not address(stor3.field_8):
                                revert with 0, 'Spender can not be the zero address!'
                            mem[0] = address(stor3.field_8)
                            mem[32] = sha3(address(this.address), 14)
                            allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
                            emit Approval((balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1), this.address, address(stor3.field_8));
                            if block.timestamp > -1201:
                                revert with 'NH{q', 17
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp + 1200
                            require ext_code.size(stor13)
                            call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1, 0, 0, address(this.address), block.timestamp + 1200
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2022 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_2022] == mem[_2022]
                            require mem[_2022 + 32] == mem[_2022 + 32]
                            require mem[_2022 + 64] == mem[_2022 + 64]
                            Mask(96, 0, stor12.field_160) = 0
                            if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                            emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0, 'Wallet address can not be the zero address!'
                            if not msg.sender:
                                revert with 0, 'Spender can not be the zero address!'
            else:
                if arg2 != uniswapPairAddress:
                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)].field_0 += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                else:
                    if stor18[address(arg1)]:
                        if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)].field_0 += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                    else:
                        if arg3 / 100 and devFee > -1 / arg3 / 100:
                            revert with 'NH{q', 17
                        if arg3 / 100 and liquidityFee > -1 / arg3 / 100:
                            revert with 'NH{q', 17
                        if arg3 / 100 * devFee > (-1 * arg3 / 100 * liquidityFee) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)].field_0 > (-1 * arg3 / 100 * devFee) + (-1 * arg3 / 100 * liquidityFee) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)
                        emit Transfer(((arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)), arg1, this.address);
                        if arg3 < (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee):
                            revert with 'NH{q', 17
                        if arg2 != uniswapPairAddress:
                            if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                            emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                        else:
                            if uint8(stor12.field_160):
                                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                                emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 'NH{q', 17
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                            else:
                                if balanceOf[address(this.address)].field_0 < addLiquidityAmount:
                                    if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                                    emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                                        revert with 'NH{q', 17
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                                else:
                                    Mask(96, 0, stor12.field_160) = 1
                                    if devFee > -liquidityFee + 255:
                                        revert with 'NH{q', 17
                                    if not uint8(devFee + liquidityFee):
                                        revert with 'NH{q', 18
                                    if balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) and devFee > -1 / balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee):
                                        revert with 'NH{q', 17
                                    mem[96] = 2
                                    mem[128] = this.address
                                    require ext_code.size(stor13)
                                    staticcall stor13.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'Wallet address can not be the zero address!'
                                    if not address(stor3.field_8):
                                        revert with 0, 'Spender can not be the zero address!'
                                    allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
                                    emit Approval((balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee), this.address, address(stor3.field_8));
                                    if block.timestamp > -1201:
                                        revert with 'NH{q', 17
                                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
                                    mem[ceil32(return_data.size) + 356] = 2
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 388
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 292] = devWalletAddress
                                    mem[ceil32(return_data.size) + 324] = block.timestamp + 1200
                                    require ext_code.size(stor13)
                                    call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee, 0, 160, devWalletAddress, block.timestamp + 1200, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + 192] = 2
                                    mem[ceil32(return_data.size) + 224] = this.address
                                    require ext_code.size(stor13)
                                    staticcall stor13.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 288
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'Wallet address can not be the zero address!'
                                    if not address(stor3.field_8):
                                        revert with 0, 'Spender can not be the zero address!'
                                    mem[0] = address(stor3.field_8)
                                    mem[32] = sha3(address(this.address), 14)
                                    allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_1
                                    emit Approval(balanceOf[address(this.address)].field_1, this.address, address(stor3.field_8));
                                    if block.timestamp > -1201:
                                        revert with 'NH{q', 17
                                    mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)].field_1
                                    mem[(2 * ceil32(return_data.size)) + 324] = 0
                                    mem[(2 * ceil32(return_data.size)) + 356] = 160
                                    mem[(2 * ceil32(return_data.size)) + 452] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 224
                                    t = (2 * ceil32(return_data.size)) + 484
                                    while idx < mem[ceil32(return_data.size) + 192]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp + 1200
                                    require ext_code.size(stor13)
                                    call stor13.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 192]) + -mem[64] + 480]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_1:
                                        revert with 'NH{q', 17
                                    if not this.address:
                                        revert with 0, 'Wallet address can not be the zero address!'
                                    if not address(stor3.field_8):
                                        revert with 0, 'Spender can not be the zero address!'
                                    mem[0] = address(stor3.field_8)
                                    mem[32] = sha3(address(this.address), 14)
                                    allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
                                    emit Approval((balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1), this.address, address(stor3.field_8));
                                    if block.timestamp > -1201:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = this.address
                                    mem[mem[64] + 164] = block.timestamp + 1200
                                    require ext_code.size(stor13)
                                    call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args address(this.address), balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1, 0, 0, address(this.address), block.timestamp + 1200
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2023 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    require mem[_2023] == mem[_2023]
                                    require mem[_2023 + 32] == mem[_2023 + 32]
                                    require mem[_2023 + 64] == mem[_2023 + 64]
                                    Mask(96, 0, stor12.field_160) = 0
                                    if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                                    emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                                        revert with 'NH{q', 17
                                    if not arg1:
                                        revert with 0, 'Wallet address can not be the zero address!'
                                    if not msg.sender:
                                        revert with 0, 'Spender can not be the zero address!'
        ('bool', 'msg.sender')
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        return 1
    if arg3 > _maxTxAmount:
        revert with 0, 'Exceeds max transaction limit!'
    if stor16[address(arg2)]:
        if balanceOf[address(arg1)].field_0 < arg3:
            revert with 0, 'Amount exceeds sender's balance!'
        balanceOf[address(arg1)].field_0 -= arg3
        if arg1 != uniswapPairAddress:
            if arg2 != uniswapPairAddress:
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
            if stor18[address(arg1)]:
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
            if arg3 / 100 and devFee > -1 / arg3 / 100:
                revert with 'NH{q', 17
            if arg3 / 100 and liquidityFee > -1 / arg3 / 100:
                revert with 'NH{q', 17
            if arg3 / 100 * devFee > (-1 * arg3 / 100 * liquidityFee) - 1:
                revert with 'NH{q', 17
            if balanceOf[address(this.address)].field_0 > (-1 * arg3 / 100 * devFee) + (-1 * arg3 / 100 * liquidityFee) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)
            emit Transfer(((arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)), arg1, this.address);
            if arg3 < (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee):
                revert with 'NH{q', 17
            if arg2 != uniswapPairAddress:
                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
            if uint8(stor12.field_160):
                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
            if balanceOf[address(this.address)].field_0 < addLiquidityAmount:
                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
            Mask(96, 0, stor12.field_160) = 1
            if devFee > -liquidityFee + 255:
                revert with 'NH{q', 17
            if not uint8(devFee + liquidityFee):
                revert with 'NH{q', 18
            if balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) and devFee > -1 / balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee):
                revert with 'NH{q', 17
            mem[96] = 2
            mem[128] = this.address
            require ext_code.size(stor13)
            staticcall stor13.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'Wallet address can not be the zero address!'
            if not address(stor3.field_8):
                revert with 0, 'Spender can not be the zero address!'
            allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
            emit Approval((balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee), this.address, address(stor3.field_8));
            if block.timestamp > -1201:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
            mem[ceil32(return_data.size) + 356] = 2
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 292] = devWalletAddress
            mem[ceil32(return_data.size) + 324] = block.timestamp + 1200
            require ext_code.size(stor13)
            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee, 0, 160, devWalletAddress, block.timestamp + 1200, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192] = 2
            mem[ceil32(return_data.size) + 224] = this.address
            require ext_code.size(stor13)
            staticcall stor13.WETH() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 288
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'Wallet address can not be the zero address!'
            if not address(stor3.field_8):
                revert with 0, 'Spender can not be the zero address!'
            mem[0] = address(stor3.field_8)
            mem[32] = sha3(address(this.address), 14)
            allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_1
            emit Approval(balanceOf[address(this.address)].field_1, this.address, address(stor3.field_8));
            if block.timestamp > -1201:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)].field_1
            mem[(2 * ceil32(return_data.size)) + 324] = 0
            mem[(2 * ceil32(return_data.size)) + 356] = 160
            mem[(2 * ceil32(return_data.size)) + 452] = 2
            idx = 0
            s = ceil32(return_data.size) + 224
            t = (2 * ceil32(return_data.size)) + 484
            while idx < mem[ceil32(return_data.size) + 192]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 388] = this.address
            mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp + 1200
            require ext_code.size(stor13)
            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 2 * Mask(256, -1, balanceOf[address(this.address)].field_1), 0, 160, address(this.address), block.timestamp + 1200, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 'NH{q', 17
            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_1:
                revert with 'NH{q', 17
            if not this.address:
                mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 292] = 32
                mem[(2 * ceil32(return_data.size)) + 324] = 43
                mem[(2 * ceil32(return_data.size)) + 356] = 'Wallet address can not be the ze'
                mem[(2 * ceil32(return_data.size)) + 388] = 'ro address!'
                revert with memory
                  from (2 * ceil32(return_data.size)) + 288
                   len ceil32(return_data.size) + 132
            if not address(stor3.field_8):
                mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 292] = 32
                mem[(2 * ceil32(return_data.size)) + 324] = 36
                mem[(2 * ceil32(return_data.size)) + 356] = 'Spender can not be the zero addr'
                mem[(2 * ceil32(return_data.size)) + 388] = 'ess!'
                revert with memory
                  from (2 * ceil32(return_data.size)) + 288
                   len ceil32(return_data.size) + 132
            allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
            emit Approval((balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1), this.address, address(stor3.field_8));
            if block.timestamp > -1201:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 292] = this.address
            mem[(2 * ceil32(return_data.size)) + 324] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
            mem[(2 * ceil32(return_data.size)) + 356] = 0
            mem[(2 * ceil32(return_data.size)) + 388] = 0
            mem[(2 * ceil32(return_data.size)) + 420] = this.address
            mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp + 1200
            require ext_code.size(stor13)
            call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 192]
            mem[(2 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            Mask(96, 0, stor12.field_160) = 0
            if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
            emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 'NH{q', 17
            if not arg1:
                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 292] = 32
                mem[(4 * ceil32(return_data.size)) + 324] = 43
                mem[(4 * ceil32(return_data.size)) + 356] = 'Wallet address can not be the ze'
                mem[(4 * ceil32(return_data.size)) + 388] = 'ro address!'
            else:
                if msg.sender:
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    return 1
                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 292] = 32
                mem[(4 * ceil32(return_data.size)) + 324] = 36
                mem[(4 * ceil32(return_data.size)) + 356] = 'Spender can not be the zero addr'
                mem[(4 * ceil32(return_data.size)) + 388] = 'ess!'
            revert with memory
              from (4 * ceil32(return_data.size)) + 288
               len (5 * ceil32(return_data.size)) + 132
        if not stor18[address(arg2)]:
            if arg3 / 100 and devFee > -1 / arg3 / 100:
                revert with 'NH{q', 17
            if arg3 / 100 and liquidityFee > -1 / arg3 / 100:
                revert with 'NH{q', 17
            if arg3 / 100 * devFee > (-1 * arg3 / 100 * liquidityFee) - 1:
                revert with 'NH{q', 17
            if balanceOf[address(this.address)].field_0 > (-1 * arg3 / 100 * devFee) + (-1 * arg3 / 100 * liquidityFee) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)
            emit Transfer(((arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)), arg1, this.address);
            if arg3 < (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee):
                revert with 'NH{q', 17
            if arg2 != uniswapPairAddress:
                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
            else:
                if uint8(stor12.field_160):
                    if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                    emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                else:
                    if balanceOf[address(this.address)].field_0 < addLiquidityAmount:
                        if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                        emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                    else:
                        Mask(96, 0, stor12.field_160) = 1
                        if devFee > -liquidityFee + 255:
                            revert with 'NH{q', 17
                        if not uint8(devFee + liquidityFee):
                            revert with 'NH{q', 18
                        if balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) and devFee > -1 / balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee):
                            revert with 'NH{q', 17
                        mem[96] = 2
                        mem[128] = this.address
                        require ext_code.size(stor13)
                        staticcall stor13.WETH() with:
                                gas gas_remaining wei
                        mem[192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[160] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'Wallet address can not be the zero address!'
                        if not address(stor3.field_8):
                            revert with 0, 'Spender can not be the zero address!'
                        allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
                        emit Approval((balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee), this.address, address(stor3.field_8));
                        if block.timestamp > -1201:
                            revert with 'NH{q', 17
                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
                        mem[ceil32(return_data.size) + 356] = 2
                        idx = 0
                        s = 128
                        t = ceil32(return_data.size) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 292] = devWalletAddress
                        mem[ceil32(return_data.size) + 324] = block.timestamp + 1200
                        require ext_code.size(stor13)
                        call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee, 0, 160, devWalletAddress, block.timestamp + 1200, 2, mem[ceil32(return_data.size) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192] = 2
                        mem[ceil32(return_data.size) + 224] = this.address
                        require ext_code.size(stor13)
                        staticcall stor13.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'Wallet address can not be the zero address!'
                        if not address(stor3.field_8):
                            revert with 0, 'Spender can not be the zero address!'
                        mem[0] = address(stor3.field_8)
                        mem[32] = sha3(address(this.address), 14)
                        allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_1
                        emit Approval(balanceOf[address(this.address)].field_1, this.address, address(stor3.field_8));
                        if block.timestamp > -1201:
                            revert with 'NH{q', 17
                        mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)].field_1
                        mem[(2 * ceil32(return_data.size)) + 324] = 0
                        mem[(2 * ceil32(return_data.size)) + 356] = 160
                        mem[(2 * ceil32(return_data.size)) + 452] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 224
                        t = (2 * ceil32(return_data.size)) + 484
                        while idx < mem[ceil32(return_data.size) + 192]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 388] = this.address
                        mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp + 1200
                        require ext_code.size(stor13)
                        call stor13.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 192]) + -mem[64] + 480]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 'NH{q', 17
                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_1:
                            revert with 'NH{q', 17
                        if not this.address:
                            revert with 0, 'Wallet address can not be the zero address!'
                        if not address(stor3.field_8):
                            revert with 0, 'Spender can not be the zero address!'
                        mem[0] = address(stor3.field_8)
                        mem[32] = sha3(address(this.address), 14)
                        allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
                        emit Approval((balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1), this.address, address(stor3.field_8));
                        if block.timestamp > -1201:
                            revert with 'NH{q', 17
                        mem[mem[64] + 68] = 0
                        mem[mem[64] + 100] = 0
                        mem[mem[64] + 132] = this.address
                        mem[mem[64] + 164] = block.timestamp + 1200
                        require ext_code.size(stor13)
                        call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                             gas gas_remaining wei
                            args address(this.address), balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1, 0, 0, address(this.address), block.timestamp + 1200
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2025 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2025] == mem[_2025]
                        require mem[_2025 + 32] == mem[_2025 + 32]
                        require mem[_2025 + 64] == mem[_2025 + 64]
                        Mask(96, 0, stor12.field_160) = 0
                        if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                        emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0, 'Wallet address can not be the zero address!'
                        if not msg.sender:
                            revert with 0, 'Spender can not be the zero address!'
        else:
            if arg2 != uniswapPairAddress:
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
            else:
                if stor18[address(arg1)]:
                    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)].field_0 += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                else:
                    if arg3 / 100 and devFee > -1 / arg3 / 100:
                        revert with 'NH{q', 17
                    if arg3 / 100 and liquidityFee > -1 / arg3 / 100:
                        revert with 'NH{q', 17
                    if arg3 / 100 * devFee > (-1 * arg3 / 100 * liquidityFee) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(this.address)].field_0 > (-1 * arg3 / 100 * devFee) + (-1 * arg3 / 100 * liquidityFee) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)
                    emit Transfer(((arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)), arg1, this.address);
                    if arg3 < (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee):
                        revert with 'NH{q', 17
                    if arg2 != uniswapPairAddress:
                        if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                        emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                    else:
                        if uint8(stor12.field_160):
                            if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                            emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                        else:
                            if balanceOf[address(this.address)].field_0 < addLiquidityAmount:
                                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                                emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 'NH{q', 17
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                            else:
                                Mask(96, 0, stor12.field_160) = 1
                                if devFee > -liquidityFee + 255:
                                    revert with 'NH{q', 17
                                if not uint8(devFee + liquidityFee):
                                    revert with 'NH{q', 18
                                if balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) and devFee > -1 / balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee):
                                    revert with 'NH{q', 17
                                mem[96] = 2
                                mem[128] = this.address
                                require ext_code.size(stor13)
                                staticcall stor13.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'Wallet address can not be the zero address!'
                                if not address(stor3.field_8):
                                    revert with 0, 'Spender can not be the zero address!'
                                allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
                                emit Approval((balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee), this.address, address(stor3.field_8));
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
                                mem[ceil32(return_data.size) + 356] = 2
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 388
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 292] = devWalletAddress
                                mem[ceil32(return_data.size) + 324] = block.timestamp + 1200
                                require ext_code.size(stor13)
                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee, 0, 160, devWalletAddress, block.timestamp + 1200, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 192] = 2
                                mem[ceil32(return_data.size) + 224] = this.address
                                require ext_code.size(stor13)
                                staticcall stor13.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'Wallet address can not be the zero address!'
                                if not address(stor3.field_8):
                                    revert with 0, 'Spender can not be the zero address!'
                                mem[0] = address(stor3.field_8)
                                mem[32] = sha3(address(this.address), 14)
                                allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_1
                                emit Approval(balanceOf[address(this.address)].field_1, this.address, address(stor3.field_8));
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)].field_1
                                mem[(2 * ceil32(return_data.size)) + 324] = 0
                                mem[(2 * ceil32(return_data.size)) + 356] = 160
                                mem[(2 * ceil32(return_data.size)) + 452] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 224
                                t = (2 * ceil32(return_data.size)) + 484
                                while idx < mem[ceil32(return_data.size) + 192]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp + 1200
                                require ext_code.size(stor13)
                                call stor13.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 192]) + -mem[64] + 480]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_1:
                                    revert with 'NH{q', 17
                                if not this.address:
                                    revert with 0, 'Wallet address can not be the zero address!'
                                if not address(stor3.field_8):
                                    revert with 0, 'Spender can not be the zero address!'
                                mem[0] = address(stor3.field_8)
                                mem[32] = sha3(address(this.address), 14)
                                allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
                                emit Approval((balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1), this.address, address(stor3.field_8));
                                if block.timestamp > -1201:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 68] = 0
                                mem[mem[64] + 100] = 0
                                mem[mem[64] + 132] = this.address
                                mem[mem[64] + 164] = block.timestamp + 1200
                                require ext_code.size(stor13)
                                call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args address(this.address), balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1, 0, 0, address(this.address), block.timestamp + 1200
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2026 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                require mem[_2026] == mem[_2026]
                                require mem[_2026 + 32] == mem[_2026 + 32]
                                require mem[_2026 + 64] == mem[_2026 + 64]
                                Mask(96, 0, stor12.field_160) = 0
                                if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                                emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                                if allowance[address(arg1)][address(msg.sender)] < arg3:
                                    revert with 'NH{q', 17
                                if not arg1:
                                    revert with 0, 'Wallet address can not be the zero address!'
                                if not msg.sender:
                                    revert with 0, 'Spender can not be the zero address!'
        ('bool', 'msg.sender')
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        return 1
    if balanceOf[address(arg2)].field_0 > -arg3 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(arg2)].field_0 + arg3 > maxWalletLimit:
        revert with 0, 'Exceeds max wallet limit!'
    if balanceOf[address(arg1)].field_0 < arg3:
        revert with 0, 'Amount exceeds sender's balance!'
    balanceOf[address(arg1)].field_0 -= arg3
    if arg1 != uniswapPairAddress:
        if arg2 != uniswapPairAddress:
            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)].field_0 += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
        else:
            if stor18[address(arg1)]:
                if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)].field_0 += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
            else:
                if arg3 / 100 and devFee > -1 / arg3 / 100:
                    revert with 'NH{q', 17
                if arg3 / 100 and liquidityFee > -1 / arg3 / 100:
                    revert with 'NH{q', 17
                if arg3 / 100 * devFee > (-1 * arg3 / 100 * liquidityFee) - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(this.address)].field_0 > (-1 * arg3 / 100 * devFee) + (-1 * arg3 / 100 * liquidityFee) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)
                emit Transfer(((arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)), arg1, this.address);
                if arg3 < (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee):
                    revert with 'NH{q', 17
                if arg2 != uniswapPairAddress:
                    if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                    emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                else:
                    if uint8(stor12.field_160):
                        if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                        emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                        if allowance[address(arg1)][address(msg.sender)] < arg3:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                    else:
                        if balanceOf[address(this.address)].field_0 < addLiquidityAmount:
                            if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                            emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
                        else:
                            Mask(96, 0, stor12.field_160) = 1
                            if devFee > -liquidityFee + 255:
                                revert with 'NH{q', 17
                            if not uint8(devFee + liquidityFee):
                                revert with 'NH{q', 18
                            if balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) and devFee > -1 / balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee):
                                revert with 'NH{q', 17
                            mem[96] = 2
                            mem[128] = this.address
                            require ext_code.size(stor13)
                            staticcall stor13.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'Wallet address can not be the zero address!'
                            if not address(stor3.field_8):
                                revert with 0, 'Spender can not be the zero address!'
                            allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
                            emit Approval((balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee), this.address, address(stor3.field_8));
                            if block.timestamp > -1201:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
                            mem[ceil32(return_data.size) + 356] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 292] = devWalletAddress
                            mem[ceil32(return_data.size) + 324] = block.timestamp + 1200
                            require ext_code.size(stor13)
                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee, 0, 160, devWalletAddress, block.timestamp + 1200, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 192] = 2
                            mem[ceil32(return_data.size) + 224] = this.address
                            require ext_code.size(stor13)
                            staticcall stor13.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'Wallet address can not be the zero address!'
                            if not address(stor3.field_8):
                                revert with 0, 'Spender can not be the zero address!'
                            mem[0] = address(stor3.field_8)
                            mem[32] = sha3(address(this.address), 14)
                            allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_1
                            emit Approval(balanceOf[address(this.address)].field_1, this.address, address(stor3.field_8));
                            if block.timestamp > -1201:
                                revert with 'NH{q', 17
                            mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)].field_1
                            mem[(2 * ceil32(return_data.size)) + 324] = 0
                            mem[(2 * ceil32(return_data.size)) + 356] = 160
                            mem[(2 * ceil32(return_data.size)) + 452] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 224
                            t = (2 * ceil32(return_data.size)) + 484
                            while idx < mem[ceil32(return_data.size) + 192]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 388] = this.address
                            mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp + 1200
                            require ext_code.size(stor13)
                            call stor13.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 192]) + -mem[64] + 480]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 'NH{q', 17
                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_1:
                                revert with 'NH{q', 17
                            if not this.address:
                                revert with 0, 'Wallet address can not be the zero address!'
                            if not address(stor3.field_8):
                                revert with 0, 'Spender can not be the zero address!'
                            mem[0] = address(stor3.field_8)
                            mem[32] = sha3(address(this.address), 14)
                            allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
                            emit Approval((balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1), this.address, address(stor3.field_8));
                            if block.timestamp > -1201:
                                revert with 'NH{q', 17
                            mem[mem[64] + 68] = 0
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp + 1200
                            require ext_code.size(stor13)
                            call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args address(this.address), balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1, 0, 0, address(this.address), block.timestamp + 1200
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2027 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            require mem[_2027] == mem[_2027]
                            require mem[_2027 + 32] == mem[_2027 + 32]
                            require mem[_2027 + 64] == mem[_2027 + 64]
                            Mask(96, 0, stor12.field_160) = 0
                            if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
                            emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
                            if allowance[address(arg1)][address(msg.sender)] < arg3:
                                revert with 'NH{q', 17
                            if not arg1:
                                revert with 0, 'Wallet address can not be the zero address!'
                            if not msg.sender:
                                revert with 0, 'Spender can not be the zero address!'
        ('bool', 'msg.sender')
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        return 1
    if stor18[address(arg2)]:
        if arg2 != uniswapPairAddress:
            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)].field_0 += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            return 1
        if stor18[address(arg1)]:
            if balanceOf[address(arg2)].field_0 > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)].field_0 += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            return 1
    if arg3 / 100 and devFee > -1 / arg3 / 100:
        revert with 'NH{q', 17
    if arg3 / 100 and liquidityFee > -1 / arg3 / 100:
        revert with 'NH{q', 17
    if arg3 / 100 * devFee > (-1 * arg3 / 100 * liquidityFee) - 1:
        revert with 'NH{q', 17
    if balanceOf[address(this.address)].field_0 > (-1 * arg3 / 100 * devFee) + (-1 * arg3 / 100 * liquidityFee) - 1:
        revert with 'NH{q', 17
    balanceOf[address(this.address)].field_0 = balanceOf[address(this.address)].field_0 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)
    emit Transfer(((arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee)), arg1, this.address);
    if arg3 < (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee):
        revert with 'NH{q', 17
    if arg2 != uniswapPairAddress:
        if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
        emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 'NH{q', 17
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        return 1
    if uint8(stor12.field_160):
        if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
        emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 'NH{q', 17
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        return 1
    if balanceOf[address(this.address)].field_0 < addLiquidityAmount:
        if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
        emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 'NH{q', 17
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet address can not be the zero address!'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Spender can not be the zero address!'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        return 1
    Mask(96, 0, stor12.field_160) = 1
    if devFee > -liquidityFee + 255:
        revert with 'NH{q', 17
    if not uint8(devFee + liquidityFee):
        revert with 'NH{q', 18
    if balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) and devFee > -1 / balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee):
        revert with 'NH{q', 17
    mem[96] = 2
    mem[128] = this.address
    require ext_code.size(stor13)
    staticcall stor13.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'Wallet address can not be the zero address!'
    if not address(stor3.field_8):
        revert with 0, 'Spender can not be the zero address!'
    allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
    emit Approval((balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee), this.address, address(stor3.field_8));
    if block.timestamp > -1201:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = devWalletAddress
    mem[ceil32(return_data.size) + 324] = block.timestamp + 1200
    require ext_code.size(stor13)
    call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args balanceOf[address(this.address)].field_0 / uint8(devFee + liquidityFee) * devFee, 0, 160, devWalletAddress, block.timestamp + 1200, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192] = 2
    mem[ceil32(return_data.size) + 224] = this.address
    require ext_code.size(stor13)
    staticcall stor13.WETH() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'Wallet address can not be the zero address!'
    if not address(stor3.field_8):
        revert with 0, 'Spender can not be the zero address!'
    mem[0] = address(stor3.field_8)
    mem[32] = sha3(address(this.address), 14)
    allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_1
    emit Approval(balanceOf[address(this.address)].field_1, this.address, address(stor3.field_8));
    if block.timestamp > -1201:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[address(this.address)].field_1
    mem[(2 * ceil32(return_data.size)) + 324] = 0
    mem[(2 * ceil32(return_data.size)) + 356] = 160
    mem[(2 * ceil32(return_data.size)) + 452] = 2
    idx = 0
    s = ceil32(return_data.size) + 224
    t = (2 * ceil32(return_data.size)) + 484
    while idx < mem[ceil32(return_data.size) + 192]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 388] = this.address
    mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp + 1200
    require ext_code.size(stor13)
    call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 2 * Mask(256, -1, balanceOf[address(this.address)].field_1), 0, 160, address(this.address), block.timestamp + 1200, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 'NH{q', 17
    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_1:
        revert with 'NH{q', 17
    if not this.address:
        mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 292] = 32
        mem[(2 * ceil32(return_data.size)) + 324] = 43
        mem[(2 * ceil32(return_data.size)) + 356] = 'Wallet address can not be the ze'
        mem[(2 * ceil32(return_data.size)) + 388] = 'ro address!'
        revert with memory
          from (2 * ceil32(return_data.size)) + 288
           len ceil32(return_data.size) + 132
    if not address(stor3.field_8):
        mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 292] = 32
        mem[(2 * ceil32(return_data.size)) + 324] = 36
        mem[(2 * ceil32(return_data.size)) + 356] = 'Spender can not be the zero addr'
        mem[(2 * ceil32(return_data.size)) + 388] = 'ess!'
        revert with memory
          from (2 * ceil32(return_data.size)) + 288
           len ceil32(return_data.size) + 132
    allowance[address(this.address)][address(stor3.field_0)] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
    emit Approval((balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1), this.address, address(stor3.field_8));
    if block.timestamp > -1201:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1
    mem[(2 * ceil32(return_data.size)) + 356] = 0
    mem[(2 * ceil32(return_data.size)) + 388] = 0
    mem[(2 * ceil32(return_data.size)) + 420] = this.address
    mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp + 1200
    require ext_code.size(stor13)
    call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 292 len ceil32(return_data.size) + 192]
    mem[(2 * ceil32(return_data.size)) + 288 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    Mask(96, 0, stor12.field_160) = 0
    if balanceOf[address(arg2)].field_0 > -arg3 + (arg3 / 100 * devFee) + (arg3 / 100 * liquidityFee) - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)].field_0 = balanceOf[address(arg2)].field_0 + arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)
    emit Transfer((arg3 - (arg3 / 100 * devFee) - (arg3 / 100 * liquidityFee)), arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    if not arg1:
        mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 292] = 32
        mem[(4 * ceil32(return_data.size)) + 324] = 43
        mem[(4 * ceil32(return_data.size)) + 356] = 'Wallet address can not be the ze'
        mem[(4 * ceil32(return_data.size)) + 388] = 'ro address!'
    else:
        if msg.sender:
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            return 1
        mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 292] = 32
        mem[(4 * ceil32(return_data.size)) + 324] = 36
        mem[(4 * ceil32(return_data.size)) + 356] = 'Spender can not be the zero addr'
        mem[(4 * ceil32(return_data.size)) + 388] = 'ess!'
    revert with memory
      from (4 * ceil32(return_data.size)) + 288
       len (5 * ceil32(return_data.size)) + 132
}



}
