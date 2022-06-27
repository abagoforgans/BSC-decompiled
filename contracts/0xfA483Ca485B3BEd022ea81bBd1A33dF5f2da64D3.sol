contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
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
uint8 stor8;
uint256 _circulatingSupply;
uint256 buyTax;
uint256 sellTax;
uint256 sub_8124f7ac;
uint256 liquidityTax;
uint256 sub_25049036;
address stor15;
address stor16;
address deadWalletAddress;
address paymentSplitterAddress;
uint8 blacklistMode; offset 160
uint128 stor19; offset 160
address sub_fd52f722Address;
mapping of uint8 stor20;
uint8 stor21;
uint256 sub_e52fb9ec;
uint256 sub_0eff4c64;
uint8 manualSwap;
uint256 sub_b40d09e2;
uint256 stor26;
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

function sub_d3c77638(?) {
    return bool(stor8)
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
    return bool(stor20[arg1])
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
    if block.timestamp >= stor26:
        return 0
    if stor26 < block.timestamp:
        revert with 0, 17
    return (stor26 - block.timestamp)
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
    return (balanceOf[stor15] > _circulatingSupply * sub_0eff4c64 / 1000)
}

function sub_dd2d6e85(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = uint8(bool(arg1))
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
    stor19 = Mask(96, 0, arg1)
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
    if stor15 == address(arg1):
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
    require arg1 + block.timestamp > stor26
    stor26 = arg1 + block.timestamp
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
        mem[32] = 20
        stor20[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
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
        mem[32] = 20
        stor20[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function LiquidityRelease() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor26:
        revert with 0, 'Not yet unlocked'
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_9b39b65f:
        call stor15.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        if block.timestamp > -604801:
            revert with 0, 17
        stor26 = block.timestamp + (168 * 24 * 3600)
        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        call stor15.0xa9059cbb with:
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
    stor21 = 1
    if liquidityTax > !sub_25049036:
        revert with 0, 17
    if balanceOf[stor15] and sub_e52fb9ec > -1 / balanceOf[stor15]:
        revert with 0, 17
    if liquidityTax + sub_25049036:
        if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
            revert with 0, 17
        if balanceOf[stor15] > _circulatingSupply * sub_0eff4c64 / 1000:
            if balanceOf[this.address] < 0:
                revert with 0, 17
            if 0 > !balanceOf[this.address]:
                revert with 0, 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor16:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor16].field_0 = balanceOf[this.address]
            emit Approval(balanceOf[this.address], this.address, stor16);
            mem[128] = this.address
            staticcall stor16.WETH() with:
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
            require ext_code.size(stor16)
            call stor16.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
            if not stor16:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor16].field_0 = (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036)
            emit Approval(((balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036)), this.address, stor16);
            mem[128] = this.address
            staticcall stor16.WETH() with:
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
            require ext_code.size(stor16)
            call stor16.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                if not stor16:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor16].field_0 = balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2
                allowance[address(this.address)][stor16].field_255 = 0
                emit Approval((balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor16);
                call stor16.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value 0 / (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036) wei
                     gas gas_remaining wei
                    args this.address, Mask(255, 1, balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
        call paymentSplitterAddress with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
    stor21 = 0
}



}
