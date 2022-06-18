contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - burn(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
address owner;
address stor1;
uint256 unlockTime;
mapping of uint8 stor3;
mapping of uint256 stor4;
mapping of struct stor5;
mapping of struct allowance;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
array of address stor10;
uint256 totalSupply;
uint256 stor12;
address marketingWalletAddress;
address devWalletAddress;
uint256 sub_a593015f;
array of struct stor16;
array of struct stor17;
uint8 decimals;
uint8 sellRewardFee; offset 8
uint8 buyRewardFee; offset 24
uint8 sellLiquidityFee; offset 40
uint8 buyLiquidityFee; offset 56
uint8 sellMarketingFee; offset 72
uint8 buyMarketingFee; offset 88
uint8 sellDevFee; offset 104
uint8 buyDevFee; offset 120
uint256 stor18; offset 8
address uniswapV2RouterAddress;
uint8 stor20; offset 160
uint8 swapAndLiquifyEnabled; offset 168
uint128 stor20; offset 168
address uniswapV2PairAddress;
uint256 maxTxAmount;
uint256 stor22;
uint256 tradingEnabledTimestamp;
mapping of uint8 stor24;
mapping of uint8 stor25;

function buyRewardFee() {
    return buyRewardFee
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function tradingEnabledTimestamp() {
    return tradingEnabledTimestamp
}

function decimals() {
    return decimals
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function getUnlockTime() {
    return unlockTime
}

function isExcludedFromMaxTx(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[address(arg1)])
}

function marketingWallet() {
    return marketingWalletAddress
}

function buyMarketingFee() {
    return buyMarketingFee
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function maxTxAmount() {
    return maxTxAmount
}

function owner() {
    return owner
}

function devWallet() {
    return devWalletAddress
}

function sellMarketingFee() {
    return sellMarketingFee
}

function buyDevFee() {
    return buyDevFee
}

function sellDevFee() {
    return sellDevFee
}

function sub_a593015f(?) {
    return sub_a593015f
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function sellRewardFee() {
    return sellRewardFee
}

function buyLiquidityFee() {
    return buyLiquidityFee
}

function sellLiquidityFee() {
    return sellLiquidityFee
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function getTradingIsEnabled() {
    return block.timestamp >= tradingEnabledTimestamp
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x658be007: owner, 0
    owner = 0
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 0
}

function sub_734a3873(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor24[address(arg1)]:
        revert with 0, 'Account is already added'
    stor24[address(arg1)] = 1
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor20.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    unlockTime = block.timestamp + arg1
    emit 0x658be007: owner, 0
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is still locked'
    emit 0x658be007: owner, stor1
    owner = stor1
}

function removeFromBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor25[address(arg1)]:
        revert with 0, 'This address already whitelisted'
    stor25[address(arg1)] = 0
    emit BlackList(0, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0x658be007: owner, arg1
    owner = arg1
}

function sub_81de1f2b(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    decimals = uint8(arg3)
    stor18 = 0
    emit 0xb0eeef5f: arg1 << 248, arg2 << 248, arg3 << 248, uint8(arg4)
}

function sub_fba20073(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    decimals = uint8(arg3)
    stor18 = 0
    emit 0x13cc0b83: arg1 << 248, arg2 << 248, arg3 << 248, uint8(arg4)
}

function includeInFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is already included in fee'
    stor7[address(arg1)] = 0
    emit ExcludeFromFees(arg1);
}

function excludeFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is already excluded from fee'
    stor7[address(arg1)] = 1
    emit ExcludeFromFees(arg1);
}

function includeInMaxTx(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not stor9[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is already included in max transfer amount'
    stor9[address(arg1)] = 0
    emit 0xe834d830: arg1
}

function excludeFromMaxTx(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if stor9[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Account is already excluded from max transfer amount'
    stor9[address(arg1)] = 1
    emit 0x83f104fb: arg1
}

function changeUniswapRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The router has already that address'
    emit 0xeb8d61f6: arg1, uniswapV2RouterAddress
    uniswapV2RouterAddress = arg1
}

function setTradingEnabledTimestamp(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tradingEnabledTimestamp <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Changing the timestamp is not allowed if the listing has already started'
    tradingEnabledTimestamp = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setSwapTokenAtAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be bewteen 0 and total supply'
    if arg1 >= totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be bewteen 0 and total supply'
    if arg1 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    stor22 = 1000 * arg1
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be bewteen 0 and total supply'
    if arg1 >= totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be bewteen 0 and total supply'
    if arg1 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    maxTxAmount = 1000 * arg1
    emit MaxTxAmountUpdated(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)].field_0:
        revert with 0, 32, 37, 0xef42455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)].field_0 + arg2 < allowance[msg.sender][address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function blackList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor25[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This address is already blacklisted'
    if owner == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklisting the owner is not allowed'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklisting the 0 address is not allowed'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklisting the pair address is not allowed'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklisting the contract address is not allowed'
    stor25[address(arg1)] = 1
    emit BlackList(1, arg1);
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is already included in reward'
    idx = 0
    while idx < stor10.length:
        mem[0] = 10
        if stor10[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor10.length < 1:
            revert with 0, 17
        if stor10.length - 1 >= stor10.length:
            revert with 0, 50
        if idx >= stor10.length:
            revert with 0, 50
        stor10[idx] = stor10[stor10.length]
        stor5[address(arg1)].field_0 = 0
        stor8[address(arg1)] = 0
        if not stor10.length:
            revert with 0, 49
        stor10[stor10.length] = 0
        stor10.length--
        emit IncludeInReward(arg1);
    emit IncludeInReward(arg1);
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor12
    while idx < stor10.length:
        if stor4[stor10[idx]] <= t:
            if idx >= stor10.length:
                revert with 0, 50
            if stor5[stor10[idx]].field_0 <= s:
                if idx >= stor10.length:
                    revert with 0, 50
                if t < stor4[stor10[idx]]:
                    revert with 0, 17
                if idx >= stor10.length:
                    revert with 0, 50
                mem[0] = stor10[idx]
                mem[32] = 5
                if s < stor5[stor10[idx]].field_0:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor5[stor10[idx]].field_0
                t = t - stor4[stor10[idx]]
                continue 
        mem[128] = 'SafeMath: division by zero'
        if not totalSupply:
            mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[164] = 32
            idx = 0
            while idx < 26:
                mem[idx + 228] = mem[idx + 128]
                idx = idx + 32
                continue 
            revert with 0, 32, 26, mem[228 len 26], 0
        mem[192] = 'SafeMath: division by zero'
        if stor12 / totalSupply:
            return (arg1 / stor12 / totalSupply)
        mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[228] = 32
        idx = 0
        while idx < 26:
            mem[idx + 292] = mem[idx + 192]
            idx = idx + 32
            continue 
        revert with 0, 32, 26, mem[292 len 26], 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor12 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor12 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor12 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8[address(arg1)]:
        return stor5[address(arg1)].field_0
    mem[0] = arg1
    mem[32] = 4
    if stor4[address(arg1)] > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor12
    while idx < stor10.length:
        if stor4[stor10[idx]] <= t:
            if idx >= stor10.length:
                revert with 0, 50
            if stor5[stor10[idx]].field_0 <= s:
                if idx >= stor10.length:
                    revert with 0, 50
                if t < stor4[stor10[idx]]:
                    revert with 0, 17
                if idx >= stor10.length:
                    revert with 0, 50
                mem[0] = stor10[idx]
                mem[32] = 5
                if s < stor5[stor10[idx]].field_0:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor5[stor10[idx]].field_0
                t = t - stor4[stor10[idx]]
                continue 
        mem[128] = 'SafeMath: division by zero'
        if not totalSupply:
            mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[164] = 32
            idx = 0
            while idx < 26:
                mem[idx + 228] = mem[idx + 128]
                idx = idx + 32
                continue 
            revert with 0, 32, 26, mem[228 len 26], 0
        mem[192] = 'SafeMath: division by zero'
        if stor12 / totalSupply:
            return (stor4[address(arg1)] / stor12 / totalSupply)
        mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[228] = 32
        idx = 0
        while idx < 26:
            mem[idx + 292] = mem[idx + 192]
            idx = idx + 32
            continue 
        revert with 0, 32, 26, mem[292 len 26], 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor12 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor4[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor12 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor4[address(arg1)] / stor12 / totalSupply)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is already excluded from reward'
    if stor4[address(arg1)]:
        mem[0] = arg1
        mem[32] = 4
        if stor4[address(arg1)] > stor12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor12
        while idx < stor10.length:
            if stor4[stor10[idx]] <= t:
                if idx >= stor10.length:
                    revert with 0, 50
                if stor5[stor10[idx]].field_0 <= s:
                    if idx >= stor10.length:
                        revert with 0, 50
                    if t < stor4[stor10[idx]]:
                        revert with 0, 17
                    if idx >= stor10.length:
                        revert with 0, 50
                    mem[0] = stor10[idx]
                    mem[32] = 5
                    if s < stor5[stor10[idx]].field_0:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor5[stor10[idx]].field_0
                    t = t - stor4[stor10[idx]]
                    continue 
            mem[128] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[164] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 228] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 26, mem[228 len 26], 0
            mem[192] = 'SafeMath: division by zero'
            if not stor12 / totalSupply:
                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[228] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 292] = mem[idx + 192]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 26, mem[292 len 26], 0
            stor5[address(arg1)].field_0 = stor4[address(arg1)] / stor12 / totalSupply
            stor8[address(arg1)] = 1
            stor10.length++
            stor10[stor10.length] = arg1
            emit ExcludeFromReward(arg1);
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor12 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor5[address(arg1)].field_0 = stor4[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor12 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor5[address(arg1)].field_0 = stor4[address(arg1)] / stor12 / totalSupply
    stor8[address(arg1)] = 1
    stor10.length++
    stor10[stor10.length] = arg1
    emit ExcludeFromReward(arg1);
}

function getCirculatingSupply() payable {
    mem[64] = 96
    require not msg.value
    if stor8[57005]:
        if stor5[57005].field_0 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalSupply < stor5[57005].field_0:
            revert with 0, 17
        return (totalSupply - stor5[57005].field_0)
    mem[0] = 57005
    mem[32] = 4
    if stor4[57005] > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor12
    while idx < stor10.length:
        if stor4[stor10[idx]] <= t:
            if idx >= stor10.length:
                revert with 0, 50
            if stor5[stor10[idx]].field_0 <= s:
                if idx >= stor10.length:
                    revert with 0, 50
                if t < stor4[stor10[idx]]:
                    revert with 0, 17
                if idx >= stor10.length:
                    revert with 0, 50
                mem[0] = stor10[idx]
                mem[32] = 5
                if s < stor5[stor10[idx]].field_0:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor5[stor10[idx]].field_0
                t = t - stor4[stor10[idx]]
                continue 
        mem[128] = 'SafeMath: division by zero'
        if not totalSupply:
            mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[164] = 32
            idx = 0
            while idx < 26:
                mem[idx + 228] = mem[idx + 128]
                idx = idx + 32
                continue 
            revert with 0, 32, 26, mem[228 len 26], 0
        mem[192] = 'SafeMath: division by zero'
        if not stor12 / totalSupply:
            mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[228] = 32
            idx = 0
            while idx < 26:
                mem[idx + 292] = mem[idx + 192]
                idx = idx + 32
                continue 
            revert with 0, 32, 26, mem[292 len 26], 0
        mem[256] = 'SafeMath: subtraction overflow'
        if stor4[57005] / stor12 / totalSupply <= totalSupply:
            if totalSupply < stor4[57005] / stor12 / totalSupply:
                revert with 0, 17
            return (totalSupply - (stor4[57005] / stor12 / totalSupply))
        mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[292] = 32
        idx = 0
        while idx < 30:
            mem[idx + 356] = mem[idx + 256]
            idx = idx + 32
            continue 
        revert with 0, 32, 30, mem[356 len 30], 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor12 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        if stor4[57005] / t / s > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalSupply < stor4[57005] / t / s:
            revert with 0, 17
        return (totalSupply - (stor4[57005] / t / s))
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor12 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if stor4[57005] / stor12 / totalSupply > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor4[57005] / stor12 / totalSupply:
        revert with 0, 17
    return (totalSupply - (stor4[57005] / stor12 / totalSupply))
}

function setDevWallet(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if devWalletAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The dev wallet has already that address'
    emit MarketingWalletUpdated(arg1, devWalletAddress);
    devWalletAddress = arg1
    stor7[address(arg1)] = 1
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is already excluded from reward'
    if stor4[address(arg1)]:
        mem[0] = arg1
        mem[32] = 4
        if stor4[address(arg1)] > stor12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor12
        while idx < stor10.length:
            if stor4[stor10[idx]] <= t:
                if idx >= stor10.length:
                    revert with 0, 50
                if stor5[stor10[idx]].field_0 <= s:
                    if idx >= stor10.length:
                        revert with 0, 50
                    if t < stor4[stor10[idx]]:
                        revert with 0, 17
                    if idx >= stor10.length:
                        revert with 0, 50
                    mem[0] = stor10[idx]
                    mem[32] = 5
                    if s < stor5[stor10[idx]].field_0:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor5[stor10[idx]].field_0
                    t = t - stor4[stor10[idx]]
                    continue 
            mem[128] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[164] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 228] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 26, mem[228 len 26], 0
            mem[192] = 'SafeMath: division by zero'
            if not stor12 / totalSupply:
                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[228] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 292] = mem[idx + 192]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 26, mem[292 len 26], 0
            stor5[address(arg1)].field_0 = stor4[address(arg1)] / stor12 / totalSupply
            stor8[address(arg1)] = 1
            stor10.length++
            stor10[stor10.length] = arg1
            emit ExcludeFromReward(arg1);
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor12 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor5[address(arg1)].field_0 = stor4[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor12 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor5[address(arg1)].field_0 = stor4[address(arg1)] / stor12 / totalSupply
    stor8[address(arg1)] = 1
    stor10.length++
    stor10[stor10.length] = arg1
    emit ExcludeFromReward(arg1);
}

function setMarketingWallet(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if marketingWalletAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The marketing wallet has already that address'
    emit MarketingWalletUpdated(arg1, marketingWalletAddress);
    marketingWalletAddress = arg1
    stor7[address(arg1)] = 1
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is already excluded from reward'
    if stor4[address(arg1)]:
        mem[0] = arg1
        mem[32] = 4
        if stor4[address(arg1)] > stor12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor12
        while idx < stor10.length:
            if stor4[stor10[idx]] <= t:
                if idx >= stor10.length:
                    revert with 0, 50
                if stor5[stor10[idx]].field_0 <= s:
                    if idx >= stor10.length:
                        revert with 0, 50
                    if t < stor4[stor10[idx]]:
                        revert with 0, 17
                    if idx >= stor10.length:
                        revert with 0, 50
                    mem[0] = stor10[idx]
                    mem[32] = 5
                    if s < stor5[stor10[idx]].field_0:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor5[stor10[idx]].field_0
                    t = t - stor4[stor10[idx]]
                    continue 
            mem[128] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[164] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 228] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 26, mem[228 len 26], 0
            mem[192] = 'SafeMath: division by zero'
            if not stor12 / totalSupply:
                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[228] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 292] = mem[idx + 192]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 26, mem[292 len 26], 0
            stor5[address(arg1)].field_0 = stor4[address(arg1)] / stor12 / totalSupply
            stor8[address(arg1)] = 1
            stor10.length++
            stor10[stor10.length] = arg1
            emit ExcludeFromReward(arg1);
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor12 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor5[address(arg1)].field_0 = stor4[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor12 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor5[address(arg1)].field_0 = stor4[address(arg1)] / stor12 / totalSupply
    stor8[address(arg1)] = 1
    stor10.length++
    stor10[stor10.length] = arg1
    emit ExcludeFromReward(arg1);
}

function sub_78fe1b13(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The pair address has already that address'
    emit 0x810cdeae: address(arg1), uniswapV2PairAddress
    uniswapV2PairAddress = address(arg1)
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is already excluded from reward'
    if stor4[address(arg1)]:
        mem[0] = address(arg1)
        mem[32] = 4
        if stor4[address(arg1)] > stor12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor12
        while idx < stor10.length:
            if stor4[stor10[idx]] <= t:
                if idx >= stor10.length:
                    revert with 0, 50
                if stor5[stor10[idx]].field_0 <= s:
                    if idx >= stor10.length:
                        revert with 0, 50
                    if t < stor4[stor10[idx]]:
                        revert with 0, 17
                    if idx >= stor10.length:
                        revert with 0, 50
                    mem[0] = stor10[idx]
                    mem[32] = 5
                    if s < stor5[stor10[idx]].field_0:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor5[stor10[idx]].field_0
                    t = t - stor4[stor10[idx]]
                    continue 
            mem[128] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[164] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 228] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 26, mem[228 len 26], 0
            mem[192] = 'SafeMath: division by zero'
            if not stor12 / totalSupply:
                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[228] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 292] = mem[idx + 192]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 26, mem[292 len 26], 0
            stor5[address(arg1)].field_0 = stor4[address(arg1)] / stor12 / totalSupply
            stor8[address(arg1)] = 1
            stor10.length++
            stor10[stor10.length] = address(arg1)
            emit ExcludeFromReward(address(arg1));
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor12 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor5[address(arg1)].field_0 = stor4[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor12 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor5[address(arg1)].field_0 = stor4[address(arg1)] / stor12 / totalSupply
    stor8[address(arg1)] = 1
    stor10.length++
    stor10[stor10.length] = address(arg1)
    emit ExcludeFromReward(address(arg1));
}

