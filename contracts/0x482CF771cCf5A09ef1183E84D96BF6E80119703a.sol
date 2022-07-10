contract main {




// =====================  Runtime code  =====================


const name = 'WAGMI King', 0

const decimals = 9

const symbol = '', 0


address owner;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _marketingFee;
uint256 _liquidityFee;
address _marketingWalletAddress;
uint256 _buyCooldown;
mapping of uint256 stor13;
uint8 stor14;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function _marketingFee() {
    return _marketingFee
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function _liquidityFee() {
    return _liquidityFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function owner() {
    return owner
}

function _buyCooldown() {
    return _buyCooldown
}

function _marketingWallet() {
    return _marketingWalletAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMarketingFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _marketingFee = arg1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 1
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _marketingWalletAddress = arg1
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(arg2)
}

function setMaxBuySellPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    _maxTxAmount = totalSupply * arg1 / 100
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
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if stor6[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor6[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if owner == msg.sender:
        if uniswapV2PairAddress != msg.sender:
            if 10^14 <= balanceOf[this.address]:
                if not stor14:
                    if uniswapV2PairAddress != msg.sender:
                        if owner != msg.sender:
                            if owner != arg1:
                                stor14 = 1
                                if _marketingFee > !_liquidityFee:
                                    revert with 0, 17
                                if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not _marketingFee + _liquidityFee:
                                    revert with 0, 18
                                if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                                    revert with 0, 17
                                mem[96] = 2
                                mem[128] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                allowance[address(this.address)][stor1].field_255 = 0
                                emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                mem[ceil32(return_data.size) + 356] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 388
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 292] = this.address
                                mem[ceil32(return_data.size) + 324] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 192] = 2
                                mem[ceil32(return_data.size) + 224] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 4)
                                allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address]
                                mem[(2 * ceil32(return_data.size)) + 324] = 0
                                mem[(2 * ceil32(return_data.size)) + 356] = 160
                                mem[(2 * ceil32(return_data.size)) + 452] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 484
                                t = ceil32(return_data.size) + 224
                                while idx < mem[ceil32(return_data.size) + 192]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                stor14 = 0
        else:
            if stor13[address(arg1)] > !_buyCooldown:
                revert with 0, 17
            if stor13[address(arg1)] + _buyCooldown >= block.timestamp:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must wait til after coooldown to buy'
            stor13[address(arg1)] = block.timestamp
            if 10^14 <= balanceOf[this.address]:
                if not stor14:
                    if uniswapV2PairAddress != msg.sender:
                        if owner != msg.sender:
                            if owner != arg1:
                                stor14 = 1
                                if _marketingFee > !_liquidityFee:
                                    revert with 0, 17
                                if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not _marketingFee + _liquidityFee:
                                    revert with 0, 18
                                if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                                    revert with 0, 17
                                mem[96] = 2
                                mem[128] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                allowance[address(this.address)][stor1].field_255 = 0
                                emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                mem[ceil32(return_data.size) + 356] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 388
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 292] = this.address
                                mem[ceil32(return_data.size) + 324] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 192] = 2
                                mem[ceil32(return_data.size) + 224] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 4)
                                allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address]
                                mem[(2 * ceil32(return_data.size)) + 324] = 0
                                mem[(2 * ceil32(return_data.size)) + 356] = 160
                                mem[(2 * ceil32(return_data.size)) + 452] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 484
                                t = ceil32(return_data.size) + 224
                                while idx < mem[ceil32(return_data.size) + 192]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 192]) + -mem[64] + 480]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                stor14 = 0
    else:
        if owner == arg1:
            if uniswapV2PairAddress != msg.sender:
                if 10^14 <= balanceOf[this.address]:
                    if not stor14:
                        if uniswapV2PairAddress != msg.sender:
                            if owner != msg.sender:
                                if owner != arg1:
                                    stor14 = 1
                                    if _marketingFee > !_liquidityFee:
                                        revert with 0, 17
                                    if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not _marketingFee + _liquidityFee:
                                        revert with 0, 18
                                    if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                                        revert with 0, 17
                                    mem[96] = 2
                                    mem[128] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                    allowance[address(this.address)][stor1].field_255 = 0
                                    emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                    mem[ceil32(return_data.size) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 292] = this.address
                                    mem[ceil32(return_data.size) + 324] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 192] = 2
                                    mem[ceil32(return_data.size) + 224] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 288
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 4)
                                    allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address]
                                    mem[(2 * ceil32(return_data.size)) + 324] = 0
                                    mem[(2 * ceil32(return_data.size)) + 356] = 160
                                    mem[(2 * ceil32(return_data.size)) + 452] = 2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 484
                                    t = ceil32(return_data.size) + 224
                                    while idx < mem[ceil32(return_data.size) + 192]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 192]) + -mem[64] + 480]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    stor14 = 0
            else:
                if stor13[address(arg1)] > !_buyCooldown:
                    revert with 0, 17
                if stor13[address(arg1)] + _buyCooldown >= block.timestamp:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must wait til after coooldown to buy'
                stor13[address(arg1)] = block.timestamp
                if 10^14 <= balanceOf[this.address]:
                    if not stor14:
                        if uniswapV2PairAddress != msg.sender:
                            if owner != msg.sender:
                                if owner != arg1:
                                    stor14 = 1
                                    if _marketingFee > !_liquidityFee:
                                        revert with 0, 17
                                    if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not _marketingFee + _liquidityFee:
                                        revert with 0, 18
                                    if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                                        revert with 0, 17
                                    mem[96] = 2
                                    mem[128] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                    allowance[address(this.address)][stor1].field_255 = 0
                                    emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                    mem[ceil32(return_data.size) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 292] = this.address
                                    mem[ceil32(return_data.size) + 324] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 192] = 2
                                    mem[ceil32(return_data.size) + 224] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 288
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 4)
                                    allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address]
                                    mem[(2 * ceil32(return_data.size)) + 324] = 0
                                    mem[(2 * ceil32(return_data.size)) + 356] = 160
                                    mem[(2 * ceil32(return_data.size)) + 452] = 2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 484
                                    t = ceil32(return_data.size) + 224
                                    while idx < mem[ceil32(return_data.size) + 192]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    stor14 = 0
        else:
            if arg2 > _maxTxAmount:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
            if uniswapV2PairAddress != msg.sender:
                if 10^14 <= balanceOf[this.address]:
                    if not stor14:
                        if uniswapV2PairAddress != msg.sender:
                            if owner != msg.sender:
                                if owner != arg1:
                                    stor14 = 1
                                    if _marketingFee > !_liquidityFee:
                                        revert with 0, 17
                                    if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not _marketingFee + _liquidityFee:
                                        revert with 0, 18
                                    if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                                        revert with 0, 17
                                    mem[96] = 2
                                    mem[128] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                    allowance[address(this.address)][stor1].field_255 = 0
                                    emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                    mem[ceil32(return_data.size) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 292] = this.address
                                    mem[ceil32(return_data.size) + 324] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 192] = 2
                                    mem[ceil32(return_data.size) + 224] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 288
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 4)
                                    allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address]
                                    mem[(2 * ceil32(return_data.size)) + 324] = 0
                                    mem[(2 * ceil32(return_data.size)) + 356] = 160
                                    mem[(2 * ceil32(return_data.size)) + 452] = 2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 484
                                    t = ceil32(return_data.size) + 224
                                    while idx < mem[ceil32(return_data.size) + 192]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    stor14 = 0
            else:
                if stor13[address(arg1)] > !_buyCooldown:
                    revert with 0, 17
                if stor13[address(arg1)] + _buyCooldown >= block.timestamp:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must wait til after coooldown to buy'
                stor13[address(arg1)] = block.timestamp
                if 10^14 <= balanceOf[this.address]:
                    if not stor14:
                        if uniswapV2PairAddress != msg.sender:
                            if owner != msg.sender:
                                if owner != arg1:
                                    stor14 = 1
                                    if _marketingFee > !_liquidityFee:
                                        revert with 0, 17
                                    if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not _marketingFee + _liquidityFee:
                                        revert with 0, 18
                                    if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                                        revert with 0, 17
                                    mem[96] = 2
                                    mem[128] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                    allowance[address(this.address)][stor1].field_255 = 0
                                    emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                    mem[ceil32(return_data.size) + 356] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 388
                                    t = 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 292] = this.address
                                    mem[ceil32(return_data.size) + 324] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 192] = 2
                                    mem[ceil32(return_data.size) + 224] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 288
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 4)
                                    allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address]
                                    mem[(2 * ceil32(return_data.size)) + 324] = 0
                                    mem[(2 * ceil32(return_data.size)) + 356] = 160
                                    mem[(2 * ceil32(return_data.size)) + 452] = 2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 484
                                    t = ceil32(return_data.size) + 224
                                    while idx < mem[ceil32(return_data.size) + 192]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 192]) + -mem[64] + 480]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    stor14 = 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if stor5[address(msg.sender)]:
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor5[address(arg1)]:
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if arg2 and _marketingFee > -1 / arg2:
                revert with 0, 17
            if arg2 and _liquidityFee > -1 / arg2:
                revert with 0, 17
            if arg2 * _marketingFee / 100 > !(arg2 * _liquidityFee / 100):
                revert with 0, 17
            if balanceOf[this.address] > !((arg2 * _marketingFee / 100) + (arg2 * _liquidityFee / 100)):
                revert with 0, 17
            balanceOf[this.address] = balanceOf[this.address] + (arg2 * _marketingFee / 100) + (arg2 * _liquidityFee / 100)
            if arg2 * _marketingFee / 100 > !(arg2 * _liquidityFee / 100):
                revert with 0, 17
            emit Transfer(((arg2 * _marketingFee / 100) + (arg2 * _liquidityFee / 100)), msg.sender, this.address);
            if arg2 < arg2 * _marketingFee / 100:
                revert with 0, 17
            if arg2 - (arg2 * _marketingFee / 100) < arg2 * _liquidityFee / 100:
                revert with 0, 17
            if balanceOf[address(arg1)] > !(arg2 - (arg2 * _marketingFee / 100) - (arg2 * _liquidityFee / 100)):
                revert with 0, 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _marketingFee / 100) - (arg2 * _liquidityFee / 100)
            emit Transfer((arg2 - (arg2 * _marketingFee / 100) - (arg2 * _liquidityFee / 100)), msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x5d098b38(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x945945d3(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x715018a6(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x5d098b38(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    _marketingWalletAddress = address(arg1)
                if unknown_0x6bc87c3a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return _liquidityFee
                require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
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
                if unknown_0x7d1db4a5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return _maxTxAmount
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                require unknown_0x8ee88c53(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                _liquidityFee = arg1
        if unknown_0xa9059cbb(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x945945d3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return _buyCooldown
            if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return '', 0
            if unknown_0x962dfc75(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return _marketingWalletAddress
            require unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if allowance[msg.sender][address(arg1)].field_0 < arg2:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
            emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, address(arg1));
        else:
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    return allowance[address(arg1)][address(arg2)].field_0
                if unknown_0xea2f0b37(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor5[address(arg1)] = 0
                else:
                    require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(arg1));
                    owner = address(arg1)
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not address(arg1):
                revert with 0, 'ERC20: transfer to the zero address'
            if arg2 <= 0:
                revert with 0, 'Transfer amount must be greater than zero'
            if stor6[address(msg.sender)]:
                revert with 0, 'Blacklisted address'
            if stor6[address(arg1)]:
                revert with 0, 'Blacklisted address'
            if owner == msg.sender:
                if uniswapV2PairAddress == msg.sender:
                    if stor13[address(arg1)] > !_buyCooldown:
                        revert with 0, 17
                    if stor13[address(arg1)] + _buyCooldown >= block.timestamp:
                        revert with 0, 'Must wait til after coooldown to buy'
                    stor13[address(arg1)] = block.timestamp
                if 10^14 <= balanceOf[this.address]:
                    if not stor14:
                        if uniswapV2PairAddress != msg.sender:
                            if owner != msg.sender:
                                if owner != address(arg1):
                                    stor14 = 1
                                    if _marketingFee > !_liquidityFee:
                                        revert with 0, 17
                                    if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                                        revert with 0, 17
                                    if not _marketingFee + _liquidityFee:
                                        revert with 0, 18
                                    if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                                        revert with 0, 17
                                    mem[128] = 2
                                    mem[160] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[192] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                    allowance[address(this.address)][stor1].field_255 = 0
                                    emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                    mem[ceil32(return_data.size) + 388] = 2
                                    idx = 0
                                    s = ceil32(return_data.size) + 420
                                    t = 160
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 324] = this.address
                                    mem[ceil32(return_data.size) + 356] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 224] = 2
                                    mem[ceil32(return_data.size) + 256] = this.address
                                    require ext_code.size(uniswapV2RouterAddress)
                                    staticcall uniswapV2RouterAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 320
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not uniswapV2RouterAddress:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    mem[0] = uniswapV2RouterAddress
                                    mem[32] = sha3(address(this.address), 4)
                                    allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                                    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                    mem[(2 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 324] = balanceOf[this.address]
                                    mem[(2 * ceil32(return_data.size)) + 356] = 0
                                    mem[(2 * ceil32(return_data.size)) + 388] = 160
                                    mem[(2 * ceil32(return_data.size)) + 484] = 2
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 516
                                    t = ceil32(return_data.size) + 256
                                    while idx < mem[ceil32(return_data.size) + 224]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 420] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp
                                    require ext_code.size(uniswapV2RouterAddress)
                                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 224]) + -mem[64] + 512]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    stor14 = 0
            else:
                if owner == address(arg1):
                    if uniswapV2PairAddress != msg.sender:
                        if 10^14 <= balanceOf[this.address]:
                            if not stor14:
                                if uniswapV2PairAddress != msg.sender:
                                    if owner != msg.sender:
                                        if owner != address(arg1):
                                            stor14 = 1
                                            if _marketingFee > !_liquidityFee:
                                                revert with 0, 17
                                            if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                                                revert with 0, 17
                                            if not _marketingFee + _liquidityFee:
                                                revert with 0, 18
                                            if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                                                revert with 0, 17
                                            mem[128] = 2
                                            mem[160] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                            allowance[address(this.address)][stor1].field_255 = 0
                                            emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                                            mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                            mem[ceil32(return_data.size) + 388] = 2
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(return_data.size) + 324] = this.address
                                            mem[ceil32(return_data.size) + 356] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            mem[ceil32(return_data.size) + 224] = 2
                                            mem[ceil32(return_data.size) + 256] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (2 * ceil32(return_data.size)) + 320
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 4)
                                            allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                            mem[(2 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 324] = balanceOf[this.address]
                                            mem[(2 * ceil32(return_data.size)) + 356] = 0
                                            mem[(2 * ceil32(return_data.size)) + 388] = 160
                                            mem[(2 * ceil32(return_data.size)) + 484] = 2
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + 516
                                            t = ceil32(return_data.size) + 256
                                            while idx < mem[ceil32(return_data.size) + 224]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + 420] = this.address
                                            mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 224]) + -mem[64] + 512]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            stor14 = 0
                    else:
                        if stor13[address(arg1)] > !_buyCooldown:
                            revert with 0, 17
                        if stor13[address(arg1)] + _buyCooldown >= block.timestamp:
                            revert with 0, 'Must wait til after coooldown to buy'
                        stor13[address(arg1)] = block.timestamp
                        if 10^14 <= balanceOf[this.address]:
                            if not stor14:
                                if uniswapV2PairAddress != msg.sender:
                                    if owner != msg.sender:
                                        if owner != address(arg1):
                                            stor14 = 1
                                            if _marketingFee > !_liquidityFee:
                                                revert with 0, 17
                                            if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                                                revert with 0, 17
                                            if not _marketingFee + _liquidityFee:
                                                revert with 0, 18
                                            if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                                                revert with 0, 17
                                            mem[128] = 2
                                            mem[160] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                            allowance[address(this.address)][stor1].field_255 = 0
                                            emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                                            mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                            mem[ceil32(return_data.size) + 388] = 2
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 160
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(return_data.size) + 324] = this.address
                                            mem[ceil32(return_data.size) + 356] = block.timestamp
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            mem[ceil32(return_data.size) + 224] = 2
                                            mem[ceil32(return_data.size) + 256] = this.address
                                            require ext_code.size(uniswapV2RouterAddress)
                                            staticcall uniswapV2RouterAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (2 * ceil32(return_data.size)) + 320
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not uniswapV2RouterAddress:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            mem[0] = uniswapV2RouterAddress
                                            mem[32] = sha3(address(this.address), 4)
                                            allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                            mem[(2 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 324] = balanceOf[this.address]
                                            mem[(2 * ceil32(return_data.size)) + 356] = 0
                                            mem[(2 * ceil32(return_data.size)) + 388] = 160
                                            mem[(2 * ceil32(return_data.size)) + 484] = 2
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + 516
                                            t = ceil32(return_data.size) + 256
                                            while idx < mem[ceil32(return_data.size) + 224]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(uniswapV2RouterAddress)
                                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 484 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            stor14 = 0
                else:
                    if arg2 > _maxTxAmount:
                        revert with 0, 'Transfer amount exceeds the maxTxAmount.'
                    if uniswapV2PairAddress == msg.sender:
                        if stor13[address(arg1)] > !_buyCooldown:
                            revert with 0, 17
                        if stor13[address(arg1)] + _buyCooldown >= block.timestamp:
                            revert with 0, 'Must wait til after coooldown to buy'
                        stor13[address(arg1)] = block.timestamp
                    if 10^14 <= balanceOf[this.address]:
                        if not stor14:
                            if uniswapV2PairAddress != msg.sender:
                                if owner != msg.sender:
                                    if owner != address(arg1):
                                        stor14 = 1
                                        if _marketingFee > !_liquidityFee:
                                            revert with 0, 17
                                        if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                                            revert with 0, 17
                                        if not _marketingFee + _liquidityFee:
                                            revert with 0, 18
                                        if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                                            revert with 0, 17
                                        mem[128] = 2
                                        mem[160] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                        allowance[address(this.address)][stor1].field_255 = 0
                                        emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                                        mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 228] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                        mem[ceil32(return_data.size) + 388] = 2
                                        idx = 0
                                        s = ceil32(return_data.size) + 420
                                        t = 160
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(return_data.size) + 324] = this.address
                                        mem[ceil32(return_data.size) + 356] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        mem[ceil32(return_data.size) + 224] = 2
                                        mem[ceil32(return_data.size) + 256] = this.address
                                        require ext_code.size(uniswapV2RouterAddress)
                                        staticcall uniswapV2RouterAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 320
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not uniswapV2RouterAddress:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        mem[0] = uniswapV2RouterAddress
                                        mem[32] = sha3(address(this.address), 4)
                                        allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                        mem[(2 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 324] = balanceOf[this.address]
                                        mem[(2 * ceil32(return_data.size)) + 356] = 0
                                        mem[(2 * ceil32(return_data.size)) + 388] = 160
                                        mem[(2 * ceil32(return_data.size)) + 484] = 2
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 516
                                        t = ceil32(return_data.size) + 256
                                        while idx < mem[ceil32(return_data.size) + 224]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 420] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp
                                        require ext_code.size(uniswapV2RouterAddress)
                                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 224]) + -mem[64] + 512]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        stor14 = 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if stor5[address(msg.sender)]:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, address(arg1));
            else:
                if stor5[address(arg1)]:
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if arg2 and _marketingFee > -1 / arg2:
                        revert with 0, 17
                    if arg2 and _liquidityFee > -1 / arg2:
                        revert with 0, 17
                    if arg2 * _marketingFee / 100 > !(arg2 * _liquidityFee / 100):
                        revert with 0, 17
                    if balanceOf[this.address] > !((arg2 * _marketingFee / 100) + (arg2 * _liquidityFee / 100)):
                        revert with 0, 17
                    balanceOf[this.address] = balanceOf[this.address] + (arg2 * _marketingFee / 100) + (arg2 * _liquidityFee / 100)
                    if arg2 * _marketingFee / 100 > !(arg2 * _liquidityFee / 100):
                        revert with 0, 17
                    emit Transfer(((arg2 * _marketingFee / 100) + (arg2 * _liquidityFee / 100)), msg.sender, this.address);
                    if arg2 < arg2 * _marketingFee / 100:
                        revert with 0, 17
                    if arg2 - (arg2 * _marketingFee / 100) < arg2 * _liquidityFee / 100:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * _marketingFee / 100) - (arg2 * _liquidityFee / 100)):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _marketingFee / 100) - (arg2 * _liquidityFee / 100)
                    emit Transfer((arg2 - (arg2 * _marketingFee / 100) - (arg2 * _liquidityFee / 100)), msg.sender, address(arg1));
        return 1
    if unknown_0x23b872dd(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x1694505e(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x1694505e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return uniswapV2RouterAddress
            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalSupply
            if uint32(call.func_hash) >> 224 != unknown_0x1cdd3be3(?????):
                require unknown_0x22976e0d(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return _marketingFee
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            return bool(stor6[arg1])
        if name() == uint32(call.func_hash) >> 224:
            require not msg.value
            return 'WAGMI King', 0
        if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
            require unknown_0x1382abc5(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if totalSupply and arg1 > -1 / totalSupply:
                revert with 0, 17
            _maxTxAmount = totalSupply * arg1 / 100
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if not msg.sender:
            revert with 0, 'ERC20: approve from the zero address'
        if not address(arg1):
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(msg.sender)][address(arg1)].field_0 = arg2
        emit Approval(arg2, msg.sender, address(arg1));
        return 1
    if unknown_0x455a4396(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x455a4396(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            require arg2 == bool(arg2)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            stor6[address(arg1)] = uint8(bool(arg2))
        if unknown_0x457c194c(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            _marketingFee = arg1
        if unknown_0x49bd5a5e(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return uniswapV2PairAddress
        require unknown_0x5342acb4(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        return bool(stor5[address(arg1)])
    if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
        if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 9
        if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
            require unknown_0x437823ec(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            stor5[address(arg1)] = 1
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if allowance[msg.sender][address(arg1)].field_0 > !arg2:
            revert with 0, 17
        if not msg.sender:
            revert with 0, 'ERC20: approve from the zero address'
        if not address(arg1):
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
        emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, address(arg1));
        return 1
    require not msg.value
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not address(arg1):
        revert with 0, 'ERC20: transfer from the zero address'
    if not address(arg2):
        revert with 0, 'ERC20: transfer to the zero address'
    if arg3 <= 0:
        revert with 0, 'Transfer amount must be greater than zero'
    if stor6[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor6[address(arg2)]:
        revert with 0, 'Blacklisted address'
    if owner == address(arg1):
        if uniswapV2PairAddress == address(arg1):
            if stor13[address(arg2)] > !_buyCooldown:
                revert with 0, 17
            if stor13[address(arg2)] + _buyCooldown >= block.timestamp:
                revert with 0, 'Must wait til after coooldown to buy'
            stor13[address(arg2)] = block.timestamp
    else:
        if owner == address(arg2):
            if uniswapV2PairAddress == address(arg1):
                if stor13[address(arg2)] > !_buyCooldown:
                    revert with 0, 17
                if stor13[address(arg2)] + _buyCooldown >= block.timestamp:
                    revert with 0, 'Must wait til after coooldown to buy'
                stor13[address(arg2)] = block.timestamp
            if 10^14 <= balanceOf[this.address]:
                if not stor14:
                    if uniswapV2PairAddress != address(arg1):
                        if owner != address(arg1):
                            if owner != address(arg2):
                                stor14 = 1
                                if _marketingFee > !_liquidityFee:
                                    revert with 0, 17
                                if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not _marketingFee + _liquidityFee:
                                    revert with 0, 18
                                if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                                    revert with 0, 17
                                mem[128] = 2
                                mem[160] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                allowance[address(this.address)][stor1].field_255 = 0
                                emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                mem[ceil32(return_data.size) + 388] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 420
                                t = 160
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 324] = this.address
                                mem[ceil32(return_data.size) + 356] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 224] = 2
                                mem[ceil32(return_data.size) + 256] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 320
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 4)
                                allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 324] = balanceOf[this.address]
                                mem[(2 * ceil32(return_data.size)) + 356] = 0
                                mem[(2 * ceil32(return_data.size)) + 388] = 160
                                mem[(2 * ceil32(return_data.size)) + 484] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 516
                                t = ceil32(return_data.size) + 256
                                while idx < mem[ceil32(return_data.size) + 224]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 420] = this.address
                                mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 224]) + -mem[64] + 512]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                stor14 = 0
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 17
            balanceOf[address(arg1)] -= arg3
            if stor5[address(arg1)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if stor5[address(arg2)]:
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, address(arg1), address(arg2));
                else:
                    if arg3 and _marketingFee > -1 / arg3:
                        revert with 0, 17
                    if arg3 and _liquidityFee > -1 / arg3:
                        revert with 0, 17
                    if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                        revert with 0, 17
                    if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                        revert with 0, 17
                    balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                    if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                        revert with 0, 17
                    emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), address(arg1), this.address);
                    if arg3 < arg3 * _marketingFee / 100:
                        revert with 0, 17
                    if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                        revert with 0, 17
                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                    emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), address(arg1), address(arg2));
            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                revert with 0, 17
            if not address(arg1):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
            emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), address(arg1), msg.sender);
            return 1
        if arg3 > _maxTxAmount:
            revert with 0, 'Transfer amount exceeds the maxTxAmount.'
        if uniswapV2PairAddress != address(arg1):
            if 10^14 <= balanceOf[this.address]:
                if not stor14:
                    if uniswapV2PairAddress != address(arg1):
                        if owner != address(arg1):
                            if owner != address(arg2):
                                stor14 = 1
                                if _marketingFee > !_liquidityFee:
                                    revert with 0, 17
                                if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not _marketingFee + _liquidityFee:
                                    revert with 0, 18
                                if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                                    revert with 0, 17
                                mem[128] = 2
                                mem[160] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                allowance[address(this.address)][stor1].field_255 = 0
                                emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                mem[ceil32(return_data.size) + 388] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 420
                                t = 160
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 324] = this.address
                                mem[ceil32(return_data.size) + 356] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 224] = 2
                                mem[ceil32(return_data.size) + 256] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 320
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 4)
                                allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 324] = balanceOf[this.address]
                                mem[(2 * ceil32(return_data.size)) + 356] = 0
                                mem[(2 * ceil32(return_data.size)) + 388] = 160
                                mem[(2 * ceil32(return_data.size)) + 484] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 516
                                t = ceil32(return_data.size) + 256
                                while idx < mem[ceil32(return_data.size) + 224]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 420] = this.address
                                mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 224]) + -mem[64] + 512]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                stor14 = 0
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 17
            balanceOf[address(arg1)] -= arg3
            if stor5[address(arg1)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if stor5[address(arg2)]:
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, address(arg1), address(arg2));
                else:
                    if arg3 and _marketingFee > -1 / arg3:
                        revert with 0, 17
                    if arg3 and _liquidityFee > -1 / arg3:
                        revert with 0, 17
                    if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                        revert with 0, 17
                    if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                        revert with 0, 17
                    balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                    if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                        revert with 0, 17
                    emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), address(arg1), this.address);
                    if arg3 < arg3 * _marketingFee / 100:
                        revert with 0, 17
                    if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                        revert with 0, 17
                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                    emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), address(arg1), address(arg2));
            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                revert with 0, 17
            if not address(arg1):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
            emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), address(arg1), msg.sender);
            return 1
        if stor13[address(arg2)] > !_buyCooldown:
            revert with 0, 17
        if stor13[address(arg2)] + _buyCooldown >= block.timestamp:
            revert with 0, 'Must wait til after coooldown to buy'
        stor13[address(arg2)] = block.timestamp
    if 10^14 > balanceOf[this.address]:
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if stor5[address(arg1)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, address(arg1), address(arg2));
        else:
            if stor5[address(arg2)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if arg3 and _marketingFee > -1 / arg3:
                    revert with 0, 17
                if arg3 and _liquidityFee > -1 / arg3:
                    revert with 0, 17
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), address(arg1), this.address);
                if arg3 < arg3 * _marketingFee / 100:
                    revert with 0, 17
                if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), address(arg1), address(arg2));
        if allowance[address(arg1)][msg.sender].field_0 < arg3:
            revert with 0, 17
        if not address(arg1):
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), address(arg1), msg.sender);
        return 1
    if stor14:
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if stor5[address(arg1)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, address(arg1), address(arg2));
        else:
            if stor5[address(arg2)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if arg3 and _marketingFee > -1 / arg3:
                    revert with 0, 17
                if arg3 and _liquidityFee > -1 / arg3:
                    revert with 0, 17
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), address(arg1), this.address);
                if arg3 < arg3 * _marketingFee / 100:
                    revert with 0, 17
                if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), address(arg1), address(arg2));
        if allowance[address(arg1)][msg.sender].field_0 < arg3:
            revert with 0, 17
        if not address(arg1):
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), address(arg1), msg.sender);
        return 1
    if uniswapV2PairAddress == address(arg1):
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if stor5[address(arg1)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, address(arg1), address(arg2));
        else:
            if stor5[address(arg2)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if arg3 and _marketingFee > -1 / arg3:
                    revert with 0, 17
                if arg3 and _liquidityFee > -1 / arg3:
                    revert with 0, 17
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), address(arg1), this.address);
                if arg3 < arg3 * _marketingFee / 100:
                    revert with 0, 17
                if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), address(arg1), address(arg2));
        if allowance[address(arg1)][msg.sender].field_0 < arg3:
            revert with 0, 17
        if not address(arg1):
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), address(arg1), msg.sender);
        return 1
    if owner == address(arg1):
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if stor5[address(arg1)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, address(arg1), address(arg2));
        else:
            if stor5[address(arg2)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if arg3 and _marketingFee > -1 / arg3:
                    revert with 0, 17
                if arg3 and _liquidityFee > -1 / arg3:
                    revert with 0, 17
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), address(arg1), this.address);
                if arg3 < arg3 * _marketingFee / 100:
                    revert with 0, 17
                if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), address(arg1), address(arg2));
        if allowance[address(arg1)][msg.sender].field_0 < arg3:
            revert with 0, 17
        if not address(arg1):
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), address(arg1), msg.sender);
        return 1
    if owner == address(arg2):
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if stor5[address(arg1)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, address(arg1), address(arg2));
        else:
            if stor5[address(arg2)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if arg3 and _marketingFee > -1 / arg3:
                    revert with 0, 17
                if arg3 and _liquidityFee > -1 / arg3:
                    revert with 0, 17
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), address(arg1), this.address);
                if arg3 < arg3 * _marketingFee / 100:
                    revert with 0, 17
                if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), address(arg1), address(arg2));
        if allowance[address(arg1)][msg.sender].field_0 < arg3:
            revert with 0, 17
        if not address(arg1):
            revert with 0, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), address(arg1), msg.sender);
        return 1
    stor14 = 1
    if _marketingFee > !_liquidityFee:
        revert with 0, 17
    if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
        revert with 0, 17
    if not _marketingFee + _liquidityFee:
        revert with 0, 18
    if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
        revert with 0, 17
    mem[128] = 2
    mem[160] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[192] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
    allowance[address(this.address)][stor1].field_255 = 0
    emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
    mem[ceil32(return_data.size) + 388] = 2
    idx = 0
    s = ceil32(return_data.size) + 420
    t = 160
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 324] = this.address
    mem[ceil32(return_data.size) + 356] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    mem[ceil32(return_data.size) + 224] = 2
    mem[ceil32(return_data.size) + 256] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    mem[0] = uniswapV2RouterAddress
    mem[32] = sha3(address(this.address), 4)
    allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
    mem[(2 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 324] = balanceOf[this.address]
    mem[(2 * ceil32(return_data.size)) + 356] = 0
    mem[(2 * ceil32(return_data.size)) + 388] = 160
    mem[(2 * ceil32(return_data.size)) + 484] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 516
    t = ceil32(return_data.size) + 256
    while idx < mem[ceil32(return_data.size) + 224]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 420] = this.address
    mem[(2 * ceil32(return_data.size)) + 452] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 484 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    stor14 = 0
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if stor5[address(arg1)]:
        if balanceOf[address(arg2)] > !arg3:
            revert with 0, 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, address(arg1), address(arg2));
    else:
        if stor5[address(arg2)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, address(arg1), address(arg2));
        else:
            if arg3 and _marketingFee > -1 / arg3:
                revert with 0, 17
            if arg3 and _liquidityFee > -1 / arg3:
                revert with 0, 17
            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                revert with 0, 17
            if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                revert with 0, 17
            balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                revert with 0, 17
            emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), address(arg1), this.address);
            if arg3 < arg3 * _marketingFee / 100:
                revert with 0, 17
            if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                revert with 0, 17
            if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                revert with 0, 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
            emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), address(arg1), address(arg2));
    if allowance[address(arg1)][msg.sender].field_0 < arg3:
        revert with 0, 17
    if not address(arg1):
        mem[(2 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 324] = 32
        mem[(2 * ceil32(return_data.size)) + 356] = 36
        mem[(2 * ceil32(return_data.size)) + 388] = 'ERC20: approve from the zero add'
        mem[(2 * ceil32(return_data.size)) + 420] = 0x7265737300000000000000000000000000000000000000000000000000000000
    else:
        if msg.sender:
            allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
            emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), address(arg1), msg.sender);
            return 1
        mem[(2 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 324] = 32
        mem[(2 * ceil32(return_data.size)) + 356] = 34
        mem[(2 * ceil32(return_data.size)) + 388] = 'ERC20: approve to the zero addre'
        mem[(2 * ceil32(return_data.size)) + 420] = 0x7373000000000000000000000000000000000000000000000000000000000000
    revert with memory
      from (2 * ceil32(return_data.size)) + 320
       len ceil32(return_data.size) + 132
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if stor6[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor6[address(arg2)]:
        revert with 0, 'Blacklisted address'
    if owner != arg1:
        if owner != arg2:
            if arg3 > _maxTxAmount:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
            if uniswapV2PairAddress != arg1:
                if 10^14 > balanceOf[this.address]:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if stor5[address(arg1)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor5[address(arg2)]:
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and _marketingFee > -1 / arg3:
                                revert with 0, 17
                            if arg3 and _liquidityFee > -1 / arg3:
                                revert with 0, 17
                            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                revert with 0, 17
                            if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                                revert with 0, 17
                            balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                revert with 0, 17
                            emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                            if arg3 < arg3 * _marketingFee / 100:
                                revert with 0, 17
                            if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                            emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                    emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                    return 1
                if stor14:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if stor5[address(arg1)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor5[address(arg2)]:
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and _marketingFee > -1 / arg3:
                                revert with 0, 17
                            if arg3 and _liquidityFee > -1 / arg3:
                                revert with 0, 17
                            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                revert with 0, 17
                            if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                                revert with 0, 17
                            balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                revert with 0, 17
                            emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                            if arg3 < arg3 * _marketingFee / 100:
                                revert with 0, 17
                            if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                            emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                    emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                    return 1
                if uniswapV2PairAddress == arg1:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if stor5[address(arg1)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor5[address(arg2)]:
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and _marketingFee > -1 / arg3:
                                revert with 0, 17
                            if arg3 and _liquidityFee > -1 / arg3:
                                revert with 0, 17
                            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                revert with 0, 17
                            if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                                revert with 0, 17
                            balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                revert with 0, 17
                            emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                            if arg3 < arg3 * _marketingFee / 100:
                                revert with 0, 17
                            if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                            emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                    emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                    return 1
                if owner == arg1:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if stor5[address(arg1)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor5[address(arg2)]:
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and _marketingFee > -1 / arg3:
                                revert with 0, 17
                            if arg3 and _liquidityFee > -1 / arg3:
                                revert with 0, 17
                            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                revert with 0, 17
                            if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                                revert with 0, 17
                            balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                revert with 0, 17
                            emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                            if arg3 < arg3 * _marketingFee / 100:
                                revert with 0, 17
                            if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                            emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                    emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                    return 1
                if owner == arg2:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if stor5[address(arg1)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor5[address(arg2)]:
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and _marketingFee > -1 / arg3:
                                revert with 0, 17
                            if arg3 and _liquidityFee > -1 / arg3:
                                revert with 0, 17
                            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                revert with 0, 17
                            if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                                revert with 0, 17
                            balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                revert with 0, 17
                            emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                            if arg3 < arg3 * _marketingFee / 100:
                                revert with 0, 17
                            if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                            emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                    emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                    return 1
                stor14 = 1
                if _marketingFee > !_liquidityFee:
                    revert with 0, 17
                if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                    revert with 0, 17
                if not _marketingFee + _liquidityFee:
                    revert with 0, 18
                if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                    revert with 0, 17
                mem[96] = 2
                mem[128] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                allowance[address(this.address)][stor1].field_255 = 0
                emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                mem[ceil32(return_data.size) + 356] = 2
                idx = 0
                s = ceil32(return_data.size) + 388
                t = 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 292] = this.address
                mem[ceil32(return_data.size) + 324] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                mem[ceil32(return_data.size) + 192] = 2
                mem[ceil32(return_data.size) + 224] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 288
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 4)
                allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address]
                mem[(2 * ceil32(return_data.size)) + 324] = 0
                mem[(2 * ceil32(return_data.size)) + 356] = 160
                mem[(2 * ceil32(return_data.size)) + 452] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 484
                t = ceil32(return_data.size) + 224
                while idx < mem[ceil32(return_data.size) + 192]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 388] = this.address
                mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                stor14 = 0
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if stor5[address(arg1)]:
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor5[address(arg2)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg3 and _marketingFee > -1 / arg3:
                            revert with 0, 17
                        if arg3 and _liquidityFee > -1 / arg3:
                            revert with 0, 17
                        if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                            revert with 0, 17
                        if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                            revert with 0, 17
                        balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                        if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                            revert with 0, 17
                        emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                        if arg3 < arg3 * _marketingFee / 100:
                            revert with 0, 17
                        if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                        emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0, 17
                if not arg1:
                    mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 292] = 32
                    mem[(2 * ceil32(return_data.size)) + 324] = 36
                    mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve from the zero add'
                    mem[(2 * ceil32(return_data.size)) + 388] = 0x7265737300000000000000000000000000000000000000000000000000000000
                else:
                    if msg.sender:
                        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
                        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
                        return 1
                    mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 292] = 32
                    mem[(2 * ceil32(return_data.size)) + 324] = 34
                    mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve to the zero addre'
                    mem[(2 * ceil32(return_data.size)) + 388] = 0x7373000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (2 * ceil32(return_data.size)) + 288
                   len ceil32(return_data.size) + 132
            if stor13[address(arg2)] > !_buyCooldown:
                revert with 0, 17
            if stor13[address(arg2)] + _buyCooldown >= block.timestamp:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must wait til after coooldown to buy'
            stor13[address(arg2)] = block.timestamp
            if 10^14 > balanceOf[this.address]:
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if stor5[address(arg1)]:
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor5[address(arg2)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg3 and _marketingFee > -1 / arg3:
                            revert with 0, 17
                        if arg3 and _liquidityFee > -1 / arg3:
                            revert with 0, 17
                        if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                            revert with 0, 17
                        if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                            revert with 0, 17
                        balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                        if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                            revert with 0, 17
                        emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                        if arg3 < arg3 * _marketingFee / 100:
                            revert with 0, 17
                        if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                        emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0, 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if stor14:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if stor5[address(arg1)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor5[address(arg2)]:
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and _marketingFee > -1 / arg3:
                                revert with 0, 17
                            if arg3 and _liquidityFee > -1 / arg3:
                                revert with 0, 17
                            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                revert with 0, 17
                            if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                                revert with 0, 17
                            balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                revert with 0, 17
                            emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                            if arg3 < arg3 * _marketingFee / 100:
                                revert with 0, 17
                            if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                            emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if uniswapV2PairAddress == arg1:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if stor5[address(arg1)]:
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor5[address(arg2)]:
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and _marketingFee > -1 / arg3:
                                    revert with 0, 17
                                if arg3 and _liquidityFee > -1 / arg3:
                                    revert with 0, 17
                                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                    revert with 0, 17
                                if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                                    revert with 0, 17
                                balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                    revert with 0, 17
                                emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                                if arg3 < arg3 * _marketingFee / 100:
                                    revert with 0, 17
                                if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                                    revert with 0, 17
                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                                    revert with 0, 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                                emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                        if allowance[address(arg1)][msg.sender].field_0 < arg3:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if owner == arg1:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= arg3
                            if stor5[address(arg1)]:
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor5[address(arg2)]:
                                    if balanceOf[address(arg2)] > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and _marketingFee > -1 / arg3:
                                        revert with 0, 17
                                    if arg3 and _liquidityFee > -1 / arg3:
                                        revert with 0, 17
                                    if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                                        revert with 0, 17
                                    balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                                    if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                        revert with 0, 17
                                    emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                                    if arg3 < arg3 * _marketingFee / 100:
                                        revert with 0, 17
                                    if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                                    emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                revert with 0, 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            if owner == arg2:
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= arg3
                                if stor5[address(arg1)]:
                                    if balanceOf[address(arg2)] > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor5[address(arg2)]:
                                        if balanceOf[address(arg2)] > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and _marketingFee > -1 / arg3:
                                            revert with 0, 17
                                        if arg3 and _liquidityFee > -1 / arg3:
                                            revert with 0, 17
                                        if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                                            revert with 0, 17
                                        balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                                        if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                            revert with 0, 17
                                        emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                                        if arg3 < arg3 * _marketingFee / 100:
                                            revert with 0, 17
                                        if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                                        emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                            else:
                                stor14 = 1
                                if _marketingFee > !_liquidityFee:
                                    revert with 0, 17
                                if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                                    revert with 0, 17
                                if not _marketingFee + _liquidityFee:
                                    revert with 0, 18
                                if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                                    revert with 0, 17
                                mem[96] = 2
                                mem[128] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                allowance[address(this.address)][stor1].field_255 = 0
                                emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 196] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                                mem[ceil32(return_data.size) + 356] = 2
                                idx = 0
                                s = ceil32(return_data.size) + 388
                                t = 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 292] = this.address
                                mem[ceil32(return_data.size) + 324] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 192] = 2
                                mem[ceil32(return_data.size) + 224] = this.address
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'ERC20: approve to the zero address'
                                mem[0] = uniswapV2RouterAddress
                                mem[32] = sha3(address(this.address), 4)
                                allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                                emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                                mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address]
                                mem[(2 * ceil32(return_data.size)) + 324] = 0
                                mem[(2 * ceil32(return_data.size)) + 356] = 160
                                mem[(2 * ceil32(return_data.size)) + 452] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 484
                                t = ceil32(return_data.size) + 224
                                while idx < mem[ceil32(return_data.size) + 192]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 388] = this.address
                                mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 192]) + -mem[64] + 480]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                stor14 = 0
                                if balanceOf[address(arg1)] < arg3:
                                    revert with 0, 17
                                balanceOf[address(arg1)] -= arg3
                                if stor5[address(arg1)]:
                                    if balanceOf[address(arg2)] > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if stor5[address(arg2)]:
                                        if balanceOf[address(arg2)] > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)] += arg3
                                        emit Transfer(arg3, arg1, arg2);
                                    else:
                                        if arg3 and _marketingFee > -1 / arg3:
                                            revert with 0, 17
                                        if arg3 and _liquidityFee > -1 / arg3:
                                            revert with 0, 17
                                        if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                                            revert with 0, 17
                                        balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                                        if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                            revert with 0, 17
                                        emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                                        if arg3 < arg3 * _marketingFee / 100:
                                            revert with 0, 17
                                        if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                                        emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                    revert with 0, 17
                                if not arg1:
                                    revert with 0, 'ERC20: approve from the zero address'
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address'
            ('bool', 'msg.sender')
            allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
            emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
            return 1
    if uniswapV2PairAddress != arg1:
        if 10^14 > balanceOf[this.address]:
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 17
            balanceOf[address(arg1)] -= arg3
            if stor5[address(arg1)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if stor5[address(arg2)]:
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg3 and _marketingFee > -1 / arg3:
                        revert with 0, 17
                    if arg3 and _liquidityFee > -1 / arg3:
                        revert with 0, 17
                    if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                        revert with 0, 17
                    if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                        revert with 0, 17
                    balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                    if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                        revert with 0, 17
                    emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                    if arg3 < arg3 * _marketingFee / 100:
                        revert with 0, 17
                    if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                        revert with 0, 17
                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                        revert with 0, 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                    emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                revert with 0, 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if stor14:
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if stor5[address(arg1)]:
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if stor5[address(arg2)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if arg3 and _marketingFee > -1 / arg3:
                            revert with 0, 17
                        if arg3 and _liquidityFee > -1 / arg3:
                            revert with 0, 17
                        if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                            revert with 0, 17
                        if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                            revert with 0, 17
                        balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                        if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                            revert with 0, 17
                        emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                        if arg3 < arg3 * _marketingFee / 100:
                            revert with 0, 17
                        if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                        emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                if allowance[address(arg1)][msg.sender].field_0 < arg3:
                    revert with 0, 17
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if uniswapV2PairAddress == arg1:
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0, 17
                    balanceOf[address(arg1)] -= arg3
                    if stor5[address(arg1)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if stor5[address(arg2)]:
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if arg3 and _marketingFee > -1 / arg3:
                                revert with 0, 17
                            if arg3 and _liquidityFee > -1 / arg3:
                                revert with 0, 17
                            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                revert with 0, 17
                            if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                                revert with 0, 17
                            balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                revert with 0, 17
                            emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                            if arg3 < arg3 * _marketingFee / 100:
                                revert with 0, 17
                            if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                            emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                    if allowance[address(arg1)][msg.sender].field_0 < arg3:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if owner == arg1:
                        if balanceOf[address(arg1)] < arg3:
                            revert with 0, 17
                        balanceOf[address(arg1)] -= arg3
                        if stor5[address(arg1)]:
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if stor5[address(arg2)]:
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if arg3 and _marketingFee > -1 / arg3:
                                    revert with 0, 17
                                if arg3 and _liquidityFee > -1 / arg3:
                                    revert with 0, 17
                                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                    revert with 0, 17
                                if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                                    revert with 0, 17
                                balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                    revert with 0, 17
                                emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                                if arg3 < arg3 * _marketingFee / 100:
                                    revert with 0, 17
                                if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                                    revert with 0, 17
                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                                    revert with 0, 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                                emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                        if allowance[address(arg1)][msg.sender].field_0 < arg3:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        if owner == arg2:
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= arg3
                            if stor5[address(arg1)]:
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor5[address(arg2)]:
                                    if balanceOf[address(arg2)] > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and _marketingFee > -1 / arg3:
                                        revert with 0, 17
                                    if arg3 and _liquidityFee > -1 / arg3:
                                        revert with 0, 17
                                    if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                                        revert with 0, 17
                                    balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                                    if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                        revert with 0, 17
                                    emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                                    if arg3 < arg3 * _marketingFee / 100:
                                        revert with 0, 17
                                    if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                                    emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                revert with 0, 17
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                        else:
                            stor14 = 1
                            if _marketingFee > !_liquidityFee:
                                revert with 0, 17
                            if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not _marketingFee + _liquidityFee:
                                revert with 0, 18
                            if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
                                revert with 0, 17
                            mem[96] = 2
                            mem[128] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                            allowance[address(this.address)][stor1].field_255 = 0
                            emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
                            mem[ceil32(return_data.size) + 356] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 388
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 292] = this.address
                            mem[ceil32(return_data.size) + 324] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 192] = 2
                            mem[ceil32(return_data.size) + 224] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 4)
                            allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
                            emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
                            mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address]
                            mem[(2 * ceil32(return_data.size)) + 324] = 0
                            mem[(2 * ceil32(return_data.size)) + 356] = 160
                            mem[(2 * ceil32(return_data.size)) + 452] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 484
                            t = ceil32(return_data.size) + 224
                            while idx < mem[ceil32(return_data.size) + 192]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 388] = this.address
                            mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 192]) + -mem[64] + 480]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            stor14 = 0
                            if balanceOf[address(arg1)] < arg3:
                                revert with 0, 17
                            balanceOf[address(arg1)] -= arg3
                            if stor5[address(arg1)]:
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                            else:
                                if stor5[address(arg2)]:
                                    if balanceOf[address(arg2)] > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                else:
                                    if arg3 and _marketingFee > -1 / arg3:
                                        revert with 0, 17
                                    if arg3 and _liquidityFee > -1 / arg3:
                                        revert with 0, 17
                                    if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                                        revert with 0, 17
                                    balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                                    if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                                        revert with 0, 17
                                    emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                                    if arg3 < arg3 * _marketingFee / 100:
                                        revert with 0, 17
                                    if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                                    emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
                            if allowance[address(arg1)][msg.sender].field_0 < arg3:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: approve to the zero address'
        ('bool', 'msg.sender')
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
        return 1
    if stor13[address(arg2)] > !_buyCooldown:
        revert with 0, 17
    if stor13[address(arg2)] + _buyCooldown >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must wait til after coooldown to buy'
    stor13[address(arg2)] = block.timestamp
    if 10^14 > balanceOf[this.address]:
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if stor5[address(arg1)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if stor5[address(arg2)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg3 and _marketingFee > -1 / arg3:
                    revert with 0, 17
                if arg3 and _liquidityFee > -1 / arg3:
                    revert with 0, 17
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                if arg3 < arg3 * _marketingFee / 100:
                    revert with 0, 17
                if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
        if allowance[address(arg1)][msg.sender].field_0 < arg3:
            revert with 0, 17
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
        return 1
    if stor14:
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if stor5[address(arg1)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if stor5[address(arg2)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg3 and _marketingFee > -1 / arg3:
                    revert with 0, 17
                if arg3 and _liquidityFee > -1 / arg3:
                    revert with 0, 17
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                if arg3 < arg3 * _marketingFee / 100:
                    revert with 0, 17
                if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
        if allowance[address(arg1)][msg.sender].field_0 < arg3:
            revert with 0, 17
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
        return 1
    if uniswapV2PairAddress == arg1:
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if stor5[address(arg1)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if stor5[address(arg2)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg3 and _marketingFee > -1 / arg3:
                    revert with 0, 17
                if arg3 and _liquidityFee > -1 / arg3:
                    revert with 0, 17
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                if arg3 < arg3 * _marketingFee / 100:
                    revert with 0, 17
                if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
        if allowance[address(arg1)][msg.sender].field_0 < arg3:
            revert with 0, 17
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
        return 1
    if owner == arg1:
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if stor5[address(arg1)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if stor5[address(arg2)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg3 and _marketingFee > -1 / arg3:
                    revert with 0, 17
                if arg3 and _liquidityFee > -1 / arg3:
                    revert with 0, 17
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                if arg3 < arg3 * _marketingFee / 100:
                    revert with 0, 17
                if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
        if allowance[address(arg1)][msg.sender].field_0 < arg3:
            revert with 0, 17
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
        return 1
    if owner == arg2:
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if stor5[address(arg1)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if stor5[address(arg2)]:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg3 and _marketingFee > -1 / arg3:
                    revert with 0, 17
                if arg3 and _liquidityFee > -1 / arg3:
                    revert with 0, 17
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
                if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                    revert with 0, 17
                emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
                if arg3 < arg3 * _marketingFee / 100:
                    revert with 0, 17
                if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
                emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
        if allowance[address(arg1)][msg.sender].field_0 < arg3:
            revert with 0, 17
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
        emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
        return 1
    stor14 = 1
    if _marketingFee > !_liquidityFee:
        revert with 0, 17
    if balanceOf[this.address] and _liquidityFee > -1 / balanceOf[this.address]:
        revert with 0, 17
    if not _marketingFee + _liquidityFee:
        revert with 0, 18
    if balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee < balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2:
        revert with 0, 17
    mem[96] = 2
    mem[128] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor1].field_0 = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
    allowance[address(this.address)][stor1].field_255 = 0
    emit Approval((balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2), this.address, uniswapV2RouterAddress);
    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee / 2
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, balanceOf[this.address] * _liquidityFee / _marketingFee + _liquidityFee), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 2
    mem[ceil32(return_data.size) + 224] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    mem[0] = uniswapV2RouterAddress
    mem[32] = sha3(address(this.address), 4)
    allowance[address(this.address)][stor1].field_0 = balanceOf[this.address]
    emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
    mem[(2 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 292] = balanceOf[this.address]
    mem[(2 * ceil32(return_data.size)) + 324] = 0
    mem[(2 * ceil32(return_data.size)) + 356] = 160
    mem[(2 * ceil32(return_data.size)) + 452] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 484
    t = ceil32(return_data.size) + 224
    while idx < mem[ceil32(return_data.size) + 192]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 388] = this.address
    mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    stor14 = 0
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if stor5[address(arg1)]:
        if balanceOf[address(arg2)] > !arg3:
            revert with 0, 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if stor5[address(arg2)]:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if arg3 and _marketingFee > -1 / arg3:
                revert with 0, 17
            if arg3 and _liquidityFee > -1 / arg3:
                revert with 0, 17
            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                revert with 0, 17
            if balanceOf[this.address] > !((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)):
                revert with 0, 17
            balanceOf[this.address] = balanceOf[this.address] + (arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)
            if arg3 * _marketingFee / 100 > !(arg3 * _liquidityFee / 100):
                revert with 0, 17
            emit Transfer(((arg3 * _marketingFee / 100) + (arg3 * _liquidityFee / 100)), arg1, this.address);
            if arg3 < arg3 * _marketingFee / 100:
                revert with 0, 17
            if arg3 - (arg3 * _marketingFee / 100) < arg3 * _liquidityFee / 100:
                revert with 0, 17
            if balanceOf[address(arg2)] > !(arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)):
                revert with 0, 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)
            emit Transfer((arg3 - (arg3 * _marketingFee / 100) - (arg3 * _liquidityFee / 100)), arg1, arg2);
    if allowance[address(arg1)][msg.sender].field_0 < arg3:
        revert with 0, 17
    if not arg1:
        mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 292] = 32
        mem[(2 * ceil32(return_data.size)) + 324] = 36
        mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve from the zero add'
        mem[(2 * ceil32(return_data.size)) + 388] = 0x7265737300000000000000000000000000000000000000000000000000000000
    else:
        if msg.sender:
            allowance[address(arg1)][address(msg.sender)].field_0 = allowance[address(arg1)][msg.sender].field_0 - arg3
            emit Approval((allowance[address(arg1)][msg.sender].field_0 - arg3), arg1, msg.sender);
            return 1
        mem[(2 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 292] = 32
        mem[(2 * ceil32(return_data.size)) + 324] = 34
        mem[(2 * ceil32(return_data.size)) + 356] = 'ERC20: approve to the zero addre'
        mem[(2 * ceil32(return_data.size)) + 388] = 0x7373000000000000000000000000000000000000000000000000000000000000
    revert with memory
      from (2 * ceil32(return_data.size)) + 288
       len ceil32(return_data.size) + 132
}



}
