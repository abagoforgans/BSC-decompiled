contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - _fallback()
#
const name = '', 0

const InitialSupply = 100000000 * 10^18

const decimals = 18

const symbol = '', 0


address owner;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 maxTransactionAmount;
uint256 maxWalletBalance;
uint256 _circulatingSupply;
uint256 buyTax;
uint256 sellTax;
uint256 sub_8124f7ac;
uint256 liquidityTax;
uint256 sub_25049036;
address stor14;
address stor15;
address deadWalletAddress;
address paymentSplitterAddress;
uint8 blacklistMode; offset 160
uint128 stor18; offset 160
address sub_fd52f722Address;
mapping of uint8 stor19;
uint8 stor20;
uint256 sub_e52fb9ec;
uint256 sub_0eff4c64;
uint8 manualSwap;
uint256 sub_b40d09e2;
uint256 stor25;
uint8 sub_9b39b65f;
uint256 storB342;

function sub_0eff4c64(?) {
    return sub_0eff4c64
}

function totalSupply() {
    return _circulatingSupply
}

function sub_25049036(?) {
    return sub_25049036
}

function buyTax() {
    return buyTax
}

function manualSwap() {
    return bool(manualSwap)
}

function isExcludedFromLimits(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_8124f7ac(?) {
    return sub_8124f7ac
}

function deadWallet() {
    return deadWalletAddress
}

function getOwner() {
    return owner
}

function blacklistMode() {
    return bool(blacklistMode)
}

function owner() {
    return owner
}

function sub_9b39b65f(?) {
    return bool(sub_9b39b65f)
}

function _circulatingSupply() {
    return _circulatingSupply
}

function sub_b40d09e2(?) {
    return sub_b40d09e2
}

function maxWalletBalance() {
    return maxWalletBalance
}

function liquidityTax() {
    return liquidityTax
}

function maxTransactionAmount() {
    return maxTransactionAmount
}

function sellTax() {
    return sellTax
}

function excludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function sub_e52fb9ec(?) {
    return sub_e52fb9ec
}

function isPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function paymentSplitter() {
    return paymentSplitterAddress
}

function sub_fd52f722(?) {
    return sub_fd52f722Address
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[arg1])
}

function limitLiquidityReleaseTo20Percent() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9b39b65f = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getLiquidityReleaseTimeInSeconds() {
    if block.timestamp >= stor25:
        return 0
    if stor25 < block.timestamp:
        revert with 0, 17
    return (stor25 - block.timestamp)
}

function sub_cfd1940e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 10
    sub_e52fb9ec = arg1
}

function sub_bc43d849(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 1000
    sub_0eff4c64 = arg1
}

function isOverLiquified() {
    if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
        revert with 0, 17
    return (balanceOf[stor14] > _circulatingSupply * sub_0eff4c64 / 1000)
}

function sub_868b0141(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    manualSwap = uint8(bool(arg1))
}

function setProtector(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fd52f722Address = arg1
}

function enable_blacklist(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = Mask(96, 0, arg1)
}

function sub_206b7db8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paymentSplitterAddress = address(arg1)
}

function getBurnedTokens() {
    if 100000000 * 10^18 < _circulatingSupply:
        revert with 0, 17
    if -_circulatingSupply + 100000000 * 10^18 > !storB342:
        revert with 0, 17
    return (-_circulatingSupply + storB342 + 100000000 * 10^18)
}

function sub_53ad2248(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = uint8(bool(arg2))
    emit ExcludeFromLimits(address(arg1), bool(arg2));
}

function SetupEnableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_b40d09e2:
        revert with 0, 'AlreadyLaunched'
    sub_b40d09e2 = block.timestamp
    maxWalletBalance = 500000 * 10^18
    maxTransactionAmount = 1500000 * 10^18
    emit 0x2cb945e0 
}

function sub_f40a563a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor14 == address(arg1):
        revert with 0, 'can't change pancake'
    stor5[address(arg1)] = uint8(bool(arg2))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function LockLiquidityForSeconds(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !block.timestamp:
        revert with 0, 17
    require arg1 + block.timestamp > stor25
    stor25 = arg1 + block.timestamp
    emit 0x8ff9dc93: (arg1 + block.timestamp)
}

function ExcludeAccountFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if this.address == arg1:
        revert with 0, 'can't Include the contract'
    stor4[address(arg1)] = uint8(arg2)
    emit 0xa22b2547: address(arg1), arg2
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

function sub_2c92293c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 10:
        revert with 0, 'min 1%'
    if arg1 > 1000:
        revert with 0, 'max 100%'
    if arg1 > 0x318481895d962776a54d92bf80caa0674f371b8c195:
        revert with 0, 17
    maxWalletBalance = 100000000 * 10^18 * arg1 / 1000
    emit 0x9cbd2e55: arg1
}

function setMaxTransactionAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 25:
        revert with 0, 'min 0.25%'
    if arg1 > 10000:
        revert with 0, 'max 100%'
    if arg1 > 0x318481895d962776a54d92bf80caa0674f371b8c195:
        revert with 0, 17
    maxTransactionAmount = 100000000 * 10^18 * arg1 / 10000
    emit 0x7c1cb370: arg1
}

function withdrawBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 0, 17
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0, '<0 allowance'
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function sub_baa88ea9(?) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0, 'Tax exceeds maxTax'
    if arg2 > 100:
        revert with 0, 'Tax exceeds maxTax'
    if arg3 > 100:
        revert with 0, 'Tax exceeds maxTax'
    if arg4 > !arg5:
        revert with 0, 17
    if arg4 + arg5 != 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Taxes don't add up to denominator'
    buyTax = arg1
    sellTax = arg2
    sub_8124f7ac = arg3
    sub_25049036 = arg4
    liquidityTax = arg5
    emit 0x7d167ef6: arg1, arg2, arg3, arg4, arg5
}

