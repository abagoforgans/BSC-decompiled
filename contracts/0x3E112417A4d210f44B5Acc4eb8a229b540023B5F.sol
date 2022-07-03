contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'prueba001', 0

const decimals = 9

const version = '', 0

const getChainID = chainid

const symbol = '', 0

const PERMIT_TYPEHASH = 0xea2aa0a1be11a07ed86d755c93467f4f82362b452371d1ba94d1715123511acb

const MASK = test266151307()


address owner;
mapping of uint8 stor1;
address WBNBAddress;
address stor5;
address stor6;
uint256 totalSupply;
uint256 _maxTxAmount;
mapping of uint256 balanceOf;
mapping of uint256 nonces;
mapping of uint256 allowance;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
address autoLiquidityReceiverAddress;
address stor24;
address sub_3ecc13bcAddress;
uint256 stor26;
uint256 stor27;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 launchedAtTimestamp;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint8 autoBuybackEnabled;
uint256 stor38;
uint256 stor39;
uint256 stor40;
uint256 stor41;
uint256 stor42;
address sub_ddab3b73Address;
uint256 stor44;
uint256 DOMAIN_SEPARATOR;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor48;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function DOMAIN_SEPARATOR() {
    return DOMAIN_SEPARATOR
}

function autoBuybackEnabled() {
    return bool(autoBuybackEnabled)
}

function sub_3ecc13bc(?) {
    return sub_3ecc13bcAddress
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function getOwner() {
    return owner
}

function WBNB() {
    return WBNBAddress
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function launchedAtTimestamp() {
    return launchedAtTimestamp
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ddab3b73(?) {
    return sub_ddab3b73Address
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function donate() payable {
  stop
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor34 = 0
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 999999
    stor44 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor26 = arg1
    stor27 = arg2
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= totalSupply / 1000
    _maxTxAmount = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = totalSupply
    emit Approval(totalSupply, msg.sender, arg1);
    return 1
}

function launch() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if launchedAt:
        revert with 0, 'Already launched boi'
    launchedAt = block.number
    launchedAtTimestamp = block.timestamp
}

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor5]:
        revert with 0, 17
    if totalSupply - balanceOf[stor5] < balanceOf[stor6]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor5] - balanceOf[stor6])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14[address(arg1)] = uint8(arg2)
}

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg2:
        revert with 0, 18
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor32 = arg1
    stor33 = arg2
    stor35 = arg3
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    stor24 = arg2
    sub_3ecc13bcAddress = arg3
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoBuybackEnabled = uint8(arg1)
    stor38 = arg2
    stor39 = 0
    stor40 = arg3
    stor41 = arg4
    stor42 = block.number
}

function sub_cd78f2fc(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(sub_ddab3b73Address)
    call sub_ddab3b73Address.0xcd78f2fc with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d20747ea(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_ddab3b73Address)
    staticcall sub_ddab3b73Address.0x993df8c6 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_9a236fd5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(sub_ddab3b73Address)
    call sub_ddab3b73Address.0x9a236fd5 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalSupply < balanceOf[stor5]:
        revert with 0, 17
    if totalSupply - balanceOf[stor5] < balanceOf[stor6]:
        revert with 0, 17
    if balanceOf[stor29] and 2 > -1 / balanceOf[stor29]:
        revert with 0, 17
    if arg1 and 2 * balanceOf[stor29] > -1 / arg1:
        revert with 0, 17
    if not totalSupply - balanceOf[stor5] - balanceOf[stor6]:
        revert with 0, 18
    return (arg1 * 2 * balanceOf[stor29] / totalSupply - balanceOf[stor5] - balanceOf[stor6])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if totalSupply < balanceOf[stor5]:
        revert with 0, 17
    if totalSupply - balanceOf[stor5] < balanceOf[stor6]:
        revert with 0, 17
    if balanceOf[stor29] and 2 > -1 / balanceOf[stor29]:
        revert with 0, 17
    if arg2 and 2 * balanceOf[stor29] > -1 / arg2:
        revert with 0, 17
    if not totalSupply - balanceOf[stor5] - balanceOf[stor6]:
        revert with 0, 18
    return (arg2 * 2 * balanceOf[stor29] / totalSupply - balanceOf[stor5] - balanceOf[stor6] > arg1)
}

function sub_79c7a9dd(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(sub_ddab3b73Address)
    call sub_ddab3b73Address.0x79c7a9dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16 = arg1
    stor17 = arg2
    stor19 = arg4
    stor20 = arg5
    stor18 = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg4:
        revert with 0, 17
    if arg1 + arg2 + arg4 > !arg5:
        revert with 0, 17
    if arg1 + arg2 + arg4 + arg5 > !arg3:
        revert with 0, 17
    stor21 = arg1 + arg2 + arg4 + arg5 + arg3
    stor22 = arg6
    require stor21 < arg6 / 4
}

function getTotalDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_ddab3b73Address)
    staticcall sub_ddab3b73Address.0x993df8c6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalDividends() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor15[address(arg1)] = uint8(arg2)
    require ext_code.size(sub_ddab3b73Address)
    if not arg2:
        call sub_ddab3b73Address.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call sub_ddab3b73Address.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function triggerZeusBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor48 = 1
    mem[128] = WBNBAddress
    mem[160] = this.address
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, stor5, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor48 = 0
    if arg2:
        stor34 = block.timestamp
        emit BuybackMultiplierActive(stor35);
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    require arg6 == arg6
    if not arg1:
        revert with 0, 'ForeverGrow/invalid-address-0'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xea2aa0a1be11a07ed86d755c93467f4f82362b452371d1ba94d1715123511acb, address(arg1), address(arg2), arg3, arg4, arg5)), arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'ForeverGrow/invalid-permit'
    if arg4:
        if block.timestamp > arg4:
            revert with 0, 'ForeverGrow/permit-expired'
    if nonces[address(arg1)] == -1:
        revert with 0, 17
    nonces[address(arg1)]++
    if arg3 != nonces[address(arg1)]:
        revert with 0, 'ForeverGrow/invalid-nonce'
    if arg5:
        allowance[address(arg1)][address(arg2)] = totalSupply
        emit Approval(totalSupply, arg1, arg2);
    else:
        allowance[address(arg1)][address(arg2)] = 0
        emit Approval(0, arg1, arg2);
}

function getMultipliedFee() {
    if 24 * 3600 > !launchedAtTimestamp:
        revert with 0, 17
    if launchedAtTimestamp + (24 * 3600) > block.timestamp:
        if stor21 and 5 * 3600 > -1 / stor21:
            revert with 0, 17
        if not stor22:
            revert with 0, 18
        return (5 * 3600 * stor21 / stor22)
    if stor34 > !stor35:
        revert with 0, 17
    if stor34 + stor35 <= block.timestamp:
        return stor21
    if stor34 > !stor35:
        revert with 0, 17
    if stor34 + stor35 < block.timestamp:
        revert with 0, 17
    if stor21 and stor32 > -1 / stor21:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor21 * stor32 / stor33 < stor21:
        revert with 0, 17
    if (stor21 * stor32 / stor33) - stor21 and stor34 + stor35 - block.timestamp > -1 / (stor21 * stor32 / stor33) - stor21:
        revert with 0, 17
    if not stor35:
        revert with 0, 18
    if stor21 > !((stor34 * stor21 * stor32 / stor33) + (stor35 * stor21 * stor32 / stor33) - (block.timestamp * stor21 * stor32 / stor33) - (stor34 * stor21) - (stor35 * stor21) + (block.timestamp * stor21) / stor35):
        revert with 0, 17
    return (stor21 + ((stor34 * stor21 * stor32 / stor33) + (stor35 * stor21 * stor32 / stor33) - (block.timestamp * stor21 * stor32 / stor33) - (stor34 * stor21) - (stor35 * stor21) + (block.timestamp * stor21) / stor35))
}

function sub_c99913c5(?) {
    mem[96] = 0xc322a35500000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_ddab3b73Address)
    staticcall sub_ddab3b73Address.0xc322a355 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96] + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _5:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _13 + (32 * _5) + -mem[64] + 64
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1 > !launchedAt:
        revert with 0, 17
    if launchedAt + 1 >= block.number:
        if stor22 < 1:
            revert with 0, 17
        return (stor22 - 1)
    if not arg1:
        return stor21
    if 24 * 3600 > !launchedAtTimestamp:
        revert with 0, 17
    if launchedAtTimestamp + (24 * 3600) > block.timestamp:
        if stor21 and 5 * 3600 > -1 / stor21:
            revert with 0, 17
        if not stor22:
            revert with 0, 18
        return (5 * 3600 * stor21 / stor22)
    if stor34 > !stor35:
        revert with 0, 17
    if stor34 + stor35 <= block.timestamp:
        return stor21
    if stor34 > !stor35:
        revert with 0, 17
    if stor34 + stor35 < block.timestamp:
        revert with 0, 17
    if stor21 and stor32 > -1 / stor21:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor21 * stor32 / stor33 < stor21:
        revert with 0, 17
    if (stor21 * stor32 / stor33) - stor21 and stor34 + stor35 - block.timestamp > -1 / (stor21 * stor32 / stor33) - stor21:
        revert with 0, 17
    if not stor35:
        revert with 0, 18
    if stor21 > !((stor34 * stor21 * stor32 / stor33) + (stor35 * stor21 * stor32 / stor33) - (block.timestamp * stor21 * stor32 / stor33) - (stor34 * stor21) - (stor35 * stor21) + (block.timestamp * stor21) / stor35):
        revert with 0, 17
    return (stor21 + ((stor34 * stor21 * stor32 / stor33) + (stor35 * stor21 * stor32 / stor33) - (block.timestamp * stor21 * stor32 / stor33) - (stor34 * stor21) - (stor35 * stor21) + (block.timestamp * stor21) / stor35))
}



}
