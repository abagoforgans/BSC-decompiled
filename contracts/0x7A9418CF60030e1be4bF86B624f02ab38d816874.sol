contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - _fallback()
#
const name = 'Mrs Zilla', 0

const totalSupply = 10^16

const decimals = 9

const symbol = '', 0


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 stor7;
uint256 _maxWalletSize;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint64 stor12;
uint256 stor12; offset 56
uint256 stor12;
uint256 stor13;
uint256 stor14; offset 1
uint256 stor14;
uint256 stor15;
uint256 stor16;
address stor17;
address stor18;
uint256 stor19;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor25;

function swapThreshold() {
    return swapThreshold
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function _maxWalletSize() {
    return _maxWalletSize
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function setTargetLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor19 = arg1
    emit 0x52b2b08b: arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor4[address(arg1)] = uint8(arg2)
    emit 0x1b92447b: address(arg1), arg2
}

function setFeeReceiver(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor17 = arg1
    stor18 = arg2
    emit 0x47ec85e8: address(arg1), arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor5[address(arg1)] = uint8(arg2)
    emit 0x6824b1d8: address(arg1), arg2
}

function ClearStuckBalance() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call stor17 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x98be19c3: eth.balance(this.address), stor17
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2 <= 0:
        revert with 0, 'Can't set SwapThreshold to ZERO'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
    emit SetSwapBackSettings(bool(uint8(arg1)), arg2);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor21] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if arg1 and 2 * balanceOf[stor21] > -1 / arg1:
        revert with 0, 17
    if not stor7:
        revert with 0, 18
    return (arg1 * 2 * balanceOf[stor21] / stor7)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor21] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if arg2 and 2 * balanceOf[stor21] > -1 / arg2:
        revert with 0, 17
    if not stor7:
        revert with 0, 18
    return (arg2 * 2 * balanceOf[stor21] / stor7 > arg1)
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 > 0x734aca5f6226f0ada6175f343cc4d4d9dfb8b60d6e93f84291e:
        revert with 0, 17
    if 10^16 * arg1 / 100 < 10^14:
        revert with 0, 'Can't set MaxWallet below 1%'
    _maxWalletSize = 10^16 * arg1 / 100
    emit 0xa2c87c3e: (10^16 * arg1 / 100)
}

function sub_fc6c167d(?) {
    require calldata.size - 4 >= 160
    require arg4 == arg4 % 72057594037927936
    if owner != msg.sender:
        revert with 0, '!OWNER'
    uint256(stor14.field_0) = arg1
    stor12.field_0 % 72057594037927936 = arg4 % 72057594037927936
    Mask(200, 0, stor12.field_56) = 0
    stor13 = arg5
    if arg4 % 72057594037927936 > !arg5:
        revert with 0, 17
    if (arg4 % 72057594037927936) + arg5 > !arg1:
        revert with 0, 17
    stor15 = (arg4 % 72057594037927936) + arg5 + arg1
    stor9 = arg2
    stor10 = arg3
    if arg2 > !arg3:
        revert with 0, 17
    stor11 = arg2 + arg3
}

function transferForeignToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor17 with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x91cecbb8: address(arg1), ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor25:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if owner != msg.sender:
            if owner != arg1:
                if pairAddress != arg1:
                    if not stor5[address(arg1)]:
                        if not stor5[address(msg.sender)]:
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 > _maxWalletSize:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount exceeds the MaxWallet size.'
        if pairAddress != msg.sender:
            if not stor25:
                if swapEnabled:
                    if balanceOf[this.address] >= swapThreshold:
                        stor25 = 1
                        if balanceOf[stor21] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 2 * balanceOf[stor21] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                            revert with 0, 17
                        if not stor7:
                            revert with 0, 18
                        if stor11 > !stor15:
                            revert with 0, 17
                        if 100 * 2 * balanceOf[stor21] / stor7 > stor19:
                            if balanceOf[this.address] and 0 > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not stor11 + stor15:
                                revert with 0, 18
                            if balanceOf[this.address] < 0 / stor11 + stor15 / 2:
                                revert with 0, 17
                            mem[128] = this.address
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address] - (0 / stor11 + stor15 / 2)
                            idx = 0
                            s = ceil32(return_data.size) + 388
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address] - (0 / stor11 + stor15 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if stor9 > !uint256(stor12.field_0):
                                revert with 0, 17
                            if stor11 + stor15 < 0:
                                revert with 0, 17
                            if eth.balance(this.address) and 0 > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not stor11 + stor15:
                                revert with 0, 18
                            if eth.balance(this.address) and stor9 + uint256(stor12.field_0) > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not stor11 + stor15:
                                revert with 0, 18
                            if eth.balance(this.address) < 0 / stor11 + stor15 / 2:
                                revert with 0, 17
                            if eth.balance(this.address) - (0 / stor11 + stor15 / 2) < (stor9 * eth.balance(this.address)) + (uint256(stor12.field_0) * eth.balance(this.address)) / stor11 + stor15:
                                revert with 0, 17
                            call stor17 with:
                               value (stor9 * eth.balance(this.address)) + (uint256(stor12.field_0) * eth.balance(this.address)) / stor11 + stor15 wei
                                 gas 30000 wei
                            if not ext_call.success:
                                revert with 0, 'receiver rejected BNB transfer'
                            call stor18 with:
                               value eth.balance(this.address) - (0 / stor11 + stor15 / 2) - ((stor9 * eth.balance(this.address)) + (uint256(stor12.field_0) * eth.balance(this.address)) / stor11 + stor15) wei
                                 gas 30000 wei
                            if not ext_call.success:
                                revert with 0, 'receiver rejected BNB transfer'
                            if Mask(255, 1, 0 / stor11 + stor15):
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor11 + stor15 / 2 wei
                                     gas gas_remaining wei
                                    args this.address, Mask(255, 1, 0 / stor11 + stor15), 0, 0, stor17, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit AutoLiquify(Mask(255, 1, 0 / stor11 + stor15), 0 / stor11 + stor15 / 2);
                        else:
                            if balanceOf[this.address] and uint256(stor14.field_0) > -1 / balanceOf[this.address]:
                                revert with 0, 17
                            if not stor11 + stor15:
                                revert with 0, 18
                            if balanceOf[this.address] < balanceOf[this.address] * uint256(stor14.field_0) / stor11 + stor15 / 2:
                                revert with 0, 17
                            mem[128] = this.address
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = balanceOf[this.address] - (balanceOf[this.address] * uint256(stor14.field_0) / stor11 + stor15 / 2)
                            idx = 0
                            s = ceil32(return_data.size) + 388
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[this.address] - (balanceOf[this.address] * uint256(stor14.field_0) / stor11 + stor15 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if stor9 > !uint256(stor12.field_0):
                                revert with 0, 17
                            if stor11 + stor15 < uint255(stor14.field_1):
                                revert with 0, 17
                            if eth.balance(this.address) and uint256(stor14.field_0) > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not stor11 + stor15 - uint255(stor14.field_1):
                                revert with 0, 18
                            if eth.balance(this.address) and stor9 + uint256(stor12.field_0) > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if not stor11 + stor15 - uint255(stor14.field_1):
                                revert with 0, 18
                            if eth.balance(this.address) < eth.balance(this.address) * uint256(stor14.field_0) / stor11 + stor15 - uint255(stor14.field_1) / 2:
                                revert with 0, 17
                            if eth.balance(this.address) - (eth.balance(this.address) * uint256(stor14.field_0) / stor11 + stor15 - uint255(stor14.field_1) / 2) < (stor9 * eth.balance(this.address)) + (uint256(stor12.field_0) * eth.balance(this.address)) / stor11 + stor15 - uint255(stor14.field_1):
                                revert with 0, 17
                            call stor17 with:
                               value (stor9 * eth.balance(this.address)) + (uint256(stor12.field_0) * eth.balance(this.address)) / stor11 + stor15 - uint255(stor14.field_1) wei
                                 gas 30000 wei
                            if not ext_call.success:
                                revert with 0, 'receiver rejected BNB transfer'
                            call stor18 with:
                               value eth.balance(this.address) - (eth.balance(this.address) * uint256(stor14.field_0) / stor11 + stor15 - uint255(stor14.field_1) / 2) - ((stor9 * eth.balance(this.address)) + (uint256(stor12.field_0) * eth.balance(this.address)) / stor11 + stor15 - uint255(stor14.field_1)) wei
                                 gas 30000 wei
                            if not ext_call.success:
                                revert with 0, 'receiver rejected BNB transfer'
                            if Mask(255, 1, balanceOf[this.address] * uint256(stor14.field_0) / stor11 + stor15):
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value eth.balance(this.address) * uint256(stor14.field_0) / stor11 + stor15 - uint255(stor14.field_1) / 2 wei
                                     gas gas_remaining wei
                                    args this.address, Mask(255, 1, balanceOf[this.address] * uint256(stor14.field_0) / stor11 + stor15), 0, 0, stor17, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit AutoLiquify(Mask(255, 1, eth.balance(this.address) * uint256(stor14.field_0) / stor11 + stor15 - uint255(stor14.field_1)), balanceOf[this.address] * uint256(stor14.field_0) / stor11 + stor15 / 2);
                        stor25 = 0
        if not launchedAt:
            if pairAddress == arg1:
                require balanceOf[address(msg.sender)]
                launchedAt = block.timestamp
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg2
        if stor4[address(msg.sender)]:
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor4[address(arg1)]:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if pairAddress != msg.sender:
                    stor16 = stor15
                else:
                    stor16 = stor11
                if arg2 / 100 and stor16 > -1 / arg2 / 100:
                    revert with 0, 17
                if balanceOf[this.address] > !(arg2 / 100 * stor16):
                    revert with 0, 17
                balanceOf[this.address] += arg2 / 100 * stor16
                emit Transfer((arg2 / 100 * stor16), msg.sender, this.address);
                if arg2 < arg2 / 100 * stor16:
                    revert with 0, 17
                if balanceOf[address(arg1)] > !(arg2 - (arg2 / 100 * stor16)):
                    revert with 0, 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * stor16)
                emit Transfer((arg2 - (arg2 / 100 * stor16)), msg.sender, arg1);
    return 1
}



}