function sub_01f69b89(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    require msg.sender == sub_fd52f722Address
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 19
        stor19[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function manage_blacklist(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 19
        stor19[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function LiquidityRelease() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor25:
        revert with 0, 'Not yet unlocked'
    staticcall stor14.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_9b39b65f:
        call stor14.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        if block.timestamp > -604801:
            revert with 0, 17
        stor25 = block.timestamp + (168 * 24 * 3600)
        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        call stor14.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 2 * ext_call.return_data[0] / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x28bacca4 
}

function SwapContractToken() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20 = 1
    if liquidityTax > !sub_25049036:
        revert with 0, 17
    if balanceOf[stor14] and sub_e52fb9ec > -1 / balanceOf[stor14]:
        revert with 0, 17
    if liquidityTax + sub_25049036:
        if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
            revert with 0, 17
        if balanceOf[stor14] > _circulatingSupply * sub_0eff4c64 / 1000:
            if balanceOf[this.address] < 0:
                revert with 0, 17
            if 0 > !balanceOf[this.address]:
                revert with 0, 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor15:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor15].field_0 = balanceOf[this.address]
            emit Approval(balanceOf[this.address], this.address, stor15);
            mem[128] = this.address
            staticcall stor15.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = balanceOf[this.address]
            idx = 0
            s = ceil32(return_data.size) + 388
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor15)
            call stor15.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
        else:
            if balanceOf[this.address] and liquidityTax > -1 / balanceOf[this.address]:
                revert with 0, 17
            if not liquidityTax + sub_25049036:
                revert with 0, 18
            if balanceOf[this.address] < balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036:
                revert with 0, 17
            if balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2 > !(balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036)):
                revert with 0, 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor15:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor15].field_0 = (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036)
            emit Approval(((balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036)), this.address, stor15);
            mem[128] = this.address
            staticcall stor15.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036)
            idx = 0
            s = ceil32(return_data.size) + 388
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor15)
            call stor15.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036:
                if False and balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                    revert with 0, 17
                if not (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036):
                    revert with 0, 18
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor15:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor15].field_0 = balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2
                allowance[address(this.address)][stor15].field_255 = 0
                emit Approval((balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor15);
                call stor15.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value 0 / (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036) wei
                     gas gas_remaining wei
                    args this.address, Mask(255, 1, balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
        call paymentSplitterAddress with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
    stor20 = 0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'Transfer from zero'
    if not arg1:
        revert with 0, 'Transfer to zero'
    if blacklistMode:
        if stor19[address(msg.sender)]:
            revert with 0, 'Blacklisted'
        if stor19[address(arg1)]:
            revert with 0, 'Blacklisted'
    if stor4[address(msg.sender)]:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'Transfer exceeds balance'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor4[address(arg1)]:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'Transfer exceeds balance'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
    if sub_b40d09e2 <= 0:
        revert with 0, 'trading not yet enabled'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'Transfer exceeds balance'
    if stor5[arg1]:
        if sub_b40d09e2 > -301:
            revert with 0, 17
        if block.timestamp >= sub_b40d09e2 + 300:
            if stor14 != msg.sender:
                if not manualSwap:
                    if not stor20:
                        stor20 = 1
                        if liquidityTax > !sub_25049036:
                            revert with 0, 17
                        if balanceOf[stor14] and sub_e52fb9ec > -1 / balanceOf[stor14]:
                            revert with 0, 17
                        if liquidityTax + sub_25049036:
                            if balanceOf[this.address] >= balanceOf[stor14] * sub_e52fb9ec / 1000:
                                if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                    revert with 0, 17
                                if balanceOf[stor14] > _circulatingSupply * sub_0eff4c64 / 1000:
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 < 0:
                                        revert with 0, 17
                                    if 0 > !(balanceOf[stor14] * sub_e52fb9ec / 1000):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'Approve from zero'
                                    if not stor15:
                                        revert with 0, 'Approve to zero'
                                    allowance[address(this.address)][stor15].field_0 = balanceOf[stor14] * sub_e52fb9ec / 1000
                                    emit Approval((balanceOf[stor14] * sub_e52fb9ec / 1000), this.address, stor15);
                                    mem[128] = this.address
                                    staticcall stor15.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = balanceOf[stor14] * sub_e52fb9ec / 1000
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor15)
                                    call stor15.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[stor14] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                else:
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor14] * sub_e52fb9ec / 1000:
                                        revert with 0, 17
                                    if not liquidityTax + sub_25049036:
                                        revert with 0, 18
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 < balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                        revert with 0, 17
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'Approve from zero'
                                    if not stor15:
                                        revert with 0, 'Approve to zero'
                                    allowance[address(this.address)][stor15].field_0 = (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                    emit Approval(((balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor15);
                                    mem[128] = this.address
                                    staticcall stor15.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor15)
                                    call stor15.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                        if False and balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                            revert with 0, 17
                                        if not (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                            revert with 0, 18
                                        if not this.address:
                                            revert with 0, 'Approve from zero'
                                        if not stor15:
                                            revert with 0, 'Approve to zero'
                                        allowance[address(this.address)][stor15].field_0 = balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                        allowance[address(this.address)][stor15].field_255 = 0
                                        emit Approval((balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor15);
                                        call stor15.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                             gas gas_remaining wei
                                            args this.address, Mask(255, 1, balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                call paymentSplitterAddress with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                        stor20 = 0
            if sub_25049036 > !liquidityTax:
                revert with 0, 17
            if arg2 and sellTax > -1 / arg2:
                revert with 0, 17
            if arg2 * sellTax and sub_25049036 + liquidityTax > -1 / arg2 * sellTax:
                revert with 0, 17
            if arg2 < (sub_25049036 * arg2 * sellTax) + (liquidityTax * arg2 * sellTax) / 10^6:
                revert with 0, 17
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[this.address] > !((sub_25049036 * arg2 * sellTax) + (liquidityTax * arg2 * sellTax) / 10^6):
                revert with 0, 17
            balanceOf[this.address] += (sub_25049036 * arg2 * sellTax) + (liquidityTax * arg2 * sellTax) / 10^6
            if balanceOf[address(arg1)] > !(arg2 - ((sub_25049036 * arg2 * sellTax) + (liquidityTax * arg2 * sellTax) / 10^6)):
                revert with 0, 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((sub_25049036 * arg2 * sellTax) + (liquidityTax * arg2 * sellTax) / 10^6)
            emit Transfer((arg2 - ((sub_25049036 * arg2 * sellTax) + (liquidityTax * arg2 * sellTax) / 10^6)), msg.sender, arg1);
        else:
            if block.timestamp < sub_b40d09e2:
                revert with 0, 17
            if block.timestamp - sub_b40d09e2 > 0x91a2b3c4d5e6f8091a2b3c4d5e6f8091a2b3c4d5e6f8091a2b3c4d5e6f8091:
                revert with 0, 17
            if 500 < (450 * block.timestamp) - (450 * sub_b40d09e2) / 300:
                revert with 0, 17
            if stor14 != msg.sender:
                if not manualSwap:
                    if not stor20:
                        stor20 = 1
                        if liquidityTax > !sub_25049036:
                            revert with 0, 17
                        if balanceOf[stor14] and sub_e52fb9ec > -1 / balanceOf[stor14]:
                            revert with 0, 17
                        if liquidityTax + sub_25049036:
                            if balanceOf[this.address] >= balanceOf[stor14] * sub_e52fb9ec / 1000:
                                if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                    revert with 0, 17
                                if balanceOf[stor14] > _circulatingSupply * sub_0eff4c64 / 1000:
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 < 0:
                                        revert with 0, 17
                                    if 0 > !(balanceOf[stor14] * sub_e52fb9ec / 1000):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'Approve from zero'
                                    if not stor15:
                                        revert with 0, 'Approve to zero'
                                    allowance[address(this.address)][stor15].field_0 = balanceOf[stor14] * sub_e52fb9ec / 1000
                                    emit Approval((balanceOf[stor14] * sub_e52fb9ec / 1000), this.address, stor15);
                                    mem[128] = this.address
                                    staticcall stor15.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = balanceOf[stor14] * sub_e52fb9ec / 1000
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor15)
                                    call stor15.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[stor14] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                else:
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor14] * sub_e52fb9ec / 1000:
                                        revert with 0, 17
                                    if not liquidityTax + sub_25049036:
                                        revert with 0, 18
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 < balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                        revert with 0, 17
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'Approve from zero'
                                    if not stor15:
                                        revert with 0, 'Approve to zero'
                                    allowance[address(this.address)][stor15].field_0 = (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                    emit Approval(((balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor15);
                                    mem[128] = this.address
                                    staticcall stor15.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor15)
                                    call stor15.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                        if False and balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                            revert with 0, 17
                                        if not (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                            revert with 0, 18
                                        if not this.address:
                                            revert with 0, 'Approve from zero'
                                        if not stor15:
                                            revert with 0, 'Approve to zero'
                                        allowance[address(this.address)][stor15].field_0 = balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                        allowance[address(this.address)][stor15].field_255 = 0
                                        emit Approval((balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor15);
                                        call stor15.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                             gas gas_remaining wei
                                            args this.address, Mask(255, 1, balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                call paymentSplitterAddress with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                        stor20 = 0
            if sub_25049036 > !liquidityTax:
                revert with 0, 17
            if arg2 and -((450 * block.timestamp) - (450 * sub_b40d09e2) / 300) + 500 > -1 / arg2:
                revert with 0, 17
            if (500 * arg2) - ((450 * block.timestamp) - (450 * sub_b40d09e2) / 300 * arg2) and sub_25049036 + liquidityTax > -1 / (500 * arg2) - ((450 * block.timestamp) - (450 * sub_b40d09e2) / 300 * arg2):
                revert with 0, 17
            if arg2 < (500 * sub_25049036 * arg2) + (500 * liquidityTax * arg2) - (sub_25049036 * (450 * block.timestamp) - (450 * sub_b40d09e2) / 300 * arg2) - (liquidityTax * (450 * block.timestamp) - (450 * sub_b40d09e2) / 300 * arg2) / 10^6:
                revert with 0, 17
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[this.address] > !((500 * sub_25049036 * arg2) + (500 * liquidityTax * arg2) - (sub_25049036 * (450 * block.timestamp) - (450 * sub_b40d09e2) / 300 * arg2) - (liquidityTax * (450 * block.timestamp) - (450 * sub_b40d09e2) / 300 * arg2) / 10^6):
                revert with 0, 17
            balanceOf[this.address] += (500 * sub_25049036 * arg2) + (500 * liquidityTax * arg2) - (sub_25049036 * (450 * block.timestamp) - (450 * sub_b40d09e2) / 300 * arg2) - (liquidityTax * (450 * block.timestamp) - (450 * sub_b40d09e2) / 300 * arg2) / 10^6
            if balanceOf[address(arg1)] > !(arg2 - ((500 * sub_25049036 * arg2) + (500 * liquidityTax * arg2) - (sub_25049036 * (450 * block.timestamp) - (450 * sub_b40d09e2) / 300 * arg2) - (liquidityTax * (450 * block.timestamp) - (450 * sub_b40d09e2) / 300 * arg2) / 10^6)):
                revert with 0, 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((500 * sub_25049036 * arg2) + (500 * liquidityTax * arg2) - (sub_25049036 * (450 * block.timestamp) - (450 * sub_b40d09e2) / 300 * arg2) - (liquidityTax * (450 * block.timestamp) - (450 * sub_b40d09e2) / 300 * arg2) / 10^6)
            emit Transfer((arg2 - ((500 * sub_25049036 * arg2) + (500 * liquidityTax * arg2) - (sub_25049036 * (450 * block.timestamp) - (450 * sub_b40d09e2) / 300 * arg2) - (liquidityTax * (450 * block.timestamp) - (450 * sub_b40d09e2) / 300 * arg2) / 10^6)), msg.sender, arg1);
    else:
        if not stor5[address(msg.sender)]:
            if stor14 != msg.sender:
                if not manualSwap:
                    if not stor20:
                        stor20 = 1
                        if liquidityTax > !sub_25049036:
                            revert with 0, 17
                        if balanceOf[stor14] and sub_e52fb9ec > -1 / balanceOf[stor14]:
                            revert with 0, 17
                        if liquidityTax + sub_25049036:
                            if balanceOf[this.address] >= balanceOf[stor14] * sub_e52fb9ec / 1000:
                                if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                    revert with 0, 17
                                if balanceOf[stor14] > _circulatingSupply * sub_0eff4c64 / 1000:
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 < 0:
                                        revert with 0, 17
                                    if 0 > !(balanceOf[stor14] * sub_e52fb9ec / 1000):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'Approve from zero'
                                    if not stor15:
                                        revert with 0, 'Approve to zero'
                                    allowance[address(this.address)][stor15].field_0 = balanceOf[stor14] * sub_e52fb9ec / 1000
                                    emit Approval((balanceOf[stor14] * sub_e52fb9ec / 1000), this.address, stor15);
                                    mem[128] = this.address
                                    staticcall stor15.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = balanceOf[stor14] * sub_e52fb9ec / 1000
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor15)
                                    call stor15.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[stor14] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                else:
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor14] * sub_e52fb9ec / 1000:
                                        revert with 0, 17
                                    if not liquidityTax + sub_25049036:
                                        revert with 0, 18
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 < balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                        revert with 0, 17
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'Approve from zero'
                                    if not stor15:
                                        revert with 0, 'Approve to zero'
                                    allowance[address(this.address)][stor15].field_0 = (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                    emit Approval(((balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor15);
                                    mem[128] = this.address
                                    staticcall stor15.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor15)
                                    call stor15.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                        if False and balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                            revert with 0, 17
                                        if not (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                            revert with 0, 18
                                        if not this.address:
                                            revert with 0, 'Approve from zero'
                                        if not stor15:
                                            revert with 0, 'Approve to zero'
                                        allowance[address(this.address)][stor15].field_0 = balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                        allowance[address(this.address)][stor15].field_255 = 0
                                        emit Approval((balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor15);
                                        call stor15.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                             gas gas_remaining wei
                                            args this.address, Mask(255, 1, balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                call paymentSplitterAddress with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining wei
                        stor20 = 0
            if sub_25049036 > !liquidityTax:
                revert with 0, 17
            if arg2 and sub_8124f7ac > -1 / arg2:
                revert with 0, 17
            if arg2 * sub_8124f7ac and sub_25049036 + liquidityTax > -1 / arg2 * sub_8124f7ac:
                revert with 0, 17
            if arg2 < (sub_25049036 * arg2 * sub_8124f7ac) + (liquidityTax * arg2 * sub_8124f7ac) / 10^6:
                revert with 0, 17
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[this.address] > !((sub_25049036 * arg2 * sub_8124f7ac) + (liquidityTax * arg2 * sub_8124f7ac) / 10^6):
                revert with 0, 17
            balanceOf[this.address] += (sub_25049036 * arg2 * sub_8124f7ac) + (liquidityTax * arg2 * sub_8124f7ac) / 10^6
            if balanceOf[address(arg1)] > !(arg2 - ((sub_25049036 * arg2 * sub_8124f7ac) + (liquidityTax * arg2 * sub_8124f7ac) / 10^6)):
                revert with 0, 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((sub_25049036 * arg2 * sub_8124f7ac) + (liquidityTax * arg2 * sub_8124f7ac) / 10^6)
            emit Transfer((arg2 - ((sub_25049036 * arg2 * sub_8124f7ac) + (liquidityTax * arg2 * sub_8124f7ac) / 10^6)), msg.sender, arg1);
        else:
            if sub_b40d09e2 > -301:
                revert with 0, 17
            if block.timestamp >= sub_b40d09e2 + 300:
                if stor14 != msg.sender:
                    if not manualSwap:
                        if not stor20:
                            stor20 = 1
                            if liquidityTax > !sub_25049036:
                                revert with 0, 17
                            if balanceOf[stor14] and sub_e52fb9ec > -1 / balanceOf[stor14]:
                                revert with 0, 17
                            if liquidityTax + sub_25049036:
                                if balanceOf[this.address] >= balanceOf[stor14] * sub_e52fb9ec / 1000:
                                    if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                        revert with 0, 17
                                    if balanceOf[stor14] > _circulatingSupply * sub_0eff4c64 / 1000:
                                        if balanceOf[stor14] * sub_e52fb9ec / 1000 < 0:
                                            revert with 0, 17
                                        if 0 > !(balanceOf[stor14] * sub_e52fb9ec / 1000):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'Approve from zero'
                                        if not stor15:
                                            revert with 0, 'Approve to zero'
                                        allowance[address(this.address)][stor15].field_0 = balanceOf[stor14] * sub_e52fb9ec / 1000
                                        emit Approval((balanceOf[stor14] * sub_e52fb9ec / 1000), this.address, stor15);
                                        mem[128] = this.address
                                        staticcall stor15.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[stor14] * sub_e52fb9ec / 1000
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor15)
                                        call stor15.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[stor14] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                    else:
                                        if balanceOf[stor14] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor14] * sub_e52fb9ec / 1000:
                                            revert with 0, 17
                                        if not liquidityTax + sub_25049036:
                                            revert with 0, 18
                                        if balanceOf[stor14] * sub_e52fb9ec / 1000 < balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                            revert with 0, 17
                                        if balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'Approve from zero'
                                        if not stor15:
                                            revert with 0, 'Approve to zero'
                                        allowance[address(this.address)][stor15].field_0 = (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                        emit Approval(((balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor15);
                                        mem[128] = this.address
                                        staticcall stor15.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor15)
                                        call stor15.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                            if False and balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                revert with 0, 17
                                            if not (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                revert with 0, 18
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor15:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor15].field_0 = balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                            allowance[address(this.address)][stor15].field_255 = 0
                                            emit Approval((balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor15);
                                            call stor15.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                 gas gas_remaining wei
                                                args this.address, Mask(255, 1, balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    call paymentSplitterAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                            stor20 = 0
                if sub_25049036 > !liquidityTax:
                    revert with 0, 17
                if arg2 and buyTax > -1 / arg2:
                    revert with 0, 17
                if arg2 * buyTax and sub_25049036 + liquidityTax > -1 / arg2 * buyTax:
                    revert with 0, 17
                if arg2 < (sub_25049036 * arg2 * buyTax) + (liquidityTax * arg2 * buyTax) / 10^6:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[this.address] > !((sub_25049036 * arg2 * buyTax) + (liquidityTax * arg2 * buyTax) / 10^6):
                    revert with 0, 17
                balanceOf[this.address] += (sub_25049036 * arg2 * buyTax) + (liquidityTax * arg2 * buyTax) / 10^6
                if balanceOf[address(arg1)] > !(arg2 - ((sub_25049036 * arg2 * buyTax) + (liquidityTax * arg2 * buyTax) / 10^6)):
                    revert with 0, 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((sub_25049036 * arg2 * buyTax) + (liquidityTax * arg2 * buyTax) / 10^6)
                emit Transfer((arg2 - ((sub_25049036 * arg2 * buyTax) + (liquidityTax * arg2 * buyTax) / 10^6)), msg.sender, arg1);
            else:
                if block.timestamp < sub_b40d09e2:
                    revert with 0, 17
                if block.timestamp - sub_b40d09e2 > 0x450ed6300450ed6300450ed6300450ed6300450ed6300450ed6300450ed630:
                    revert with 0, 17
                if 999 < (949 * block.timestamp) - (949 * sub_b40d09e2) / 300:
                    revert with 0, 17
                if stor14 != msg.sender:
                    if not manualSwap:
                        if not stor20:
                            stor20 = 1
                            if liquidityTax > !sub_25049036:
                                revert with 0, 17
                            if balanceOf[stor14] and sub_e52fb9ec > -1 / balanceOf[stor14]:
                                revert with 0, 17
                            if liquidityTax + sub_25049036:
                                if balanceOf[this.address] >= balanceOf[stor14] * sub_e52fb9ec / 1000:
                                    if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                        revert with 0, 17
                                    if balanceOf[stor14] > _circulatingSupply * sub_0eff4c64 / 1000:
                                        if balanceOf[stor14] * sub_e52fb9ec / 1000 < 0:
                                            revert with 0, 17
                                        if 0 > !(balanceOf[stor14] * sub_e52fb9ec / 1000):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'Approve from zero'
                                        if not stor15:
                                            revert with 0, 'Approve to zero'
                                        allowance[address(this.address)][stor15].field_0 = balanceOf[stor14] * sub_e52fb9ec / 1000
                                        emit Approval((balanceOf[stor14] * sub_e52fb9ec / 1000), this.address, stor15);
                                        mem[128] = this.address
                                        staticcall stor15.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[stor14] * sub_e52fb9ec / 1000
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor15)
                                        call stor15.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[stor14] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                    else:
                                        if balanceOf[stor14] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor14] * sub_e52fb9ec / 1000:
                                            revert with 0, 17
                                        if not liquidityTax + sub_25049036:
                                            revert with 0, 18
                                        if balanceOf[stor14] * sub_e52fb9ec / 1000 < balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                            revert with 0, 17
                                        if balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'Approve from zero'
                                        if not stor15:
                                            revert with 0, 'Approve to zero'
                                        allowance[address(this.address)][stor15].field_0 = (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                        emit Approval(((balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor15);
                                        mem[128] = this.address
                                        staticcall stor15.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                        idx = 0
                                        s = ceil32(return_data.size) + 388
                                        t = 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(stor15)
                                        call stor15.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        if balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                            if False and balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                revert with 0, 17
                                            if not (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                revert with 0, 18
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor15:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor15].field_0 = balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                            allowance[address(this.address)][stor15].field_255 = 0
                                            emit Approval((balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor15);
                                            call stor15.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                               value 0 / (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor14] * sub_e52fb9ec / 1000) - (balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                 gas gas_remaining wei
                                                args this.address, Mask(255, 1, balanceOf[stor14] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 96
                                    call paymentSplitterAddress with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                            stor20 = 0
                if sub_25049036 > !liquidityTax:
                    revert with 0, 17
                if arg2 and -((949 * block.timestamp) - (949 * sub_b40d09e2) / 300) + 999 > -1 / arg2:
                    revert with 0, 17
                if (999 * arg2) - ((949 * block.timestamp) - (949 * sub_b40d09e2) / 300 * arg2) and sub_25049036 + liquidityTax > -1 / (999 * arg2) - ((949 * block.timestamp) - (949 * sub_b40d09e2) / 300 * arg2):
                    revert with 0, 17
                if arg2 < (999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 300 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 300 * arg2) / 10^6:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[this.address] > !((999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 300 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 300 * arg2) / 10^6):
                    revert with 0, 17
                balanceOf[this.address] += (999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 300 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 300 * arg2) / 10^6
                if balanceOf[address(arg1)] > !(arg2 - ((999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 300 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 300 * arg2) / 10^6)):
                    revert with 0, 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 300 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 300 * arg2) / 10^6)
                emit Transfer((arg2 - ((999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 300 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 300 * arg2) / 10^6)), msg.sender, arg1);
    return 1
}



}
