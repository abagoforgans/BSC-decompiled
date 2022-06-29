contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const name = '', 0

const decimals = 9

const symbol = '', 0


address owner;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor5;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _marketingFee;
uint256 _liquidityFee;
address _marketingWalletAddress;
uint256 _buyCooldown;
mapping of uint256 stor12;
uint8 stor13;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
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
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
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
    if owner != msg.sender:
        if owner != arg1:
            if uniswapV2PairAddress != arg1:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                if balanceOf[address(arg1)] + arg2 > _maxTxAmount:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
    if uniswapV2PairAddress == msg.sender:
        if stor12[address(arg1)] > !_buyCooldown:
            revert with 0, 17
        if stor12[address(arg1)] + _buyCooldown >= block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must wait til after coooldown to buy'
        stor12[address(arg1)] = block.timestamp
    if 5 * 10^12 <= balanceOf[this.address]:
        if not stor13:
            if uniswapV2PairAddress != msg.sender:
                if owner != msg.sender:
                    if owner != arg1:
                        stor13 = 1
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
                        allowance[address(this.address)][stor1] = balanceOf[this.address]
                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
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
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        stor13 = 0
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
    if owner != arg1:
        if owner != arg2:
            if uniswapV2PairAddress != arg2:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                if balanceOf[address(arg2)] + arg3 > _maxTxAmount:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the maxTxAmount.'
    if uniswapV2PairAddress == arg1:
        if stor12[address(arg2)] > !_buyCooldown:
            revert with 0, 17
        if stor12[address(arg2)] + _buyCooldown >= block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must wait til after coooldown to buy'
        stor12[address(arg2)] = block.timestamp
    if 5 * 10^12 > balanceOf[this.address]:
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
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0, 17
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if stor13:
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
            if allowance[address(arg1)][msg.sender] < arg3:
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
                if allowance[address(arg1)][msg.sender] < arg3:
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
                    if allowance[address(arg1)][msg.sender] < arg3:
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
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                    else:
                        stor13 = 1
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
                        allowance[address(this.address)][stor1] = balanceOf[this.address]
                        emit Approval(balanceOf[this.address], this.address, uniswapV2RouterAddress);
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
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[this.address], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        stor13 = 0
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
                        if allowance[address(arg1)][msg.sender] < arg3:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
