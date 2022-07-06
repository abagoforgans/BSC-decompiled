contract main {




// =====================  Runtime code  =====================


const burnWallet = 57005

const bonusWallet = 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff

const maxFees = 10


address owner;
array of struct stor3;
array of struct stor4;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 totalFees;
uint256 stor12;
uint256 liquidityFee;
uint256 burnFee;
uint256 sub_3b82b013;
uint256 maxBalance;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
uint256 liquifyThreshhold;
uint8 stor20;

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function isExcludedFromMaxBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[address(arg1)])
}

function decimals() {
    return decimals
}

function sub_3b82b013(?) {
    return sub_3b82b013
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[address(arg1)])
}

function liquifyThreshhold() {
    return liquifyThreshhold
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function maxBalance() {
    return maxBalance
}

function owner() {
    return owner
}

function liquidityFee() {
    return liquidityFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function burnFee() {
    return burnFee
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

function includeInFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = 0
}

function excludeFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = 1
}

function setLiquifyThreshhold(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquifyThreshhold = arg1
}

function includeInMaxBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = 0
}

function excludeFromMaxBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaxBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not totalSupply:
        require arg1 >= 0
    else:
        if totalSupply and 5 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if 5 * totalSupply / totalSupply != 5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require arg1 >= 5 * totalSupply / 1000
    maxBalance = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function setBurnFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if liquidityFee > -arg1 - 1:
        revert with 'NH{q', 17
    if liquidityFee + arg1 < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + arg1 > -sub_3b82b013 - 1:
        revert with 'NH{q', 17
    if sub_3b82b013 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + arg1 + sub_3b82b013 > 10:
        revert with 0, 'Fees are too high.'
    burnFee = arg1
    if liquidityFee > -sub_3b82b013 - 1:
        revert with 'NH{q', 17
    if liquidityFee + sub_3b82b013 < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + sub_3b82b013 > -burnFee - 1:
        revert with 'NH{q', 17
    if burnFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = liquidityFee + sub_3b82b013 + burnFee
    emit SetBurnFee(burnFee);
}

