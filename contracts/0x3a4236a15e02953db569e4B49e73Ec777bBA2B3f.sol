contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'TestSimple', 0

const InitialSupply = 1000000000 * 10^18

const decimals = 18

const symbol = 'TestSimple', 0


address owner;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 buyTax;
uint256 sellTax;
uint8 sub_8ddc25d3;
uint8 sub_c41ba810; offset 8
uint256 stor10; offset 8
uint256 sub_f39c86d8;
uint256 sub_ee0fe003;
uint256 sub_8124f7ac;
uint256 burnTax;
uint256 liquidityTax;
uint256 marketingTax;
uint256 teamTax;
address sub_d8c61c0fAddress;
address stor21;
address marketingWalletAddress;
address teamWalletAddress;
uint256 checkMaxWalletToken;
uint256 sub_264c72ab;
uint8 sub_f02e60d5;
uint8 sub_cfd0d7b7; offset 8
uint8 buyCooldownEnabled; offset 16
uint8 cooldownTimerInterval; offset 24
uint256 stor26; offset 32
uint256 stor26; offset 8
uint8 stor28;
uint256 sub_e52fb9ec;
uint256 sub_0eff4c64;
uint8 stor31;
uint256 sub_b40d09e2;
uint256 stor33;
uint8 stor34;
uint256 storB342;

function sub_0eff4c64(?) {
    return sub_0eff4c64
}

function totalSupply() {
    return totalSupply
}

function marketingTax() {
    return marketingTax
}

function burnTax() {
    return burnTax
}

function sub_264c72ab(?) {
    return sub_264c72ab
}

function buyTax() {
    return buyTax
}

function manualSwap() {
    return bool(stor31)
}

function teamWallet() {
    return teamWalletAddress
}

function buyCooldownEnabled() {
    return bool(buyCooldownEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function cooldownTimerInterval() {
    return cooldownTimerInterval
}

function marketingWallet() {
    return marketingWalletAddress
}

function _maxWalletToken() {
    return checkMaxWalletToken
}

function sub_8124f7ac(?) {
    return sub_8124f7ac
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function sub_8ddc25d3(?) {
    return bool(sub_8ddc25d3)
}

function teamTax() {
    return teamTax
}

function sub_9b39b65f(?) {
    return bool(stor34)
}

function sub_b40d09e2(?) {
    return sub_b40d09e2
}

function checkMaxWalletToken() {
    return checkMaxWalletToken
}

function liquidityTax() {
    return liquidityTax
}

function sub_c41ba810(?) {
    return bool(sub_c41ba810)
}

function sellTax() {
    return sellTax
}

function sub_cfd0d7b7(?) {
    return bool(sub_cfd0d7b7)
}

function sub_d46b6a30(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function sub_d8c61c0f(?) {
    return sub_d8c61c0fAddress
}

function excludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
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

function sub_ee0fe003(?) {
    return sub_ee0fe003
}

function sub_f02e60d5(?) {
    return bool(sub_f02e60d5)
}

function sub_f39c86d8(?) {
    return sub_f39c86d8
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function isOverLiquified() {
    if totalSupply and sub_0eff4c64 > -1 / totalSupply:
        revert with 0, 17
    return (balanceOf[stor20] > totalSupply * sub_0eff4c64 / 1000)
}

function limitLiquidityReleaseTo20Percent() {
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            revert with 0, 'Caller not Team or Owner'
    stor34 = 1
}

function getLiquidityReleaseTimeInSeconds() {
    if block.timestamp >= stor33:
        return 0
    if stor33 < block.timestamp:
        revert with 0, 17
    return (stor33 - block.timestamp)
}

function sub_585a1537(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f02e60d5 = uint8(bool(arg1))
}

function setFeeReceivers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingWalletAddress = arg1
}

function getBurnedTokens() {
    if 1000000000 * 10^18 < totalSupply:
        revert with 0, 17
    if -totalSupply + 1000000000 * 10^18 > !storB342:
        revert with 0, 17
    return (-totalSupply + storB342 + 1000000000 * 10^18)
}

function sub_1b0f5efb(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor26.field_8) = Mask(248, 0, bool(arg1))
}

function sub_cfd1940e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            revert with 0, 'Caller not Team or Owner'
    require arg1 <= 10
    sub_e52fb9ec = arg1
}

function sub_bc43d849(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            revert with 0, 'Caller not Team or Owner'
    require arg1 <= 1000
    sub_0eff4c64 = arg1
}

function sub_868b0141(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            revert with 0, 'Caller not Team or Owner'
    stor31 = uint8(bool(arg1))
}

function SetupEnableTrading() {
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            revert with 0, 'Caller not Team or Owner'
    if sub_b40d09e2:
        revert with 0, 'AlreadyLaunched'
    sub_b40d09e2 = block.timestamp
    emit 0x2cb945e0 
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

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 < 30
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
    Mask(224, 0, stor26.field_32) = Mask(224, 16, arg1) >> 16
}

function sub_55558754(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= 35:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Antidump percent needs to be under 35%'
    sub_8ddc25d3 = uint8(bool(arg1))
    sub_ee0fe003 = arg2
}

function sub_5149f984(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            revert with 0, 'Caller not Team or Owner'
    if sub_d8c61c0fAddress == address(arg1):
        revert with 0, 'can't change pancake'
    stor4[address(arg1)] = uint8(bool(arg2))
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

function LockLiquidityForSeconds(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            revert with 0, 'Caller not Team or Owner'
    if arg1 > !block.timestamp:
        revert with 0, 17
    require arg1 + block.timestamp > stor33
    stor33 = arg1 + block.timestamp
    emit 0x8ff9dc93: (arg1 + block.timestamp)
}

function ExcludeAccountFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            revert with 0, 'Caller not Team or Owner'
    if this.address == arg1:
        revert with 0, 'can't Include the contract'
    stor3[address(arg1)] = uint8(arg2)
    emit 0xa22b2547: address(arg1), arg2
}

function setMaxTxPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max transaction percent needs to be over 1%'
    if totalSupply / 1000 and arg1 > -1 / totalSupply / 1000:
        revert with 0, 17
    sub_264c72ab = totalSupply / 1000 * arg1
}

function setMaxWalletPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max wallet percent needs to be over 1%'
    if totalSupply / 1000 and arg1 > -1 / totalSupply / 1000:
        revert with 0, 17
    checkMaxWalletToken = totalSupply / 1000 * arg1
}

