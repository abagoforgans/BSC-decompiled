contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address tokenAddress;
uint256 tokenDecimals;
address BUSDAddress;
uint256 tokenRatePerEth;
uint256 sub_d79d5e38;
uint256 rateDecimals;
uint256 minEthLimit;
uint256 maxEthLimit;
uint256 sub_c215ef4b;
uint256 sub_9ab10835;
uint256 totalSupply;
uint256 soldTokens;
uint256 totalsold;
uint256 sub_79c78afe;
uint256 endTime;
uint8 isClaimable;
uint8 isWhitelisted; offset 8
uint256 stor16; offset 8
uint256 stor16;
uint256 lockedPeriod;
uint8 stor18;
mapping of uint256 sub_007e8064;
mapping of uint256 sub_39aeea92;
mapping of uint256 userClaimbale;
mapping of uint256 sub_86f9f8eb;

function sub_007e8064(?) {
    require calldata.size - 4 >= 64
    return sub_007e8064[arg1][arg2]
}

function totalSupply() {
    return totalSupply
}

function rateDecimals() {
    return rateDecimals
}

function islocked() {
    return bool(stor18)
}

function endTime() {
    return endTime
}

function sub_39aeea92(?) {
    require calldata.size - 4 >= 32
    return sub_39aeea92[arg1]
}

function tokenDecimals() {
    return tokenDecimals
}

function BUSD() {
    return BUSDAddress
}

function soldTokens() {
    return soldTokens
}

function isWhitelisted() {
    return bool(isWhitelisted)
}

function sub_6b8c09cd(?) {
    return sub_39aeea92[msg.sender]
}

function isClaimable() {
    return bool(isClaimable)
}

function sub_79c78afe(?) {
    return sub_79c78afe
}

function sub_86f9f8eb(?) {
    require calldata.size - 4 >= 64
    return sub_86f9f8eb[arg1][arg2]
}

function owner() {
    return owner
}

function sub_9ab10835(?) {
    return sub_9ab10835
}

function tokenAddress() {
    return tokenAddress
}

function totalsold() {
    return totalsold
}

function lockedPeriod() {
    return lockedPeriod
}

function sub_c215ef4b(?) {
    return sub_c215ef4b
}

function getUserInvestments(address arg1) {
    require calldata.size - 4 >= 32
    return sub_007e8064[stor1][address(arg1)]
}

function sub_d79d5e38(?) {
    return sub_d79d5e38
}

function getUserClaimbale(address arg1) {
    require calldata.size - 4 >= 32
    return userClaimbale[stor1][address(arg1)]
}

function tokenRatePerEth() {
    return tokenRatePerEth
}

function isPresaleOpen() {
    return bool(stor0)
}

function minEthLimit() {
    return minEthLimit
}

function balanceOf(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return userClaimbale[arg1][arg2]
}

function maxEthLimit() {
    return maxEthLimit
}

function _fallback() payable {
    revert
}

function sub_24ff027d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_d79d5e38 = arg1
}

function sub_c767aad0(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_9ab10835 = arg1
}

function sub_fa68e93f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_c215ef4b = arg1
}

function setBUSD(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    BUSDAddress = arg1
}

function whitelistedSale() {
    require msg.sender == owner
    Mask(248, 0, stor16.field_8) = Mask(248, 0, not isWhitelisted)
}

function setMinEthLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    minEthLimit = arg1
}

function setMaxEthLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    maxEthLimit = arg1
}

function setRateDecimals(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    rateDecimals = arg1
}

function setTokenDecimals(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    tokenDecimals = arg1
}

function setTokenRatePerEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    tokenRatePerEth = arg1
}

function removeWhitelistedAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_86f9f8eb[stor1][address(arg1)] = 0
}

function addWhitelistedAddress(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_86f9f8eb[stor1][address(arg1)] = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
    emit OwnershipTransferred(msg.sender, arg1);
}

function sub_9e58c960(?) {
    require ext_code.size(BUSDAddress)
    staticcall BUSDAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function finalizeSale() {
    require msg.sender == owner
    uint256(stor16.field_0) = not isClaimable or Mask(248, 8, uint256(stor16.field_0))
    require soldTokens + totalsold >= totalsold
    totalsold += soldTokens
    soldTokens = 0
    require lockedPeriod + block.timestamp >= block.timestamp
    lockedPeriod += block.timestamp
}

function getUnsoldTokensBalance() {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function closePresale() {
    require msg.sender == owner
    if not stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2150726573616c65206973206e6f74206f70656e20796574206f7220656e646564,
                    mem[197 len 31]
    stor0 = 0
}

function setLockingPeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        stor18 = 0
        lockedPeriod = 0
    else:
        stor18 = 1
        if not arg1:
            lockedPeriod = 0
        else:
            require 24 * 3600 * arg1 / arg1 == 24 * 3600
            lockedPeriod = 24 * 3600 * arg1
}

function setTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    tokenAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    tokenDecimals = ext_call.return_data[0]
}

function sub_99896b1a(?) {
    require calldata.size - 4 >= 32
    require tokenDecimals <= 18
    require rateDecimals >= 0
    if not arg1:
        if 10^(rateDecimals + -tokenDecimals + 18):
            return (0 / 10^(rateDecimals + -tokenDecimals + 18))
    else:
        if sub_d79d5e38 * arg1 / arg1 == sub_d79d5e38:
            if 10^(rateDecimals + -tokenDecimals + 18):
                return (sub_d79d5e38 * arg1 / 10^(rateDecimals + -tokenDecimals + 18))
    revert
}

function getTokensPerEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require tokenDecimals <= 18
    require rateDecimals >= 0
    if not arg1:
        if 10^(rateDecimals + -tokenDecimals + 18):
            return (0 / 10^(rateDecimals + -tokenDecimals + 18))
    else:
        if tokenRatePerEth * arg1 / arg1 == tokenRatePerEth:
            if 10^(rateDecimals + -tokenDecimals + 18):
                return (tokenRatePerEth * arg1 / 10^(rateDecimals + -tokenDecimals + 18))
    revert
}

function withdrawBNB() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(BUSDAddress)
    staticcall BUSDAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(BUSDAddress)
    call BUSDAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_536baf0f(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require msg.sender == owner
    isWhitelisted = 1
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = sha3(tokenAddress, 22)
        sub_86f9f8eb[stor1][address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
}

function startPresale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No Funds'
    if stor0:
        revert with 0, 'Presale is open'
    if not arg1:
        sub_79c78afe = 0
        require block.timestamp >= block.timestamp
        endTime = block.timestamp
    else:
        require 24 * 3600 * arg1 / arg1 == 24 * 3600
        sub_79c78afe = 24 * 3600 * arg1
        require (24 * 3600 * arg1) + block.timestamp >= block.timestamp
        endTime = (24 * 3600 * arg1) + block.timestamp
    stor0 = 1
    isClaimable = 0
}

function burnUnsoldTokens() {
    require msg.sender == owner
    if stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x2e596f752063616e6e6f74206275726e20746f6b656e7320756e7469746c207468652070726573616c6520697320636c6f736564,
                    mem[216 len 12]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.burnTokens(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUnsoldTokens() {
    require msg.sender == owner
    if stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe596f752063616e6e6f742067657420746f6b656e7320756e74696c207468652070726573616c6520697320636c6f736564,
                    mem[214 len 14]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require soldTokens <= ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0] - soldTokens
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claimTokens() {
    if stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x2e596f752063616e6e6f7420636c61696d20746f6b656e7320756e74696c207468652070726573616c6520697320636c6f736564,
                    mem[216 len 12]
    if not isClaimable:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x2e5761697420756e74696c20746865206f776e65722066696e616c697365207468652073616c6520,
                    mem[204 len 24]
    if block.timestamp <= lockedPeriod:
        revert with 0, 'Locked Period is still live !'
    if not userClaimbale[stor1][msg.sender]:
        revert with 0, 'No Tokens left !'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, userClaimbale[stor1][msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x21496e73756666696369656e742062616c616e6365206f662070726573616c6520636f6e7472616374,
                    mem[205 len 23]
    userClaimbale[stor1][msg.sender] = 0
}

function sub_1abf4be0(?) {
    require calldata.size - 4 >= 32
    if block.timestamp > endTime:
        stor0 = 0
    if not stor0:
        revert with 0, 'Presale is not open.'
    require arg1 + sub_007e8064[stor1][msg.sender] >= sub_007e8064[stor1][msg.sender]
    if arg1 + sub_007e8064[stor1][msg.sender] > maxEthLimit:
        revert with 0, 'Installment Invalid.'
    require arg1 + sub_007e8064[stor1][msg.sender] >= sub_007e8064[stor1][msg.sender]
    if arg1 + sub_007e8064[stor1][msg.sender] < minEthLimit:
        revert with 0, 'Installment Invalid.'
    if isWhitelisted:
        if not sub_86f9f8eb[stor1][msg.sender]:
            revert with 0, 'you are not whitelisted'
        if arg1 > sub_86f9f8eb[stor1][msg.sender]:
            revert with 0, 'amount too high'
        require arg1 + sub_007e8064[stor1][msg.sender] >= sub_007e8064[stor1][msg.sender]
        if arg1 + sub_007e8064[stor1][msg.sender] > sub_86f9f8eb[stor1][msg.sender]:
            revert with 0, 'Maximum purchase cap hit'
        require arg1 <= sub_86f9f8eb[stor1][msg.sender]
        sub_86f9f8eb[stor1][msg.sender] -= arg1
    require ext_code.size(BUSDAddress)
    call BUSDAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient Funds !'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require soldTokens <= ext_call.return_data[0]
    if ext_call.return_data[0] - soldTokens <= 0:
        revert with 0, 'No Presale Funds left'
    require tokenDecimals <= 18
    require rateDecimals >= 0
    if not arg1:
        require 10^(rateDecimals + -tokenDecimals + 18)
        require (0 / 10^(rateDecimals + -tokenDecimals + 18)) + userClaimbale[stor1][msg.sender] >= userClaimbale[stor1][msg.sender]
        userClaimbale[stor1][msg.sender] += 0 / 10^(rateDecimals + -tokenDecimals + 18)
        require (0 / 10^(rateDecimals + -tokenDecimals + 18)) + soldTokens >= soldTokens
        soldTokens += 0 / 10^(rateDecimals + -tokenDecimals + 18)
    else:
        require sub_d79d5e38 * arg1 / arg1 == sub_d79d5e38
        require 10^(rateDecimals + -tokenDecimals + 18)
        require (sub_d79d5e38 * arg1 / 10^(rateDecimals + -tokenDecimals + 18)) + userClaimbale[stor1][msg.sender] >= userClaimbale[stor1][msg.sender]
        userClaimbale[stor1][msg.sender] += sub_d79d5e38 * arg1 / 10^(rateDecimals + -tokenDecimals + 18)
        require (sub_d79d5e38 * arg1 / 10^(rateDecimals + -tokenDecimals + 18)) + soldTokens >= soldTokens
        soldTokens += sub_d79d5e38 * arg1 / 10^(rateDecimals + -tokenDecimals + 18)
    require arg1 + sub_39aeea92[msg.sender] >= sub_39aeea92[msg.sender]
    sub_39aeea92[msg.sender] += arg1
}



}