function name() {
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor16.length):
                if 31 < uint255(stor16.length) * 0.5:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor16.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(uint255(stor16.length) * 0.5) + 192 len ceil32(uint255(stor16.length) * 0.5)] = mem[128 len ceil32(uint255(stor16.length) * 0.5)]
        if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
            mem[ceil32(uint255(stor16.length) * 0.5) + (uint255(stor16.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)], mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor16.length) * 0.5)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 0, 34
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor16.length):
            if 31 < uint255(stor16.length) * 0.5:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while (uint255(stor16.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function symbol() {
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor17.length):
            if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor17.length):
                if 31 < uint255(stor17.length) * 0.5:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor17.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * stor17.length.field_8
        else:
            if bool(stor17.length) == stor17.length.field_1 < 32:
                revert with 0, 34
            if stor17.length.field_1:
                if 31 < stor17.length.field_1:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while stor17.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * stor17.length.field_8
        mem[ceil32(uint255(stor17.length) * 0.5) + 192 len ceil32(uint255(stor17.length) * 0.5)] = mem[128 len ceil32(uint255(stor17.length) * 0.5)]
        if ceil32(uint255(stor17.length) * 0.5) > uint255(stor17.length) * 0.5:
            mem[ceil32(uint255(stor17.length) * 0.5) + (uint255(stor17.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)], mem[(2 * ceil32(uint255(stor17.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor17.length) * 0.5)]), 
    if bool(stor17.length) == stor17.length.field_1 < 32:
        revert with 0, 34
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor17.length):
            if 31 < uint255(stor17.length) * 0.5:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while (uint255(stor17.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    else:
        if bool(stor17.length) == stor17.length.field_1 < 32:
            revert with 0, 34
        if stor17.length.field_1:
            if 31 < stor17.length.field_1:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while stor17.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)])
            mem[128] = 256 * stor17.length.field_8
    mem[ceil32(stor17.length.field_1) + 192 len ceil32(stor17.length.field_1)] = mem[128 len ceil32(stor17.length.field_1)]
    if ceil32(stor17.length.field_1) > stor17.length.field_1:
        mem[ceil32(stor17.length.field_1) + stor17.length.field_1 + 192] = 0
    return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1)], mem[(2 * ceil32(stor17.length.field_1)) + 192 len 2 * ceil32(stor17.length.field_1)]), 
}

function deliver(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 8
    if stor8[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Excluded addresses from reward cannot call this function'
    idx = 0
    s = totalSupply
    t = stor12
    while idx < stor10.length:
        if stor4[stor10[idx]] <= t:
            if idx >= stor10.length:
                revert with 0, 50
            if stor5[stor10[idx]].field_0 <= s:
                if idx >= stor10.length:
                    revert with 0, 50
                if t < stor4[stor10[idx]]:
                    revert with 0, 17
                if idx >= stor10.length:
                    revert with 0, 50
                mem[0] = stor10[idx]
                mem[32] = 5
                if s < stor5[stor10[idx]].field_0:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor5[stor10[idx]].field_0
                t = t - stor4[stor10[idx]]
                continue 
        mem[128] = 'SafeMath: division by zero'
        if not totalSupply:
            mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[164] = 32
            idx = 0
            while idx < 26:
                mem[idx + 228] = mem[idx + 128]
                idx = idx + 32
                continue 
            revert with 0, 32, 26, mem[228 len 26], 0
        if not arg1:
            if stor4[address(msg.sender)] < 0:
                revert with 0, 17
            if stor12 < 0:
                revert with 0, 17
        else:
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if stor4[address(msg.sender)] < arg1 * stor12 / totalSupply:
                revert with 0, 17
            stor4[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
            if stor12 < arg1 * stor12 / totalSupply:
                revert with 0, 17
            stor12 += -1 * arg1 * stor12 / totalSupply
        if sub_a593015f > !arg1:
            revert with 0, 17
        sub_a593015f += arg1
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor12 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            if stor4[address(msg.sender)] < 0:
                revert with 0, 17
            if stor12 < 0:
                revert with 0, 17
        else:
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if stor4[address(msg.sender)] < arg1 * t / s:
                revert with 0, 17
            stor4[address(msg.sender)] += -1 * arg1 * t / s
            if stor12 < arg1 * t / s:
                revert with 0, 17
            stor12 += -1 * arg1 * t / s
    else:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            if stor4[address(msg.sender)] < 0:
                revert with 0, 17
            if stor12 < 0:
                revert with 0, 17
        else:
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if stor4[address(msg.sender)] < arg1 * stor12 / totalSupply:
                revert with 0, 17
            stor4[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
            if stor12 < arg1 * stor12 / totalSupply:
                revert with 0, 17
            stor12 += -1 * arg1 * stor12 / totalSupply
    if sub_a593015f > !arg1:
        revert with 0, 17
    sub_a593015f += arg1
}

function sub_0346535f(?) payable {
    mem[64] = 96
    require not msg.value
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if stor8[address(this.address)]:
        uint8(stor20.field_160) = 1
        if stor5[address(this.address)].field_1 > stor5[address(this.address)].field_0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if stor5[address(this.address)].field_0 < stor5[address(this.address)].field_1:
            revert with 0, 17
        mem[256] = this.address
        staticcall uniswapV2RouterAddress.WETH() with:
                gas gas_remaining wei
        mem[320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[288] = ext_call.return_data[12 len 20]
        if not this.address:
            revert with 0, 'BEP20: approve from the zero address'
        if not uniswapV2RouterAddress:
            revert with 0, 'BEP20: approve to the zero address'
        allowance[address(this.address)][stor19].field_0 = stor5[address(this.address)].field_1
        emit Approval(stor5[address(this.address)].field_1, this.address, uniswapV2RouterAddress);
        mem[ceil32(return_data.size) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 324] = stor5[address(this.address)].field_1
        idx = 0
        s = ceil32(return_data.size) + 516
        t = 256
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(uniswapV2RouterAddress)
        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 2 * Mask(256, -1, stor5[address(this.address)].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 516 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) > eth.balance(this.address):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 17
        if not this.address:
            revert with 0, 'BEP20: approve from the zero address'
        if not uniswapV2RouterAddress:
            revert with 0, 'BEP20: approve to the zero address'
        allowance[address(this.address)][stor19].field_0 = stor5[address(this.address)].field_0 - stor5[address(this.address)].field_1
        emit Approval((stor5[address(this.address)].field_0 - stor5[address(this.address)].field_1), this.address, uniswapV2RouterAddress);
        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args address(this.address), stor5[address(this.address)].field_0 - stor5[address(this.address)].field_1, 0, 0, owner, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        emit SwapAndLiquify(2 * Mask(256, -1, stor5[address(this.address)].field_1), 0, stor5[address(this.address)].field_0 - stor5[address(this.address)].field_1);
    else:
        mem[0] = this.address
        mem[32] = 4
        if stor4[address(this.address)] > stor12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor12
        while idx < stor10.length:
            if stor4[stor10[idx]] <= t:
                if idx >= stor10.length:
                    revert with 0, 50
                if stor5[stor10[idx]].field_0 <= s:
                    if idx >= stor10.length:
                        revert with 0, 50
                    if t < stor4[stor10[idx]]:
                        revert with 0, 17
                    if idx >= stor10.length:
                        revert with 0, 50
                    mem[0] = stor10[idx]
                    mem[32] = 5
                    if s < stor5[stor10[idx]].field_0:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor5[stor10[idx]].field_0
                    t = t - stor4[stor10[idx]]
                    continue 
            mem[128] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[164] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 228] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 26, mem[228 len 26], 0
            mem[192] = 'SafeMath: division by zero'
            if not stor12 / totalSupply:
                mem[224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[228] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 292] = mem[idx + 192]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 26, mem[292 len 26], 0
            uint8(stor20.field_160) = 1
            mem[320] = 'SafeMath: subtraction overflow'
            if stor4[address(this.address)] / stor12 / totalSupply / 2 > stor4[address(this.address)] / stor12 / totalSupply:
                mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[356] = 32
                idx = 0
                while idx < 30:
                    mem[idx + 420] = mem[idx + 320]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 30, mem[420 len 30], 0
            if stor4[address(this.address)] / stor12 / totalSupply < stor4[address(this.address)] / stor12 / totalSupply / 2:
                revert with 0, 17
            mem[384] = this.address
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[416] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'BEP20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'BEP20: approve to the zero address'
            allowance[address(this.address)][stor19].field_0 = stor4[address(this.address)] / stor12 / totalSupply / 2
            allowance[address(this.address)][stor19].field_255 = 0
            emit Approval((stor4[address(this.address)] / stor12 / totalSupply / 2), this.address, uniswapV2RouterAddress);
            mem[ceil32(return_data.size) + 448] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 452] = stor4[address(this.address)] / stor12 / totalSupply / 2
            idx = 0
            s = ceil32(return_data.size) + 644
            t = 384
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 580] = block.timestamp
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, stor4[address(this.address)] / stor12 / totalSupply), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 644 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 480] = 'SafeMath: subtraction overflow'
            if eth.balance(this.address) > eth.balance(this.address):
                mem[ceil32(return_data.size) + 512] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 516] = 32
                idx = 0
                while idx < 30:
                    mem[idx + ceil32(return_data.size) + 580] = mem[idx + ceil32(return_data.size) + 480]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 30, mem[ceil32(return_data.size) + 580 len 30], 0
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if not this.address:
                revert with 0, 'BEP20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'BEP20: approve to the zero address'
            allowance[address(this.address)][stor19].field_0 = (stor4[address(this.address)] / stor12 / totalSupply) - (stor4[address(this.address)] / stor12 / totalSupply / 2)
            emit Approval(((stor4[address(this.address)] / stor12 / totalSupply) - (stor4[address(this.address)] / stor12 / totalSupply / 2)), this.address, uniswapV2RouterAddress);
            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(this.address), (stor4[address(this.address)] / stor12 / totalSupply) - (stor4[address(this.address)] / stor12 / totalSupply / 2), 0, 0, owner, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            emit SwapAndLiquify(Mask(255, 1, stor4[address(this.address)] / stor12 / totalSupply), 0, (stor4[address(this.address)] / stor12 / totalSupply) - (stor4[address(this.address)] / stor12 / totalSupply / 2));
            uint8(stor20.field_160) = 0
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor12 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            uint8(stor20.field_160) = 1
            if stor4[address(this.address)] / t / s / 2 > stor4[address(this.address)] / t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor4[address(this.address)] / t / s < stor4[address(this.address)] / t / s / 2:
                revert with 0, 17
            mem[448] = this.address
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[512] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[480] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'BEP20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'BEP20: approve to the zero address'
            allowance[address(this.address)][stor19].field_0 = stor4[address(this.address)] / t / s / 2
            allowance[address(this.address)][stor19].field_255 = 0
            emit Approval((stor4[address(this.address)] / t / s / 2), this.address, uniswapV2RouterAddress);
            mem[ceil32(return_data.size) + 512] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 516] = stor4[address(this.address)] / t / s / 2
            idx = 0
            u = ceil32(return_data.size) + 708
            v = 448
            while idx < 2:
                mem[u] = mem[v + 12 len 20]
                idx = idx + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, stor4[address(this.address)] / t / s), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 708 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if not this.address:
                revert with 0, 'BEP20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'BEP20: approve to the zero address'
            allowance[address(this.address)][stor19].field_0 = (stor4[address(this.address)] / t / s) - (stor4[address(this.address)] / t / s / 2)
            emit Approval(((stor4[address(this.address)] / t / s) - (stor4[address(this.address)] / t / s / 2)), this.address, uniswapV2RouterAddress);
            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(this.address), (stor4[address(this.address)] / t / s) - (stor4[address(this.address)] / t / s / 2), 0, 0, owner, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            emit SwapAndLiquify(Mask(255, 1, stor4[address(this.address)] / t / s), 0, (stor4[address(this.address)] / t / s) - (stor4[address(this.address)] / t / s / 2));
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor12 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            uint8(stor20.field_160) = 1
            if stor4[address(this.address)] / stor12 / totalSupply / 2 > stor4[address(this.address)] / stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor4[address(this.address)] / stor12 / totalSupply < stor4[address(this.address)] / stor12 / totalSupply / 2:
                revert with 0, 17
            mem[448] = this.address
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[512] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[480] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'BEP20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'BEP20: approve to the zero address'
            allowance[address(this.address)][stor19].field_0 = stor4[address(this.address)] / stor12 / totalSupply / 2
            allowance[address(this.address)][stor19].field_255 = 0
            emit Approval((stor4[address(this.address)] / stor12 / totalSupply / 2), this.address, uniswapV2RouterAddress);
            mem[ceil32(return_data.size) + 512] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 516] = stor4[address(this.address)] / stor12 / totalSupply / 2
            idx = 0
            s = ceil32(return_data.size) + 708
            t = 448
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args Mask(255, 1, stor4[address(this.address)] / stor12 / totalSupply), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 708 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if not this.address:
                revert with 0, 'BEP20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'BEP20: approve to the zero address'
            allowance[address(this.address)][stor19].field_0 = (stor4[address(this.address)] / stor12 / totalSupply) - (stor4[address(this.address)] / stor12 / totalSupply / 2)
            emit Approval(((stor4[address(this.address)] / stor12 / totalSupply) - (stor4[address(this.address)] / stor12 / totalSupply / 2)), this.address, uniswapV2RouterAddress);
            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                 gas gas_remaining wei
                args address(this.address), (stor4[address(this.address)] / stor12 / totalSupply) - (stor4[address(this.address)] / stor12 / totalSupply / 2), 0, 0, owner, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            emit SwapAndLiquify(Mask(255, 1, stor4[address(this.address)] / stor12 / totalSupply), 0, (stor4[address(this.address)] / stor12 / totalSupply) - (stor4[address(this.address)] / stor12 / totalSupply / 2));
    uint8(stor20.field_160) = 0
}

