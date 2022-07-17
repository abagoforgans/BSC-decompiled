contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const sub_92f6576e(?) = 1000

const MAX_SUPPLY = 10000000000000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 decimals;
address owner; offset 8
address stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9; offset 8
uint8 stor9; offset 16
address stor9;
address dexRouterAddress; offset 24
uint256 stor9; offset 16
uint256 stor9; offset 8
address stor10;
address stor11;
address stor13;
address marketingWalletAddress;
address treasuryWalletAddress;
address sub_5ae3c6baAddress;
address sub_c107c76fAddress;
uint256 liquidityFee;
uint256 sub_53781360;
uint256 sub_dbb3cdc2;
uint256 marketingFee;
uint256 treasuryFee;
uint256 sellFeeIncreaseFactor;
uint256 sub_eaeee74d;
uint256 totalFees;
uint256 maxBuyTransactionAmount;
uint256 maxSellTransactionAmount;
uint256 swapTokensAtAmount;
uint256 maxWalletToken;
uint8 sub_835439c7;
mapping of uint8 stor31;
mapping of uint8 stor32;

function maxSellTransactionAmount() {
    return maxSellTransactionAmount
}

function dexRouter() {
    return dexRouterAddress
}

function totalFees() {
    return totalFees
}

function totalSupply() {
    return totalSupply
}

function sellFeeIncreaseFactor() {
    return sellFeeIncreaseFactor
}

function decimals() {
    return decimals
}

function sub_3b63f709(?) {
    return bool(uint8(stor9.field_8))
}

function treasuryWallet() {
    return treasuryWalletAddress
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor31[arg1])
}

function sub_53781360(?) {
    return sub_53781360
}

function maxBuyTransactionAmount() {
    return maxBuyTransactionAmount
}

function feesOnNormalTransfers() {
    return bool(uint8(stor9.field_16))
}

function sub_5ae3c6ba(?) {
    return sub_5ae3c6baAddress
}

function marketingFee() {
    return marketingFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function marketingWallet() {
    return marketingWalletAddress
}

function sub_835439c7(?) {
    return bool(sub_835439c7)
}

function owner() {
    return owner
}

function liquidityFee() {
    return liquidityFee
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor32[arg1])
}

function sub_c107c76f(?) {
    return sub_c107c76fAddress
}

function treasuryFee() {
    return treasuryFee
}

function sub_dbb3cdc2(?) {
    return sub_dbb3cdc2
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function swapTokensAtAmount() {
    return swapTokensAtAmount
}

function maxWalletToken() {
    return maxWalletToken
}

function sub_eaeee74d(?) {
    return sub_eaeee74d
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMaxWalletToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxWalletToken = arg1
}

function setSwapTokensAtAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAtAmount = arg1
}

function setMaxBuyTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxBuyTransactionAmount = arg1
}

function setMaxSellTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxSellTransactionAmount = arg1
}

function setSellTransactionMultiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sellFeeIncreaseFactor = arg1
}

function setFeesOnNormalTransfers(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor9.field_16) = Mask(240, 0, arg1)
}

function retrieveBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to retrieve BNB'
}

