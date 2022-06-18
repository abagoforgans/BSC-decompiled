contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const name = 'MeglaDoge Gaming', 0

const InitialSupply = 100000000000 * 10^18

const decimals = 18

const symbol = '', 0


address owner;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 buyTax;
uint256 sellTax;
uint256 sub_8124f7ac;
uint256 burnTax;
uint256 liquidityTax;
uint256 marketingTax;
address stor12;
address stor13;
uint8 stor14; offset 160
address marketingWalletAddress;
uint256 sub_e52fb9ec;
uint256 sub_0eff4c64;
uint8 manualSwap;
uint256 sub_b40d09e2;
uint256 stor19;
uint8 sub_9b39b65f;
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

function buyTax() {
    return buyTax
}

function manualSwap() {
    return bool(manualSwap)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function marketingWallet() {
    return marketingWalletAddress
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

function sub_9b39b65f(?) {
    return bool(sub_9b39b65f)
}

function sub_b40d09e2(?) {
    return sub_b40d09e2
}

function liquidityTax() {
    return liquidityTax
}

function sellTax() {
    return sellTax
}

function sub_d46b6a30(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function isOverLiquified() {
    if totalSupply and sub_0eff4c64 > -1 / totalSupply:
        revert with 0, 17
    return (balanceOf[stor12] > totalSupply * sub_0eff4c64 / 1000)
}

function ChangeMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == marketingWalletAddress
    marketingWalletAddress = arg1
}

function getLiquidityReleaseTimeInSeconds() {
    if block.timestamp >= stor19:
        return 0
    if stor19 < block.timestamp:
        revert with 0, 17
    return (stor19 - block.timestamp)
}

function limitLiquidityReleaseTo20Percent() {
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            revert with 0, 'Caller not Team or Owner'
    sub_9b39b65f = 1
}

function getBurnedTokens() {
    if 100000000000 * 10^18 < totalSupply:
        revert with 0, 17
    if -totalSupply + 100000000000 * 10^18 > !storB342:
        revert with 0, 17
    return (-totalSupply + storB342 + 100000000000 * 10^18)
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
    manualSwap = uint8(bool(arg1))
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

function sub_5149f984(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        if marketingWalletAddress != msg.sender:
            revert with 0, 'Caller not Team or Owner'
    if stor12 == address(arg1):
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
    require arg1 + block.timestamp > stor19
    stor19 = arg1 + block.timestamp
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
    if arg1 > 100:
        revert with 0, 'Tax exceeds maxTax'
    if arg2 > 100:
        revert with 0, 'Tax exceeds maxTax'
    if arg3 > 100:
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
    if block.timestamp < stor19:
        revert with 0, 'Not yet unlocked'
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_9b39b65f:
        require ext_code.size(stor12)
        call stor12.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        if block.timestamp > -604801:
            revert with 0, 17
        stor19 = block.timestamp + (168 * 24 * 3600)
        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(stor12)
        call stor12.0xa9059cbb with:
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
    stor14 = 1
    if liquidityTax > !marketingTax:
        revert with 0, 17
    if balanceOf[stor12] and sub_e52fb9ec > -1 / balanceOf[stor12]:
        revert with 0, 17
    if liquidityTax + marketingTax:
        if totalSupply and sub_0eff4c64 > -1 / totalSupply:
            revert with 0, 17
        if balanceOf[stor12] > totalSupply * sub_0eff4c64 / 1000:
            if balanceOf[this.address] < 0:
                revert with 0, 17
            if 0 > !balanceOf[this.address]:
                revert with 0, 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor13:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor13].field_0 = balanceOf[this.address]
            emit Approval(balanceOf[this.address], this.address, stor13);
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
            require ext_code.size(stor13)
            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
        else:
            if balanceOf[this.address] and liquidityTax > -1 / balanceOf[this.address]:
                revert with 0, 17
            if not liquidityTax + marketingTax:
                revert with 0, 18
            if balanceOf[this.address] < balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax:
                revert with 0, 17
            if balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax / 2 > !(balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax)):
                revert with 0, 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor13:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor13].field_0 = (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax)
            emit Approval(((balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax)), this.address, stor13);
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
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax)
            idx = 0
            s = ceil32(return_data.size) + 388
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor13)
            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax:
                if False and balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax / 2 > 0:
                    revert with 0, 17
                if not (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax):
                    revert with 0, 18
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor13:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor13].field_0 = balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax / 2
                allowance[address(this.address)][stor13].field_255 = 0
                emit Approval((balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax / 2), this.address, stor13);
                require ext_code.size(stor13)
                call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value 0 / (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax) wei
                     gas gas_remaining wei
                    args this.address, Mask(255, 1, balanceOf[this.address] * liquidityTax / liquidityTax + marketingTax), 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
        call marketingWalletAddress with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
    stor14 = 0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'Transfer from zero'
    if not arg1:
        revert with 0, 'Transfer to zero'
    if stor3[address(msg.sender)]:
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
        if stor3[address(arg1)]:
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
            if sub_b40d09e2 <= 0:
                revert with 0, 'trading not yet enabled'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'Transfer exceeds balance'
            if stor4[arg1]:
                if sub_b40d09e2 > -21601:
                    revert with 0, 17
                if block.timestamp >= sub_b40d09e2 + (6 * 3600):
                    if stor12 != msg.sender:
                        if not manualSwap:
                            if not stor14:
                                stor14 = 1
                                if liquidityTax > !marketingTax:
                                    revert with 0, 17
                                if balanceOf[stor12] and sub_e52fb9ec > -1 / balanceOf[stor12]:
                                    revert with 0, 17
                                if liquidityTax + marketingTax:
                                    if balanceOf[this.address] >= balanceOf[stor12] * sub_e52fb9ec / 1000:
                                        if totalSupply and sub_0eff4c64 > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[stor12] > totalSupply * sub_0eff4c64 / 1000:
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 < 0:
                                                revert with 0, 17
                                            if 0 > !(balanceOf[stor12] * sub_e52fb9ec / 1000):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor13:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000
                                            emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000), this.address, stor13);
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
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[stor12] * sub_e52fb9ec / 1000
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[stor12] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                        else:
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor12] * sub_e52fb9ec / 1000:
                                                revert with 0, 17
                                            if not liquidityTax + marketingTax:
                                                revert with 0, 18
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 < balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                revert with 0, 17
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > !((balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor13:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor13].field_0 = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                            emit Approval(((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)), this.address, stor13);
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
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                if False and balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > 0:
                                                    revert with 0, 17
                                                if not (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax):
                                                    revert with 0, 18
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor13:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2
                                                allowance[address(this.address)][stor13].field_255 = 0
                                                emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2), this.address, stor13);
                                                require ext_code.size(stor13)
                                                call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax) wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                        call marketingWalletAddress with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                stor14 = 0
                    if arg2 and sellTax > -1 / arg2:
                        revert with 0, 17
                    if arg2 * sellTax and burnTax > -1 / arg2 * sellTax:
                        revert with 0, 17
                    if marketingTax > !liquidityTax:
                        revert with 0, 17
                    if arg2 and sellTax > -1 / arg2:
                        revert with 0, 17
                    if arg2 * sellTax and marketingTax + liquidityTax > -1 / arg2 * sellTax:
                        revert with 0, 17
                    if arg2 * sellTax * burnTax / 10^6 > !((marketingTax * arg2 * sellTax) + (liquidityTax * arg2 * sellTax) / 10^6):
                        revert with 0, 17
                    if arg2 < (arg2 * sellTax * burnTax / 10^6) + ((marketingTax * arg2 * sellTax) + (liquidityTax * arg2 * sellTax) / 10^6):
                        revert with 0, 17
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[this.address] > !((marketingTax * arg2 * sellTax) + (liquidityTax * arg2 * sellTax) / 10^6):
                        revert with 0, 17
                    balanceOf[this.address] += (marketingTax * arg2 * sellTax) + (liquidityTax * arg2 * sellTax) / 10^6
                    if totalSupply < arg2 * sellTax * burnTax / 10^6:
                        revert with 0, 17
                    totalSupply -= arg2 * sellTax * burnTax / 10^6
                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * sellTax * burnTax / 10^6) - ((marketingTax * arg2 * sellTax) + (liquidityTax * arg2 * sellTax) / 10^6)):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellTax * burnTax / 10^6) - ((marketingTax * arg2 * sellTax) + (liquidityTax * arg2 * sellTax) / 10^6)
                    emit Transfer((arg2 - (arg2 * sellTax * burnTax / 10^6) - ((marketingTax * arg2 * sellTax) + (liquidityTax * arg2 * sellTax) / 10^6)), msg.sender, arg1);
                else:
                    if block.timestamp < sub_b40d09e2:
                        revert with 0, 17
                    if 300 < sellTax:
                        revert with 0, 17
                    if -sellTax + 300 and block.timestamp - sub_b40d09e2 > -1 / -sellTax + 300:
                        revert with 0, 17
                    if 300 < (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600:
                        revert with 0, 17
                    if stor12 != msg.sender:
                        if not manualSwap:
                            if not stor14:
                                stor14 = 1
                                if liquidityTax > !marketingTax:
                                    revert with 0, 17
                                if balanceOf[stor12] and sub_e52fb9ec > -1 / balanceOf[stor12]:
                                    revert with 0, 17
                                if liquidityTax + marketingTax:
                                    if balanceOf[this.address] >= balanceOf[stor12] * sub_e52fb9ec / 1000:
                                        if totalSupply and sub_0eff4c64 > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[stor12] > totalSupply * sub_0eff4c64 / 1000:
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 < 0:
                                                revert with 0, 17
                                            if 0 > !(balanceOf[stor12] * sub_e52fb9ec / 1000):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor13:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000
                                            emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000), this.address, stor13);
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
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[stor12] * sub_e52fb9ec / 1000
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[stor12] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                        else:
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor12] * sub_e52fb9ec / 1000:
                                                revert with 0, 17
                                            if not liquidityTax + marketingTax:
                                                revert with 0, 18
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 < balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                revert with 0, 17
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > !((balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor13:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor13].field_0 = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                            emit Approval(((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)), this.address, stor13);
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
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                if False and balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > 0:
                                                    revert with 0, 17
                                                if not (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax):
                                                    revert with 0, 18
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor13:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2
                                                allowance[address(this.address)][stor13].field_255 = 0
                                                emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2), this.address, stor13);
                                                require ext_code.size(stor13)
                                                call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax) wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                        call marketingWalletAddress with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                stor14 = 0
                    if arg2 and -((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600) + 300 > -1 / arg2:
                        revert with 0, 17
                    if (300 * arg2) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) and burnTax > -1 / (300 * arg2) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2):
                        revert with 0, 17
                    if marketingTax > !liquidityTax:
                        revert with 0, 17
                    if arg2 and -((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600) + 300 > -1 / arg2:
                        revert with 0, 17
                    if (300 * arg2) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) and marketingTax + liquidityTax > -1 / (300 * arg2) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2):
                        revert with 0, 17
                    if (300 * arg2 * burnTax) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2 * burnTax) / 10^6 > !((300 * marketingTax * arg2) + (300 * liquidityTax * arg2) - (marketingTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) - (liquidityTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) / 10^6):
                        revert with 0, 17
                    if arg2 < ((300 * arg2 * burnTax) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2 * burnTax) / 10^6) + ((300 * marketingTax * arg2) + (300 * liquidityTax * arg2) - (marketingTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) - (liquidityTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) / 10^6):
                        revert with 0, 17
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[this.address] > !((300 * marketingTax * arg2) + (300 * liquidityTax * arg2) - (marketingTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) - (liquidityTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) / 10^6):
                        revert with 0, 17
                    balanceOf[this.address] += (300 * marketingTax * arg2) + (300 * liquidityTax * arg2) - (marketingTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) - (liquidityTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) / 10^6
                    if totalSupply < (300 * arg2 * burnTax) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2 * burnTax) / 10^6:
                        revert with 0, 17
                    totalSupply -= (300 * arg2 * burnTax) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2 * burnTax) / 10^6
                    if balanceOf[address(arg1)] > !(arg2 - ((300 * arg2 * burnTax) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2 * burnTax) / 10^6) - ((300 * marketingTax * arg2) + (300 * liquidityTax * arg2) - (marketingTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) - (liquidityTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) / 10^6)):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((300 * arg2 * burnTax) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2 * burnTax) / 10^6) - ((300 * marketingTax * arg2) + (300 * liquidityTax * arg2) - (marketingTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) - (liquidityTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) / 10^6)
                    emit Transfer((arg2 - ((300 * arg2 * burnTax) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2 * burnTax) / 10^6) - ((300 * marketingTax * arg2) + (300 * liquidityTax * arg2) - (marketingTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) - (liquidityTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg2) / 10^6)), msg.sender, arg1);
            else:
                if not stor4[address(msg.sender)]:
                    if stor12 != msg.sender:
                        if not manualSwap:
                            if not stor14:
                                stor14 = 1
                                if liquidityTax > !marketingTax:
                                    revert with 0, 17
                                if balanceOf[stor12] and sub_e52fb9ec > -1 / balanceOf[stor12]:
                                    revert with 0, 17
                                if liquidityTax + marketingTax:
                                    if balanceOf[this.address] >= balanceOf[stor12] * sub_e52fb9ec / 1000:
                                        if totalSupply and sub_0eff4c64 > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[stor12] > totalSupply * sub_0eff4c64 / 1000:
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 < 0:
                                                revert with 0, 17
                                            if 0 > !(balanceOf[stor12] * sub_e52fb9ec / 1000):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor13:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000
                                            emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000), this.address, stor13);
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
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[stor12] * sub_e52fb9ec / 1000
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[stor12] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                        else:
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor12] * sub_e52fb9ec / 1000:
                                                revert with 0, 17
                                            if not liquidityTax + marketingTax:
                                                revert with 0, 18
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 < balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                revert with 0, 17
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > !((balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor13:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor13].field_0 = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                            emit Approval(((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)), this.address, stor13);
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
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                if False and balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > 0:
                                                    revert with 0, 17
                                                if not (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax):
                                                    revert with 0, 18
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor13:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2
                                                allowance[address(this.address)][stor13].field_255 = 0
                                                emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2), this.address, stor13);
                                                require ext_code.size(stor13)
                                                call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax) wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                        call marketingWalletAddress with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                stor14 = 0
                    if arg2 and sub_8124f7ac > -1 / arg2:
                        revert with 0, 17
                    if arg2 * sub_8124f7ac and burnTax > -1 / arg2 * sub_8124f7ac:
                        revert with 0, 17
                    if marketingTax > !liquidityTax:
                        revert with 0, 17
                    if arg2 and sub_8124f7ac > -1 / arg2:
                        revert with 0, 17
                    if arg2 * sub_8124f7ac and marketingTax + liquidityTax > -1 / arg2 * sub_8124f7ac:
                        revert with 0, 17
                    if arg2 * sub_8124f7ac * burnTax / 10^6 > !((marketingTax * arg2 * sub_8124f7ac) + (liquidityTax * arg2 * sub_8124f7ac) / 10^6):
                        revert with 0, 17
                    if arg2 < (arg2 * sub_8124f7ac * burnTax / 10^6) + ((marketingTax * arg2 * sub_8124f7ac) + (liquidityTax * arg2 * sub_8124f7ac) / 10^6):
                        revert with 0, 17
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[this.address] > !((marketingTax * arg2 * sub_8124f7ac) + (liquidityTax * arg2 * sub_8124f7ac) / 10^6):
                        revert with 0, 17
                    balanceOf[this.address] += (marketingTax * arg2 * sub_8124f7ac) + (liquidityTax * arg2 * sub_8124f7ac) / 10^6
                    if totalSupply < arg2 * sub_8124f7ac * burnTax / 10^6:
                        revert with 0, 17
                    totalSupply -= arg2 * sub_8124f7ac * burnTax / 10^6
                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * sub_8124f7ac * burnTax / 10^6) - ((marketingTax * arg2 * sub_8124f7ac) + (liquidityTax * arg2 * sub_8124f7ac) / 10^6)):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_8124f7ac * burnTax / 10^6) - ((marketingTax * arg2 * sub_8124f7ac) + (liquidityTax * arg2 * sub_8124f7ac) / 10^6)
                    emit Transfer((arg2 - (arg2 * sub_8124f7ac * burnTax / 10^6) - ((marketingTax * arg2 * sub_8124f7ac) + (liquidityTax * arg2 * sub_8124f7ac) / 10^6)), msg.sender, arg1);
                else:
                    if sub_b40d09e2 > -61:
                        revert with 0, 17
                    if block.timestamp >= sub_b40d09e2 + 60:
                        if stor12 != msg.sender:
                            if not manualSwap:
                                if not stor14:
                                    stor14 = 1
                                    if liquidityTax > !marketingTax:
                                        revert with 0, 17
                                    if balanceOf[stor12] and sub_e52fb9ec > -1 / balanceOf[stor12]:
                                        revert with 0, 17
                                    if liquidityTax + marketingTax:
                                        if balanceOf[this.address] >= balanceOf[stor12] * sub_e52fb9ec / 1000:
                                            if totalSupply and sub_0eff4c64 > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[stor12] > totalSupply * sub_0eff4c64 / 1000:
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 < 0:
                                                    revert with 0, 17
                                                if 0 > !(balanceOf[stor12] * sub_e52fb9ec / 1000):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor13:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000
                                                emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000), this.address, stor13);
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
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = balanceOf[stor12] * sub_e52fb9ec / 1000
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor13)
                                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[stor12] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                            else:
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor12] * sub_e52fb9ec / 1000:
                                                    revert with 0, 17
                                                if not liquidityTax + marketingTax:
                                                    revert with 0, 18
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 < balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                    revert with 0, 17
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > !((balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor13:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor13].field_0 = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                                emit Approval(((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)), this.address, stor13);
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
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor13)
                                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                    if False and balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > 0:
                                                        revert with 0, 17
                                                    if not (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax):
                                                        revert with 0, 18
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor13:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2
                                                    allowance[address(this.address)][stor13].field_255 = 0
                                                    emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2), this.address, stor13);
                                                    require ext_code.size(stor13)
                                                    call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax) wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                            call marketingWalletAddress with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                    stor14 = 0
                        if arg2 and buyTax > -1 / arg2:
                            revert with 0, 17
                        if arg2 * buyTax and burnTax > -1 / arg2 * buyTax:
                            revert with 0, 17
                        if marketingTax > !liquidityTax:
                            revert with 0, 17
                        if arg2 and buyTax > -1 / arg2:
                            revert with 0, 17
                        if arg2 * buyTax and marketingTax + liquidityTax > -1 / arg2 * buyTax:
                            revert with 0, 17
                        if arg2 * buyTax * burnTax / 10^6 > !((marketingTax * arg2 * buyTax) + (liquidityTax * arg2 * buyTax) / 10^6):
                            revert with 0, 17
                        if arg2 < (arg2 * buyTax * burnTax / 10^6) + ((marketingTax * arg2 * buyTax) + (liquidityTax * arg2 * buyTax) / 10^6):
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[this.address] > !((marketingTax * arg2 * buyTax) + (liquidityTax * arg2 * buyTax) / 10^6):
                            revert with 0, 17
                        balanceOf[this.address] += (marketingTax * arg2 * buyTax) + (liquidityTax * arg2 * buyTax) / 10^6
                        if totalSupply < arg2 * buyTax * burnTax / 10^6:
                            revert with 0, 17
                        totalSupply -= arg2 * buyTax * burnTax / 10^6
                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * buyTax * burnTax / 10^6) - ((marketingTax * arg2 * buyTax) + (liquidityTax * arg2 * buyTax) / 10^6)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * buyTax * burnTax / 10^6) - ((marketingTax * arg2 * buyTax) + (liquidityTax * arg2 * buyTax) / 10^6)
                        emit Transfer((arg2 - (arg2 * buyTax * burnTax / 10^6) - ((marketingTax * arg2 * buyTax) + (liquidityTax * arg2 * buyTax) / 10^6)), msg.sender, arg1);
                    else:
                        if block.timestamp < sub_b40d09e2:
                            revert with 0, 17
                        if 500 < buyTax:
                            revert with 0, 17
                        if -buyTax + 500 and block.timestamp - sub_b40d09e2 > -1 / -buyTax + 500:
                            revert with 0, 17
                        if 500 < (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60:
                            revert with 0, 17
                        if stor12 != msg.sender:
                            if not manualSwap:
                                if not stor14:
                                    stor14 = 1
                                    if liquidityTax > !marketingTax:
                                        revert with 0, 17
                                    if balanceOf[stor12] and sub_e52fb9ec > -1 / balanceOf[stor12]:
                                        revert with 0, 17
                                    if liquidityTax + marketingTax:
                                        if balanceOf[this.address] >= balanceOf[stor12] * sub_e52fb9ec / 1000:
                                            if totalSupply and sub_0eff4c64 > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[stor12] > totalSupply * sub_0eff4c64 / 1000:
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 < 0:
                                                    revert with 0, 17
                                                if 0 > !(balanceOf[stor12] * sub_e52fb9ec / 1000):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor13:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000
                                                emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000), this.address, stor13);
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
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = balanceOf[stor12] * sub_e52fb9ec / 1000
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor13)
                                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[stor12] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                            else:
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor12] * sub_e52fb9ec / 1000:
                                                    revert with 0, 17
                                                if not liquidityTax + marketingTax:
                                                    revert with 0, 18
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 < balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                    revert with 0, 17
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > !((balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor13:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor13].field_0 = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                                emit Approval(((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)), this.address, stor13);
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
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor13)
                                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                    if False and balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > 0:
                                                        revert with 0, 17
                                                    if not (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax):
                                                        revert with 0, 18
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor13:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2
                                                    allowance[address(this.address)][stor13].field_255 = 0
                                                    emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2), this.address, stor13);
                                                    require ext_code.size(stor13)
                                                    call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax) wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                            call marketingWalletAddress with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                    stor14 = 0
                        if arg2 and -((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60) + 500 > -1 / arg2:
                            revert with 0, 17
                        if (500 * arg2) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) and burnTax > -1 / (500 * arg2) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2):
                            revert with 0, 17
                        if marketingTax > !liquidityTax:
                            revert with 0, 17
                        if arg2 and -((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60) + 500 > -1 / arg2:
                            revert with 0, 17
                        if (500 * arg2) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) and marketingTax + liquidityTax > -1 / (500 * arg2) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2):
                            revert with 0, 17
                        if (500 * arg2 * burnTax) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2 * burnTax) / 10^6 > !((500 * marketingTax * arg2) + (500 * liquidityTax * arg2) - (marketingTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) - (liquidityTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) / 10^6):
                            revert with 0, 17
                        if arg2 < ((500 * arg2 * burnTax) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2 * burnTax) / 10^6) + ((500 * marketingTax * arg2) + (500 * liquidityTax * arg2) - (marketingTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) - (liquidityTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) / 10^6):
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[this.address] > !((500 * marketingTax * arg2) + (500 * liquidityTax * arg2) - (marketingTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) - (liquidityTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) / 10^6):
                            revert with 0, 17
                        balanceOf[this.address] += (500 * marketingTax * arg2) + (500 * liquidityTax * arg2) - (marketingTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) - (liquidityTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) / 10^6
                        if totalSupply < (500 * arg2 * burnTax) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2 * burnTax) / 10^6:
                            revert with 0, 17
                        totalSupply -= (500 * arg2 * burnTax) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2 * burnTax) / 10^6
                        if balanceOf[address(arg1)] > !(arg2 - ((500 * arg2 * burnTax) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2 * burnTax) / 10^6) - ((500 * marketingTax * arg2) + (500 * liquidityTax * arg2) - (marketingTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) - (liquidityTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) / 10^6)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((500 * arg2 * burnTax) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2 * burnTax) / 10^6) - ((500 * marketingTax * arg2) + (500 * liquidityTax * arg2) - (marketingTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) - (liquidityTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) / 10^6)
                        emit Transfer((arg2 - ((500 * arg2 * burnTax) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2 * burnTax) / 10^6) - ((500 * marketingTax * arg2) + (500 * liquidityTax * arg2) - (marketingTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) - (liquidityTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg2) / 10^6)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0, 'Transfer from zero'
    if not arg2:
        revert with 0, 'Transfer to zero'
    if stor3[address(arg1)]:
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 'Transfer exceeds balance'
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] > !arg3:
            revert with 0, 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if stor3[address(arg2)]:
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'Transfer exceeds balance'
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if sub_b40d09e2 <= 0:
                revert with 0, 'trading not yet enabled'
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'Transfer exceeds balance'
            if stor4[arg2]:
                if sub_b40d09e2 > -21601:
                    revert with 0, 17
                if block.timestamp >= sub_b40d09e2 + (6 * 3600):
                    if stor12 != arg1:
                        if not manualSwap:
                            if not stor14:
                                stor14 = 1
                                if liquidityTax > !marketingTax:
                                    revert with 0, 17
                                if balanceOf[stor12] and sub_e52fb9ec > -1 / balanceOf[stor12]:
                                    revert with 0, 17
                                if liquidityTax + marketingTax:
                                    if balanceOf[this.address] >= balanceOf[stor12] * sub_e52fb9ec / 1000:
                                        if totalSupply and sub_0eff4c64 > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[stor12] > totalSupply * sub_0eff4c64 / 1000:
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 < 0:
                                                revert with 0, 17
                                            if 0 > !(balanceOf[stor12] * sub_e52fb9ec / 1000):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor13:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000
                                            emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000), this.address, stor13);
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
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[stor12] * sub_e52fb9ec / 1000
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[stor12] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                        else:
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor12] * sub_e52fb9ec / 1000:
                                                revert with 0, 17
                                            if not liquidityTax + marketingTax:
                                                revert with 0, 18
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 < balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                revert with 0, 17
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > !((balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor13:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor13].field_0 = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                            emit Approval(((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)), this.address, stor13);
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
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                if False and balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > 0:
                                                    revert with 0, 17
                                                if not (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax):
                                                    revert with 0, 18
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor13:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2
                                                allowance[address(this.address)][stor13].field_255 = 0
                                                emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2), this.address, stor13);
                                                require ext_code.size(stor13)
                                                call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax) wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                        call marketingWalletAddress with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                stor14 = 0
                    if arg3 and sellTax > -1 / arg3:
                        revert with 0, 17
                    if arg3 * sellTax and burnTax > -1 / arg3 * sellTax:
                        revert with 0, 17
                    if marketingTax > !liquidityTax:
                        revert with 0, 17
                    if arg3 and sellTax > -1 / arg3:
                        revert with 0, 17
                    if arg3 * sellTax and marketingTax + liquidityTax > -1 / arg3 * sellTax:
                        revert with 0, 17
                    if arg3 * sellTax * burnTax / 10^6 > !((marketingTax * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6):
                        revert with 0, 17
                    if arg3 < (arg3 * sellTax * burnTax / 10^6) + ((marketingTax * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6):
                        revert with 0, 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[this.address] > !((marketingTax * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6):
                        revert with 0, 17
                    balanceOf[this.address] += (marketingTax * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6
                    if totalSupply < arg3 * sellTax * burnTax / 10^6:
                        revert with 0, 17
                    totalSupply -= arg3 * sellTax * burnTax / 10^6
                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * sellTax * burnTax / 10^6) - ((marketingTax * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6)):
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellTax * burnTax / 10^6) - ((marketingTax * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6)
                    emit Transfer((arg3 - (arg3 * sellTax * burnTax / 10^6) - ((marketingTax * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6)), arg1, arg2);
                else:
                    if block.timestamp < sub_b40d09e2:
                        revert with 0, 17
                    if 300 < sellTax:
                        revert with 0, 17
                    if -sellTax + 300 and block.timestamp - sub_b40d09e2 > -1 / -sellTax + 300:
                        revert with 0, 17
                    if 300 < (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600:
                        revert with 0, 17
                    if stor12 != arg1:
                        if not manualSwap:
                            if not stor14:
                                stor14 = 1
                                if liquidityTax > !marketingTax:
                                    revert with 0, 17
                                if balanceOf[stor12] and sub_e52fb9ec > -1 / balanceOf[stor12]:
                                    revert with 0, 17
                                if liquidityTax + marketingTax:
                                    if balanceOf[this.address] >= balanceOf[stor12] * sub_e52fb9ec / 1000:
                                        if totalSupply and sub_0eff4c64 > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[stor12] > totalSupply * sub_0eff4c64 / 1000:
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 < 0:
                                                revert with 0, 17
                                            if 0 > !(balanceOf[stor12] * sub_e52fb9ec / 1000):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor13:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000
                                            emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000), this.address, stor13);
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
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[stor12] * sub_e52fb9ec / 1000
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[stor12] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                        else:
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor12] * sub_e52fb9ec / 1000:
                                                revert with 0, 17
                                            if not liquidityTax + marketingTax:
                                                revert with 0, 18
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 < balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                revert with 0, 17
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > !((balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor13:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor13].field_0 = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                            emit Approval(((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)), this.address, stor13);
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
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                if False and balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > 0:
                                                    revert with 0, 17
                                                if not (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax):
                                                    revert with 0, 18
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor13:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2
                                                allowance[address(this.address)][stor13].field_255 = 0
                                                emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2), this.address, stor13);
                                                require ext_code.size(stor13)
                                                call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax) wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                        call marketingWalletAddress with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                stor14 = 0
                    if arg3 and -((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600) + 300 > -1 / arg3:
                        revert with 0, 17
                    if (300 * arg3) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) and burnTax > -1 / (300 * arg3) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3):
                        revert with 0, 17
                    if marketingTax > !liquidityTax:
                        revert with 0, 17
                    if arg3 and -((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600) + 300 > -1 / arg3:
                        revert with 0, 17
                    if (300 * arg3) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) and marketingTax + liquidityTax > -1 / (300 * arg3) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3):
                        revert with 0, 17
                    if (300 * arg3 * burnTax) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3 * burnTax) / 10^6 > !((300 * marketingTax * arg3) + (300 * liquidityTax * arg3) - (marketingTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) - (liquidityTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) / 10^6):
                        revert with 0, 17
                    if arg3 < ((300 * arg3 * burnTax) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3 * burnTax) / 10^6) + ((300 * marketingTax * arg3) + (300 * liquidityTax * arg3) - (marketingTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) - (liquidityTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) / 10^6):
                        revert with 0, 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[this.address] > !((300 * marketingTax * arg3) + (300 * liquidityTax * arg3) - (marketingTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) - (liquidityTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) / 10^6):
                        revert with 0, 17
                    balanceOf[this.address] += (300 * marketingTax * arg3) + (300 * liquidityTax * arg3) - (marketingTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) - (liquidityTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) / 10^6
                    if totalSupply < (300 * arg3 * burnTax) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3 * burnTax) / 10^6:
                        revert with 0, 17
                    totalSupply -= (300 * arg3 * burnTax) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3 * burnTax) / 10^6
                    if balanceOf[address(arg2)] > !(arg3 - ((300 * arg3 * burnTax) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3 * burnTax) / 10^6) - ((300 * marketingTax * arg3) + (300 * liquidityTax * arg3) - (marketingTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) - (liquidityTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) / 10^6)):
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((300 * arg3 * burnTax) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3 * burnTax) / 10^6) - ((300 * marketingTax * arg3) + (300 * liquidityTax * arg3) - (marketingTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) - (liquidityTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) / 10^6)
                    emit Transfer((arg3 - ((300 * arg3 * burnTax) - ((300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3 * burnTax) / 10^6) - ((300 * marketingTax * arg3) + (300 * liquidityTax * arg3) - (marketingTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) - (liquidityTax * (300 * block.timestamp) - (300 * sub_b40d09e2) - (block.timestamp * sellTax) + (sub_b40d09e2 * sellTax) / 6 * 3600 * arg3) / 10^6)), arg1, arg2);
            else:
                if not stor4[address(arg1)]:
                    if stor12 != arg1:
                        if not manualSwap:
                            if not stor14:
                                stor14 = 1
                                if liquidityTax > !marketingTax:
                                    revert with 0, 17
                                if balanceOf[stor12] and sub_e52fb9ec > -1 / balanceOf[stor12]:
                                    revert with 0, 17
                                if liquidityTax + marketingTax:
                                    if balanceOf[this.address] >= balanceOf[stor12] * sub_e52fb9ec / 1000:
                                        if totalSupply and sub_0eff4c64 > -1 / totalSupply:
                                            revert with 0, 17
                                        if balanceOf[stor12] > totalSupply * sub_0eff4c64 / 1000:
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 < 0:
                                                revert with 0, 17
                                            if 0 > !(balanceOf[stor12] * sub_e52fb9ec / 1000):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor13:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000
                                            emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000), this.address, stor13);
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
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[stor12] * sub_e52fb9ec / 1000
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[stor12] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                        else:
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor12] * sub_e52fb9ec / 1000:
                                                revert with 0, 17
                                            if not liquidityTax + marketingTax:
                                                revert with 0, 18
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 < balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                revert with 0, 17
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > !((balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor13:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor13].field_0 = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                            emit Approval(((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)), this.address, stor13);
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
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor13)
                                            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                if False and balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > 0:
                                                    revert with 0, 17
                                                if not (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax):
                                                    revert with 0, 18
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor13:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2
                                                allowance[address(this.address)][stor13].field_255 = 0
                                                emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2), this.address, stor13);
                                                require ext_code.size(stor13)
                                                call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax) wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                        call marketingWalletAddress with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                stor14 = 0
                    if arg3 and sub_8124f7ac > -1 / arg3:
                        revert with 0, 17
                    if arg3 * sub_8124f7ac and burnTax > -1 / arg3 * sub_8124f7ac:
                        revert with 0, 17
                    if marketingTax > !liquidityTax:
                        revert with 0, 17
                    if arg3 and sub_8124f7ac > -1 / arg3:
                        revert with 0, 17
                    if arg3 * sub_8124f7ac and marketingTax + liquidityTax > -1 / arg3 * sub_8124f7ac:
                        revert with 0, 17
                    if arg3 * sub_8124f7ac * burnTax / 10^6 > !((marketingTax * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6):
                        revert with 0, 17
                    if arg3 < (arg3 * sub_8124f7ac * burnTax / 10^6) + ((marketingTax * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6):
                        revert with 0, 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[this.address] > !((marketingTax * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6):
                        revert with 0, 17
                    balanceOf[this.address] += (marketingTax * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6
                    if totalSupply < arg3 * sub_8124f7ac * burnTax / 10^6:
                        revert with 0, 17
                    totalSupply -= arg3 * sub_8124f7ac * burnTax / 10^6
                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * sub_8124f7ac * burnTax / 10^6) - ((marketingTax * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6)):
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_8124f7ac * burnTax / 10^6) - ((marketingTax * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6)
                    emit Transfer((arg3 - (arg3 * sub_8124f7ac * burnTax / 10^6) - ((marketingTax * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6)), arg1, arg2);
                else:
                    if sub_b40d09e2 > -61:
                        revert with 0, 17
                    if block.timestamp >= sub_b40d09e2 + 60:
                        if stor12 != arg1:
                            if not manualSwap:
                                if not stor14:
                                    stor14 = 1
                                    if liquidityTax > !marketingTax:
                                        revert with 0, 17
                                    if balanceOf[stor12] and sub_e52fb9ec > -1 / balanceOf[stor12]:
                                        revert with 0, 17
                                    if liquidityTax + marketingTax:
                                        if balanceOf[this.address] >= balanceOf[stor12] * sub_e52fb9ec / 1000:
                                            if totalSupply and sub_0eff4c64 > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[stor12] > totalSupply * sub_0eff4c64 / 1000:
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 < 0:
                                                    revert with 0, 17
                                                if 0 > !(balanceOf[stor12] * sub_e52fb9ec / 1000):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor13:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000
                                                emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000), this.address, stor13);
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
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = balanceOf[stor12] * sub_e52fb9ec / 1000
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor13)
                                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[stor12] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                            else:
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor12] * sub_e52fb9ec / 1000:
                                                    revert with 0, 17
                                                if not liquidityTax + marketingTax:
                                                    revert with 0, 18
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 < balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                    revert with 0, 17
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > !((balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor13:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor13].field_0 = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                                emit Approval(((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)), this.address, stor13);
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
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor13)
                                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                    if False and balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > 0:
                                                        revert with 0, 17
                                                    if not (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax):
                                                        revert with 0, 18
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor13:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2
                                                    allowance[address(this.address)][stor13].field_255 = 0
                                                    emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2), this.address, stor13);
                                                    require ext_code.size(stor13)
                                                    call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax) wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                            call marketingWalletAddress with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                    stor14 = 0
                        if arg3 and buyTax > -1 / arg3:
                            revert with 0, 17
                        if arg3 * buyTax and burnTax > -1 / arg3 * buyTax:
                            revert with 0, 17
                        if marketingTax > !liquidityTax:
                            revert with 0, 17
                        if arg3 and buyTax > -1 / arg3:
                            revert with 0, 17
                        if arg3 * buyTax and marketingTax + liquidityTax > -1 / arg3 * buyTax:
                            revert with 0, 17
                        if arg3 * buyTax * burnTax / 10^6 > !((marketingTax * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6):
                            revert with 0, 17
                        if arg3 < (arg3 * buyTax * burnTax / 10^6) + ((marketingTax * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6):
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !((marketingTax * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6):
                            revert with 0, 17
                        balanceOf[this.address] += (marketingTax * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6
                        if totalSupply < arg3 * buyTax * burnTax / 10^6:
                            revert with 0, 17
                        totalSupply -= arg3 * buyTax * burnTax / 10^6
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * buyTax * burnTax / 10^6) - ((marketingTax * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * buyTax * burnTax / 10^6) - ((marketingTax * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6)
                        emit Transfer((arg3 - (arg3 * buyTax * burnTax / 10^6) - ((marketingTax * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6)), arg1, arg2);
                    else:
                        if block.timestamp < sub_b40d09e2:
                            revert with 0, 17
                        if 500 < buyTax:
                            revert with 0, 17
                        if -buyTax + 500 and block.timestamp - sub_b40d09e2 > -1 / -buyTax + 500:
                            revert with 0, 17
                        if 500 < (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60:
                            revert with 0, 17
                        if stor12 != arg1:
                            if not manualSwap:
                                if not stor14:
                                    stor14 = 1
                                    if liquidityTax > !marketingTax:
                                        revert with 0, 17
                                    if balanceOf[stor12] and sub_e52fb9ec > -1 / balanceOf[stor12]:
                                        revert with 0, 17
                                    if liquidityTax + marketingTax:
                                        if balanceOf[this.address] >= balanceOf[stor12] * sub_e52fb9ec / 1000:
                                            if totalSupply and sub_0eff4c64 > -1 / totalSupply:
                                                revert with 0, 17
                                            if balanceOf[stor12] > totalSupply * sub_0eff4c64 / 1000:
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 < 0:
                                                    revert with 0, 17
                                                if 0 > !(balanceOf[stor12] * sub_e52fb9ec / 1000):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor13:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000
                                                emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000), this.address, stor13);
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
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = balanceOf[stor12] * sub_e52fb9ec / 1000
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor13)
                                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[stor12] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                            else:
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor12] * sub_e52fb9ec / 1000:
                                                    revert with 0, 17
                                                if not liquidityTax + marketingTax:
                                                    revert with 0, 18
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 < balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                    revert with 0, 17
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > !((balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor13:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor13].field_0 = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                                emit Approval(((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)), this.address, stor13);
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
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax)
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor13)
                                                call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax:
                                                    if False and balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2 > 0:
                                                        revert with 0, 17
                                                    if not (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax):
                                                        revert with 0, 18
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor13:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor13].field_0 = balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2
                                                    allowance[address(this.address)][stor13].field_255 = 0
                                                    emit Approval((balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2), this.address, stor13);
                                                    require ext_code.size(stor13)
                                                    call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax / 2) + (balanceOf[stor12] * sub_e52fb9ec / 1000) - (balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax) wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, balanceOf[stor12] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + marketingTax), 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                            call marketingWalletAddress with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                    stor14 = 0
                        if arg3 and -((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60) + 500 > -1 / arg3:
                            revert with 0, 17
                        if (500 * arg3) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) and burnTax > -1 / (500 * arg3) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3):
                            revert with 0, 17
                        if marketingTax > !liquidityTax:
                            revert with 0, 17
                        if arg3 and -((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60) + 500 > -1 / arg3:
                            revert with 0, 17
                        if (500 * arg3) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) and marketingTax + liquidityTax > -1 / (500 * arg3) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3):
                            revert with 0, 17
                        if (500 * arg3 * burnTax) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3 * burnTax) / 10^6 > !((500 * marketingTax * arg3) + (500 * liquidityTax * arg3) - (marketingTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) - (liquidityTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) / 10^6):
                            revert with 0, 17
                        if arg3 < ((500 * arg3 * burnTax) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3 * burnTax) / 10^6) + ((500 * marketingTax * arg3) + (500 * liquidityTax * arg3) - (marketingTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) - (liquidityTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) / 10^6):
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !((500 * marketingTax * arg3) + (500 * liquidityTax * arg3) - (marketingTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) - (liquidityTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) / 10^6):
                            revert with 0, 17
                        balanceOf[this.address] += (500 * marketingTax * arg3) + (500 * liquidityTax * arg3) - (marketingTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) - (liquidityTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) / 10^6
                        if totalSupply < (500 * arg3 * burnTax) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3 * burnTax) / 10^6:
                            revert with 0, 17
                        totalSupply -= (500 * arg3 * burnTax) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3 * burnTax) / 10^6
                        if balanceOf[address(arg2)] > !(arg3 - ((500 * arg3 * burnTax) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3 * burnTax) / 10^6) - ((500 * marketingTax * arg3) + (500 * liquidityTax * arg3) - (marketingTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) - (liquidityTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) / 10^6)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((500 * arg3 * burnTax) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3 * burnTax) / 10^6) - ((500 * marketingTax * arg3) + (500 * liquidityTax * arg3) - (marketingTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) - (liquidityTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) / 10^6)
                        emit Transfer((arg3 - ((500 * arg3 * burnTax) - ((500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3 * burnTax) / 10^6) - ((500 * marketingTax * arg3) + (500 * liquidityTax * arg3) - (marketingTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) - (liquidityTax * (500 * block.timestamp) - (500 * sub_b40d09e2) - (block.timestamp * buyTax) + (sub_b40d09e2 * buyTax) / 60 * arg3) / 10^6)), arg1, arg2);
    if allowance[address(arg1)][msg.sender].field_0 < arg3:
        revert with 0, 'Transfer > allowance'
    if not arg1:
        revert with 0, 'Approve from zero'
    if not msg.sender:
        revert with 0, 'Approve to zero'
    allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
    emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
    return 1
}



}