function reflectionFromToken(uint256 arg1, bool arg2, bool arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if not arg2:
        idx = 0
        s = totalSupply
        t = stor12
        while idx < stor10.length:
            if stor4[stor10[idx]] > t:
                mem[128] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[164] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + 228] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 26, mem[228 len 26], 0
                if not arg1:
                    return 0
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * stor12 / totalSupply)
            if idx >= stor10.length:
                revert with 0, 50
            if stor5[stor10[idx]].field_0 > s:
                mem[128] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[164] = 32
                    idx = 0
                    while idx < 26:
                        mem[idx + 228] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 26, mem[228 len 26], 0
                if not arg1:
                    return 0
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * stor12 / totalSupply)
            if idx >= stor10.length:
                revert with 0, 50
            if t < stor4[stor10[idx]]:
                revert with 0, 17
            if idx >= stor10.length:
                revert with 0, 50
            mem[0] = stor10[idx]
            mem[32] = 5
            if s < stor5[stor10[idx]].field_0:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor5[stor10[idx]].field_0
            t = t - stor4[stor10[idx]]
            continue 
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor12 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                return 0
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * t / s)
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            return 0
        if arg1 and stor12 / totalSupply > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg1 * stor12 / totalSupply)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    if not arg3:
        if arg1 and buyRewardFee > -1 / arg1:
            revert with 0, 17
        if arg1 and buyLiquidityFee > -1 / arg1:
            revert with 0, 17
        if arg1 and buyMarketingFee > -1 / arg1:
            revert with 0, 17
        if arg1 and buyDevFee > -1 / arg1:
            revert with 0, 17
        mem[672] = 30
        mem[704] = 'SafeMath: subtraction overflow'
        if arg1 * buyRewardFee / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * buyRewardFee / 100:
            revert with 0, 17
        mem[736] = 30
        mem[768] = 'SafeMath: subtraction overflow'
        if arg1 * buyLiquidityFee / 100 > arg1 - (arg1 * buyRewardFee / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * buyRewardFee / 100) < arg1 * buyLiquidityFee / 100:
            revert with 0, 17
        mem[800] = 30
        mem[832] = 'SafeMath: subtraction overflow'
        if arg1 * buyMarketingFee / 100 > arg1 - (arg1 * buyRewardFee / 100) - (arg1 * buyLiquidityFee / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * buyRewardFee / 100) - (arg1 * buyLiquidityFee / 100) < arg1 * buyMarketingFee / 100:
            revert with 0, 17
        mem[864] = 30
        mem[896] = 'SafeMath: subtraction overflow'
        if arg1 * buyDevFee / 100 > arg1 - (arg1 * buyRewardFee / 100) - (arg1 * buyLiquidityFee / 100) - (arg1 * buyMarketingFee / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * buyRewardFee / 100) - (arg1 * buyLiquidityFee / 100) - (arg1 * buyMarketingFee / 100) < arg1 * buyDevFee / 100:
            revert with 0, 17
        mem[928] = arg1
        mem[960] = arg1 - (arg1 * buyRewardFee / 100) - (arg1 * buyLiquidityFee / 100) - (arg1 * buyMarketingFee / 100) - (arg1 * buyDevFee / 100)
        mem[992] = arg1 * buyRewardFee / 100
        mem[1024] = arg1 * buyLiquidityFee / 100
        mem[1056] = arg1 * buyMarketingFee / 100
        mem[1088] = arg1 * buyDevFee / 100
        mem[64] = 1312
        mem[1120] = 0
        mem[1152] = 0
        mem[1184] = 0
        mem[1216] = 0
        mem[1248] = 0
        mem[1280] = 0
        idx = 0
        s = totalSupply
        t = stor12
        while idx < stor10.length:
            if stor4[stor10[idx]] <= t:
                if idx >= stor10.length:
                    revert with 0, 50
                if stor5[stor10[idx]].field_0 <= s:
                    if idx >= stor10.length:
                        revert with 0, 50
                    if t < stor4[stor10[idx]]:
                        revert with 0, 17
                    if idx >= stor10.length:
                        revert with 0, 50
                    mem[0] = stor10[idx]
                    mem[32] = 5
                    if s < stor5[stor10[idx]].field_0:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor5[stor10[idx]].field_0
                    t = t - stor4[stor10[idx]]
                    continue 
            mem[1344] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[1376] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[1380] = 32
                idx = 0
                while idx < 26:
                    mem[idx + 1444] = mem[idx + 1344]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 26, mem[1444 len 26], 0
            if not arg1:
                if not arg1 * buyRewardFee / 100:
                    if not arg1 * buyLiquidityFee / 100:
                        if not arg1 * buyMarketingFee / 100:
                            if not arg1 * buyDevFee / 100:
                                return 0
                            if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                revert with 0, 17
                            if not arg1 * buyDevFee / 100:
                                revert with 0, 18
                            if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * buyDevFee / 100 * stor12 / totalSupply <= 0:
                                if 0 < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return (-1 * arg1 * buyDevFee / 100 * stor12 / totalSupply)
                        else:
                            if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                                revert with 0, 17
                            if not arg1 * buyMarketingFee / 100:
                                revert with 0, 18
                            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * buyDevFee / 100:
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > 0:
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if 0 < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    if -1 * arg1 * buyMarketingFee / 100 * stor12 / totalSupply < 0:
                                        revert with 0, 17
                                    return (-1 * arg1 * buyMarketingFee / 100 * stor12 / totalSupply)
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > 0:
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if 0 < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= -1 * arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    if -1 * arg1 * buyMarketingFee / 100 * stor12 / totalSupply < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((-1 * arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                    else:
                        if arg1 * buyLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * buyLiquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * buyLiquidityFee / 100:
                            revert with 0, 18
                        if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply / arg1 * buyLiquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * buyMarketingFee / 100:
                            if not arg1 * buyDevFee / 100:
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > 0:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if 0 < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    if -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply < 0:
                                        revert with 0, 17
                                    return (-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply)
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > 0:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if 0 < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    if -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                                revert with 0, 17
                            if not arg1 * buyMarketingFee / 100:
                                revert with 0, 18
                            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * buyDevFee / 100:
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > 0:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if 0 < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= (-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                                    if (-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < 0:
                                        revert with 0, 17
                                    return ((-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply))
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > 0:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if 0 < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= (-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                                    if (-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                else:
                    if arg1 * buyRewardFee / 100 and stor12 / totalSupply > -1 / arg1 * buyRewardFee / 100:
                        revert with 0, 17
                    if not arg1 * buyRewardFee / 100:
                        revert with 0, 18
                    if arg1 * buyRewardFee / 100 * stor12 / totalSupply / arg1 * buyRewardFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * buyLiquidityFee / 100:
                        if not arg1 * buyMarketingFee / 100:
                            if not arg1 * buyDevFee / 100:
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < 0:
                                        revert with 0, 17
                                    return (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply)
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                                revert with 0, 17
                            if not arg1 * buyMarketingFee / 100:
                                revert with 0, 18
                            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * buyDevFee / 100:
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                                    if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < 0:
                                        revert with 0, 17
                                    return ((-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply))
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if 0 > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                                    if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                    else:
                        if arg1 * buyLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * buyLiquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * buyLiquidityFee / 100:
                            revert with 0, 18
                        if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply / arg1 * buyLiquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * buyMarketingFee / 100:
                            if not arg1 * buyDevFee / 100:
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if 0 > (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                        revert with 0, 17
                                    return ((-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply))
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if 0 > (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                                revert with 0, 17
                            if not arg1 * buyMarketingFee / 100:
                                revert with 0, 18
                            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * buyDevFee / 100:
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                                    if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < 0:
                                        revert with 0, 17
                                    return ((-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply))
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                                    if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
            else:
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * buyRewardFee / 100:
                    if not arg1 * buyLiquidityFee / 100:
                        if not arg1 * buyMarketingFee / 100:
                            if not arg1 * buyDevFee / 100:
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= arg1 * stor12 / totalSupply:
                                    if arg1 * stor12 / totalSupply < 0:
                                        revert with 0, 17
                                    return (arg1 * stor12 / totalSupply)
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                                    if arg1 * stor12 / totalSupply < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                                revert with 0, 17
                            if not arg1 * buyMarketingFee / 100:
                                revert with 0, 18
                            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * buyDevFee / 100:
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if arg1 * stor12 / totalSupply < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                                    if (arg1 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < 0:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply))
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if arg1 * stor12 / totalSupply < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                                    if (arg1 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                    else:
                        if arg1 * buyLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * buyLiquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * buyLiquidityFee / 100:
                            revert with 0, 18
                        if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply / arg1 * buyLiquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * buyMarketingFee / 100:
                            if not arg1 * buyDevFee / 100:
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if arg1 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply))
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if arg1 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                                revert with 0, 17
                            if not arg1 * buyMarketingFee / 100:
                                revert with 0, 18
                            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * buyDevFee / 100:
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if arg1 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                                    if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < 0:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply))
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if arg1 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                                    if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                else:
                    if arg1 * buyRewardFee / 100 and stor12 / totalSupply > -1 / arg1 * buyRewardFee / 100:
                        revert with 0, 17
                    if not arg1 * buyRewardFee / 100:
                        revert with 0, 18
                    if arg1 * buyRewardFee / 100 * stor12 / totalSupply / arg1 * buyRewardFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * buyLiquidityFee / 100:
                        if not arg1 * buyMarketingFee / 100:
                            if not arg1 * buyDevFee / 100:
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                                    if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < 0:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply))
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                                    if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                                revert with 0, 17
                            if not arg1 * buyMarketingFee / 100:
                                revert with 0, 18
                            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * buyDevFee / 100:
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                                    if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < 0:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply))
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                                    if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                    else:
                        if arg1 * buyLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * buyLiquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * buyLiquidityFee / 100:
                            revert with 0, 18
                        if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply / arg1 * buyLiquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * buyMarketingFee / 100:
                            if not arg1 * buyDevFee / 100:
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply))
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                                revert with 0, 17
                            if not arg1 * buyMarketingFee / 100:
                                revert with 0, 18
                            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * buyDevFee / 100:
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                                    if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < 0:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply))
                            else:
                                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                                    revert with 0, 17
                                if not arg1 * buyDevFee / 100:
                                    revert with 0, 18
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[1408] = 'SafeMath: subtraction overflow'
                                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                    mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1444] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1508] = mem[idx + 1408]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1508 len 30], 0
                                if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1472] = 'SafeMath: subtraction overflow'
                                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                                    mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1508] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1572] = mem[idx + 1472]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1572 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1536] = 'SafeMath: subtraction overflow'
                                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                                    mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[1572] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 1636] = mem[idx + 1536]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 30, mem[1636 len 30], 0
                                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                mem[1600] = 'SafeMath: subtraction overflow'
                                if arg1 * buyDevFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                                    if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                                        revert with 0, 17
                                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
            mem[1632] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[1636] = 32
            idx = 0
            while idx < 30:
                mem[idx + 1700] = mem[idx + 1600]
                idx = idx + 32
                continue 
            revert with 0, 32, 30, mem[1700 len 30], 0
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor12 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * buyRewardFee / 100:
                    if not arg1 * buyLiquidityFee / 100:
                        if not arg1 * buyMarketingFee / 100:
                            if not arg1 * buyDevFee / 100:
                                return 0
                            if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                                revert with 0, 17
                            if not arg1 * buyDevFee / 100:
                                revert with 0, 18
                            if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * buyDevFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * buyDevFee / 100 * t / s:
                                revert with 0, 17
                            return (-1 * arg1 * buyDevFee / 100 * t / s)
                        if arg1 * buyMarketingFee / 100 and t / s > -1 / arg1 * buyMarketingFee / 100:
                            revert with 0, 17
                        if not arg1 * buyMarketingFee / 100:
                            revert with 0, 18
                        if arg1 * buyMarketingFee / 100 * t / s / arg1 * buyMarketingFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * buyDevFee / 100:
                            if arg1 * buyMarketingFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * buyMarketingFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * buyMarketingFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * buyMarketingFee / 100 * t / s < 0:
                                revert with 0, 17
                            return (-1 * arg1 * buyMarketingFee / 100 * t / s)
                        if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                            revert with 0, 17
                        if not arg1 * buyDevFee / 100:
                            revert with 0, 18
                        if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * buyMarketingFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * buyMarketingFee / 100 * t / s:
                            revert with 0, 17
                        if arg1 * buyDevFee / 100 * t / s > -1 * arg1 * buyMarketingFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyMarketingFee / 100 * t / s < arg1 * buyDevFee / 100 * t / s:
                            revert with 0, 17
                        return ((-1 * arg1 * buyMarketingFee / 100 * t / s) - (arg1 * buyDevFee / 100 * t / s))
                    if arg1 * buyLiquidityFee / 100 and t / s > -1 / arg1 * buyLiquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * buyLiquidityFee / 100:
                        revert with 0, 18
                    if arg1 * buyLiquidityFee / 100 * t / s / arg1 * buyLiquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * buyMarketingFee / 100:
                        if not arg1 * buyDevFee / 100:
                            if arg1 * buyLiquidityFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * buyLiquidityFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * buyLiquidityFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * buyLiquidityFee / 100 * t / s < 0:
                                revert with 0, 17
                            if 0 > -1 * arg1 * buyLiquidityFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * buyLiquidityFee / 100 * t / s < 0:
                                revert with 0, 17
                            return (-1 * arg1 * buyLiquidityFee / 100 * t / s)
                        if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                            revert with 0, 17
                        if not arg1 * buyDevFee / 100:
                            revert with 0, 18
                        if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * buyLiquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * buyLiquidityFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * buyLiquidityFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyLiquidityFee / 100 * t / s < 0:
                            revert with 0, 17
                        if arg1 * buyDevFee / 100 * t / s > -1 * arg1 * buyLiquidityFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyLiquidityFee / 100 * t / s < arg1 * buyDevFee / 100 * t / s:
                            revert with 0, 17
                        return ((-1 * arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyDevFee / 100 * t / s))
                    if arg1 * buyMarketingFee / 100 and t / s > -1 / arg1 * buyMarketingFee / 100:
                        revert with 0, 17
                    if not arg1 * buyMarketingFee / 100:
                        revert with 0, 18
                    if arg1 * buyMarketingFee / 100 * t / s / arg1 * buyMarketingFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * buyDevFee / 100:
                        if arg1 * buyLiquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * buyLiquidityFee / 100 * t / s:
                            revert with 0, 17
                        if arg1 * buyMarketingFee / 100 * t / s > -1 * arg1 * buyLiquidityFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyLiquidityFee / 100 * t / s < arg1 * buyMarketingFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (-1 * arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (-1 * arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) < 0:
                            revert with 0, 17
                        return ((-1 * arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s))
                    if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                        revert with 0, 17
                    if not arg1 * buyDevFee / 100:
                        revert with 0, 18
                    if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * buyLiquidityFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * buyLiquidityFee / 100 * t / s:
                        revert with 0, 17
                    if arg1 * buyMarketingFee / 100 * t / s > -1 * arg1 * buyLiquidityFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyLiquidityFee / 100 * t / s < arg1 * buyMarketingFee / 100 * t / s:
                        revert with 0, 17
                    if arg1 * buyDevFee / 100 * t / s > (-1 * arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (-1 * arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) < arg1 * buyDevFee / 100 * t / s:
                        revert with 0, 17
                    return ((-1 * arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) - (arg1 * buyDevFee / 100 * t / s))
                if arg1 * buyRewardFee / 100 and t / s > -1 / arg1 * buyRewardFee / 100:
                    revert with 0, 17
                if not arg1 * buyRewardFee / 100:
                    revert with 0, 18
                if arg1 * buyRewardFee / 100 * t / s / arg1 * buyRewardFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * buyLiquidityFee / 100:
                    if not arg1 * buyMarketingFee / 100:
                        if not arg1 * buyDevFee / 100:
                            if arg1 * buyRewardFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * buyRewardFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * buyRewardFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * buyRewardFee / 100 * t / s < 0:
                                revert with 0, 17
                            if 0 > -1 * arg1 * buyRewardFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * buyRewardFee / 100 * t / s < 0:
                                revert with 0, 17
                            if 0 > -1 * arg1 * buyRewardFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * buyRewardFee / 100 * t / s < 0:
                                revert with 0, 17
                            return (-1 * arg1 * buyRewardFee / 100 * t / s)
                        if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                            revert with 0, 17
                        if not arg1 * buyDevFee / 100:
                            revert with 0, 18
                        if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * buyRewardFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * buyRewardFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * buyRewardFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyRewardFee / 100 * t / s < 0:
                            revert with 0, 17
                        if 0 > -1 * arg1 * buyRewardFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyRewardFee / 100 * t / s < 0:
                            revert with 0, 17
                        if arg1 * buyDevFee / 100 * t / s > -1 * arg1 * buyRewardFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyRewardFee / 100 * t / s < arg1 * buyDevFee / 100 * t / s:
                            revert with 0, 17
                        return ((-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyDevFee / 100 * t / s))
                    if arg1 * buyMarketingFee / 100 and t / s > -1 / arg1 * buyMarketingFee / 100:
                        revert with 0, 17
                    if not arg1 * buyMarketingFee / 100:
                        revert with 0, 18
                    if arg1 * buyMarketingFee / 100 * t / s / arg1 * buyMarketingFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * buyDevFee / 100:
                        if arg1 * buyRewardFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * buyRewardFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * buyRewardFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyRewardFee / 100 * t / s < 0:
                            revert with 0, 17
                        if arg1 * buyMarketingFee / 100 * t / s > -1 * arg1 * buyRewardFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyRewardFee / 100 * t / s < arg1 * buyMarketingFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) < 0:
                            revert with 0, 17
                        return ((-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s))
                    if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                        revert with 0, 17
                    if not arg1 * buyDevFee / 100:
                        revert with 0, 18
                    if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * buyRewardFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * buyRewardFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * buyRewardFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyRewardFee / 100 * t / s < 0:
                        revert with 0, 17
                    if arg1 * buyMarketingFee / 100 * t / s > -1 * arg1 * buyRewardFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyRewardFee / 100 * t / s < arg1 * buyMarketingFee / 100 * t / s:
                        revert with 0, 17
                    if arg1 * buyDevFee / 100 * t / s > (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) < arg1 * buyDevFee / 100 * t / s:
                        revert with 0, 17
                    return ((-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) - (arg1 * buyDevFee / 100 * t / s))
                if arg1 * buyLiquidityFee / 100 and t / s > -1 / arg1 * buyLiquidityFee / 100:
                    revert with 0, 17
                if not arg1 * buyLiquidityFee / 100:
                    revert with 0, 18
                if arg1 * buyLiquidityFee / 100 * t / s / arg1 * buyLiquidityFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * buyMarketingFee / 100:
                    if not arg1 * buyDevFee / 100:
                        if arg1 * buyRewardFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * buyRewardFee / 100 * t / s:
                            revert with 0, 17
                        if arg1 * buyLiquidityFee / 100 * t / s > -1 * arg1 * buyRewardFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyRewardFee / 100 * t / s < arg1 * buyLiquidityFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < 0:
                            revert with 0, 17
                        if 0 > (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < 0:
                            revert with 0, 17
                        return ((-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s))
                    if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                        revert with 0, 17
                    if not arg1 * buyDevFee / 100:
                        revert with 0, 18
                    if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * buyRewardFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * buyRewardFee / 100 * t / s:
                        revert with 0, 17
                    if arg1 * buyLiquidityFee / 100 * t / s > -1 * arg1 * buyRewardFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyRewardFee / 100 * t / s < arg1 * buyLiquidityFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < 0:
                        revert with 0, 17
                    if arg1 * buyDevFee / 100 * t / s > (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < arg1 * buyDevFee / 100 * t / s:
                        revert with 0, 17
                    return ((-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyDevFee / 100 * t / s))
                if arg1 * buyMarketingFee / 100 and t / s > -1 / arg1 * buyMarketingFee / 100:
                    revert with 0, 17
                if not arg1 * buyMarketingFee / 100:
                    revert with 0, 18
                if arg1 * buyMarketingFee / 100 * t / s / arg1 * buyMarketingFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * buyDevFee / 100:
                    if arg1 * buyRewardFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * buyRewardFee / 100 * t / s:
                        revert with 0, 17
                    if arg1 * buyLiquidityFee / 100 * t / s > -1 * arg1 * buyRewardFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyRewardFee / 100 * t / s < arg1 * buyLiquidityFee / 100 * t / s:
                        revert with 0, 17
                    if arg1 * buyMarketingFee / 100 * t / s > (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < arg1 * buyMarketingFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) < 0:
                        revert with 0, 17
                    return ((-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s))
                if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                    revert with 0, 17
                if not arg1 * buyDevFee / 100:
                    revert with 0, 18
                if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * buyRewardFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * buyRewardFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * buyLiquidityFee / 100 * t / s > -1 * arg1 * buyRewardFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * buyRewardFee / 100 * t / s < arg1 * buyLiquidityFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * buyMarketingFee / 100 * t / s > (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < arg1 * buyMarketingFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * buyDevFee / 100 * t / s > (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) < arg1 * buyDevFee / 100 * t / s:
                    revert with 0, 17
                return ((-1 * arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) - (arg1 * buyDevFee / 100 * t / s))
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * buyRewardFee / 100:
                if not arg1 * buyLiquidityFee / 100:
                    if not arg1 * buyMarketingFee / 100:
                        if not arg1 * buyDevFee / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            return (arg1 * t / s)
                        if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                            revert with 0, 17
                        if not arg1 * buyDevFee / 100:
                            revert with 0, 18
                        if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * buyDevFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * buyDevFee / 100 * t / s:
                            revert with 0, 17
                        return ((arg1 * t / s) - (arg1 * buyDevFee / 100 * t / s))
                    if arg1 * buyMarketingFee / 100 and t / s > -1 / arg1 * buyMarketingFee / 100:
                        revert with 0, 17
                    if not arg1 * buyMarketingFee / 100:
                        revert with 0, 18
                    if arg1 * buyMarketingFee / 100 * t / s / arg1 * buyMarketingFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * buyDevFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * buyMarketingFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * buyMarketingFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * buyMarketingFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) < 0:
                            revert with 0, 17
                        return ((arg1 * t / s) - (arg1 * buyMarketingFee / 100 * t / s))
                    if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                        revert with 0, 17
                    if not arg1 * buyDevFee / 100:
                        revert with 0, 18
                    if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * buyMarketingFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * buyMarketingFee / 100 * t / s:
                        revert with 0, 17
                    if arg1 * buyDevFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyMarketingFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) < arg1 * buyDevFee / 100 * t / s:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) - (arg1 * buyDevFee / 100 * t / s))
                if arg1 * buyLiquidityFee / 100 and t / s > -1 / arg1 * buyLiquidityFee / 100:
                    revert with 0, 17
                if not arg1 * buyLiquidityFee / 100:
                    revert with 0, 18
                if arg1 * buyLiquidityFee / 100 * t / s / arg1 * buyLiquidityFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * buyMarketingFee / 100:
                    if not arg1 * buyDevFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * buyLiquidityFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * buyLiquidityFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < 0:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < 0:
                            revert with 0, 17
                        return ((arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s))
                    if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                        revert with 0, 17
                    if not arg1 * buyDevFee / 100:
                        revert with 0, 18
                    if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * buyLiquidityFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * buyLiquidityFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < 0:
                        revert with 0, 17
                    if arg1 * buyDevFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < arg1 * buyDevFee / 100 * t / s:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyDevFee / 100 * t / s))
                if arg1 * buyMarketingFee / 100 and t / s > -1 / arg1 * buyMarketingFee / 100:
                    revert with 0, 17
                if not arg1 * buyMarketingFee / 100:
                    revert with 0, 18
                if arg1 * buyMarketingFee / 100 * t / s / arg1 * buyMarketingFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * buyDevFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * buyLiquidityFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * buyLiquidityFee / 100 * t / s:
                        revert with 0, 17
                    if arg1 * buyMarketingFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < arg1 * buyMarketingFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) < 0:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s))
                if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                    revert with 0, 17
                if not arg1 * buyDevFee / 100:
                    revert with 0, 18
                if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if arg1 * buyLiquidityFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * buyLiquidityFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * buyMarketingFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < arg1 * buyMarketingFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * buyDevFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) < arg1 * buyDevFee / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) - (arg1 * buyDevFee / 100 * t / s))
            if arg1 * buyRewardFee / 100 and t / s > -1 / arg1 * buyRewardFee / 100:
                revert with 0, 17
            if not arg1 * buyRewardFee / 100:
                revert with 0, 18
            if arg1 * buyRewardFee / 100 * t / s / arg1 * buyRewardFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * buyLiquidityFee / 100:
                if not arg1 * buyMarketingFee / 100:
                    if not arg1 * buyDevFee / 100:
                        if arg1 * buyRewardFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * buyRewardFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) < 0:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) < 0:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) < 0:
                            revert with 0, 17
                        return ((arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s))
                    if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                        revert with 0, 17
                    if not arg1 * buyDevFee / 100:
                        revert with 0, 18
                    if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * buyRewardFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * buyRewardFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) < 0:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) < 0:
                        revert with 0, 17
                    if arg1 * buyDevFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) < arg1 * buyDevFee / 100 * t / s:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyDevFee / 100 * t / s))
                if arg1 * buyMarketingFee / 100 and t / s > -1 / arg1 * buyMarketingFee / 100:
                    revert with 0, 17
                if not arg1 * buyMarketingFee / 100:
                    revert with 0, 18
                if arg1 * buyMarketingFee / 100 * t / s / arg1 * buyMarketingFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * buyDevFee / 100:
                    if arg1 * buyRewardFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * buyRewardFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) < 0:
                        revert with 0, 17
                    if arg1 * buyMarketingFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) < arg1 * buyMarketingFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) < 0:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s))
                if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                    revert with 0, 17
                if not arg1 * buyDevFee / 100:
                    revert with 0, 18
                if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * buyRewardFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * buyRewardFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) < 0:
                    revert with 0, 17
                if arg1 * buyMarketingFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) < arg1 * buyMarketingFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * buyDevFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) < arg1 * buyDevFee / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) - (arg1 * buyDevFee / 100 * t / s))
            if arg1 * buyLiquidityFee / 100 and t / s > -1 / arg1 * buyLiquidityFee / 100:
                revert with 0, 17
            if not arg1 * buyLiquidityFee / 100:
                revert with 0, 18
            if arg1 * buyLiquidityFee / 100 * t / s / arg1 * buyLiquidityFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * buyMarketingFee / 100:
                if not arg1 * buyDevFee / 100:
                    if arg1 * buyRewardFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * buyRewardFee / 100 * t / s:
                        revert with 0, 17
                    if arg1 * buyLiquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) < arg1 * buyLiquidityFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < 0:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < 0:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s))
                if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                    revert with 0, 17
                if not arg1 * buyDevFee / 100:
                    revert with 0, 18
                if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * buyRewardFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * buyRewardFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * buyLiquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) < arg1 * buyLiquidityFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < 0:
                    revert with 0, 17
                if arg1 * buyDevFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < arg1 * buyDevFee / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyDevFee / 100 * t / s))
            if arg1 * buyMarketingFee / 100 and t / s > -1 / arg1 * buyMarketingFee / 100:
                revert with 0, 17
            if not arg1 * buyMarketingFee / 100:
                revert with 0, 18
            if arg1 * buyMarketingFee / 100 * t / s / arg1 * buyMarketingFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * buyDevFee / 100:
                if arg1 * buyRewardFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * buyRewardFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * buyLiquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) < arg1 * buyLiquidityFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * buyMarketingFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < arg1 * buyMarketingFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s))
            if arg1 * buyDevFee / 100 and t / s > -1 / arg1 * buyDevFee / 100:
                revert with 0, 17
            if not arg1 * buyDevFee / 100:
                revert with 0, 18
            if arg1 * buyDevFee / 100 * t / s / arg1 * buyDevFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * buyRewardFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * buyRewardFee / 100 * t / s:
                revert with 0, 17
            if arg1 * buyLiquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) < arg1 * buyLiquidityFee / 100 * t / s:
                revert with 0, 17
            if arg1 * buyMarketingFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) < arg1 * buyMarketingFee / 100 * t / s:
                revert with 0, 17
            if arg1 * buyDevFee / 100 * t / s > (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) < arg1 * buyDevFee / 100 * t / s:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * buyRewardFee / 100 * t / s) - (arg1 * buyLiquidityFee / 100 * t / s) - (arg1 * buyMarketingFee / 100 * t / s) - (arg1 * buyDevFee / 100 * t / s))
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            if not arg1 * buyRewardFee / 100:
                if not arg1 * buyLiquidityFee / 100:
                    if not arg1 * buyMarketingFee / 100:
                        if not arg1 * buyDevFee / 100:
                            return 0
                        if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                            revert with 0, 17
                        if not arg1 * buyDevFee / 100:
                            revert with 0, 18
                        if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * buyDevFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        return (-1 * arg1 * buyDevFee / 100 * stor12 / totalSupply)
                    if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                        revert with 0, 17
                    if not arg1 * buyMarketingFee / 100:
                        revert with 0, 18
                    if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * buyDevFee / 100:
                        if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyMarketingFee / 100 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * buyMarketingFee / 100 * stor12 / totalSupply)
                    if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                        revert with 0, 17
                    if not arg1 * buyDevFee / 100:
                        revert with 0, 18
                    if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if arg1 * buyDevFee / 100 * stor12 / totalSupply > -1 * arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyMarketingFee / 100 * stor12 / totalSupply < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    return ((-1 * arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                if arg1 * buyLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * buyLiquidityFee / 100:
                    revert with 0, 17
                if not arg1 * buyLiquidityFee / 100:
                    revert with 0, 18
                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply / arg1 * buyLiquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * buyMarketingFee / 100:
                    if not arg1 * buyDevFee / 100:
                        if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply)
                    if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                        revert with 0, 17
                    if not arg1 * buyDevFee / 100:
                        revert with 0, 18
                    if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * buyDevFee / 100 * stor12 / totalSupply > -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    return ((-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                    revert with 0, 17
                if not arg1 * buyMarketingFee / 100:
                    revert with 0, 18
                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * buyDevFee / 100:
                    if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > (-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                    return ((-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply))
                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                    revert with 0, 17
                if not arg1 * buyDevFee / 100:
                    revert with 0, 18
                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if arg1 * buyDevFee / 100 * stor12 / totalSupply > (-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                return ((-1 * arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
            if arg1 * buyRewardFee / 100 and stor12 / totalSupply > -1 / arg1 * buyRewardFee / 100:
                revert with 0, 17
            if not arg1 * buyRewardFee / 100:
                revert with 0, 18
            if arg1 * buyRewardFee / 100 * stor12 / totalSupply / arg1 * buyRewardFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * buyLiquidityFee / 100:
                if not arg1 * buyMarketingFee / 100:
                    if not arg1 * buyDevFee / 100:
                        if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply)
                    if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                        revert with 0, 17
                    if not arg1 * buyDevFee / 100:
                        revert with 0, 18
                    if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * buyDevFee / 100 * stor12 / totalSupply > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    return ((-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                    revert with 0, 17
                if not arg1 * buyMarketingFee / 100:
                    revert with 0, 18
                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * buyDevFee / 100:
                    if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                    return ((-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply))
                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                    revert with 0, 17
                if not arg1 * buyDevFee / 100:
                    revert with 0, 18
                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if arg1 * buyDevFee / 100 * stor12 / totalSupply > (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                return ((-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
            if arg1 * buyLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * buyLiquidityFee / 100:
                revert with 0, 17
            if not arg1 * buyLiquidityFee / 100:
                revert with 0, 18
            if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply / arg1 * buyLiquidityFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * buyMarketingFee / 100:
                if not arg1 * buyDevFee / 100:
                    if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                    if 0 > (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                    return ((-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply))
                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                    revert with 0, 17
                if not arg1 * buyDevFee / 100:
                    revert with 0, 18
                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                if arg1 * buyDevFee / 100 * stor12 / totalSupply > (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                return ((-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
            if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                revert with 0, 17
            if not arg1 * buyMarketingFee / 100:
                revert with 0, 18
            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * buyDevFee / 100:
                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                return ((-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply))
            if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                revert with 0, 17
            if not arg1 * buyDevFee / 100:
                revert with 0, 18
            if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * buyRewardFee / 100 * stor12 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * buyDevFee / 100 * stor12 / totalSupply > (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            return ((-1 * arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
        if arg1 and stor12 / totalSupply > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * buyRewardFee / 100:
            if not arg1 * buyLiquidityFee / 100:
                if not arg1 * buyMarketingFee / 100:
                    if not arg1 * buyDevFee / 100:
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor12 / totalSupply)
                    if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                        revert with 0, 17
                    if not arg1 * buyDevFee / 100:
                        revert with 0, 18
                    if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * buyDevFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
                if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                    revert with 0, 17
                if not arg1 * buyMarketingFee / 100:
                    revert with 0, 18
                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * buyDevFee / 100:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply))
                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                    revert with 0, 17
                if not arg1 * buyDevFee / 100:
                    revert with 0, 18
                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if arg1 * buyDevFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
            if arg1 * buyLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * buyLiquidityFee / 100:
                revert with 0, 17
            if not arg1 * buyLiquidityFee / 100:
                revert with 0, 18
            if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply / arg1 * buyLiquidityFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * buyMarketingFee / 100:
                if not arg1 * buyDevFee / 100:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply))
                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                    revert with 0, 17
                if not arg1 * buyDevFee / 100:
                    revert with 0, 18
                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                if arg1 * buyDevFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
            if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                revert with 0, 17
            if not arg1 * buyMarketingFee / 100:
                revert with 0, 18
            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * buyDevFee / 100:
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply))
            if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                revert with 0, 17
            if not arg1 * buyDevFee / 100:
                revert with 0, 18
            if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < 0:
                revert with 0, 17
            if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * buyDevFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
        if arg1 * buyRewardFee / 100 and stor12 / totalSupply > -1 / arg1 * buyRewardFee / 100:
            revert with 0, 17
        if not arg1 * buyRewardFee / 100:
            revert with 0, 18
        if arg1 * buyRewardFee / 100 * stor12 / totalSupply / arg1 * buyRewardFee / 100 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * buyLiquidityFee / 100:
            if not arg1 * buyMarketingFee / 100:
                if not arg1 * buyDevFee / 100:
                    if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply))
                if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                    revert with 0, 17
                if not arg1 * buyDevFee / 100:
                    revert with 0, 18
                if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                if arg1 * buyDevFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
            if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
                revert with 0, 17
            if not arg1 * buyMarketingFee / 100:
                revert with 0, 18
            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * buyDevFee / 100:
                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply))
            if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                revert with 0, 17
            if not arg1 * buyDevFee / 100:
                revert with 0, 18
            if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < 0:
                revert with 0, 17
            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * buyDevFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
        if arg1 * buyLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * buyLiquidityFee / 100:
            revert with 0, 17
        if not arg1 * buyLiquidityFee / 100:
            revert with 0, 18
        if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply / arg1 * buyLiquidityFee / 100 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * buyMarketingFee / 100:
            if not arg1 * buyDevFee / 100:
                if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply))
            if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
                revert with 0, 17
            if not arg1 * buyDevFee / 100:
                revert with 0, 18
            if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < 0:
                revert with 0, 17
            if arg1 * buyDevFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
        if arg1 * buyMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * buyMarketingFee / 100:
            revert with 0, 17
        if not arg1 * buyMarketingFee / 100:
            revert with 0, 18
        if arg1 * buyMarketingFee / 100 * stor12 / totalSupply / arg1 * buyMarketingFee / 100 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * buyDevFee / 100:
            if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply))
        if arg1 * buyDevFee / 100 and stor12 / totalSupply > -1 / arg1 * buyDevFee / 100:
            revert with 0, 17
        if not arg1 * buyDevFee / 100:
            revert with 0, 18
        if arg1 * buyDevFee / 100 * stor12 / totalSupply / arg1 * buyDevFee / 100 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * buyRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor12 / totalSupply < arg1 * buyRewardFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if arg1 * buyLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) < arg1 * buyLiquidityFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if arg1 * buyMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) < arg1 * buyMarketingFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if arg1 * buyDevFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) < arg1 * buyDevFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        return ((arg1 * stor12 / totalSupply) - (arg1 * buyRewardFee / 100 * stor12 / totalSupply) - (arg1 * buyLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * buyMarketingFee / 100 * stor12 / totalSupply) - (arg1 * buyDevFee / 100 * stor12 / totalSupply))
    if arg1 and sellRewardFee > -1 / arg1:
        revert with 0, 17
    if arg1 and sellLiquidityFee > -1 / arg1:
        revert with 0, 17
    if arg1 and sellMarketingFee > -1 / arg1:
        revert with 0, 17
    if arg1 and sellDevFee > -1 / arg1:
        revert with 0, 17
    mem[672] = 30
    mem[704] = 'SafeMath: subtraction overflow'
    if arg1 * sellRewardFee / 100 > arg1:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 < arg1 * sellRewardFee / 100:
        revert with 0, 17
    mem[736] = 30
    mem[768] = 'SafeMath: subtraction overflow'
    if arg1 * sellLiquidityFee / 100 > arg1 - (arg1 * sellRewardFee / 100):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 - (arg1 * sellRewardFee / 100) < arg1 * sellLiquidityFee / 100:
        revert with 0, 17
    mem[800] = 30
    mem[832] = 'SafeMath: subtraction overflow'
    if arg1 * sellMarketingFee / 100 > arg1 - (arg1 * sellRewardFee / 100) - (arg1 * sellLiquidityFee / 100):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 - (arg1 * sellRewardFee / 100) - (arg1 * sellLiquidityFee / 100) < arg1 * sellMarketingFee / 100:
        revert with 0, 17
    mem[864] = 30
    mem[896] = 'SafeMath: subtraction overflow'
    if arg1 * sellDevFee / 100 > arg1 - (arg1 * sellRewardFee / 100) - (arg1 * sellLiquidityFee / 100) - (arg1 * sellMarketingFee / 100):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 - (arg1 * sellRewardFee / 100) - (arg1 * sellLiquidityFee / 100) - (arg1 * sellMarketingFee / 100) < arg1 * sellDevFee / 100:
        revert with 0, 17
    mem[928] = arg1
    mem[960] = arg1 - (arg1 * sellRewardFee / 100) - (arg1 * sellLiquidityFee / 100) - (arg1 * sellMarketingFee / 100) - (arg1 * sellDevFee / 100)
    mem[992] = arg1 * sellRewardFee / 100
    mem[1024] = arg1 * sellLiquidityFee / 100
    mem[1056] = arg1 * sellMarketingFee / 100
    mem[1088] = arg1 * sellDevFee / 100
    mem[64] = 1312
    mem[1120] = 0
    mem[1152] = 0
    mem[1184] = 0
    mem[1216] = 0
    mem[1248] = 0
    mem[1280] = 0
    idx = 0
    s = totalSupply
    t = stor12
    while idx < stor10.length:
        if stor4[stor10[idx]] <= t:
            if idx >= stor10.length:
                revert with 0, 50
            if stor5[stor10[idx]].field_0 <= s:
                if idx >= stor10.length:
                    revert with 0, 50
                if t < stor4[stor10[idx]]:
                    revert with 0, 17
                if idx >= stor10.length:
                    revert with 0, 50
                mem[0] = stor10[idx]
                mem[32] = 5
                if s < stor5[stor10[idx]].field_0:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor5[stor10[idx]].field_0
                t = t - stor4[stor10[idx]]
                continue 
        mem[1344] = 'SafeMath: division by zero'
        if not totalSupply:
            mem[1376] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[1380] = 32
            idx = 0
            while idx < 26:
                mem[idx + 1444] = mem[idx + 1344]
                idx = idx + 32
                continue 
            revert with 0, 32, 26, mem[1444 len 26], 0
        if not arg1:
            if not arg1 * sellRewardFee / 100:
                if not arg1 * sellLiquidityFee / 100:
                    if not arg1 * sellMarketingFee / 100:
                        if not arg1 * sellDevFee / 100:
                            return 0
                        if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                            revert with 0, 17
                        if not arg1 * sellDevFee / 100:
                            revert with 0, 18
                        if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[1600] = 'SafeMath: subtraction overflow'
                        if arg1 * sellDevFee / 100 * stor12 / totalSupply <= 0:
                            if 0 < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            return (-1 * arg1 * sellDevFee / 100 * stor12 / totalSupply)
                    else:
                        if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
                            revert with 0, 17
                        if not arg1 * sellMarketingFee / 100:
                            revert with 0, 18
                        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * sellDevFee / 100:
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > 0:
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if 0 < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                if -1 * arg1 * sellMarketingFee / 100 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * arg1 * sellMarketingFee / 100 * stor12 / totalSupply)
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > 0:
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if 0 < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= -1 * arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                if -1 * arg1 * sellMarketingFee / 100 * stor12 / totalSupply < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((-1 * arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
                else:
                    if arg1 * sellLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * sellLiquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * sellLiquidityFee / 100:
                        revert with 0, 18
                    if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply / arg1 * sellLiquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * sellMarketingFee / 100:
                        if not arg1 * sellDevFee / 100:
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > 0:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if 0 < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                if -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply)
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > 0:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if 0 < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                if -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
                    else:
                        if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
                            revert with 0, 17
                        if not arg1 * sellMarketingFee / 100:
                            revert with 0, 18
                        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * sellDevFee / 100:
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > 0:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if 0 < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= (-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                                if (-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                return ((-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > 0:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if 0 < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= (-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                                if (-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
            else:
                if arg1 * sellRewardFee / 100 and stor12 / totalSupply > -1 / arg1 * sellRewardFee / 100:
                    revert with 0, 17
                if not arg1 * sellRewardFee / 100:
                    revert with 0, 18
                if arg1 * sellRewardFee / 100 * stor12 / totalSupply / arg1 * sellRewardFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * sellLiquidityFee / 100:
                    if not arg1 * sellMarketingFee / 100:
                        if not arg1 * sellDevFee / 100:
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                return (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply)
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
                    else:
                        if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
                            revert with 0, 17
                        if not arg1 * sellMarketingFee / 100:
                            revert with 0, 18
                        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * sellDevFee / 100:
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                                if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                return ((-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                                if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
                else:
                    if arg1 * sellLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * sellLiquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * sellLiquidityFee / 100:
                        revert with 0, 18
                    if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply / arg1 * sellLiquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * sellMarketingFee / 100:
                        if not arg1 * sellDevFee / 100:
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if 0 > (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                return ((-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if 0 > (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
                    else:
                        if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
                            revert with 0, 17
                        if not arg1 * sellMarketingFee / 100:
                            revert with 0, 18
                        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * sellDevFee / 100:
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                                if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                return ((-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                                if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
        else:
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * sellRewardFee / 100:
                if not arg1 * sellLiquidityFee / 100:
                    if not arg1 * sellMarketingFee / 100:
                        if not arg1 * sellDevFee / 100:
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor12 / totalSupply)
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
                    else:
                        if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
                            revert with 0, 17
                        if not arg1 * sellMarketingFee / 100:
                            revert with 0, 18
                        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * sellDevFee / 100:
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if arg1 * stor12 / totalSupply < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if arg1 * stor12 / totalSupply < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
                else:
                    if arg1 * sellLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * sellLiquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * sellLiquidityFee / 100:
                        revert with 0, 18
                    if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply / arg1 * sellLiquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * sellMarketingFee / 100:
                        if not arg1 * sellDevFee / 100:
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if arg1 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if arg1 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
                    else:
                        if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
                            revert with 0, 17
                        if not arg1 * sellMarketingFee / 100:
                            revert with 0, 18
                        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * sellDevFee / 100:
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if arg1 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if arg1 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
            else:
                if arg1 * sellRewardFee / 100 and stor12 / totalSupply > -1 / arg1 * sellRewardFee / 100:
                    revert with 0, 17
                if not arg1 * sellRewardFee / 100:
                    revert with 0, 18
                if arg1 * sellRewardFee / 100 * stor12 / totalSupply / arg1 * sellRewardFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * sellLiquidityFee / 100:
                    if not arg1 * sellMarketingFee / 100:
                        if not arg1 * sellDevFee / 100:
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
                    else:
                        if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
                            revert with 0, 17
                        if not arg1 * sellMarketingFee / 100:
                            revert with 0, 18
                        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * sellDevFee / 100:
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
                else:
                    if arg1 * sellLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * sellLiquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * sellLiquidityFee / 100:
                        revert with 0, 18
                    if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply / arg1 * sellLiquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * sellMarketingFee / 100:
                        if not arg1 * sellDevFee / 100:
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
                    else:
                        if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
                            revert with 0, 17
                        if not arg1 * sellMarketingFee / 100:
                            revert with 0, 18
                        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * sellDevFee / 100:
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply))
                        else:
                            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                                revert with 0, 17
                            if not arg1 * sellDevFee / 100:
                                revert with 0, 18
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[1408] = 'SafeMath: subtraction overflow'
                            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                mem[1440] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1444] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1508] = mem[idx + 1408]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1508 len 30], 0
                            if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1472] = 'SafeMath: subtraction overflow'
                            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                                mem[1504] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1508] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1572] = mem[idx + 1472]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1572 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1536] = 'SafeMath: subtraction overflow'
                            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                                mem[1568] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[1572] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 1636] = mem[idx + 1536]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[1636 len 30], 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[1600] = 'SafeMath: subtraction overflow'
                            if arg1 * sellDevFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                                    revert with 0, 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
        mem[1632] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[1636] = 32
        idx = 0
        while idx < 30:
            mem[idx + 1700] = mem[idx + 1600]
            idx = idx + 32
            continue 
        revert with 0, 32, 30, mem[1700 len 30], 0
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor12 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            if not arg1 * sellRewardFee / 100:
                if not arg1 * sellLiquidityFee / 100:
                    if not arg1 * sellMarketingFee / 100:
                        if not arg1 * sellDevFee / 100:
                            return 0
                        if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                            revert with 0, 17
                        if not arg1 * sellDevFee / 100:
                            revert with 0, 18
                        if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * sellDevFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * sellDevFee / 100 * t / s:
                            revert with 0, 17
                        return (-1 * arg1 * sellDevFee / 100 * t / s)
                    if arg1 * sellMarketingFee / 100 and t / s > -1 / arg1 * sellMarketingFee / 100:
                        revert with 0, 17
                    if not arg1 * sellMarketingFee / 100:
                        revert with 0, 18
                    if arg1 * sellMarketingFee / 100 * t / s / arg1 * sellMarketingFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * sellDevFee / 100:
                        if arg1 * sellMarketingFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * sellMarketingFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * sellMarketingFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * sellMarketingFee / 100 * t / s < 0:
                            revert with 0, 17
                        return (-1 * arg1 * sellMarketingFee / 100 * t / s)
                    if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                        revert with 0, 17
                    if not arg1 * sellDevFee / 100:
                        revert with 0, 18
                    if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * sellMarketingFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * sellMarketingFee / 100 * t / s:
                        revert with 0, 17
                    if arg1 * sellDevFee / 100 * t / s > -1 * arg1 * sellMarketingFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellMarketingFee / 100 * t / s < arg1 * sellDevFee / 100 * t / s:
                        revert with 0, 17
                    return ((-1 * arg1 * sellMarketingFee / 100 * t / s) - (arg1 * sellDevFee / 100 * t / s))
                if arg1 * sellLiquidityFee / 100 and t / s > -1 / arg1 * sellLiquidityFee / 100:
                    revert with 0, 17
                if not arg1 * sellLiquidityFee / 100:
                    revert with 0, 18
                if arg1 * sellLiquidityFee / 100 * t / s / arg1 * sellLiquidityFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * sellMarketingFee / 100:
                    if not arg1 * sellDevFee / 100:
                        if arg1 * sellLiquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * sellLiquidityFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * sellLiquidityFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * sellLiquidityFee / 100 * t / s < 0:
                            revert with 0, 17
                        if 0 > -1 * arg1 * sellLiquidityFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * sellLiquidityFee / 100 * t / s < 0:
                            revert with 0, 17
                        return (-1 * arg1 * sellLiquidityFee / 100 * t / s)
                    if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                        revert with 0, 17
                    if not arg1 * sellDevFee / 100:
                        revert with 0, 18
                    if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * sellLiquidityFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * sellLiquidityFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * sellLiquidityFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellLiquidityFee / 100 * t / s < 0:
                        revert with 0, 17
                    if arg1 * sellDevFee / 100 * t / s > -1 * arg1 * sellLiquidityFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellLiquidityFee / 100 * t / s < arg1 * sellDevFee / 100 * t / s:
                        revert with 0, 17
                    return ((-1 * arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellDevFee / 100 * t / s))
                if arg1 * sellMarketingFee / 100 and t / s > -1 / arg1 * sellMarketingFee / 100:
                    revert with 0, 17
                if not arg1 * sellMarketingFee / 100:
                    revert with 0, 18
                if arg1 * sellMarketingFee / 100 * t / s / arg1 * sellMarketingFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * sellDevFee / 100:
                    if arg1 * sellLiquidityFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * sellLiquidityFee / 100 * t / s:
                        revert with 0, 17
                    if arg1 * sellMarketingFee / 100 * t / s > -1 * arg1 * sellLiquidityFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellLiquidityFee / 100 * t / s < arg1 * sellMarketingFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (-1 * arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (-1 * arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) < 0:
                        revert with 0, 17
                    return ((-1 * arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s))
                if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                    revert with 0, 17
                if not arg1 * sellDevFee / 100:
                    revert with 0, 18
                if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * sellLiquidityFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * sellLiquidityFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * sellMarketingFee / 100 * t / s > -1 * arg1 * sellLiquidityFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellLiquidityFee / 100 * t / s < arg1 * sellMarketingFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * sellDevFee / 100 * t / s > (-1 * arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) < arg1 * sellDevFee / 100 * t / s:
                    revert with 0, 17
                return ((-1 * arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) - (arg1 * sellDevFee / 100 * t / s))
            if arg1 * sellRewardFee / 100 and t / s > -1 / arg1 * sellRewardFee / 100:
                revert with 0, 17
            if not arg1 * sellRewardFee / 100:
                revert with 0, 18
            if arg1 * sellRewardFee / 100 * t / s / arg1 * sellRewardFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * sellLiquidityFee / 100:
                if not arg1 * sellMarketingFee / 100:
                    if not arg1 * sellDevFee / 100:
                        if arg1 * sellRewardFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * sellRewardFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * sellRewardFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * sellRewardFee / 100 * t / s < 0:
                            revert with 0, 17
                        if 0 > -1 * arg1 * sellRewardFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * sellRewardFee / 100 * t / s < 0:
                            revert with 0, 17
                        if 0 > -1 * arg1 * sellRewardFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * sellRewardFee / 100 * t / s < 0:
                            revert with 0, 17
                        return (-1 * arg1 * sellRewardFee / 100 * t / s)
                    if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                        revert with 0, 17
                    if not arg1 * sellDevFee / 100:
                        revert with 0, 18
                    if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * sellRewardFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * sellRewardFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * sellRewardFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellRewardFee / 100 * t / s < 0:
                        revert with 0, 17
                    if 0 > -1 * arg1 * sellRewardFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellRewardFee / 100 * t / s < 0:
                        revert with 0, 17
                    if arg1 * sellDevFee / 100 * t / s > -1 * arg1 * sellRewardFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellRewardFee / 100 * t / s < arg1 * sellDevFee / 100 * t / s:
                        revert with 0, 17
                    return ((-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellDevFee / 100 * t / s))
                if arg1 * sellMarketingFee / 100 and t / s > -1 / arg1 * sellMarketingFee / 100:
                    revert with 0, 17
                if not arg1 * sellMarketingFee / 100:
                    revert with 0, 18
                if arg1 * sellMarketingFee / 100 * t / s / arg1 * sellMarketingFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * sellDevFee / 100:
                    if arg1 * sellRewardFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * sellRewardFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * sellRewardFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellRewardFee / 100 * t / s < 0:
                        revert with 0, 17
                    if arg1 * sellMarketingFee / 100 * t / s > -1 * arg1 * sellRewardFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellRewardFee / 100 * t / s < arg1 * sellMarketingFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) < 0:
                        revert with 0, 17
                    return ((-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s))
                if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                    revert with 0, 17
                if not arg1 * sellDevFee / 100:
                    revert with 0, 18
                if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * sellRewardFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * sellRewardFee / 100 * t / s:
                    revert with 0, 17
                if 0 > -1 * arg1 * sellRewardFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellRewardFee / 100 * t / s < 0:
                    revert with 0, 17
                if arg1 * sellMarketingFee / 100 * t / s > -1 * arg1 * sellRewardFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellRewardFee / 100 * t / s < arg1 * sellMarketingFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * sellDevFee / 100 * t / s > (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) < arg1 * sellDevFee / 100 * t / s:
                    revert with 0, 17
                return ((-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) - (arg1 * sellDevFee / 100 * t / s))
            if arg1 * sellLiquidityFee / 100 and t / s > -1 / arg1 * sellLiquidityFee / 100:
                revert with 0, 17
            if not arg1 * sellLiquidityFee / 100:
                revert with 0, 18
            if arg1 * sellLiquidityFee / 100 * t / s / arg1 * sellLiquidityFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * sellMarketingFee / 100:
                if not arg1 * sellDevFee / 100:
                    if arg1 * sellRewardFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * sellRewardFee / 100 * t / s:
                        revert with 0, 17
                    if arg1 * sellLiquidityFee / 100 * t / s > -1 * arg1 * sellRewardFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellRewardFee / 100 * t / s < arg1 * sellLiquidityFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < 0:
                        revert with 0, 17
                    if 0 > (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < 0:
                        revert with 0, 17
                    return ((-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s))
                if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                    revert with 0, 17
                if not arg1 * sellDevFee / 100:
                    revert with 0, 18
                if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * sellRewardFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * sellRewardFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * sellLiquidityFee / 100 * t / s > -1 * arg1 * sellRewardFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellRewardFee / 100 * t / s < arg1 * sellLiquidityFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < 0:
                    revert with 0, 17
                if arg1 * sellDevFee / 100 * t / s > (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < arg1 * sellDevFee / 100 * t / s:
                    revert with 0, 17
                return ((-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellDevFee / 100 * t / s))
            if arg1 * sellMarketingFee / 100 and t / s > -1 / arg1 * sellMarketingFee / 100:
                revert with 0, 17
            if not arg1 * sellMarketingFee / 100:
                revert with 0, 18
            if arg1 * sellMarketingFee / 100 * t / s / arg1 * sellMarketingFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * sellDevFee / 100:
                if arg1 * sellRewardFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * sellRewardFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * sellLiquidityFee / 100 * t / s > -1 * arg1 * sellRewardFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellRewardFee / 100 * t / s < arg1 * sellLiquidityFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * sellMarketingFee / 100 * t / s > (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < arg1 * sellMarketingFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) < 0:
                    revert with 0, 17
                return ((-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s))
            if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                revert with 0, 17
            if not arg1 * sellDevFee / 100:
                revert with 0, 18
            if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * sellRewardFee / 100 * t / s > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * sellRewardFee / 100 * t / s:
                revert with 0, 17
            if arg1 * sellLiquidityFee / 100 * t / s > -1 * arg1 * sellRewardFee / 100 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * sellRewardFee / 100 * t / s < arg1 * sellLiquidityFee / 100 * t / s:
                revert with 0, 17
            if arg1 * sellMarketingFee / 100 * t / s > (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < arg1 * sellMarketingFee / 100 * t / s:
                revert with 0, 17
            if arg1 * sellDevFee / 100 * t / s > (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) < arg1 * sellDevFee / 100 * t / s:
                revert with 0, 17
            return ((-1 * arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) - (arg1 * sellDevFee / 100 * t / s))
        if arg1 and t / s > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * t / s / arg1 != t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * sellRewardFee / 100:
            if not arg1 * sellLiquidityFee / 100:
                if not arg1 * sellMarketingFee / 100:
                    if not arg1 * sellDevFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        return (arg1 * t / s)
                    if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                        revert with 0, 17
                    if not arg1 * sellDevFee / 100:
                        revert with 0, 18
                    if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * sellDevFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * sellDevFee / 100 * t / s:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * sellDevFee / 100 * t / s))
                if arg1 * sellMarketingFee / 100 and t / s > -1 / arg1 * sellMarketingFee / 100:
                    revert with 0, 17
                if not arg1 * sellMarketingFee / 100:
                    revert with 0, 18
                if arg1 * sellMarketingFee / 100 * t / s / arg1 * sellMarketingFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * sellDevFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * sellMarketingFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * sellMarketingFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * sellMarketingFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) < 0:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * sellMarketingFee / 100 * t / s))
                if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                    revert with 0, 17
                if not arg1 * sellDevFee / 100:
                    revert with 0, 18
                if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if arg1 * sellMarketingFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * sellMarketingFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * sellDevFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellMarketingFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) < arg1 * sellDevFee / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) - (arg1 * sellDevFee / 100 * t / s))
            if arg1 * sellLiquidityFee / 100 and t / s > -1 / arg1 * sellLiquidityFee / 100:
                revert with 0, 17
            if not arg1 * sellLiquidityFee / 100:
                revert with 0, 18
            if arg1 * sellLiquidityFee / 100 * t / s / arg1 * sellLiquidityFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * sellMarketingFee / 100:
                if not arg1 * sellDevFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * sellLiquidityFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * sellLiquidityFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < 0:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < 0:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s))
                if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                    revert with 0, 17
                if not arg1 * sellDevFee / 100:
                    revert with 0, 18
                if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if arg1 * sellLiquidityFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * sellLiquidityFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < 0:
                    revert with 0, 17
                if arg1 * sellDevFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < arg1 * sellDevFee / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellDevFee / 100 * t / s))
            if arg1 * sellMarketingFee / 100 and t / s > -1 / arg1 * sellMarketingFee / 100:
                revert with 0, 17
            if not arg1 * sellMarketingFee / 100:
                revert with 0, 18
            if arg1 * sellMarketingFee / 100 * t / s / arg1 * sellMarketingFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * sellDevFee / 100:
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if arg1 * sellLiquidityFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * sellLiquidityFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * sellMarketingFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < arg1 * sellMarketingFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s))
            if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                revert with 0, 17
            if not arg1 * sellDevFee / 100:
                revert with 0, 18
            if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < 0:
                revert with 0, 17
            if arg1 * sellLiquidityFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * sellLiquidityFee / 100 * t / s:
                revert with 0, 17
            if arg1 * sellMarketingFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < arg1 * sellMarketingFee / 100 * t / s:
                revert with 0, 17
            if arg1 * sellDevFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) < arg1 * sellDevFee / 100 * t / s:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) - (arg1 * sellDevFee / 100 * t / s))
        if arg1 * sellRewardFee / 100 and t / s > -1 / arg1 * sellRewardFee / 100:
            revert with 0, 17
        if not arg1 * sellRewardFee / 100:
            revert with 0, 18
        if arg1 * sellRewardFee / 100 * t / s / arg1 * sellRewardFee / 100 != t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * sellLiquidityFee / 100:
            if not arg1 * sellMarketingFee / 100:
                if not arg1 * sellDevFee / 100:
                    if arg1 * sellRewardFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * sellRewardFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) < 0:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) < 0:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) < 0:
                        revert with 0, 17
                    return ((arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s))
                if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                    revert with 0, 17
                if not arg1 * sellDevFee / 100:
                    revert with 0, 18
                if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * sellRewardFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * sellRewardFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) < 0:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) < 0:
                    revert with 0, 17
                if arg1 * sellDevFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) < arg1 * sellDevFee / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellDevFee / 100 * t / s))
            if arg1 * sellMarketingFee / 100 and t / s > -1 / arg1 * sellMarketingFee / 100:
                revert with 0, 17
            if not arg1 * sellMarketingFee / 100:
                revert with 0, 18
            if arg1 * sellMarketingFee / 100 * t / s / arg1 * sellMarketingFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * sellDevFee / 100:
                if arg1 * sellRewardFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * sellRewardFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) < 0:
                    revert with 0, 17
                if arg1 * sellMarketingFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) < arg1 * sellMarketingFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s))
            if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                revert with 0, 17
            if not arg1 * sellDevFee / 100:
                revert with 0, 18
            if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * sellRewardFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * sellRewardFee / 100 * t / s:
                revert with 0, 17
            if 0 > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) < 0:
                revert with 0, 17
            if arg1 * sellMarketingFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) < arg1 * sellMarketingFee / 100 * t / s:
                revert with 0, 17
            if arg1 * sellDevFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) < arg1 * sellDevFee / 100 * t / s:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) - (arg1 * sellDevFee / 100 * t / s))
        if arg1 * sellLiquidityFee / 100 and t / s > -1 / arg1 * sellLiquidityFee / 100:
            revert with 0, 17
        if not arg1 * sellLiquidityFee / 100:
            revert with 0, 18
        if arg1 * sellLiquidityFee / 100 * t / s / arg1 * sellLiquidityFee / 100 != t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * sellMarketingFee / 100:
            if not arg1 * sellDevFee / 100:
                if arg1 * sellRewardFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * sellRewardFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * sellLiquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) < arg1 * sellLiquidityFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < 0:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s))
            if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
                revert with 0, 17
            if not arg1 * sellDevFee / 100:
                revert with 0, 18
            if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * sellRewardFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * sellRewardFee / 100 * t / s:
                revert with 0, 17
            if arg1 * sellLiquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) < arg1 * sellLiquidityFee / 100 * t / s:
                revert with 0, 17
            if 0 > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < 0:
                revert with 0, 17
            if arg1 * sellDevFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < arg1 * sellDevFee / 100 * t / s:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellDevFee / 100 * t / s))
        if arg1 * sellMarketingFee / 100 and t / s > -1 / arg1 * sellMarketingFee / 100:
            revert with 0, 17
        if not arg1 * sellMarketingFee / 100:
            revert with 0, 18
        if arg1 * sellMarketingFee / 100 * t / s / arg1 * sellMarketingFee / 100 != t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * sellDevFee / 100:
            if arg1 * sellRewardFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * sellRewardFee / 100 * t / s:
                revert with 0, 17
            if arg1 * sellLiquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) < arg1 * sellLiquidityFee / 100 * t / s:
                revert with 0, 17
            if arg1 * sellMarketingFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < arg1 * sellMarketingFee / 100 * t / s:
                revert with 0, 17
            if 0 > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) < 0:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s))
        if arg1 * sellDevFee / 100 and t / s > -1 / arg1 * sellDevFee / 100:
            revert with 0, 17
        if not arg1 * sellDevFee / 100:
            revert with 0, 18
        if arg1 * sellDevFee / 100 * t / s / arg1 * sellDevFee / 100 != t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * sellRewardFee / 100 * t / s > arg1 * t / s:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * t / s < arg1 * sellRewardFee / 100 * t / s:
            revert with 0, 17
        if arg1 * sellLiquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) < arg1 * sellLiquidityFee / 100 * t / s:
            revert with 0, 17
        if arg1 * sellMarketingFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) < arg1 * sellMarketingFee / 100 * t / s:
            revert with 0, 17
        if arg1 * sellDevFee / 100 * t / s > (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) < arg1 * sellDevFee / 100 * t / s:
            revert with 0, 17
        return ((arg1 * t / s) - (arg1 * sellRewardFee / 100 * t / s) - (arg1 * sellLiquidityFee / 100 * t / s) - (arg1 * sellMarketingFee / 100 * t / s) - (arg1 * sellDevFee / 100 * t / s))
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not arg1:
        if not arg1 * sellRewardFee / 100:
            if not arg1 * sellLiquidityFee / 100:
                if not arg1 * sellMarketingFee / 100:
                    if not arg1 * sellDevFee / 100:
                        return 0
                    if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                        revert with 0, 17
                    if not arg1 * sellDevFee / 100:
                        revert with 0, 18
                    if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * sellDevFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    return (-1 * arg1 * sellDevFee / 100 * stor12 / totalSupply)
                if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
                    revert with 0, 17
                if not arg1 * sellMarketingFee / 100:
                    revert with 0, 18
                if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * sellDevFee / 100:
                    if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellMarketingFee / 100 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    return (-1 * arg1 * sellMarketingFee / 100 * stor12 / totalSupply)
                if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                    revert with 0, 17
                if not arg1 * sellDevFee / 100:
                    revert with 0, 18
                if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if arg1 * sellDevFee / 100 * stor12 / totalSupply > -1 * arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellMarketingFee / 100 * stor12 / totalSupply < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                return ((-1 * arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
            if arg1 * sellLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * sellLiquidityFee / 100:
                revert with 0, 17
            if not arg1 * sellLiquidityFee / 100:
                revert with 0, 18
            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply / arg1 * sellLiquidityFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * sellMarketingFee / 100:
                if not arg1 * sellDevFee / 100:
                    if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    return (-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply)
                if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                    revert with 0, 17
                if not arg1 * sellDevFee / 100:
                    revert with 0, 18
                if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * sellDevFee / 100 * stor12 / totalSupply > -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                return ((-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
            if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
                revert with 0, 17
            if not arg1 * sellMarketingFee / 100:
                revert with 0, 18
            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * sellDevFee / 100:
                if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                return ((-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply))
            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                revert with 0, 17
            if not arg1 * sellDevFee / 100:
                revert with 0, 18
            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * sellDevFee / 100 * stor12 / totalSupply > (-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            return ((-1 * arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
        if arg1 * sellRewardFee / 100 and stor12 / totalSupply > -1 / arg1 * sellRewardFee / 100:
            revert with 0, 17
        if not arg1 * sellRewardFee / 100:
            revert with 0, 18
        if arg1 * sellRewardFee / 100 * stor12 / totalSupply / arg1 * sellRewardFee / 100 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * sellLiquidityFee / 100:
            if not arg1 * sellMarketingFee / 100:
                if not arg1 * sellDevFee / 100:
                    if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    return (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply)
                if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                    revert with 0, 17
                if not arg1 * sellDevFee / 100:
                    revert with 0, 18
                if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if 0 > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * sellDevFee / 100 * stor12 / totalSupply > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                return ((-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
            if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
                revert with 0, 17
            if not arg1 * sellMarketingFee / 100:
                revert with 0, 18
            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * sellDevFee / 100:
                if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                return ((-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply))
            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                revert with 0, 17
            if not arg1 * sellDevFee / 100:
                revert with 0, 18
            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if 0 > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < 0:
                revert with 0, 17
            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * sellDevFee / 100 * stor12 / totalSupply > (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            return ((-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
        if arg1 * sellLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * sellLiquidityFee / 100:
            revert with 0, 17
        if not arg1 * sellLiquidityFee / 100:
            revert with 0, 18
        if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply / arg1 * sellLiquidityFee / 100 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * sellMarketingFee / 100:
            if not arg1 * sellDevFee / 100:
                if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                if 0 > (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                return ((-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply))
            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                revert with 0, 17
            if not arg1 * sellDevFee / 100:
                revert with 0, 18
            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if 0 > (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                revert with 0, 17
            if arg1 * sellDevFee / 100 * stor12 / totalSupply > (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            return ((-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
        if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
            revert with 0, 17
        if not arg1 * sellMarketingFee / 100:
            revert with 0, 18
        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * sellDevFee / 100:
            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if 0 > (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < 0:
                revert with 0, 17
            return ((-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply))
        if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
            revert with 0, 17
        if not arg1 * sellDevFee / 100:
            revert with 0, 18
        if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * sellRewardFee / 100 * stor12 / totalSupply > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if -1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if arg1 * sellDevFee / 100 * stor12 / totalSupply > (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        return ((-1 * arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
    if arg1 and stor12 / totalSupply > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1 * sellRewardFee / 100:
        if not arg1 * sellLiquidityFee / 100:
            if not arg1 * sellMarketingFee / 100:
                if not arg1 * sellDevFee / 100:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor12 / totalSupply)
                if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                    revert with 0, 17
                if not arg1 * sellDevFee / 100:
                    revert with 0, 18
                if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * sellDevFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
            if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
                revert with 0, 17
            if not arg1 * sellMarketingFee / 100:
                revert with 0, 18
            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * sellDevFee / 100:
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply))
            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                revert with 0, 17
            if not arg1 * sellDevFee / 100:
                revert with 0, 18
            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < 0:
                revert with 0, 17
            if 0 > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < 0:
                revert with 0, 17
            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * sellDevFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
        if arg1 * sellLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * sellLiquidityFee / 100:
            revert with 0, 17
        if not arg1 * sellLiquidityFee / 100:
            revert with 0, 18
        if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply / arg1 * sellLiquidityFee / 100 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * sellMarketingFee / 100:
            if not arg1 * sellDevFee / 100:
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply))
            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                revert with 0, 17
            if not arg1 * sellDevFee / 100:
                revert with 0, 18
            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < 0:
                revert with 0, 17
            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                revert with 0, 17
            if arg1 * sellDevFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
        if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
            revert with 0, 17
        if not arg1 * sellMarketingFee / 100:
            revert with 0, 18
        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * sellDevFee / 100:
            if 0 > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < 0:
                revert with 0, 17
            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply))
        if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
            revert with 0, 17
        if not arg1 * sellDevFee / 100:
            revert with 0, 18
        if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if 0 > arg1 * stor12 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor12 / totalSupply < 0:
            revert with 0, 17
        if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor12 / totalSupply < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if arg1 * sellDevFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        return ((arg1 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
    if arg1 * sellRewardFee / 100 and stor12 / totalSupply > -1 / arg1 * sellRewardFee / 100:
        revert with 0, 17
    if not arg1 * sellRewardFee / 100:
        revert with 0, 18
    if arg1 * sellRewardFee / 100 * stor12 / totalSupply / arg1 * sellRewardFee / 100 != stor12 / totalSupply:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1 * sellLiquidityFee / 100:
        if not arg1 * sellMarketingFee / 100:
            if not arg1 * sellDevFee / 100:
                if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply))
            if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
                revert with 0, 17
            if not arg1 * sellDevFee / 100:
                revert with 0, 18
            if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < 0:
                revert with 0, 17
            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < 0:
                revert with 0, 17
            if arg1 * sellDevFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
        if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
            revert with 0, 17
        if not arg1 * sellMarketingFee / 100:
            revert with 0, 18
        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * sellDevFee / 100:
            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < 0:
                revert with 0, 17
            if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply))
        if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
            revert with 0, 17
        if not arg1 * sellDevFee / 100:
            revert with 0, 18
        if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < 0:
            revert with 0, 17
        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if arg1 * sellDevFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
    if arg1 * sellLiquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * sellLiquidityFee / 100:
        revert with 0, 17
    if not arg1 * sellLiquidityFee / 100:
        revert with 0, 18
    if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply / arg1 * sellLiquidityFee / 100 != stor12 / totalSupply:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1 * sellMarketingFee / 100:
        if not arg1 * sellDevFee / 100:
            if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                revert with 0, 17
            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply))
        if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
            revert with 0, 17
        if not arg1 * sellDevFee / 100:
            revert with 0, 18
        if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < 0:
            revert with 0, 17
        if arg1 * sellDevFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
    if arg1 * sellMarketingFee / 100 and stor12 / totalSupply > -1 / arg1 * sellMarketingFee / 100:
        revert with 0, 17
    if not arg1 * sellMarketingFee / 100:
        revert with 0, 18
    if arg1 * sellMarketingFee / 100 * stor12 / totalSupply / arg1 * sellMarketingFee / 100 != stor12 / totalSupply:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1 * sellDevFee / 100:
        if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
            revert with 0, 17
        if 0 > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < 0:
            revert with 0, 17
        return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply))
    if arg1 * sellDevFee / 100 and stor12 / totalSupply > -1 / arg1 * sellDevFee / 100:
        revert with 0, 17
    if not arg1 * sellDevFee / 100:
        revert with 0, 18
    if arg1 * sellDevFee / 100 * stor12 / totalSupply / arg1 * sellDevFee / 100 != stor12 / totalSupply:
        revert with 0, 'SafeMath: multiplication overflow'
    if arg1 * sellRewardFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg1 * stor12 / totalSupply < arg1 * sellRewardFee / 100 * stor12 / totalSupply:
        revert with 0, 17
    if arg1 * sellLiquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) < arg1 * sellLiquidityFee / 100 * stor12 / totalSupply:
        revert with 0, 17
    if arg1 * sellMarketingFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) < arg1 * sellMarketingFee / 100 * stor12 / totalSupply:
        revert with 0, 17
    if arg1 * sellDevFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) < arg1 * sellDevFee / 100 * stor12 / totalSupply:
        revert with 0, 17
    return ((arg1 * stor12 / totalSupply) - (arg1 * sellRewardFee / 100 * stor12 / totalSupply) - (arg1 * sellLiquidityFee / 100 * stor12 / totalSupply) - (arg1 * sellMarketingFee / 100 * stor12 / totalSupply) - (arg1 * sellDevFee / 100 * stor12 / totalSupply))
}



}