function sub_544727bc(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(arg1) == bool(sub_835439c7):
        revert with 0, 'Not changed'
    sub_835439c7 = uint8(bool(arg1))
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    stor7 = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function sub_1a445543(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(arg1) == bool(uint8(stor9.field_8)):
        revert with 0, 'Not changed'
    Mask(248, 0, stor9.field_8) = Mask(248, 0, bool(arg1))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'zero address'
    if not arg1:
        revert with 0, 'zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTreasuryWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 == bool(stor31[address(arg1)]):
        revert with 0, 'Already excluded'
    stor31[address(arg1)] = 1
    emit ExcludeFromFees(1, arg1);
    treasuryWalletAddress = arg1
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 == bool(stor31[address(arg1)]):
        revert with 0, 'Already excluded'
    stor31[address(arg1)] = 1
    emit ExcludeFromFees(1, arg1);
    marketingWalletAddress = arg1
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == bool(stor31[address(arg1)]):
        revert with 0, 'Already excluded'
    stor31[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
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

function setMinimumBalanceForDividends(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_c107c76fAddress)
    call sub_c107c76fAddress.updateMinimumTokenBalanceForDividends(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function prepareForPartner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_c107c76fAddress)
    call sub_c107c76fAddress.excludeFromDividends(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claim() {
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require ext_code.size(sub_c107c76fAddress)
    call sub_c107c76fAddress.claimDividend(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor8 = 1
}

function compound() {
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require ext_code.size(sub_c107c76fAddress)
    call sub_c107c76fAddress.0x6d586d3b with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor8 = 1
}

function sub_91c04cfb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_c107c76fAddress)
    call sub_c107c76fAddress.excludeFromDividends(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg1), bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b4346740(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5ae3c6baAddress = address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor9.field_0), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0, 'zero address'
    if not arg1:
        revert with 0, 'zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'zero address'
    if not arg1:
        revert with 0, 'zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10 == arg1:
        revert with 0, 'cannot be removed'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor32[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(sub_c107c76fAddress)
        call sub_c107c76fAddress.excludeFromDividends(address arg1, bool arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function retrieveTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
}

function sub_673f9623(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0, 'wrong'
    sub_dbb3cdc2 = arg1
    if liquidityFee > !marketingFee:
        revert with 0, 17
    if liquidityFee + marketingFee < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee > !treasuryFee:
        revert with 0, 17
    if treasuryFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee + treasuryFee > !sub_dbb3cdc2:
        revert with 0, 17
    if sub_dbb3cdc2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee + treasuryFee + sub_dbb3cdc2 > !sub_53781360:
        revert with 0, 17
    if sub_53781360 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = liquidityFee + marketingFee + treasuryFee + sub_dbb3cdc2 + sub_53781360
}

function setTreasuryFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0, 'wrong'
    treasuryFee = arg1
    if liquidityFee > !marketingFee:
        revert with 0, 17
    if liquidityFee + marketingFee < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee > !treasuryFee:
        revert with 0, 17
    if treasuryFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee + treasuryFee > !sub_dbb3cdc2:
        revert with 0, 17
    if sub_dbb3cdc2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee + treasuryFee + sub_dbb3cdc2 > !sub_53781360:
        revert with 0, 17
    if sub_53781360 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = liquidityFee + marketingFee + treasuryFee + sub_dbb3cdc2 + sub_53781360
}

function setLiquidityFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0, 'wrong'
    liquidityFee = arg1
    if liquidityFee > !marketingFee:
        revert with 0, 17
    if liquidityFee + marketingFee < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee > !treasuryFee:
        revert with 0, 17
    if treasuryFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee + treasuryFee > !sub_dbb3cdc2:
        revert with 0, 17
    if sub_dbb3cdc2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee + treasuryFee + sub_dbb3cdc2 > !sub_53781360:
        revert with 0, 17
    if sub_53781360 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = liquidityFee + marketingFee + treasuryFee + sub_dbb3cdc2 + sub_53781360
}

function setMarketingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0, 'wrong'
    marketingFee = arg1
    if liquidityFee > !marketingFee:
        revert with 0, 17
    if liquidityFee + marketingFee < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee > !treasuryFee:
        revert with 0, 17
    if treasuryFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee + treasuryFee > !sub_dbb3cdc2:
        revert with 0, 17
    if sub_dbb3cdc2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee + treasuryFee + sub_dbb3cdc2 > !sub_53781360:
        revert with 0, 17
    if sub_53781360 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = liquidityFee + marketingFee + treasuryFee + sub_dbb3cdc2 + sub_53781360
}

function setToBurnTokenFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0, 'wrong'
    sub_53781360 = arg1
    if liquidityFee > !marketingFee:
        revert with 0, 17
    if liquidityFee + marketingFee < liquidityFee:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee > !treasuryFee:
        revert with 0, 17
    if treasuryFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee + treasuryFee > !sub_dbb3cdc2:
        revert with 0, 17
    if sub_dbb3cdc2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if liquidityFee + marketingFee + treasuryFee + sub_dbb3cdc2 > !sub_53781360:
        revert with 0, 17
    if sub_53781360 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = liquidityFee + marketingFee + treasuryFee + sub_dbb3cdc2 + sub_53781360
}

function sub_57a8717d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'must be owned by MSI'
    require ext_code.size(address(arg1))
    call address(arg1).excludeFromDividends(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).excludeFromDividends(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(this.address), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).excludeFromDividends(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(stor9.field_0), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).excludeFromDividends(address arg1, bool arg2) with:
         gas gas_remaining wei
        args stor10, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).excludeFromDividends(address arg1, bool arg2) with:
         gas gas_remaining wei
        args stor11, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).excludeFromDividends(address arg1, bool arg2) with:
         gas gas_remaining wei
        args stor13, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c107c76fAddress = address(arg1)
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
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
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
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



}
