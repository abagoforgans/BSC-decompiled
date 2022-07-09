contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const decimals = 18

const symbol = '', 0


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
address sub_0dc73863Address;
address sub_89d456c5Address;
address sub_779454f4Address;
uint256 totalSupply;
uint256 sub_33477327;
uint256 sub_cf4be394;
uint256 _maxWalletToken;
mapping of uint256 _balances;
mapping of uint256 allowance;
mapping of uint8 stor14;
mapping of uint8 stor15;
mapping of uint8 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor33; offset 1
uint256 stor33;
uint256 stor36;
uint256 stor37;
uint256 stor38;
uint256 stor39;
uint256 stor40;
uint256 stor41;
uint256 sub_0e5a9231;
address _routerAddress;
address _pairAddress;
uint256 sub_32d873d8;
uint8 _tradingOpen;
uint8 sub_09afb3ce; offset 8
uint8 stor46; offset 16
uint256 stor46; offset 8

function sub_09afb3ce(?) {
    return bool(sub_09afb3ce)
}

function sub_0dc73863(?) {
    return sub_0dc73863Address
}

function sub_0e5a9231(?) {
    return sub_0e5a9231
}

function totalSupply() {
    return totalSupply
}

function sub_32d873d8(?) {
    return sub_32d873d8
}

function sub_33477327(?) {
    return sub_33477327
}

function _balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balances[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balances[address(arg1)]
}

function sub_779454f4(?) {
    return sub_779454f4Address
}

function _maxWalletToken() {
    return _maxWalletToken
}

function getOwner() {
    return owner
}

function sub_89d456c5(?) {
    return sub_89d456c5Address
}

function _pair() {
    return _pairAddress
}

function _tradingOpen() {
    return bool(_tradingOpen)
}

function sub_cf4be394(?) {
    return sub_cf4be394
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _router() {
    return _routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function sub_54e94356(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor38 = 0
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function sub_0df694f5(?) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor40 = arg1
    stor41 = arg2
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function sub_bec359fe(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor38 = block.timestamp
    stor39 = arg1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
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

function allowTrading(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    _tradingOpen = uint8(arg1)
    sub_32d873d8 = block.number
}

function sub_f74d36de(?) {
    if stor38 > !stor39:
        revert with 0, 17
    if stor38 + stor39 < stor38:
        revert with 0, 'SafeMath: addition overflow'
    if stor38 + stor39 <= block.timestamp:
        return 0
    return 1
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

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14[address(arg1)] = uint8(arg2)
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor15[address(arg1)] = uint8(arg2)
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_0dc73863Address = arg1
    sub_89d456c5Address = arg2
    sub_779454f4Address = arg3
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    Mask(248, 0, stor46.field_8) = Mask(248, 0, arg1)
    if totalSupply and arg2 > -1 / totalSupply:
        revert with 0, 17
    sub_0e5a9231 = totalSupply * arg2 / 10000
}

function getCirculatingSupply() {
    if _balances[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < _balances[stor3]:
        revert with 0, 17
    if _balances[stor4] > totalSupply - _balances[stor3]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - _balances[stor3] < _balances[stor4]:
        revert with 0, 17
    return (totalSupply - _balances[stor3] - _balances[stor4])
}

function sub_2f99a787(?) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor29 = arg1
    stor30 = arg2
    stor31 = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor24 = arg1 + arg2 + arg3
}

function sub_c8f9707c(?) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor21 = arg1
    stor22 = arg2
    stor23 = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor24 = arg1 + arg2 + arg3
}

function setBuyFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor17 = arg1
    stor18 = arg2
    stor19 = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor20 = arg1 + arg2 + arg3
    stor37 = arg4
}

function setSellFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor25 = arg1
    stor26 = arg2
    stor27 = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor28 = arg1 + arg2 + arg3
    stor37 = arg4
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not totalSupply:
        _maxWalletToken = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxWalletToken = totalSupply * arg1 / 10000
}

function setBuyTxLimitInPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not totalSupply:
        sub_33477327 = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        sub_33477327 = totalSupply * arg1 / 10000
}

function setSellTxLimitInPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not totalSupply:
        sub_cf4be394 = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        sub_cf4be394 = totalSupply * arg1 / 10000
}

function sub_df7383c6(?) {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    uint8(stor46.field_16) = 1
    if not _balances[this.address]:
        revert with 0, 'nothing to swap back'
    if _balances[this.address] and uint256(stor33.field_0) > -1 / _balances[this.address]:
        revert with 0, 17
    if not _balances[this.address]:
        revert with 0, 18
    if _balances[this.address] * uint256(stor33.field_0) / _balances[this.address] != uint256(stor33.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not stor36:
        revert with 0, 'SafeMath: division by zero', 0
    if _balances[this.address] * uint256(stor33.field_0) / stor36 / 2 > _balances[this.address]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if _balances[this.address] < _balances[this.address] * uint256(stor33.field_0) / stor36 / 2:
        revert with 0, 17
    mem[320] = this.address
    mem[352] = stor2
    mem[384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[388] = _balances[this.address] - (_balances[this.address] * uint256(stor33.field_0) / stor36 / 2)
    idx = 0
    s = 580
    t = 320
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(_routerAddress)
    call _routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _balances[this.address] - (_balances[this.address] * uint256(stor33.field_0) / stor36 / 2), 0, 160, address(this.address), block.timestamp, 2, mem[580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 17
    if uint255(stor33.field_1) > stor36:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor36 < uint255(stor33.field_1):
        revert with 0, 17
    if not stor36 - uint255(stor33.field_1):
        revert with 0, 'SafeMath: division by zero', 0
    if not stor36 - uint255(stor33.field_1):
        revert with 0, 'SafeMath: division by zero', 0
    if not stor36 - uint255(stor33.field_1):
        revert with 0, 'SafeMath: division by zero', 0
    call sub_89d456c5Address with:
       value 0 / stor36 - uint255(stor33.field_1) wei
         gas 30000 wei
    if not ext_call.success:
        revert with 0, 'marketing receiver rejected ETH transfer'
    call sub_779454f4Address with:
       value 0 / stor36 - uint255(stor33.field_1) wei
         gas 30000 wei
    if not ext_call.success:
        revert with 0, 'buy back receiver rejected ETH transfer'
    if Mask(255, 1, _balances[this.address] * uint256(stor33.field_0) / stor36):
        call _routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value 0 / stor36 - uint255(stor33.field_1) / 2 wei
             gas gas_remaining wei
            args this.address, Mask(255, 1, _balances[this.address] * uint256(stor33.field_0) / stor36), 0, 0, sub_0dc73863Address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        emit AutoLiquify(Mask(255, 1, 0 / stor36 - uint255(stor33.field_1)), _balances[this.address] * uint256(stor33.field_0) / stor36 / 2);
    uint8(stor46.field_16) = 0
}



}