function sub_97c367af(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor20:
        revert with 0, 'inSwapAndLiquify'
    if liquidityFee > -burnFee - 1:
        revert with 'NH{q', 17
    if liquidityFee + burnFee < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + burnFee > -arg1 - 1:
        revert with 'NH{q', 17
    if arg1 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + burnFee + arg1 > 10:
        revert with 0, 'Fees are too high.'
    sub_3b82b013 = arg1
    if liquidityFee > -sub_3b82b013 - 1:
        revert with 'NH{q', 17
    if liquidityFee + sub_3b82b013 < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + sub_3b82b013 > -burnFee - 1:
        revert with 'NH{q', 17
    if burnFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = liquidityFee + sub_3b82b013 + burnFee
    if liquidityFee > -sub_3b82b013 - 1:
        revert with 'NH{q', 17
    if liquidityFee + sub_3b82b013 < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    stor12 = liquidityFee + sub_3b82b013
    emit 0x4e1c4c22: sub_3b82b013
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor20:
        revert with 0, 'inSwapAndLiquify'
    if arg1 > -burnFee - 1:
        revert with 'NH{q', 17
    if arg1 + burnFee < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + burnFee > -sub_3b82b013 - 1:
        revert with 'NH{q', 17
    if sub_3b82b013 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + burnFee + sub_3b82b013 > 10:
        revert with 0, 'Fees are too high.'
    liquidityFee = arg1
    if liquidityFee > -sub_3b82b013 - 1:
        revert with 'NH{q', 17
    if liquidityFee + sub_3b82b013 < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + sub_3b82b013 > -burnFee - 1:
        revert with 'NH{q', 17
    if burnFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = liquidityFee + sub_3b82b013 + burnFee
    if liquidityFee > -sub_3b82b013 - 1:
        revert with 'NH{q', 17
    if liquidityFee + sub_3b82b013 < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    stor12 = liquidityFee + sub_3b82b013
    emit SetLiquidityFee(liquidityFee);
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if owner != msg.sender:
        if arg1 != owner:
            if 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff != msg.sender:
                if arg1 != 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff:
                    if arg1 != 57005:
                        if not stor10[address(arg1)]:
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[address(arg1)] + arg2 > maxBalance:
                                revert with 0, 'Max Balance is reached.'
    if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] >= arg2 / 50:
        if arg2 / 50:
            if arg2 < 0:
                revert with 'NH{q', 17
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            if msg.sender == owner:
            else:
                if arg1 == owner:
                else:
                    if arg2 / 50 > 0:
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 / 50 > balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < arg2 / 50:
                            revert with 'NH{q', 17
                        balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] -= arg2 / 50
                        if balanceOf[address(arg1)] > -(arg2 / 50) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + (arg2 / 50) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2 / 50
                        emit Transfer((arg2 / 50), 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff, arg1);
        else:
            if msg.sender == owner:
                if arg2 < 0:
                    revert with 'NH{q', 17
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg1 == owner:
                    if arg2 < 0:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 < arg2 / 400:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 - (arg2 / 400) > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2 - (arg2 / 400):
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 400)
                    if balanceOf[address(arg1)] > -arg2 + (arg2 / 400) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 - (arg2 / 400) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 400)
                    emit Transfer((arg2 - (arg2 / 400)), msg.sender, arg1);
                    if arg2 / 400 <= 0:
                        if arg2 / 50 > 0:
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 / 50 > balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < arg2 / 50:
                                revert with 'NH{q', 17
                            balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] -= arg2 / 50
                            if balanceOf[address(arg1)] > -(arg2 / 50) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + (arg2 / 50) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2 / 50
                            emit Transfer((arg2 / 50), 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff, arg1);
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if arg2 / 400 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2 / 400:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2 / 400
                        if balanceOf[57005] > -(arg2 / 400) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[57005] + (arg2 / 400) < balanceOf[57005]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[57005] += arg2 / 400
                        emit Transfer((arg2 / 400), msg.sender, 57005);
                        if arg2 / 50 > 0:
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 / 50 > balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                            if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < arg2 / 50:
                                revert with 'NH{q', 17
                            balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] -= arg2 / 50
                            if balanceOf[address(arg1)] > -(arg2 / 50) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + (arg2 / 50) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2 / 50
                            emit Transfer((arg2 / 50), 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff, arg1);
    else:
        if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
            if arg2 < 0:
                revert with 'NH{q', 17
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            if msg.sender == owner:
            else:
                if arg1 == owner:
                else:
                    if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] > 0:
                        if not arg1:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] > balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                            revert with 'NH{q', 17
                        balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] = 0
                        if balanceOf[address(arg1)] > -balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]
                        emit Transfer(balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff], 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff, arg1);
        else:
            if msg.sender == owner:
                if arg2 < 0:
                    revert with 'NH{q', 17
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg1 == owner:
                    if arg2 < 0:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 < arg2 / 400:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg2 - (arg2 / 400) > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(msg.sender)] < arg2 - (arg2 / 400):
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 400)
                    if balanceOf[address(arg1)] > -arg2 + (arg2 / 400) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + arg2 - (arg2 / 400) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 400)
                    emit Transfer((arg2 - (arg2 / 400)), msg.sender, arg1);
                    if arg2 / 400 <= 0:
                        if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] > 0:
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] > balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                                revert with 'NH{q', 17
                            balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] = 0
                            if balanceOf[address(arg1)] > -balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]
                            emit Transfer(balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff], 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff, arg1);
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if arg2 / 400 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2 / 400:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2 / 400
                        if balanceOf[57005] > -(arg2 / 400) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[57005] + (arg2 / 400) < balanceOf[57005]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[57005] += arg2 / 400
                        emit Transfer((arg2 / 400), msg.sender, 57005);
                        if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] > 0:
                            if not arg1:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] > balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                            if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                                revert with 'NH{q', 17
                            balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] = 0
                            if balanceOf[address(arg1)] > -balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]
                            emit Transfer(balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff], 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if arg1 != owner:
        if arg2 != owner:
            if arg1 != 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff:
                if arg2 != 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff:
                    if arg2 != 57005:
                        if not stor10[address(arg2)]:
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if balanceOf[address(arg2)] + arg3 > maxBalance:
                                revert with 0, 'Max Balance is reached.'
    if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] >= arg3 / 50:
        if arg3 / 50:
            if arg3 < 0:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            if balanceOf[address(arg1)] < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg1 == owner:
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if arg2 == owner:
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if arg3 / 50 <= 0:
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 / 50 > balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < arg3 / 50:
                            revert with 'NH{q', 17
                        balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] -= arg3 / 50
                        if balanceOf[address(arg2)] > -(arg3 / 50) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] + (arg3 / 50) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3 / 50
                        emit Transfer((arg3 / 50), 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
        else:
            if arg1 == owner:
                if arg3 < 0:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if arg2 == owner:
                    if arg3 < 0:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if arg3 < arg3 / 400:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 - (arg3 / 400) > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(arg1)] < arg3 - (arg3 / 400):
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 400)
                    if balanceOf[address(arg2)] > -arg3 + (arg3 / 400) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] + arg3 - (arg3 / 400) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 400)
                    emit Transfer((arg3 - (arg3 / 400)), arg1, arg2);
                    if arg3 / 400 <= 0:
                        if arg3 / 50 <= 0:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                        else:
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 / 50 > balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < arg3 / 50:
                                revert with 'NH{q', 17
                            balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] -= arg3 / 50
                            if balanceOf[address(arg2)] > -(arg3 / 50) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] + (arg3 / 50) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3 / 50
                            emit Transfer((arg3 / 50), 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                    else:
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if arg3 / 400 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        if balanceOf[address(arg1)] < arg3 / 400:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3 / 400
                        if balanceOf[57005] > -(arg3 / 400) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[57005] + (arg3 / 400) < balanceOf[57005]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[57005] += arg3 / 400
                        emit Transfer((arg3 / 400), arg1, 57005);
                        if arg3 / 50 <= 0:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                        else:
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 / 50 > balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                            if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < arg3 / 50:
                                revert with 'NH{q', 17
                            balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] -= arg3 / 50
                            if balanceOf[address(arg2)] > -(arg3 / 50) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] + (arg3 / 50) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3 / 50
                            emit Transfer((arg3 / 50), 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
    else:
        if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
            if arg3 < 0:
                revert with 'NH{q', 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            if balanceOf[address(arg1)] < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg1 == owner:
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if arg2 == owner:
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] <= 0:
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                    else:
                        if not arg2:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] > balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                            revert with 'NH{q', 17
                        balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] = 0
                        if balanceOf[address(arg2)] > -balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] + balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]
                        emit Transfer(balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff], 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff, arg2);
                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
        else:
            if arg1 == owner:
                if arg3 < 0:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(arg1)] < arg3:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if arg2 == owner:
                    if arg3 < 0:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(arg1)] < arg3:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                else:
                    if arg3 < arg3 / 400:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if arg3 - (arg3 / 400) > balanceOf[address(arg1)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                    if balanceOf[address(arg1)] < arg3 - (arg3 / 400):
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 400)
                    if balanceOf[address(arg2)] > -arg3 + (arg3 / 400) - 1:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] + arg3 - (arg3 / 400) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 400)
                    emit Transfer((arg3 - (arg3 / 400)), arg1, arg2);
                    if arg3 / 400 <= 0:
                        if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] <= 0:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
                        else:
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] > balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                            if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                                revert with 'NH{q', 17
                            balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] = 0
                            if balanceOf[address(arg2)] > -balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] + balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]
                            emit Transfer(balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff], 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                    else:
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if arg3 / 400 > balanceOf[address(arg1)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                        if balanceOf[address(arg1)] < arg3 / 400:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3 / 400
                        if balanceOf[57005] > -(arg3 / 400) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[57005] + (arg3 / 400) < balanceOf[57005]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[57005] += arg3 / 400
                        emit Transfer((arg3 / 400), arg1, 57005);
                        if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] <= 0:
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                        else:
                            if not arg2:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] > balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                            if balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]:
                                revert with 'NH{q', 17
                            balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] = 0
                            if balanceOf[address(arg2)] > -balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] + balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff] < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff]
                            emit Transfer(balanceOf[0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff], 0xe2ecef9ff8a455ea4fdd6d10837f918311cf91ff, arg2);
                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
    ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 8)))))
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
