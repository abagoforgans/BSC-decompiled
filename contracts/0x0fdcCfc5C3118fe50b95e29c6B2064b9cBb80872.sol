contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'World of Defish', 0

const InitialSupply = 1000000000 * 10^18

const decimals = 18

const TeamWallet = 0xe06ed488f6021af5c62c0ba98ed4b8f1b057c4dc

const symbol = 'WOD', 0


address owner;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint256 stor3;
uint256 totalSupply;
uint256 balanceLimit;
uint256 sellLimit;
uint256 buyLimit;
uint8 stor12;
uint8 stor12; offset 8
uint8 stor12; offset 16
uint8 stor12; offset 24
uint8 stor12; offset 32
uint8 stor12; offset 40
address stor13;
uint256 totalLPBNB;
uint8 stor15;
uint8 sellLockDisabled; offset 8
uint8 sub_39bf3648; offset 16
uint256 stor15; offset 16
uint256 stor15; offset 8
uint256 sellLockTime;
uint8 manualConversion;
uint8 tradingEnabled; offset 8
address stor17; offset 16
uint256 stor17; offset 8
uint256 stor18;

function getSellLockTimeInSeconds() {
    return sellLockTime
}

function totalSupply() {
    return totalSupply
}

function sub_39bf3648(?) {
    return bool(sub_39bf3648)
}

function tradingEnabled() {
    return bool(tradingEnabled)
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

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function sellLockTime() {
    return sellLockTime
}

function _fallback() payable {
  stop
}

function getLimits() {
    return balanceLimit / 10^18, sellLimit / 10^18
}

function SetupEnableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor17.field_8) = 1
}

function SetupDisableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor17.field_8) = 0
}

function getBurnedTokens() {
    if 1000000000 * 10^18 < totalSupply:
        revert with 'NH{q', 17
    return (-totalSupply + 1000000000 * 10^18 / 10^18)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function AddressResetSellLock() {
    if block.timestamp > -sellLockTime - 1:
        revert with 'NH{q', 17
    stor3[address(msg.sender)] = block.timestamp + sellLockTime
}

function getLiquidityReleaseTimeInSeconds() {
    if block.timestamp >= stor18:
        return 0
    if stor18 < block.timestamp:
        revert with 'NH{q', 17
    return (stor18 - block.timestamp)
}

function getTaxes() {
    return uint8(stor12.field_0), 
           uint8(stor12.field_0),
           uint8(stor12.field_0),
           uint8(stor12.field_0),
           uint8(stor12.field_8),
           uint8(stor12.field_0)
}

function TeamSwitchManualBNBConversion(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    manualConversion = uint8(arg1)
}

function SetupLiquidityTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor17.field_16) = arg1
}

function TeamDisableSellLock(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor15.field_8) = Mask(248, 0, arg1)
}

function TeamEnableSellLock(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor15.field_16) = Mask(240, 0, arg1)
}

function sendBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call 0xe06ed488f6021af5c62c0ba98ed4b8f1b057c4dc with:
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
    uint8(stor12.field_0) = arg1
    uint8(stor12.field_8) = arg2
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
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
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

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)].field_0 += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function TeamUpdateLimits(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if arg2 and 10^18 > -1 / arg2:
        revert with 'NH{q', 17
    if arg3 and 10^18 > -1 / arg3:
        revert with 'NH{q', 17
    balanceLimit = 10^18 * arg1
    sellLimit = 10^18 * arg2
    buyLimit = 10^18 * arg3
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)].field_0 < arg2:
        revert with 0, '<0 allowance'
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)].field_0 -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function TeamSetTaxes(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4, uint8 arg5, uint8 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > -arg2 + 255:
        revert with 'NH{q', 17
    if uint8(arg1 + arg2) > -arg3 + 255:
        revert with 'NH{q', 17
    if uint8(uint8(arg1 + arg2) + arg3) != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'burn+liq+marketing needs to equal 100%'
    uint8(stor12.field_24) = arg1
    uint8(stor12.field_32) = arg2
    uint8(stor12.field_40) = arg3
    uint8(stor12.field_0) = arg4
    uint8(stor12.field_8) = arg5
    uint8(stor12.field_16) = arg6
}

function burnLiq() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(stor17.field_16))
    staticcall address(stor17.field_16).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(stor17.field_16))
    call address(stor17.field_16).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor13, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor13)
    call stor13.removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0], 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function TeamCreateLPandBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor15.field_0) = 1
    if uint8(stor12.field_32) > -uint8(stor12.field_40) + 255:
        revert with 'NH{q', 17
    if balanceOf[address(this.address)] >= sellLimit / 5:
        if uint8(uint8(stor12.field_32) + uint8(stor12.field_40)):
            if sellLimit / 5 and uint8(stor12.field_32) > -1 / sellLimit / 5:
                revert with 'NH{q', 17
            if not uint8(uint8(stor12.field_32) + uint8(stor12.field_40)):
                revert with 'NH{q', 18
            if sellLimit / 5 < sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)):
                revert with 'NH{q', 17
            if sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)) < sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)) / 2:
                revert with 'NH{q', 17
            if -sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)) / 2 > -(sellLimit / 5) - 1:
                revert with 'NH{q', 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor13:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor13].field_0 = -(sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)) / 2) + (sellLimit / 5)
            emit Approval((-(sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)) / 2) + (sellLimit / 5)), this.address, stor13);
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
            mem[ceil32(return_data.size) + 196] = -(sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)) / 2) + (sellLimit / 5)
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor13)
            call stor13.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args -(sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)) / 2) + (sellLimit / 5), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 'NH{q', 17
            if False and (sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40))) - (sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)) / 2) > 0:
                revert with 'NH{q', 17
            if not -(sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)) / 2) + (sellLimit / 5):
                revert with 'NH{q', 18
            if totalLPBNB > -(0 / -(sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)) / 2) + (sellLimit / 5)) - 1:
                revert with 'NH{q', 17
            totalLPBNB += 0 / -(sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)) / 2) + (sellLimit / 5)
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor13:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor13].field_0 = sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)) / 2
            allowance[address(this.address)][stor13].field_255 = 0
            emit Approval((sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)) / 2), this.address, stor13);
            require ext_code.size(stor13)
            call stor13.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value 0 / -(sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40)) / 2) + (sellLimit / 5) wei
                 gas gas_remaining wei
                args address(this.address), Mask(255, 1, sellLimit / 5 * uint8(stor12.field_32) / uint8(uint8(stor12.field_32) + uint8(stor12.field_40))), 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 'NH{q', 17
            call 0xe06ed488f6021af5c62c0ba98ed4b8f1b057c4dc with:
                 gas 30000 wei
    uint8(stor15.field_0) = 0
}



}
