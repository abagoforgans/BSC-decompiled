contract main {




// =====================  Runtime code  =====================


const name = '', 0

const InitialSupply = 100000000 * 10^18

const decimals = 18

const symbol = '', 0


address owner;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint256 _circulatingSupply;
uint256 buyTax;
uint256 sellTax;
uint256 sub_8124f7ac;
uint256 liquidityTax;
uint256 sub_25049036;
address stor11;
address stor12;
uint8 stor13; offset 160
address paymentSplitterAddress;
uint256 sub_e52fb9ec;
uint256 sub_0eff4c64;
uint8 manualSwap;
uint256 sub_b40d09e2;
uint256 stor18;
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

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
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

function _circulatingSupply() {
    return _circulatingSupply
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

function isPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function paymentSplitter() {
    return paymentSplitterAddress
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
    if block.timestamp >= stor18:
        return 0
    if stor18 < block.timestamp:
        revert with 0, 17
    return (stor18 - block.timestamp)
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
    return (balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000)
}

function sub_868b0141(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    manualSwap = uint8(bool(arg1))
}

function sub_206b7db8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paymentSplitterAddress = address(arg1)
}

function SetupEnableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_b40d09e2:
        revert with 0, 'AlreadyLaunched'
    sub_b40d09e2 = block.timestamp
    emit 0x2cb945e0 
}

function getBurnedTokens() {
    if 100000000 * 10^18 < _circulatingSupply:
        revert with 0, 17
    if -_circulatingSupply + 100000000 * 10^18 > !storB342:
        revert with 0, 17
    return (-_circulatingSupply + storB342 + 100000000 * 10^18)
}

function sub_f40a563a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor11 == address(arg1):
        revert with 0, 'can't change pancake'
    stor4[address(arg1)] = uint8(bool(arg2))
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
    require arg1 + block.timestamp > stor18
    stor18 = arg1 + block.timestamp
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
    stor3[address(arg1)] = uint8(arg2)
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