function sub_85fea048(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Antisniper percent needs to be under 35%'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Antisniper percent needs to be under 35%'
    stor10 = Mask(248, 0, bool(arg1))
    sub_f39c86d8 = arg2
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

function SetTaxes(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            revert with 0, 'Caller not Team or Owner'
    if arg1 > 50:
        revert with 0, 'Tax exceeds maxTax'
    if arg2 > 50:
        revert with 0, 'Tax exceeds maxTax'
    if arg3 > 50:
        revert with 0, 'Tax exceeds maxTax'
    if arg4 > !arg5:
        revert with 0, 17
    if arg4 + arg5 > !arg6:
        revert with 0, 17
    if arg4 + arg5 + arg6 != 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Taxes don't add up to denominator'
    buyTax = arg1
    sellTax = arg2
    sub_8124f7ac = arg3
    marketingTax = arg5
    liquidityTax = arg6
    burnTax = arg4
    emit 0x95617e14: arg1, arg2, arg3, arg4, arg5, arg6
}

function LiquidityRelease() {
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            revert with 0, 'Caller not Team or Owner'
    if block.timestamp < stor33:
        revert with 0, 'Not yet unlocked'
    require ext_code.size(sub_d8c61c0fAddress)
    staticcall sub_d8c61c0fAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor34:
        require ext_code.size(sub_d8c61c0fAddress)
        call sub_d8c61c0fAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        if block.timestamp > -604801:
            revert with 0, 17
        stor33 = block.timestamp + (168 * 24 * 3600)
        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(sub_d8c61c0fAddress)
        call sub_d8c61c0fAddress.0xa9059cbb with:
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
        if marketingWalletAddress != msg.sender:
            revert with 0, 'Caller not Team or Owner'
    stor28 = 1
    if liquidityTax > !marketingTax:
        revert with 0, 17
    if liquidityTax + marketingTax > !teamTax:
        revert with 0, 17
    if balanceOf[stor20] and sub_e52fb9ec > -1 / balanceOf[stor20]:
        revert with 0, 17
    if liquidityTax + marketingTax + teamTax:
        if totalSupply and sub_0eff4c64 > -1 / totalSupply:
            revert with 0, 17
        if balanceOf[stor20] > totalSupply * sub_0eff4c64 / 1000:
            if balanceOf[this.address] < 0:
                revert with 0, 17
            if 0 > !balanceOf[this.address]:
                revert with 0, 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor21:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor21].field_0 = balanceOf[this.address]
            emit Approval(balanceOf[this.address], this.address, stor21);
            mem[128] = this.address
            require ext_code.size(stor21)
            staticcall stor21.WETH() with:
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
            require ext_code.size(stor21)
            call stor21.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
        else:
            if balanceOf[this.address] and liquidityTax > -1 / balanceOf[this.address]:
                revert with 0, 17
            if not liquidityTax + marketingTax + teamTax:
                revert with 0, 18
            if balanceOf[this.address] < balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax:
                revert with 0, 17
            if balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax / 2 > !(balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax)):
                revert with 0, 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor21:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor21].field_0 = (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax)
            emit Approval(((balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax)), this.address, stor21);
            mem[128] = this.address
            require ext_code.size(stor21)
            staticcall stor21.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax)
            idx = 0
            s = ceil32(return_data.size) + 388
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor21)
            call stor21.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax:
                if False and balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax / 2 > 0:
                    revert with 0, 17
                if not (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax):
                    revert with 0, 18
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor21:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor21].field_0 = balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax / 2
                allowance[address(this.address)][stor21].field_255 = 0
                emit Approval((balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax / 2), this.address, stor21);
                require ext_code.size(stor21)
                call stor21.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value 0 / (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax) wei
                     gas gas_remaining wei
                    args this.address, Mask(255, 1, balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax + teamTax), 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
        if marketingTax > !teamTax:
            revert with 0, 17
        if teamTax <= 0:
            if eth.balance(this.address) < 0:
                revert with 0, 17
            call marketingWalletAddress with:
               value eth.balance(this.address) wei
                 gas 30000 wei
        else:
            if marketingTax + teamTax > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if eth.balance(this.address) and teamTax > -1 / eth.balance(this.address):
                revert with 0, 17
            if not (100 * marketingTax) + (100 * teamTax):
                revert with 0, 18
            call teamWalletAddress with:
               value eth.balance(this.address) * teamTax / (100 * marketingTax) + (100 * teamTax) wei
                 gas 30000 wei
            if eth.balance(this.address) < eth.balance(this.address) * teamTax / (100 * marketingTax) + (100 * teamTax):
                revert with 0, 17
            call marketingWalletAddress with:
               value eth.balance(this.address) - (eth.balance(this.address) * teamTax / (100 * marketingTax) + (100 * teamTax)) wei
                 gas 30000 wei
    stor28 = 0
}



}
