contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'INU INU', 0

const decimals = 9

const symbol = '', 0


address owner;
uint256 totalSupply;
uint256 reflectionFee;
uint256 burnFee;
uint256 stor4; offset 1
uint256 liquidityFee;
uint256 marketingFee;
uint256 feeDenominator;
uint256 stor7;
uint256 sub_da846447;
address marketingFeeReceiverAddress;
address stor11;
address debuggerAddress;
address stor13;
address stor14;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor17;
mapping of uint8 stor18;
mapping of uint8 stor19;
address autoLiquidityReceiverAddress;
array of address pairs;
address routerAddress;
address stor23;
address stor24;
uint256 stor25;
uint256 launchedAt;
uint8 sub_ed5792d7;
uint8 stor27; offset 8
uint256 swapThreshold;
array of address stor38878206584692966203415385907871375197469080758325516314230789535345649042549;

function swapThreshold() {
    return swapThreshold
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return totalSupply
}

function marketingFee() {
    return marketingFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function reflectionFee() {
    return reflectionFee
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function liquidityFee() {
    return liquidityFee
}

function debugger() {
    return debuggerAddress
}

function pairs(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pairs.length
    return pairs[arg1]
}

function launchedAt() {
    return launchedAt
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function sub_da846447(?) {
    return sub_da846447
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function sub_ed5792d7(?) {
    return bool(sub_ed5792d7)
}

function router() {
    return routerAddress
}

function burnFee() {
    return burnFee
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function renouceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setLaunchedAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if debuggerAddress != msg.sender:
        revert with 0, 'Only the debugger can do this.'
    launchedAt = arg1
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

function removeLastPair() {
    if debuggerAddress != msg.sender:
        revert with 0, 'Only the debugger can do this.'
    if not pairs.length:
        revert with 0, 49
    pairs[pairs.length] = 0
    pairs.length--
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if debuggerAddress != msg.sender:
        revert with 0, 'Only the debugger can do this.'
    require arg1 <= 5 * 10^6
    stor25 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownership required.'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_d4f147d7(?) {
    require calldata.size - 4 >= 32
    if debuggerAddress != msg.sender:
        revert with 0, 'Only the debugger can do this.'
    if not arg1:
        revert with 0, 18
    swapThreshold = totalSupply / arg1
}

function addPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if debuggerAddress != msg.sender:
        revert with 0, 'Only the debugger can do this.'
    pairs.length++
    stor55F4[stor21.length] = arg1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if debuggerAddress != msg.sender:
        revert with 0, 'Only the debugger can do this.'
    stor18[address(arg1)] = uint8(arg2)
}

function setIsMaxHoldExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if debuggerAddress != msg.sender:
        revert with 0, 'Only the debugger can do this.'
    stor17[address(arg1)] = uint8(arg2)
}

function sub_5e12cd31(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if debuggerAddress != msg.sender:
        revert with 0, 'Only the debugger can do this.'
    debuggerAddress = address(arg1)
    emit 0xa43f6f08: debuggerAddress, address(arg1)
}

function getTotalFee() {
    if 1 > !launchedAt:
        revert with 0, 17
    if launchedAt + 1 < block.number:
        return stor7
    if 1 > feeDenominator:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if feeDenominator < 1:
        revert with 0, 17
    return (feeDenominator - 1)
}

function sub_3611fd9c(?) {
    if debuggerAddress != msg.sender:
        revert with 0, 'Only the debugger can do this.'
    call debuggerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_228807aa(?) {
    if debuggerAddress != msg.sender:
        revert with 0, 'Only the debugger can do this.'
    require ext_code.size(stor24)
    call stor24.0x731d0747 with:
         gas gas_remaining wei
        args debuggerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if debuggerAddress != msg.sender:
        revert with 0, 'Only the debugger can do this.'
    require ext_code.size(stor24)
    call stor24.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if balanceOf[stor13] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor13]:
        revert with 0, 17
    if balanceOf[stor14] > totalSupply - balanceOf[stor13]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor13] < balanceOf[stor14]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor13] - balanceOf[stor14])
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if debuggerAddress != msg.sender:
        revert with 0, 'Only the debugger can do this.'
    require arg1 != this.address
    require stor23 != arg1
    stor19[address(arg1)] = uint8(arg2)
    require ext_code.size(stor24)
    if not arg2:
        call stor24.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor24.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d85a2828(?) {
    if debuggerAddress != msg.sender:
        revert with 0, 'Only the debugger can do this.'
    if stor23 != msg.sender:
        if not stor27:
            if balanceOf[this.address] >= swapThreshold:
                stor27 = 1
                if sub_ed5792d7:
                    if not balanceOf[this.address]:
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero', 0
                        mem[160] = 26
                        mem[192] = 'SafeMath: division by zero'
                        mem[0] = this.address
                        mem[32] = 15
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if 0 / stor7 / 2 > balanceOf[this.address]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address] < 0 / stor7 / 2:
                            revert with 0, 17
                        mem[288] = 2
                        mem[320] = this.address
                        mem[352] = stor11
                        mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[388] = balanceOf[this.address] - (0 / stor7 / 2)
                        mem[420] = 0
                        mem[452] = 160
                        mem[548] = 2
                        idx = 0
                        s = 580
                        t = 320
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[this.address] - (0 / stor7 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                        if ext_call.success:
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if stor4 > stor7:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor7 < stor4:
                                revert with 0, 17
                            if not stor7 - stor4:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor7 - stor4:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor7 - stor4:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(stor24)
                            call stor24.deposit() with:
                               value 0 / stor7 - stor4 wei
                                 gas gas_remaining wei
                            call marketingFeeReceiverAddress with:
                               value 0 / stor7 - stor4 wei
                                 gas 30000 wei
                            emit MarketTransfer(bool(ext_call.success));
                            if Mask(255, 1, 0 / stor7):
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor7 - stor4 / 2 wei
                                     gas gas_remaining wei
                                    args this.address, Mask(255, 1, 0 / stor7), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                if not ext_call.success:
                                    emit AutoLiquify(uint256 arg1, uint256 arg2):
                                                     0,
                                else:
                                    require return_data.size >= 96
                                    emit AutoLiquify(Mask(255, 1, 0 / stor7), 0 / stor7 - stor4 / 2);
                        else:
                            if return_data.size <= 3:
                                emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                            else:
                                mem[0 len 4] = ext_call.return_data[0 len 4]
                                if uint32(this.address) >> 224 != Error(string arg1):
                                    emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                else:
                                    if return_data.size < 68:
                                        emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                    else:
                                        mem[384 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                        if 0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 > test266151307() or 0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 36 > return_data.size:
                                            emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                        else:
                                            if mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] > test266151307():
                                                emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                            else:
                                                if 0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] + 32 > return_data.size - 4:
                                                    emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                                else:
                                                    if floor32(0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] + 31) + 385 < 384 or floor32(0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] + 31) + 385 > test266151307():
                                                        revert with 0, 65
                                                    mem[64] = floor32(0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] + 31) + 385
                                                    if not 0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384:
                                                        emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                                    else:
                                                        _687 = mem[64]
                                                        mem[mem[64] + 32] = 'SwapBack failed with error '
                                                        _692 = mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384]
                                                        mem[mem[64] + 59 len ceil32(mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384])] = mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 416 len ceil32(mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384])]
                                                        if ceil32(_692) <= _692:
                                                            _1098 = mem[64]
                                                            mem[mem[64]] = _692 + 27
                                                            mem[64] = _692 + mem[64] + 59
                                                            mem[_692 + _687 + 59] = 32
                                                            _1136 = mem[_1098]
                                                            mem[_692 + _687 + 91] = mem[_1098]
                                                            mem[_692 + _687 + 123 len ceil32(_1136)] = mem[_1098 + 32 len ceil32(_1136)]
                                                            if ceil32(_1136) > _1136:
                                                                mem[_1136 + _692 + _687 + 123] = 0
                                                            emit SwapBackFailed(string arg1):
                                                                                32,
                                                                                mem[_692 + _687 + 91 len ceil32(_1136) + 32],
                                                        else:
                                                            mem[_692 + mem[64] + 59] = 0
                                                            _1099 = mem[64]
                                                            mem[mem[64]] = _692 + _687 + -mem[64] + 27
                                                            mem[64] = _692 + _687 + 59
                                                            mem[_692 + _687 + 59] = 32
                                                            _1137 = mem[_1099]
                                                            mem[_692 + _687 + 91] = mem[_1099]
                                                            mem[_692 + _687 + 123 len ceil32(_1137)] = mem[_1099 + 32 len ceil32(_1137)]
                                                            if ceil32(_1137) > _1137:
                                                                mem[_1137 + _692 + _687 + 123] = 0
                                                            emit SwapBackFailed(string arg1):
                                                                                32,
                                                                                mem[_692 + _687 + 91 len ceil32(_1137) + 32],
                    else:
                        if balanceOf[this.address] and liquidityFee > -1 / balanceOf[this.address]:
                            revert with 0, 17
                        if not balanceOf[this.address]:
                            revert with 0, 18
                        if balanceOf[this.address] * liquidityFee / balanceOf[this.address] != liquidityFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero', 0
                        mem[160] = 26
                        mem[192] = 'SafeMath: division by zero'
                        mem[0] = this.address
                        mem[32] = 15
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if balanceOf[this.address] * liquidityFee / stor7 / 2 > balanceOf[this.address]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address] < balanceOf[this.address] * liquidityFee / stor7 / 2:
                            revert with 0, 17
                        mem[288] = 2
                        mem[320] = this.address
                        mem[352] = stor11
                        mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[388] = balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)
                        mem[420] = 0
                        mem[452] = 160
                        mem[548] = 2
                        idx = 0
                        s = 580
                        t = 320
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                        if ext_call.success:
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if stor4 > stor7:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor7 < stor4:
                                revert with 0, 17
                            if not stor7 - stor4:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor7 - stor4:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor7 - stor4:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(stor24)
                            call stor24.deposit() with:
                               value 0 / stor7 - stor4 wei
                                 gas gas_remaining wei
                            call marketingFeeReceiverAddress with:
                               value 0 / stor7 - stor4 wei
                                 gas 30000 wei
                            emit MarketTransfer(bool(ext_call.success));
                            if Mask(255, 1, balanceOf[this.address] * liquidityFee / stor7):
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor7 - stor4 / 2 wei
                                     gas gas_remaining wei
                                    args this.address, Mask(255, 1, balanceOf[this.address] * liquidityFee / stor7), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                if not ext_call.success:
                                    emit AutoLiquify(uint256 arg1, uint256 arg2):
                                                     0,
                                else:
                                    require return_data.size >= 96
                                    emit AutoLiquify(Mask(255, 1, balanceOf[this.address] * liquidityFee / stor7), 0 / stor7 - stor4 / 2);
                        else:
                            if return_data.size <= 3:
                                emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                            else:
                                mem[0 len 4] = ext_call.return_data[0 len 4]
                                if uint32(this.address) >> 224 != Error(string arg1):
                                    emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                else:
                                    if return_data.size < 68:
                                        emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                    else:
                                        mem[384 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                        if 0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 > test266151307() or 0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + 36 > return_data.size:
                                            emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                        else:
                                            if mem[0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + 384] > test266151307():
                                                emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                            else:
                                                if 0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + 384] + 32 > return_data.size - 4:
                                                    emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                                else:
                                                    if floor32(0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + 384] + 31) + 385 < 384 or floor32(0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + 384] + 31) + 385 > test266151307():
                                                        revert with 0, 65
                                                    mem[64] = floor32(0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + 384] + 31) + 385
                                                    if not 0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + 384:
                                                        emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                                    else:
                                                        _686 = mem[64]
                                                        mem[mem[64] + 32] = 'SwapBack failed with error '
                                                        _690 = mem[0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + 384]
                                                        mem[mem[64] + 59 len ceil32(mem[0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + 384])] = mem[0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + 416 len ceil32(mem[0, Mask(224, 32, balanceOf[this.address] - (balanceOf[this.address] * liquidityFee / stor7 / 2)) >> 32 + 384])]
                                                        if ceil32(_690) <= _690:
                                                            _1086 = mem[64]
                                                            mem[mem[64]] = _690 + 27
                                                            mem[64] = _690 + mem[64] + 59
                                                            mem[_690 + _686 + 59] = 32
                                                            _1134 = mem[_1086]
                                                            mem[_690 + _686 + 91] = mem[_1086]
                                                            mem[_690 + _686 + 123 len ceil32(_1134)] = mem[_1086 + 32 len ceil32(_1134)]
                                                            if ceil32(_1134) > _1134:
                                                                mem[_1134 + _690 + _686 + 123] = 0
                                                            emit SwapBackFailed(string arg1):
                                                                                32,
                                                                                mem[_690 + _686 + 91 len ceil32(_1134) + 32],
                                                        else:
                                                            mem[_690 + mem[64] + 59] = 0
                                                            _1087 = mem[64]
                                                            mem[mem[64]] = _690 + 27
                                                            mem[64] = _690 + mem[64] + 59
                                                            mem[_690 + _686 + 59] = 32
                                                            _1135 = mem[_1087]
                                                            mem[_690 + _686 + 91] = mem[_1087]
                                                            mem[_690 + _686 + 123 len ceil32(_1135)] = mem[_1087 + 32 len ceil32(_1135)]
                                                            if ceil32(_1135) > _1135:
                                                                mem[_1135 + _690 + _686 + 123] = 0
                                                            emit SwapBackFailed(string arg1):
                                                                                32,
                                                                                mem[_690 + _686 + 91 len ceil32(_1135) + 32],
                else:
                    if not balanceOf[this.address]:
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero', 0
                        mem[160] = 26
                        mem[192] = 'SafeMath: division by zero'
                        mem[0] = this.address
                        mem[32] = 15
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if 0 / stor7 / 2 > balanceOf[this.address]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address] < 0 / stor7 / 2:
                            revert with 0, 17
                        mem[288] = 2
                        mem[320] = this.address
                        mem[352] = stor11
                        mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[388] = balanceOf[this.address] - (0 / stor7 / 2)
                        mem[420] = 0
                        mem[452] = 160
                        mem[548] = 2
                        idx = 0
                        s = 580
                        t = 320
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[this.address] - (0 / stor7 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                        if ext_call.success:
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if 0 > stor7:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor7 < 0:
                                revert with 0, 17
                            if not stor7:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor7:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor7:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(stor24)
                            call stor24.deposit() with:
                               value 0 / stor7 wei
                                 gas gas_remaining wei
                            call marketingFeeReceiverAddress with:
                               value 0 / stor7 wei
                                 gas 30000 wei
                            emit MarketTransfer(bool(ext_call.success));
                            if Mask(255, 1, 0 / stor7):
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor7 / 2 wei
                                     gas gas_remaining wei
                                    args this.address, Mask(255, 1, 0 / stor7), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                if not ext_call.success:
                                    emit AutoLiquify(uint256 arg1, uint256 arg2):
                                                     0,
                                else:
                                    require return_data.size >= 96
                                    emit AutoLiquify(Mask(255, 1, 0 / stor7), 0 / stor7 / 2);
                        else:
                            if return_data.size <= 3:
                                emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                            else:
                                mem[0 len 4] = ext_call.return_data[0 len 4]
                                if uint32(this.address) >> 224 != Error(string arg1):
                                    emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                else:
                                    if return_data.size < 68:
                                        emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                    else:
                                        mem[384 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                        if 0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 > test266151307() or 0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 36 > return_data.size:
                                            emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                        else:
                                            if mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] > test266151307():
                                                emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                            else:
                                                if 0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] + 32 > return_data.size - 4:
                                                    emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                                else:
                                                    if floor32(0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] + 31) + 385 < 384 or floor32(0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] + 31) + 385 > test266151307():
                                                        revert with 0, 65
                                                    mem[64] = floor32(0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] + 31) + 385
                                                    if not 0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384:
                                                        emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                                    else:
                                                        _689 = mem[64]
                                                        mem[mem[64] + 32] = 'SwapBack failed with error '
                                                        _696 = mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384]
                                                        mem[mem[64] + 59 len ceil32(mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384])] = mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 416 len ceil32(mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384])]
                                                        if ceil32(_696) <= _696:
                                                            _1122 = mem[64]
                                                            mem[mem[64]] = _696 + 27
                                                            mem[64] = _696 + mem[64] + 59
                                                            mem[_696 + _689 + 59] = 32
                                                            _1140 = mem[_1122]
                                                            mem[_696 + _689 + 91] = mem[_1122]
                                                            mem[_696 + _689 + 123 len ceil32(_1140)] = mem[_1122 + 32 len ceil32(_1140)]
                                                            if ceil32(_1140) > _1140:
                                                                mem[_1140 + _696 + _689 + 123] = 0
                                                            emit SwapBackFailed(string arg1):
                                                                                32,
                                                                                mem[_696 + _689 + 91 len ceil32(_1140) + 32],
                                                        else:
                                                            mem[_696 + mem[64] + 59] = 0
                                                            _1123 = mem[64]
                                                            mem[mem[64]] = _696 + _689 + -mem[64] + 27
                                                            mem[64] = _696 + _689 + 59
                                                            mem[_696 + _689 + 59] = 32
                                                            _1141 = mem[_1123]
                                                            mem[_696 + _689 + 91] = mem[_1123]
                                                            mem[_696 + _689 + 123 len ceil32(_1141)] = mem[_1123 + 32 len ceil32(_1141)]
                                                            if ceil32(_1141) > _1141:
                                                                mem[_1141 + _696 + _689 + 123] = 0
                                                            emit SwapBackFailed(string arg1):
                                                                                32,
                                                                                mem[_696 + _689 + 91 len ceil32(_1141) + 32],
                    else:
                        if balanceOf[this.address] and 0 > -1 / balanceOf[this.address]:
                            revert with 0, 17
                        if not balanceOf[this.address]:
                            revert with 0, 18
                        if 0 / balanceOf[this.address]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        mem[96] = 26
                        mem[128] = 'SafeMath: division by zero'
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero', 0
                        mem[160] = 26
                        mem[192] = 'SafeMath: division by zero'
                        mem[0] = this.address
                        mem[32] = 15
                        mem[224] = 30
                        mem[256] = 'SafeMath: subtraction overflow'
                        if 0 / stor7 / 2 > balanceOf[this.address]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if balanceOf[this.address] < 0 / stor7 / 2:
                            revert with 0, 17
                        mem[288] = 2
                        mem[320] = this.address
                        mem[352] = stor11
                        mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[388] = balanceOf[this.address] - (0 / stor7 / 2)
                        mem[420] = 0
                        mem[452] = 160
                        mem[548] = 2
                        idx = 0
                        s = 580
                        t = 320
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[this.address] - (0 / stor7 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
                        if ext_call.success:
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if 0 > stor7:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if stor7 < 0:
                                revert with 0, 17
                            if not stor7:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor7:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not stor7:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(stor24)
                            call stor24.deposit() with:
                               value 0 / stor7 wei
                                 gas gas_remaining wei
                            call marketingFeeReceiverAddress with:
                               value 0 / stor7 wei
                                 gas 30000 wei
                            emit MarketTransfer(bool(ext_call.success));
                            if Mask(255, 1, 0 / stor7):
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / stor7 / 2 wei
                                     gas gas_remaining wei
                                    args this.address, Mask(255, 1, 0 / stor7), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                if not ext_call.success:
                                    emit AutoLiquify(uint256 arg1, uint256 arg2):
                                                     0,
                                else:
                                    require return_data.size >= 96
                                    emit AutoLiquify(Mask(255, 1, 0 / stor7), 0 / stor7 / 2);
                        else:
                            if return_data.size <= 3:
                                emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                            else:
                                mem[0 len 4] = ext_call.return_data[0 len 4]
                                if uint32(this.address) >> 224 != Error(string arg1):
                                    emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                else:
                                    if return_data.size < 68:
                                        emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                    else:
                                        mem[384 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                        if 0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 > test266151307() or 0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 36 > return_data.size:
                                            emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                        else:
                                            if mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] > test266151307():
                                                emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                            else:
                                                if 0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] + 32 > return_data.size - 4:
                                                    emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                                else:
                                                    if floor32(0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] + 31) + 385 < 384 or floor32(0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] + 31) + 385 > test266151307():
                                                        revert with 0, 65
                                                    mem[64] = floor32(0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384] + 31) + 385
                                                    if not 0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384:
                                                        emit SwapBackFailed(Array(len=57, data='SwapBack failed without an error', ' message from pancakeSwap'));
                                                    else:
                                                        _688 = mem[64]
                                                        mem[mem[64] + 32] = 'SwapBack failed with error '
                                                        _694 = mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384]
                                                        mem[mem[64] + 59 len ceil32(mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384])] = mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 416 len ceil32(mem[0, Mask(224, 32, balanceOf[this.address] - (0 / stor7 / 2)) >> 32 + 384])]
                                                        if ceil32(_694) <= _694:
                                                            _1110 = mem[64]
                                                            mem[mem[64]] = _694 + 27
                                                            mem[64] = _694 + mem[64] + 59
                                                            mem[_694 + _688 + 59] = 32
                                                            _1138 = mem[_1110]
                                                            mem[_694 + _688 + 91] = mem[_1110]
                                                            mem[_694 + _688 + 123 len ceil32(_1138)] = mem[_1110 + 32 len ceil32(_1138)]
                                                            if ceil32(_1138) > _1138:
                                                                mem[_1138 + _694 + _688 + 123] = 0
                                                            emit SwapBackFailed(string arg1):
                                                                                32,
                                                                                mem[_694 + _688 + 91 len ceil32(_1138) + 32],
                                                        else:
                                                            mem[_694 + mem[64] + 59] = 0
                                                            _1111 = mem[64]
                                                            mem[mem[64]] = _694 + 27
                                                            mem[64] = _694 + mem[64] + 59
                                                            mem[_694 + _688 + 59] = 32
                                                            _1139 = mem[_1111]
                                                            mem[_694 + _688 + 91] = mem[_1111]
                                                            mem[_694 + _688 + 123 len ceil32(_1139)] = mem[_1111 + 32 len ceil32(_1139)]
                                                            if ceil32(_1139) > _1139:
                                                                mem[_1139 + _694 + _688 + 123] = 0
                                                            emit SwapBackFailed(string arg1):
                                                                                32,
                                                                                mem[_694 + _688 + 91 len ceil32(_1139) + 32],
                stor27 = 0
}



}