function LiquidityRelease() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < stor18:
        revert with 0, 'Not yet unlocked'
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_9b39b65f:
        call stor11.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        if block.timestamp > -604801:
            revert with 0, 17
        stor18 = block.timestamp + (168 * 24 * 3600)
        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        call stor11.0xa9059cbb with:
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
    stor13 = 1
    if liquidityTax > !sub_25049036:
        revert with 0, 17
    if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
        revert with 0, 17
    if liquidityTax + sub_25049036:
        if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
            revert with 0, 17
        if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
            if balanceOf[this.address] < 0:
                revert with 0, 17
            if 0 > !balanceOf[this.address]:
                revert with 0, 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor12:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor12].field_0 = balanceOf[this.address]
            emit Approval(balanceOf[this.address], this.address, stor12);
            mem[128] = this.address
            staticcall stor12.WETH() with:
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
            require ext_code.size(stor12)
            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
            if not stor12:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor12].field_0 = (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036)
            emit Approval(((balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
            mem[128] = this.address
            staticcall stor12.WETH() with:
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
            require ext_code.size(stor12)
            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
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
                if not stor12:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor12].field_0 = balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2
                allowance[address(this.address)][stor12].field_255 = 0
                emit Approval((balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value 0 / (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036) wei
                     gas gas_remaining wei
                    args this.address, Mask(255, 1, balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
        call paymentSplitterAddress with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
    stor13 = 0
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
                if sub_b40d09e2 > -21:
                    revert with 0, 17
                if block.timestamp >= sub_b40d09e2 + 20:
                    if stor11 != msg.sender:
                        if not manualSwap:
                            if not stor13:
                                stor13 = 1
                                if liquidityTax > !sub_25049036:
                                    revert with 0, 17
                                if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                    revert with 0, 17
                                if liquidityTax + sub_25049036:
                                    if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                        if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                            revert with 0, 17
                                        if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                revert with 0, 17
                                            if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor12:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                            emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                            mem[128] = this.address
                                            staticcall stor12.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor12)
                                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                        else:
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                revert with 0, 17
                                            if not liquidityTax + sub_25049036:
                                                revert with 0, 18
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                revert with 0, 17
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor12:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                            emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                            mem[128] = this.address
                                            staticcall stor12.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor12)
                                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                    revert with 0, 17
                                                if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                    revert with 0, 18
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                allowance[address(this.address)][stor12].field_255 = 0
                                                emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                        call paymentSplitterAddress with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                stor13 = 0
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
                    if block.timestamp - sub_b40d09e2 > 0x1b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4:
                        revert with 0, 17
                    if 200 < (150 * block.timestamp) - (150 * sub_b40d09e2) / 20:
                        revert with 0, 17
                    if stor11 != msg.sender:
                        if not manualSwap:
                            if not stor13:
                                stor13 = 1
                                if liquidityTax > !sub_25049036:
                                    revert with 0, 17
                                if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                    revert with 0, 17
                                if liquidityTax + sub_25049036:
                                    if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                        if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                            revert with 0, 17
                                        if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                revert with 0, 17
                                            if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor12:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                            emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                            mem[128] = this.address
                                            staticcall stor12.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor12)
                                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                        else:
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                revert with 0, 17
                                            if not liquidityTax + sub_25049036:
                                                revert with 0, 18
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                revert with 0, 17
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor12:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                            emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                            mem[128] = this.address
                                            staticcall stor12.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor12)
                                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                    revert with 0, 17
                                                if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                    revert with 0, 18
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                allowance[address(this.address)][stor12].field_255 = 0
                                                emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                        call paymentSplitterAddress with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                stor13 = 0
                    if sub_25049036 > !liquidityTax:
                        revert with 0, 17
                    if arg2 and -((150 * block.timestamp) - (150 * sub_b40d09e2) / 20) + 200 > -1 / arg2:
                        revert with 0, 17
                    if (200 * arg2) - ((150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) and sub_25049036 + liquidityTax > -1 / (200 * arg2) - ((150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2):
                        revert with 0, 17
                    if arg2 < (200 * sub_25049036 * arg2) + (200 * liquidityTax * arg2) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) / 10^6:
                        revert with 0, 17
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[this.address] > !((200 * sub_25049036 * arg2) + (200 * liquidityTax * arg2) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) / 10^6):
                        revert with 0, 17
                    balanceOf[this.address] += (200 * sub_25049036 * arg2) + (200 * liquidityTax * arg2) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) / 10^6
                    if balanceOf[address(arg1)] > !(arg2 - ((200 * sub_25049036 * arg2) + (200 * liquidityTax * arg2) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) / 10^6)):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((200 * sub_25049036 * arg2) + (200 * liquidityTax * arg2) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) / 10^6)
                    emit Transfer((arg2 - ((200 * sub_25049036 * arg2) + (200 * liquidityTax * arg2) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) / 10^6)), msg.sender, arg1);
            else:
                if not stor4[address(msg.sender)]:
                    if stor11 != msg.sender:
                        if not manualSwap:
                            if not stor13:
                                stor13 = 1
                                if liquidityTax > !sub_25049036:
                                    revert with 0, 17
                                if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                    revert with 0, 17
                                if liquidityTax + sub_25049036:
                                    if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                        if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                            revert with 0, 17
                                        if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                revert with 0, 17
                                            if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor12:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                            emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                            mem[128] = this.address
                                            staticcall stor12.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor12)
                                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                        else:
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                revert with 0, 17
                                            if not liquidityTax + sub_25049036:
                                                revert with 0, 18
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                revert with 0, 17
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor12:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                            emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                            mem[128] = this.address
                                            staticcall stor12.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor12)
                                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                    revert with 0, 17
                                                if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                    revert with 0, 18
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                allowance[address(this.address)][stor12].field_255 = 0
                                                emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                        call paymentSplitterAddress with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                stor13 = 0
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
                    if sub_b40d09e2 > -21:
                        revert with 0, 17
                    if block.timestamp >= sub_b40d09e2 + 20:
                        if stor11 != msg.sender:
                            if not manualSwap:
                                if not stor13:
                                    stor13 = 1
                                    if liquidityTax > !sub_25049036:
                                        revert with 0, 17
                                    if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                        revert with 0, 17
                                    if liquidityTax + sub_25049036:
                                        if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                            if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                                revert with 0, 17
                                            if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                    revert with 0, 17
                                                if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                                mem[128] = this.address
                                                staticcall stor12.WETH() with:
                                                        gas gas_remaining wei
                                                mem[192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[160] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor12)
                                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                            else:
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                    revert with 0, 17
                                                if not liquidityTax + sub_25049036:
                                                    revert with 0, 18
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                    revert with 0, 17
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                                mem[128] = this.address
                                                staticcall stor12.WETH() with:
                                                        gas gas_remaining wei
                                                mem[192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[160] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor12)
                                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                    if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                        revert with 0, 17
                                                    if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                        revert with 0, 18
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                    allowance[address(this.address)][stor12].field_255 = 0
                                                    emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                    call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                            call paymentSplitterAddress with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                    stor13 = 0
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
                        if 999 < (949 * block.timestamp) - (949 * sub_b40d09e2) / 20:
                            revert with 0, 17
                        if stor11 != msg.sender:
                            if not manualSwap:
                                if not stor13:
                                    stor13 = 1
                                    if liquidityTax > !sub_25049036:
                                        revert with 0, 17
                                    if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                        revert with 0, 17
                                    if liquidityTax + sub_25049036:
                                        if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                            if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                                revert with 0, 17
                                            if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                    revert with 0, 17
                                                if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                                mem[128] = this.address
                                                staticcall stor12.WETH() with:
                                                        gas gas_remaining wei
                                                mem[192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[160] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor12)
                                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                            else:
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                    revert with 0, 17
                                                if not liquidityTax + sub_25049036:
                                                    revert with 0, 18
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                    revert with 0, 17
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                                mem[128] = this.address
                                                staticcall stor12.WETH() with:
                                                        gas gas_remaining wei
                                                mem[192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[160] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor12)
                                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                    if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                        revert with 0, 17
                                                    if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                        revert with 0, 18
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                    allowance[address(this.address)][stor12].field_255 = 0
                                                    emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                    call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                            call paymentSplitterAddress with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                    stor13 = 0
                        if sub_25049036 > !liquidityTax:
                            revert with 0, 17
                        if arg2 and -((949 * block.timestamp) - (949 * sub_b40d09e2) / 20) + 999 > -1 / arg2:
                            revert with 0, 17
                        if (999 * arg2) - ((949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) and sub_25049036 + liquidityTax > -1 / (999 * arg2) - ((949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2):
                            revert with 0, 17
                        if arg2 < (999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) / 10^6:
                            revert with 0, 17
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[this.address] > !((999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) / 10^6):
                            revert with 0, 17
                        balanceOf[this.address] += (999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) / 10^6
                        if balanceOf[address(arg1)] > !(arg2 - ((999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) / 10^6)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) / 10^6)
                        emit Transfer((arg2 - ((999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) / 10^6)), msg.sender, arg1);
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
                if sub_b40d09e2 > -21:
                    revert with 0, 17
                if block.timestamp >= sub_b40d09e2 + 20:
                    if stor11 != arg1:
                        if not manualSwap:
                            if not stor13:
                                stor13 = 1
                                if liquidityTax > !sub_25049036:
                                    revert with 0, 17
                                if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                    revert with 0, 17
                                if liquidityTax + sub_25049036:
                                    if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                        if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                            revert with 0, 17
                                        if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                revert with 0, 17
                                            if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor12:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                            emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                            mem[128] = this.address
                                            staticcall stor12.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor12)
                                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                        else:
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                revert with 0, 17
                                            if not liquidityTax + sub_25049036:
                                                revert with 0, 18
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                revert with 0, 17
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor12:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                            emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                            mem[128] = this.address
                                            staticcall stor12.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor12)
                                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                    revert with 0, 17
                                                if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                    revert with 0, 18
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                allowance[address(this.address)][stor12].field_255 = 0
                                                emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                        call paymentSplitterAddress with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                stor13 = 0
                    if sub_25049036 > !liquidityTax:
                        revert with 0, 17
                    if arg3 and sellTax > -1 / arg3:
                        revert with 0, 17
                    if arg3 * sellTax and sub_25049036 + liquidityTax > -1 / arg3 * sellTax:
                        revert with 0, 17
                    if arg3 < (sub_25049036 * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6:
                        revert with 0, 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[this.address] > !((sub_25049036 * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6):
                        revert with 0, 17
                    balanceOf[this.address] += (sub_25049036 * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6
                    if balanceOf[address(arg2)] > !(arg3 - ((sub_25049036 * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6)):
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((sub_25049036 * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6)
                    emit Transfer((arg3 - ((sub_25049036 * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6)), arg1, arg2);
                else:
                    if block.timestamp < sub_b40d09e2:
                        revert with 0, 17
                    if block.timestamp - sub_b40d09e2 > 0x1b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4:
                        revert with 0, 17
                    if 200 < (150 * block.timestamp) - (150 * sub_b40d09e2) / 20:
                        revert with 0, 17
                    if stor11 != arg1:
                        if not manualSwap:
                            if not stor13:
                                stor13 = 1
                                if liquidityTax > !sub_25049036:
                                    revert with 0, 17
                                if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                    revert with 0, 17
                                if liquidityTax + sub_25049036:
                                    if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                        if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                            revert with 0, 17
                                        if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                revert with 0, 17
                                            if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor12:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                            emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                            mem[128] = this.address
                                            staticcall stor12.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor12)
                                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                        else:
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                revert with 0, 17
                                            if not liquidityTax + sub_25049036:
                                                revert with 0, 18
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                revert with 0, 17
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor12:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                            emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                            mem[128] = this.address
                                            staticcall stor12.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor12)
                                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                    revert with 0, 17
                                                if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                    revert with 0, 18
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                allowance[address(this.address)][stor12].field_255 = 0
                                                emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                        call paymentSplitterAddress with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                stor13 = 0
                    if sub_25049036 > !liquidityTax:
                        revert with 0, 17
                    if arg3 and -((150 * block.timestamp) - (150 * sub_b40d09e2) / 20) + 200 > -1 / arg3:
                        revert with 0, 17
                    if (200 * arg3) - ((150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) and sub_25049036 + liquidityTax > -1 / (200 * arg3) - ((150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3):
                        revert with 0, 17
                    if arg3 < (200 * sub_25049036 * arg3) + (200 * liquidityTax * arg3) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) / 10^6:
                        revert with 0, 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[this.address] > !((200 * sub_25049036 * arg3) + (200 * liquidityTax * arg3) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) / 10^6):
                        revert with 0, 17
                    balanceOf[this.address] += (200 * sub_25049036 * arg3) + (200 * liquidityTax * arg3) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) / 10^6
                    if balanceOf[address(arg2)] > !(arg3 - ((200 * sub_25049036 * arg3) + (200 * liquidityTax * arg3) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) / 10^6)):
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((200 * sub_25049036 * arg3) + (200 * liquidityTax * arg3) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) / 10^6)
                    emit Transfer((arg3 - ((200 * sub_25049036 * arg3) + (200 * liquidityTax * arg3) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) / 10^6)), arg1, arg2);
            else:
                if not stor4[address(arg1)]:
                    if stor11 != arg1:
                        if not manualSwap:
                            if not stor13:
                                stor13 = 1
                                if liquidityTax > !sub_25049036:
                                    revert with 0, 17
                                if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                    revert with 0, 17
                                if liquidityTax + sub_25049036:
                                    if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                        if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                            revert with 0, 17
                                        if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                revert with 0, 17
                                            if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor12:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                            emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                            mem[128] = this.address
                                            staticcall stor12.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor12)
                                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                        else:
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                revert with 0, 17
                                            if not liquidityTax + sub_25049036:
                                                revert with 0, 18
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                revert with 0, 17
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                revert with 0, 17
                                            if not this.address:
                                                revert with 0, 'Approve from zero'
                                            if not stor12:
                                                revert with 0, 'Approve to zero'
                                            allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                            emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                            mem[128] = this.address
                                            staticcall stor12.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                            idx = 0
                                            s = ceil32(return_data.size) + 388
                                            t = 128
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(stor12)
                                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                    revert with 0, 17
                                                if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                    revert with 0, 18
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                allowance[address(this.address)][stor12].field_255 = 0
                                                emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                   value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                     gas gas_remaining wei
                                                    args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                        call paymentSplitterAddress with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining wei
                                stor13 = 0
                    if sub_25049036 > !liquidityTax:
                        revert with 0, 17
                    if arg3 and sub_8124f7ac > -1 / arg3:
                        revert with 0, 17
                    if arg3 * sub_8124f7ac and sub_25049036 + liquidityTax > -1 / arg3 * sub_8124f7ac:
                        revert with 0, 17
                    if arg3 < (sub_25049036 * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6:
                        revert with 0, 17
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[this.address] > !((sub_25049036 * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6):
                        revert with 0, 17
                    balanceOf[this.address] += (sub_25049036 * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6
                    if balanceOf[address(arg2)] > !(arg3 - ((sub_25049036 * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6)):
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((sub_25049036 * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6)
                    emit Transfer((arg3 - ((sub_25049036 * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6)), arg1, arg2);
                else:
                    if sub_b40d09e2 > -21:
                        revert with 0, 17
                    if block.timestamp >= sub_b40d09e2 + 20:
                        if stor11 != arg1:
                            if not manualSwap:
                                if not stor13:
                                    stor13 = 1
                                    if liquidityTax > !sub_25049036:
                                        revert with 0, 17
                                    if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                        revert with 0, 17
                                    if liquidityTax + sub_25049036:
                                        if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                            if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                                revert with 0, 17
                                            if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                    revert with 0, 17
                                                if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                                mem[128] = this.address
                                                staticcall stor12.WETH() with:
                                                        gas gas_remaining wei
                                                mem[192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[160] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor12)
                                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                            else:
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                    revert with 0, 17
                                                if not liquidityTax + sub_25049036:
                                                    revert with 0, 18
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                    revert with 0, 17
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                                mem[128] = this.address
                                                staticcall stor12.WETH() with:
                                                        gas gas_remaining wei
                                                mem[192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[160] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor12)
                                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                    if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                        revert with 0, 17
                                                    if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                        revert with 0, 18
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                    allowance[address(this.address)][stor12].field_255 = 0
                                                    emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                    call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                            call paymentSplitterAddress with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                    stor13 = 0
                        if sub_25049036 > !liquidityTax:
                            revert with 0, 17
                        if arg3 and buyTax > -1 / arg3:
                            revert with 0, 17
                        if arg3 * buyTax and sub_25049036 + liquidityTax > -1 / arg3 * buyTax:
                            revert with 0, 17
                        if arg3 < (sub_25049036 * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6:
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !((sub_25049036 * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6):
                            revert with 0, 17
                        balanceOf[this.address] += (sub_25049036 * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6
                        if balanceOf[address(arg2)] > !(arg3 - ((sub_25049036 * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((sub_25049036 * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6)
                        emit Transfer((arg3 - ((sub_25049036 * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6)), arg1, arg2);
                    else:
                        if block.timestamp < sub_b40d09e2:
                            revert with 0, 17
                        if block.timestamp - sub_b40d09e2 > 0x450ed6300450ed6300450ed6300450ed6300450ed6300450ed6300450ed630:
                            revert with 0, 17
                        if 999 < (949 * block.timestamp) - (949 * sub_b40d09e2) / 20:
                            revert with 0, 17
                        if stor11 != arg1:
                            if not manualSwap:
                                if not stor13:
                                    stor13 = 1
                                    if liquidityTax > !sub_25049036:
                                        revert with 0, 17
                                    if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                        revert with 0, 17
                                    if liquidityTax + sub_25049036:
                                        if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                            if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                                revert with 0, 17
                                            if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                    revert with 0, 17
                                                if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                                mem[128] = this.address
                                                staticcall stor12.WETH() with:
                                                        gas gas_remaining wei
                                                mem[192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[160] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor12)
                                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                            else:
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                    revert with 0, 17
                                                if not liquidityTax + sub_25049036:
                                                    revert with 0, 18
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                    revert with 0, 17
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                                mem[128] = this.address
                                                staticcall stor12.WETH() with:
                                                        gas gas_remaining wei
                                                mem[192] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[160] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 196] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                idx = 0
                                                s = ceil32(return_data.size) + 388
                                                t = 128
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor12)
                                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                    if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                        revert with 0, 17
                                                    if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                        revert with 0, 18
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                    allowance[address(this.address)][stor12].field_255 = 0
                                                    emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                    call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                            call paymentSplitterAddress with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                    stor13 = 0
                        if sub_25049036 > !liquidityTax:
                            revert with 0, 17
                        if arg3 and -((949 * block.timestamp) - (949 * sub_b40d09e2) / 20) + 999 > -1 / arg3:
                            revert with 0, 17
                        if (999 * arg3) - ((949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) and sub_25049036 + liquidityTax > -1 / (999 * arg3) - ((949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3):
                            revert with 0, 17
                        if arg3 < (999 * sub_25049036 * arg3) + (999 * liquidityTax * arg3) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) / 10^6:
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !((999 * sub_25049036 * arg3) + (999 * liquidityTax * arg3) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) / 10^6):
                            revert with 0, 17
                        balanceOf[this.address] += (999 * sub_25049036 * arg3) + (999 * liquidityTax * arg3) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) / 10^6
                        if balanceOf[address(arg2)] > !(arg3 - ((999 * sub_25049036 * arg3) + (999 * liquidityTax * arg3) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) / 10^6)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((999 * sub_25049036 * arg3) + (999 * liquidityTax * arg3) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) / 10^6)
                        emit Transfer((arg3 - ((999 * sub_25049036 * arg3) + (999 * liquidityTax * arg3) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) / 10^6)), arg1, arg2);
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

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xc3a3c032(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xe0d2f9eb(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xc3a3c032(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if block.timestamp >= stor18:
                        return 0
                    if stor18 < block.timestamp:
                        revert with 0, 17
                    return (stor18 - block.timestamp)
                if unknown_0xc3f4f54f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if 100000000 * 10^18 < _circulatingSupply:
                        revert with 0, 17
                    if -_circulatingSupply + 100000000 * 10^18 > !storB342:
                        revert with 0, 17
                    return (-_circulatingSupply + storB342 + 100000000 * 10^18)
                if unknown_0xcc1776d3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sellTax
                if unknown_0xcfd1940e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require arg1 <= 10
                    sub_e52fb9ec = arg1
                if unknown_0xdbe66ca0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor3[arg1])
                require unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                return allowance[address(arg1)][address(arg2)].field_0
            if unknown_0xe0d2f9eb(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if this.address == address(arg1):
                    revert with 0, 'can't Include the contract'
                stor3[address(arg1)] = uint8(bool(arg2))
                emit 0xa22b2547: address(arg1), bool(arg2)
            else:
                if unknown_0xe52fb9ec(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_e52fb9ec
                if unknown_0xe5e31b13(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor4[arg1])
                if unknown_0xed4a6b0c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return paymentSplitterAddress
                if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(arg1));
                    owner = address(arg1)
                else:
                    require unknown_0xf40a563a(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if stor11 == address(arg1):
                        revert with 0, 'can't change pancake'
                    stor4[address(arg1)] = uint8(bool(arg2))
        if unknown_0xa68bdac7(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return '', 0
            if unknown_0x9b39b65f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return bool(sub_9b39b65f)
            if unknown_0x9e281a98(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                call address(arg1).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if unknown_0xa253c06e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return _circulatingSupply
            require unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)].field_0 < arg2:
                revert with 0, '<0 allowance'
            if not msg.sender:
                revert with 0, 'Approve from zero'
            if not address(arg1):
                revert with 0, 'Approve to zero'
            allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
            emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, address(arg1));
        else:
            if unknown_0xa68bdac7(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                sub_9b39b65f = 1
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                if unknown_0xb40d09e2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_b40d09e2
                if uint32(call.func_hash) >> 224 != unknown_0xbaa88ea9(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xbc43d849(?????):
                        require unknown_0xbe617fa0(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return liquidityTax
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require arg1 <= 1000
                    sub_0eff4c64 = arg1
                else:
                    require not msg.value
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
                        revert with 0, 'Taxes don't add up to denominator'
                    buyTax = arg1
                    sellTax = arg2
                    sub_8124f7ac = arg3
                    sub_25049036 = arg4
                    liquidityTax = arg5
                    emit 0x7d167ef6: arg1, arg2, arg3, arg4, arg5
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if not msg.sender:
                revert with 0, 'Transfer from zero'
            if not address(arg1):
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
                emit Transfer(arg2, msg.sender, address(arg1));
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
                    emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if sub_b40d09e2 <= 0:
                        revert with 0, 'trading not yet enabled'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0, 'Transfer exceeds balance'
                    if stor4[address(arg1)]:
                        if sub_b40d09e2 > -21:
                            revert with 0, 17
                        if block.timestamp >= sub_b40d09e2 + 20:
                            if stor11 != msg.sender:
                                if not manualSwap:
                                    if not stor13:
                                        stor13 = 1
                                        if liquidityTax > !sub_25049036:
                                            revert with 0, 17
                                        if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                            revert with 0, 17
                                        if liquidityTax + sub_25049036:
                                            if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                                    revert with 0, 17
                                                if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                        revert with 0, 17
                                                    if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                    emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                                    mem[160] = this.address
                                                    staticcall stor12.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[192] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor12)
                                                    call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                else:
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                        revert with 0, 17
                                                    if not liquidityTax + sub_25049036:
                                                        revert with 0, 18
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                        revert with 0, 17
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                    emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                                    mem[160] = this.address
                                                    staticcall stor12.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[192] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor12)
                                                    call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                        if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                            revert with 0, 17
                                                        if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                            revert with 0, 18
                                                        if not this.address:
                                                            revert with 0, 'Approve from zero'
                                                        if not stor12:
                                                            revert with 0, 'Approve to zero'
                                                        allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                        allowance[address(this.address)][stor12].field_255 = 0
                                                        emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                        call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                           value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                             gas gas_remaining wei
                                                            args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                call paymentSplitterAddress with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                        stor13 = 0
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
                            emit Transfer((arg2 - ((sub_25049036 * arg2 * sellTax) + (liquidityTax * arg2 * sellTax) / 10^6)), msg.sender, address(arg1));
                        else:
                            if block.timestamp < sub_b40d09e2:
                                revert with 0, 17
                            if block.timestamp - sub_b40d09e2 > 0x1b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4:
                                revert with 0, 17
                            if 200 < (150 * block.timestamp) - (150 * sub_b40d09e2) / 20:
                                revert with 0, 17
                            if stor11 != msg.sender:
                                if not manualSwap:
                                    if not stor13:
                                        stor13 = 1
                                        if liquidityTax > !sub_25049036:
                                            revert with 0, 17
                                        if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                            revert with 0, 17
                                        if liquidityTax + sub_25049036:
                                            if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                                    revert with 0, 17
                                                if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                        revert with 0, 17
                                                    if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                    emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                                    mem[160] = this.address
                                                    staticcall stor12.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[192] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor12)
                                                    call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                else:
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                        revert with 0, 17
                                                    if not liquidityTax + sub_25049036:
                                                        revert with 0, 18
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                        revert with 0, 17
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                    emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                                    mem[160] = this.address
                                                    staticcall stor12.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[192] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor12)
                                                    call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                        if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                            revert with 0, 17
                                                        if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                            revert with 0, 18
                                                        if not this.address:
                                                            revert with 0, 'Approve from zero'
                                                        if not stor12:
                                                            revert with 0, 'Approve to zero'
                                                        allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                        allowance[address(this.address)][stor12].field_255 = 0
                                                        emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                        call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                           value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                             gas gas_remaining wei
                                                            args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                call paymentSplitterAddress with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                        stor13 = 0
                            if sub_25049036 > !liquidityTax:
                                revert with 0, 17
                            if arg2 and -((150 * block.timestamp) - (150 * sub_b40d09e2) / 20) + 200 > -1 / arg2:
                                revert with 0, 17
                            if (200 * arg2) - ((150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) and sub_25049036 + liquidityTax > -1 / (200 * arg2) - ((150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2):
                                revert with 0, 17
                            if arg2 < (200 * sub_25049036 * arg2) + (200 * liquidityTax * arg2) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) / 10^6:
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] < arg2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[this.address] > !((200 * sub_25049036 * arg2) + (200 * liquidityTax * arg2) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) / 10^6):
                                revert with 0, 17
                            balanceOf[this.address] += (200 * sub_25049036 * arg2) + (200 * liquidityTax * arg2) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) / 10^6
                            if balanceOf[address(arg1)] > !(arg2 - ((200 * sub_25049036 * arg2) + (200 * liquidityTax * arg2) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) / 10^6)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((200 * sub_25049036 * arg2) + (200 * liquidityTax * arg2) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) / 10^6)
                            emit Transfer((arg2 - ((200 * sub_25049036 * arg2) + (200 * liquidityTax * arg2) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg2) / 10^6)), msg.sender, address(arg1));
                    else:
                        if not stor4[address(msg.sender)]:
                            if stor11 != msg.sender:
                                if not manualSwap:
                                    if not stor13:
                                        stor13 = 1
                                        if liquidityTax > !sub_25049036:
                                            revert with 0, 17
                                        if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                            revert with 0, 17
                                        if liquidityTax + sub_25049036:
                                            if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                                    revert with 0, 17
                                                if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                        revert with 0, 17
                                                    if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                    emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                                    mem[160] = this.address
                                                    staticcall stor12.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[192] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor12)
                                                    call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                else:
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                        revert with 0, 17
                                                    if not liquidityTax + sub_25049036:
                                                        revert with 0, 18
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                        revert with 0, 17
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                    emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                                    mem[160] = this.address
                                                    staticcall stor12.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[192] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor12)
                                                    call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                        if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                            revert with 0, 17
                                                        if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                            revert with 0, 18
                                                        if not this.address:
                                                            revert with 0, 'Approve from zero'
                                                        if not stor12:
                                                            revert with 0, 'Approve to zero'
                                                        allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                        allowance[address(this.address)][stor12].field_255 = 0
                                                        emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                        call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                           value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                             gas gas_remaining wei
                                                            args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                call paymentSplitterAddress with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                        stor13 = 0
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
                            emit Transfer((arg2 - ((sub_25049036 * arg2 * sub_8124f7ac) + (liquidityTax * arg2 * sub_8124f7ac) / 10^6)), msg.sender, address(arg1));
                        else:
                            if sub_b40d09e2 > -21:
                                revert with 0, 17
                            if block.timestamp >= sub_b40d09e2 + 20:
                                if stor11 != msg.sender:
                                    if not manualSwap:
                                        if not stor13:
                                            stor13 = 1
                                            if liquidityTax > !sub_25049036:
                                                revert with 0, 17
                                            if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                                revert with 0, 17
                                            if liquidityTax + sub_25049036:
                                                if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                    if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                                        revert with 0, 17
                                                    if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                                        if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                            revert with 0, 17
                                                        if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'Approve from zero'
                                                        if not stor12:
                                                            revert with 0, 'Approve to zero'
                                                        allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                        emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                                        mem[160] = this.address
                                                        staticcall stor12.WETH() with:
                                                                gas gas_remaining wei
                                                        mem[224] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[192] = ext_call.return_data[12 len 20]
                                                        mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(return_data.size) + 228] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                        idx = 0
                                                        s = ceil32(return_data.size) + 420
                                                        t = 160
                                                        while idx < 2:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(stor12)
                                                        call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                    else:
                                                        if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                            revert with 0, 17
                                                        if not liquidityTax + sub_25049036:
                                                            revert with 0, 18
                                                        if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                            revert with 0, 17
                                                        if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'Approve from zero'
                                                        if not stor12:
                                                            revert with 0, 'Approve to zero'
                                                        allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                        emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                                        mem[160] = this.address
                                                        staticcall stor12.WETH() with:
                                                                gas gas_remaining wei
                                                        mem[224] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[192] = ext_call.return_data[12 len 20]
                                                        mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(return_data.size) + 228] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                        idx = 0
                                                        s = ceil32(return_data.size) + 420
                                                        t = 160
                                                        while idx < 2:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(stor12)
                                                        call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                            if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                                revert with 0, 17
                                                            if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                                revert with 0, 18
                                                            if not this.address:
                                                                revert with 0, 'Approve from zero'
                                                            if not stor12:
                                                                revert with 0, 'Approve to zero'
                                                            allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                            allowance[address(this.address)][stor12].field_255 = 0
                                                            emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                            call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                               value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                                 gas gas_remaining wei
                                                                args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                    call paymentSplitterAddress with:
                                                       value eth.balance(this.address) wei
                                                         gas gas_remaining wei
                                            stor13 = 0
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
                                emit Transfer((arg2 - ((sub_25049036 * arg2 * buyTax) + (liquidityTax * arg2 * buyTax) / 10^6)), msg.sender, address(arg1));
                            else:
                                if block.timestamp < sub_b40d09e2:
                                    revert with 0, 17
                                if block.timestamp - sub_b40d09e2 > 0x450ed6300450ed6300450ed6300450ed6300450ed6300450ed6300450ed630:
                                    revert with 0, 17
                                if 999 < (949 * block.timestamp) - (949 * sub_b40d09e2) / 20:
                                    revert with 0, 17
                                if stor11 != msg.sender:
                                    if not manualSwap:
                                        if not stor13:
                                            stor13 = 1
                                            if liquidityTax > !sub_25049036:
                                                revert with 0, 17
                                            if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                                revert with 0, 17
                                            if liquidityTax + sub_25049036:
                                                if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                    if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                                        revert with 0, 17
                                                    if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                                        if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                            revert with 0, 17
                                                        if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'Approve from zero'
                                                        if not stor12:
                                                            revert with 0, 'Approve to zero'
                                                        allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                        emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                                        mem[160] = this.address
                                                        staticcall stor12.WETH() with:
                                                                gas gas_remaining wei
                                                        mem[224] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[192] = ext_call.return_data[12 len 20]
                                                        mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(return_data.size) + 228] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                        idx = 0
                                                        s = ceil32(return_data.size) + 420
                                                        t = 160
                                                        while idx < 2:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(stor12)
                                                        call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                    else:
                                                        if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                            revert with 0, 17
                                                        if not liquidityTax + sub_25049036:
                                                            revert with 0, 18
                                                        if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                            revert with 0, 17
                                                        if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                            revert with 0, 17
                                                        if not this.address:
                                                            revert with 0, 'Approve from zero'
                                                        if not stor12:
                                                            revert with 0, 'Approve to zero'
                                                        allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                        emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                                        mem[160] = this.address
                                                        staticcall stor12.WETH() with:
                                                                gas gas_remaining wei
                                                        mem[224] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[192] = ext_call.return_data[12 len 20]
                                                        mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                        mem[ceil32(return_data.size) + 228] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                        idx = 0
                                                        s = ceil32(return_data.size) + 420
                                                        t = 160
                                                        while idx < 2:
                                                            mem[s] = mem[t + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        require ext_code.size(stor12)
                                                        call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                        if eth.balance(this.address) < eth.balance(this.address):
                                                            revert with 0, 17
                                                        if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                            if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                                revert with 0, 17
                                                            if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                                revert with 0, 18
                                                            if not this.address:
                                                                revert with 0, 'Approve from zero'
                                                            if not stor12:
                                                                revert with 0, 'Approve to zero'
                                                            allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                            allowance[address(this.address)][stor12].field_255 = 0
                                                            emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                            call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                               value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                                 gas gas_remaining wei
                                                                args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 96
                                                    call paymentSplitterAddress with:
                                                       value eth.balance(this.address) wei
                                                         gas gas_remaining wei
                                            stor13 = 0
                                if sub_25049036 > !liquidityTax:
                                    revert with 0, 17
                                if arg2 and -((949 * block.timestamp) - (949 * sub_b40d09e2) / 20) + 999 > -1 / arg2:
                                    revert with 0, 17
                                if (999 * arg2) - ((949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) and sub_25049036 + liquidityTax > -1 / (999 * arg2) - ((949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2):
                                    revert with 0, 17
                                if arg2 < (999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) / 10^6:
                                    revert with 0, 17
                                if balanceOf[address(msg.sender)] < arg2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[this.address] > !((999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) / 10^6):
                                    revert with 0, 17
                                balanceOf[this.address] += (999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) / 10^6
                                if balanceOf[address(arg1)] > !(arg2 - ((999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) / 10^6)):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) / 10^6)
                                emit Transfer((arg2 - ((999 * sub_25049036 * arg2) + (999 * liquidityTax * arg2) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg2) / 10^6)), msg.sender, address(arg1));
    else:
        if unknown_0x3227925f(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x70a08231(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return balanceOf[address(arg1)]
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
                else:
                    if unknown_0x7b9e987a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if sub_b40d09e2:
                            revert with 0, 'AlreadyLaunched'
                        sub_b40d09e2 = block.timestamp
                        emit 0x2cb945e0 
                    else:
                        if unknown_0x8124f7ac(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_8124f7ac
                        if uint32(call.func_hash) >> 224 != unknown_0x868b0141(?????):
                            require unknown_0x893d20e8(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return owner
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == bool(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        manualSwap = uint8(bool(arg1))
            else:
                if unknown_0x3227925f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg1 > !block.timestamp:
                        revert with 0, 17
                    require arg1 + block.timestamp > stor18
                    stor18 = arg1 + block.timestamp
                    emit 0x8ff9dc93: (arg1 + block.timestamp)
                else:
                    if unknown_0x39509351(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if allowance[msg.sender][address(arg1)].field_0 > !arg2:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'Approve from zero'
                        if not address(arg1):
                            revert with 0, 'Approve to zero'
                        allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
                        emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, address(arg1));
                        return 1
                    if uint32(call.func_hash) >> 224 != unknown_0x41aec357(?????):
                        if unknown_0x46e35f03(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                revert with 0, 17
                            return (balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000)
                        if unknown_0x4f7041a5(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return buyTax
                        require unknown_0x51bc3c85(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return bool(manualSwap)
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor13 = 1
                    if liquidityTax > !sub_25049036:
                        revert with 0, 17
                    if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                        revert with 0, 17
                    if liquidityTax + sub_25049036:
                        if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                            revert with 0, 17
                        if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                            if balanceOf[this.address] < 0:
                                revert with 0, 17
                            if 0 > !balanceOf[this.address]:
                                revert with 0, 17
                            if not this.address:
                                revert with 0, 'Approve from zero'
                            if not stor12:
                                revert with 0, 'Approve to zero'
                            allowance[address(this.address)][stor12].field_0 = balanceOf[this.address]
                            emit Approval(balanceOf[this.address], this.address, stor12);
                            mem[160] = this.address
                            staticcall stor12.WETH() with:
                                    gas gas_remaining wei
                            mem[224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = balanceOf[this.address]
                            idx = 0
                            s = ceil32(return_data.size) + 420
                            t = 160
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor12)
                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
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
                            if not stor12:
                                revert with 0, 'Approve to zero'
                            allowance[address(this.address)][stor12].field_0 = (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036)
                            emit Approval(((balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                            mem[160] = this.address
                            staticcall stor12.WETH() with:
                                    gas gas_remaining wei
                            mem[224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036)
                            idx = 0
                            s = ceil32(return_data.size) + 420
                            t = 160
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(stor12)
                            call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036:
                                if False and balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                    revert with 0, 17
                                if not (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036):
                                    revert with 0, 18
                                if not this.address:
                                    revert with 0, 'Approve from zero'
                                if not stor12:
                                    revert with 0, 'Approve to zero'
                                allowance[address(this.address)][stor12].field_0 = balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2
                                allowance[address(this.address)][stor12].field_255 = 0
                                emit Approval((balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036 / 2) + balanceOf[this.address] - (balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036) wei
                                     gas gas_remaining wei
                                    args this.address, Mask(255, 1, balanceOf[this.address] * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                        call paymentSplitterAddress with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                    stor13 = 0
        if unknown_0x18160ddd(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != LiquidityRelease():
                if name() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return '', 0
                if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if not msg.sender:
                        revert with 0, 'Approve from zero'
                    if not address(arg1):
                        revert with 0, 'Approve to zero'
                    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
                    emit Approval(arg2, msg.sender, address(arg1));
                    return 1
                if unknown_0x0eff4c64(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_0eff4c64
                require unknown_0x127f4b2e(?????) == uint32(call.func_hash) >> 224
                require not msg.value
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
            else:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if block.timestamp < stor18:
                    revert with 0, 'Not yet unlocked'
                staticcall stor11.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not sub_9b39b65f:
                    call stor11.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                else:
                    if block.timestamp > -604801:
                        revert with 0, 17
                    stor18 = block.timestamp + (168 * 24 * 3600)
                    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    call stor11.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 2 * ext_call.return_data[0] / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0x28bacca4 
        if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return _circulatingSupply
        if unknown_0x1eb25d13(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 100000000 * 10^18
        if unknown_0x206b7db8(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            paymentSplitterAddress = address(arg1)
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if unknown_0x25049036(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_25049036
            require unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return 18
        require not msg.value
        require calldata.size - 4 >= 96
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        if not address(arg1):
            revert with 0, 'Transfer from zero'
        if not address(arg2):
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
            emit Transfer(arg3, address(arg1), address(arg2));
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
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if sub_b40d09e2 <= 0:
                    revert with 0, 'trading not yet enabled'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'Transfer exceeds balance'
                if stor4[address(arg2)]:
                    if sub_b40d09e2 > -21:
                        revert with 0, 17
                    if block.timestamp >= sub_b40d09e2 + 20:
                        if stor11 != address(arg1):
                            if not manualSwap:
                                if not stor13:
                                    stor13 = 1
                                    if liquidityTax > !sub_25049036:
                                        revert with 0, 17
                                    if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                        revert with 0, 17
                                    if liquidityTax + sub_25049036:
                                        if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                            if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                                revert with 0, 17
                                            if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                    revert with 0, 17
                                                if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                                mem[160] = this.address
                                                staticcall stor12.WETH() with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor12)
                                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                            else:
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                    revert with 0, 17
                                                if not liquidityTax + sub_25049036:
                                                    revert with 0, 18
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                    revert with 0, 17
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                                mem[160] = this.address
                                                staticcall stor12.WETH() with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor12)
                                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                    if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                        revert with 0, 17
                                                    if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                        revert with 0, 18
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                    allowance[address(this.address)][stor12].field_255 = 0
                                                    emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                    call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                            call paymentSplitterAddress with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                    stor13 = 0
                        if sub_25049036 > !liquidityTax:
                            revert with 0, 17
                        if arg3 and sellTax > -1 / arg3:
                            revert with 0, 17
                        if arg3 * sellTax and sub_25049036 + liquidityTax > -1 / arg3 * sellTax:
                            revert with 0, 17
                        if arg3 < (sub_25049036 * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6:
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !((sub_25049036 * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6):
                            revert with 0, 17
                        balanceOf[this.address] += (sub_25049036 * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6
                        if balanceOf[address(arg2)] > !(arg3 - ((sub_25049036 * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((sub_25049036 * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6)
                        emit Transfer((arg3 - ((sub_25049036 * arg3 * sellTax) + (liquidityTax * arg3 * sellTax) / 10^6)), address(arg1), address(arg2));
                    else:
                        if block.timestamp < sub_b40d09e2:
                            revert with 0, 17
                        if block.timestamp - sub_b40d09e2 > 0x1b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4e81b4:
                            revert with 0, 17
                        if 200 < (150 * block.timestamp) - (150 * sub_b40d09e2) / 20:
                            revert with 0, 17
                        if stor11 != address(arg1):
                            if not manualSwap:
                                if not stor13:
                                    stor13 = 1
                                    if liquidityTax > !sub_25049036:
                                        revert with 0, 17
                                    if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                        revert with 0, 17
                                    if liquidityTax + sub_25049036:
                                        if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                            if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                                revert with 0, 17
                                            if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                    revert with 0, 17
                                                if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                                mem[160] = this.address
                                                staticcall stor12.WETH() with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor12)
                                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                            else:
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                    revert with 0, 17
                                                if not liquidityTax + sub_25049036:
                                                    revert with 0, 18
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                    revert with 0, 17
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                                mem[160] = this.address
                                                staticcall stor12.WETH() with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor12)
                                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                    if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                        revert with 0, 17
                                                    if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                        revert with 0, 18
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                    allowance[address(this.address)][stor12].field_255 = 0
                                                    emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                    call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                            call paymentSplitterAddress with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                    stor13 = 0
                        if sub_25049036 > !liquidityTax:
                            revert with 0, 17
                        if arg3 and -((150 * block.timestamp) - (150 * sub_b40d09e2) / 20) + 200 > -1 / arg3:
                            revert with 0, 17
                        if (200 * arg3) - ((150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) and sub_25049036 + liquidityTax > -1 / (200 * arg3) - ((150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3):
                            revert with 0, 17
                        if arg3 < (200 * sub_25049036 * arg3) + (200 * liquidityTax * arg3) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) / 10^6:
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !((200 * sub_25049036 * arg3) + (200 * liquidityTax * arg3) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) / 10^6):
                            revert with 0, 17
                        balanceOf[this.address] += (200 * sub_25049036 * arg3) + (200 * liquidityTax * arg3) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) / 10^6
                        if balanceOf[address(arg2)] > !(arg3 - ((200 * sub_25049036 * arg3) + (200 * liquidityTax * arg3) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) / 10^6)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((200 * sub_25049036 * arg3) + (200 * liquidityTax * arg3) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) / 10^6)
                        emit Transfer((arg3 - ((200 * sub_25049036 * arg3) + (200 * liquidityTax * arg3) - (sub_25049036 * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (150 * block.timestamp) - (150 * sub_b40d09e2) / 20 * arg3) / 10^6)), address(arg1), address(arg2));
                else:
                    if not stor4[address(arg1)]:
                        if stor11 != address(arg1):
                            if not manualSwap:
                                if not stor13:
                                    stor13 = 1
                                    if liquidityTax > !sub_25049036:
                                        revert with 0, 17
                                    if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                        revert with 0, 17
                                    if liquidityTax + sub_25049036:
                                        if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                            if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                                revert with 0, 17
                                            if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                    revert with 0, 17
                                                if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                                mem[160] = this.address
                                                staticcall stor12.WETH() with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor12)
                                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                            else:
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                    revert with 0, 17
                                                if not liquidityTax + sub_25049036:
                                                    revert with 0, 18
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                    revert with 0, 17
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                    revert with 0, 17
                                                if not this.address:
                                                    revert with 0, 'Approve from zero'
                                                if not stor12:
                                                    revert with 0, 'Approve to zero'
                                                allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                                mem[160] = this.address
                                                staticcall stor12.WETH() with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                idx = 0
                                                s = ceil32(return_data.size) + 420
                                                t = 160
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(stor12)
                                                call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                    if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                        revert with 0, 17
                                                    if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                        revert with 0, 18
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                    allowance[address(this.address)][stor12].field_255 = 0
                                                    emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                    call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                       value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                         gas gas_remaining wei
                                                        args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                            call paymentSplitterAddress with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining wei
                                    stor13 = 0
                        if sub_25049036 > !liquidityTax:
                            revert with 0, 17
                        if arg3 and sub_8124f7ac > -1 / arg3:
                            revert with 0, 17
                        if arg3 * sub_8124f7ac and sub_25049036 + liquidityTax > -1 / arg3 * sub_8124f7ac:
                            revert with 0, 17
                        if arg3 < (sub_25049036 * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6:
                            revert with 0, 17
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[this.address] > !((sub_25049036 * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6):
                            revert with 0, 17
                        balanceOf[this.address] += (sub_25049036 * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6
                        if balanceOf[address(arg2)] > !(arg3 - ((sub_25049036 * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((sub_25049036 * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6)
                        emit Transfer((arg3 - ((sub_25049036 * arg3 * sub_8124f7ac) + (liquidityTax * arg3 * sub_8124f7ac) / 10^6)), address(arg1), address(arg2));
                    else:
                        if sub_b40d09e2 > -21:
                            revert with 0, 17
                        if block.timestamp >= sub_b40d09e2 + 20:
                            if stor11 != address(arg1):
                                if not manualSwap:
                                    if not stor13:
                                        stor13 = 1
                                        if liquidityTax > !sub_25049036:
                                            revert with 0, 17
                                        if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                            revert with 0, 17
                                        if liquidityTax + sub_25049036:
                                            if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                                    revert with 0, 17
                                                if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                        revert with 0, 17
                                                    if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                    emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                                    mem[160] = this.address
                                                    staticcall stor12.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[192] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor12)
                                                    call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                else:
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                        revert with 0, 17
                                                    if not liquidityTax + sub_25049036:
                                                        revert with 0, 18
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                        revert with 0, 17
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                    emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                                    mem[160] = this.address
                                                    staticcall stor12.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[192] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor12)
                                                    call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                        if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                            revert with 0, 17
                                                        if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                            revert with 0, 18
                                                        if not this.address:
                                                            revert with 0, 'Approve from zero'
                                                        if not stor12:
                                                            revert with 0, 'Approve to zero'
                                                        allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                        allowance[address(this.address)][stor12].field_255 = 0
                                                        emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                        call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                           value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                             gas gas_remaining wei
                                                            args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                call paymentSplitterAddress with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                        stor13 = 0
                            if sub_25049036 > !liquidityTax:
                                revert with 0, 17
                            if arg3 and buyTax > -1 / arg3:
                                revert with 0, 17
                            if arg3 * buyTax and sub_25049036 + liquidityTax > -1 / arg3 * buyTax:
                                revert with 0, 17
                            if arg3 < (sub_25049036 * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6:
                                revert with 0, 17
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[this.address] > !((sub_25049036 * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6):
                                revert with 0, 17
                            balanceOf[this.address] += (sub_25049036 * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6
                            if balanceOf[address(arg2)] > !(arg3 - ((sub_25049036 * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((sub_25049036 * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6)
                            emit Transfer((arg3 - ((sub_25049036 * arg3 * buyTax) + (liquidityTax * arg3 * buyTax) / 10^6)), address(arg1), address(arg2));
                        else:
                            if block.timestamp < sub_b40d09e2:
                                revert with 0, 17
                            if block.timestamp - sub_b40d09e2 > 0x450ed6300450ed6300450ed6300450ed6300450ed6300450ed6300450ed630:
                                revert with 0, 17
                            if 999 < (949 * block.timestamp) - (949 * sub_b40d09e2) / 20:
                                revert with 0, 17
                            if stor11 != address(arg1):
                                if not manualSwap:
                                    if not stor13:
                                        stor13 = 1
                                        if liquidityTax > !sub_25049036:
                                            revert with 0, 17
                                        if balanceOf[stor11] and sub_e52fb9ec > -1 / balanceOf[stor11]:
                                            revert with 0, 17
                                        if liquidityTax + sub_25049036:
                                            if balanceOf[this.address] >= balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                if _circulatingSupply and sub_0eff4c64 > -1 / _circulatingSupply:
                                                    revert with 0, 17
                                                if balanceOf[stor11] > _circulatingSupply * sub_0eff4c64 / 1000:
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 < 0:
                                                        revert with 0, 17
                                                    if 0 > !(balanceOf[stor11] * sub_e52fb9ec / 1000):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                    emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000), this.address, stor12);
                                                    mem[160] = this.address
                                                    staticcall stor12.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[192] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = balanceOf[stor11] * sub_e52fb9ec / 1000
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor12)
                                                    call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args balanceOf[stor11] * sub_e52fb9ec / 1000, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                else:
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 and liquidityTax > -1 / balanceOf[stor11] * sub_e52fb9ec / 1000:
                                                        revert with 0, 17
                                                    if not liquidityTax + sub_25049036:
                                                        revert with 0, 18
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 < balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                        revert with 0, 17
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > !((balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)):
                                                        revert with 0, 17
                                                    if not this.address:
                                                        revert with 0, 'Approve from zero'
                                                    if not stor12:
                                                        revert with 0, 'Approve to zero'
                                                    allowance[address(this.address)][stor12].field_0 = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                    emit Approval(((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)), this.address, stor12);
                                                    mem[160] = this.address
                                                    staticcall stor12.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[192] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036)
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 420
                                                    t = 160
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(stor12)
                                                    call stor12.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    if balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036:
                                                        if False and balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2 > 0:
                                                            revert with 0, 17
                                                        if not (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036):
                                                            revert with 0, 18
                                                        if not this.address:
                                                            revert with 0, 'Approve from zero'
                                                        if not stor12:
                                                            revert with 0, 'Approve to zero'
                                                        allowance[address(this.address)][stor12].field_0 = balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2
                                                        allowance[address(this.address)][stor12].field_255 = 0
                                                        emit Approval((balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2), this.address, stor12);
                                                        call stor12.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                           value 0 / (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036 / 2) + (balanceOf[stor11] * sub_e52fb9ec / 1000) - (balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036) wei
                                                             gas gas_remaining wei
                                                            args this.address, Mask(255, 1, balanceOf[stor11] * sub_e52fb9ec / 1000 * liquidityTax / liquidityTax + sub_25049036), 0, 0, this.address, block.timestamp
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 96
                                                call paymentSplitterAddress with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining wei
                                        stor13 = 0
                            if sub_25049036 > !liquidityTax:
                                revert with 0, 17
                            if arg3 and -((949 * block.timestamp) - (949 * sub_b40d09e2) / 20) + 999 > -1 / arg3:
                                revert with 0, 17
                            if (999 * arg3) - ((949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) and sub_25049036 + liquidityTax > -1 / (999 * arg3) - ((949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3):
                                revert with 0, 17
                            if arg3 < (999 * sub_25049036 * arg3) + (999 * liquidityTax * arg3) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) / 10^6:
                                revert with 0, 17
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[this.address] > !((999 * sub_25049036 * arg3) + (999 * liquidityTax * arg3) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) / 10^6):
                                revert with 0, 17
                            balanceOf[this.address] += (999 * sub_25049036 * arg3) + (999 * liquidityTax * arg3) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) / 10^6
                            if balanceOf[address(arg2)] > !(arg3 - ((999 * sub_25049036 * arg3) + (999 * liquidityTax * arg3) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) / 10^6)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((999 * sub_25049036 * arg3) + (999 * liquidityTax * arg3) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) / 10^6)
                            emit Transfer((arg3 - ((999 * sub_25049036 * arg3) + (999 * liquidityTax * arg3) - (sub_25049036 * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) - (liquidityTax * (949 * block.timestamp) - (949 * sub_b40d09e2) / 20 * arg3) / 10^6)), address(arg1), address(arg2));
        if allowance[address(arg1)][msg.sender].field_0 < arg3:
            revert with 0, 'Transfer > allowance'
        if not address(arg1):
            revert with 0, 'Approve from zero'
        if not msg.sender:
            revert with 0, 'Approve to zero'
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), address(arg1), msg.sender);
    return 1
}



}
