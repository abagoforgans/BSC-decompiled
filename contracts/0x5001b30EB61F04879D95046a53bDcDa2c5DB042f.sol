contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const totalSupply = 10^16

const decimals = 9

const symbol = '', 0


address owner;
address stor1;
uint256 unlockTime;
mapping of uint256 stor3;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint256 stor9;
address routerAddress;
address pairAddress;
uint256 stor12;
uint256 stor13;
uint16 stor14;
uint16 stor14; offset 16
uint16 stor14; offset 32
uint16 stor15;
uint16 stor15; offset 16
uint16 stor15; offset 32
uint256 totalFees;
address operatorAddress;
uint8 sub_fc739af0; offset 160
uint8 sub_79c4bdc1; offset 168
uint8 sub_f9017966; offset 176
uint128 stor19; offset 176
uint128 stor19; offset 168
uint128 stor19; offset 160
address stor19;
uint256 tradingActiveBlock;
uint256 snipeBlocks;
uint256 stor22;
uint256 launchedAt;
uint8 swapEnabled; offset 8
uint256 stor24; offset 8
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function isSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function totalFees() {
    return totalFees
}

function snipeBlocks() {
    return snipeBlocks
}

function operator() {
    return operatorAddress
}

function getUnlockTime() {
    return unlockTime
}

function swapEnabled() {
    return bool(uint8(swapEnabled))
}

function sub_79c4bdc1(?) {
    return bool(sub_79c4bdc1)
}

function getOwner() {
    return owner
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

function tradingActiveBlock() {
    return tradingActiveBlock
}

function router() {
    return routerAddress
}

function sub_f9017966(?) {
    return bool(sub_f9017966)
}

function sub_fc739af0(?) {
    return bool(sub_fc739af0)
}

function buyFee() {
    return uint16(stor14.field_0), uint16(stor14.field_0), uint16(stor14.field_32)
}

function sellFee() {
    return uint16(stor15.field_0), uint16(stor15.field_0), uint16(stor15.field_32)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    operatorAddress = arg1
    emit SetOperator(arg1);
}

function removeSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor7[address(arg1)] = 0
    emit RemovedSniper(arg1);
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    address(stor19.field_0) = arg1
    emit 0x3706f034: arg1
}

function excludeFromFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor6[address(arg1)] = uint8(arg2)
    emit ExcludeFromFee(address(arg1), arg2);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(248, 0, stor24) = Mask(248, 0, arg1)
    swapThreshold = arg2
    emit SetSwapBackSettings(arg1, arg2);
}

function sub_a4e13071(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    unlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function setGasPriceLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require arg1 >= 75
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    stor22 = 10^9 * arg1
    emit GasLimitSet(arg1);
}

function tokenFromReflection(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not stor9 / 10^16:
        revert with 0, 18
    return (arg1 / stor9 / 10^16)
}

function sub_f7baf3c5(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3[address(arg1)] > stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not stor9 / 10^16:
        revert with 0, 18
    return (stor3[address(arg1)] / stor9 / 10^16)
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

function ClearStuckBalance() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call address(stor19.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x98be19c3: eth.balance(this.address), address(stor19.field_0)
}

function setProtectionSettings(bool arg1, bool arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(96, 0, stor19.field_160) = Mask(96, 0, arg3)
    Mask(88, 0, stor19.field_168) = Mask(88, 0, arg2)
    Mask(88, 0, stor19.field_168) = 0
    Mask(80, 0, stor19.field_176) = Mask(80, 0, arg1)
    emit 0xbe22cc99: arg1, arg2, arg3
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

function sub_6951a079(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require msg.sender == operatorAddress
    if uint16(arg1) > -uint16(arg2) + 65535:
        revert with 0, 17
    if uint16(uint16(arg2) + uint16(arg1)) > -uint16(arg3) + 65535:
        revert with 0, 17
    if uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))) > 30:
        revert with 0, 'Total fees must be below 30%'
    uint16(stor14.field_0) = uint16(arg1)
    uint16(stor14.field_16) = uint16(arg2)
    uint16(stor14.field_32) = uint16(arg3)
    emit SetBuyFee(arg1 << 240, arg2 << 240, uint16(arg3));
}

function sub_fc6c2bda(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require msg.sender == operatorAddress
    if uint16(arg1) > -uint16(arg2) + 65535:
        revert with 0, 17
    if uint16(uint16(arg2) + uint16(arg1)) > -uint16(arg3) + 65535:
        revert with 0, 17
    if uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))) > 30:
        revert with 0, 'Total fees must be below 30%'
    uint16(stor15.field_0) = uint16(arg1)
    uint16(stor15.field_16) = uint16(arg2)
    uint16(stor15.field_32) = uint16(arg3)
    emit SetSellFee(arg1 << 240, arg2 << 240, uint16(arg3));
}

function setMaxTX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    if 10^9 * arg1 <= 2 * 10^13:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can't set TxLimit lower than 0.2% or higher than 2%'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    if 10^9 * arg1 >= 2 * 10^14:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can't set TxLimit lower than 0.2% or higher than 2%'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    stor12 = 10^9 * arg1
    emit 0xa3bf5649: arg1
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    if 10^9 * arg1 <= 2 * 10^13:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can't set MaxWallet lower than 0.2% or higher than 2%'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    if 10^9 * arg1 >= 2 * 10^14:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Can't set MaxWallet lower than 0.2% or higher than 2%'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    stor13 = 10^9 * arg1
    emit 0xa2c87c3e: arg1
}

function transferForeignToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't let you take all native token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(stor19.field_0) with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x91cecbb8: address(arg1), ext_call.return_data[0]
}



}
