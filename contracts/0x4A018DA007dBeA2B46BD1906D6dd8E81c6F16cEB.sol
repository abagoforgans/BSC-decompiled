contract main {




// =====================  Runtime code  =====================


#
#  - excludePresaleAddresses(address arg1, address arg2)
#  - setExcludedFromReward(address arg1, bool arg2)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_2610eaca(?)
#  - getCirculatingSupply()
#  - tokenFromReflection(uint256 arg1)
#  - transferOwner(address arg1)
#  - balanceOf(address arg1)
#  - transfer(address arg1, uint256 arg2)
#  - sub_e8a0e3f9(?)
#  - _fallback()
#
const name = 'Royal Pad', 0

const totalSupply = 1000 * 10^18

const maxBuyTaxes = 2000

const decimals = 9

const symbol = 'RPAD', 0

const maxTransferTaxes = 2000

const maxSellTaxes = 2000

const DEAD = 57005


address owner;
mapping of uint8 stor3;
uint256 stor4;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
uint8 stor11;
uint16 stor14;
uint16 stor14; offset 16
uint16 stor14; offset 32
uint16 stor14; offset 48
uint16 stor14; offset 64
uint16 stor14; offset 80
uint16 stor14; offset 96
uint16 stor15;
uint16 stor15; offset 16
uint16 stor15; offset 32
uint16 stor15; offset 48
uint16 stor15; offset 64
uint16 stor15; offset 80
uint16 stor15; offset 96
uint16 stor16;
uint16 stor16; offset 16
uint16 stor16; offset 32
uint16 stor16; offset 48
uint16 stor16; offset 64
uint16 stor16; offset 80
uint16 stor16; offset 96
uint16 stor17;
uint16 stor17; offset 16
uint16 stor17; offset 32
uint16 stor17; offset 48
uint16 stor17; offset 64
uint16 stor17; offset 80
address dexRouterAddress;
uint32 stor19;
address lpPairAddress;
address sub_759c3263Address;
address stor21;
address stor22;
address stor23;
address stor24;
uint8 contractSwapEnabled; offset 8
uint256 stor25; offset 8
uint256 sub_e4fcfd18;
uint256 swapThreshold;
uint256 sub_2e8fa821;
uint256 stor30;
uint256 stor31;
uint8 tradingEnabled;
uint8 _hasLiqBeenAdded; offset 8
uint8 sub_e72edba4; offset 176
address stor32; offset 16
uint256 stor32; offset 16

function swapThreshold() {
    return swapThreshold
}

function dexRouter() {
    return dexRouterAddress
}

function sub_2e8fa821(?) {
    return sub_2e8fa821
}

function lpPair() {
    return address(lpPairAddress)
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function _hasLiqBeenAdded() {
    return bool(_hasLiqBeenAdded)
}

function isExcludedFromLimits(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function sub_759c3263(?) {
    return sub_759c3263Address
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function getOwner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e4fcfd18(?) {
    return sub_e4fcfd18
}

function sub_e72edba4(?) {
    return bool(sub_e72edba4)
}

function contractSwapEnabled() {
    return bool(uint8(contractSwapEnabled))
}

function getMaxTX() {
    return (stor30 / 10^9)
}

function getMaxWallet() {
    return (stor31 / 10^9)
}

function sub_f94aa1b4(?) {
    return stor21, stor22, stor23, stor24
}

function setTokenToBuy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    sub_759c3263Address = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    stor6[stor0] = 0
    owner = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
}

function _ratios() {
    return uint16(stor17.field_0), 
           uint16(stor17.field_0),
           uint16(stor17.field_0),
           uint16(stor17.field_0),
           uint16(stor17.field_64),
           uint16(stor17.field_0)
}

function setExcludedFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    stor6[address(arg1)] = uint8(arg2)
}

function setExcludedFromLimits(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    stor7[address(arg1)] = uint8(arg2)
}

function setContractSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    Mask(248, 0, stor25) = Mask(248, 0, arg1)
    emit ContractSwapEnabledUpdated(arg1);
}

function _buyTaxes() {
    return uint16(stor14.field_0), 
           uint16(stor14.field_0),
           uint16(stor14.field_0),
           uint16(stor14.field_0),
           uint16(stor14.field_64),
           uint16(stor14.field_0),
           uint16(stor14.field_96)
}

function _sellTaxes() {
    return uint16(stor15.field_0), 
           uint16(stor15.field_0),
           uint16(stor15.field_0),
           uint16(stor15.field_0),
           uint16(stor15.field_64),
           uint16(stor15.field_0),
           uint16(stor15.field_96)
}

function _transferTaxes() {
    return uint16(stor16.field_0), 
           uint16(stor16.field_0),
           uint16(stor16.field_0),
           uint16(stor16.field_0),
           uint16(stor16.field_64),
           uint16(stor16.field_0),
           uint16(stor16.field_96)
}

function getSniperAmt() {
    staticcall address(stor32.field_16).0x55dbc369 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'ERC20: Zero Address'
    if not arg1:
        revert with 0, 'ERC20: Zero Address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setInitializer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if _hasLiqBeenAdded:
        revert with 0, 'Liquidity is already in.'
    if this.address == arg1:
        revert with 0, 'Can't be self.'
    address(stor32.field_16) = arg1
}

function setWallets(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    stor21 = arg1
    stor22 = arg2
    stor23 = arg3
    stor24 = arg4
}

function approveContractContingency() {
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if not this.address:
        revert with 0, 'ERC20: Zero Address'
    if not dexRouterAddress:
        revert with 0, 'ERC20: Zero Address'
    allowance[address(this.address)][stor18] = -1
    emit Approval(-1, this.address, dexRouterAddress);
    return 1
}

function sweepContingency() {
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if _hasLiqBeenAdded:
        revert with 0, 'Cannot call after liquidity.'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeSniper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    require ext_code.size(address(stor32.field_16))
    call address(stor32.field_16).0x33251a0b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    require ext_code.size(address(stor32.field_16))
    call address(stor32.field_16).0xc6a276c2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall address(stor32.field_16).0xfe575a87 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function setGasPriceLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if arg1 < 75:
        revert with 0, 'Too low.'
    require ext_code.size(address(stor32.field_16))
    call address(stor32.field_16).setGasPriceLimit(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: Zero Address'
    if not arg1:
        revert with 0, 'ERC20: Zero Address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: Zero Address'
    if not arg1:
        revert with 0, 'ERC20: Zero Address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function setProtectionSettings(bool arg1, bool arg2, bool arg3, bool arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    require ext_code.size(address(stor32.field_16))
    call address(stor32.field_16).setProtections(bool arg1, bool arg2, bool arg3, bool arg4) with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSwapSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if arg1 > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    swapThreshold = 1000 * 10^18 * arg1 / arg2
    if arg3 > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
        revert with 'NH{q', 17
    if not arg4:
        revert with 'NH{q', 18
    sub_2e8fa821 = 1000 * 10^18 * arg3 / arg4
    sub_e4fcfd18 = arg5
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if tradingEnabled:
        revert with 0, 'Trading already enabled!'
    if not _hasLiqBeenAdded:
        revert with 0, 'Liquidity must be added.'
    if not address(stor32.field_16):
        Mask(240, 0, stor32.field_16) = Mask(240, 0, this.address)
    require ext_code.size(address(stor32.field_16))
    call address(stor32.field_16).setLaunch(address arg1, uint32 arg2, uint64 arg3, uint8 arg4) with:
         gas gas_remaining wei
        args 0, uint32(stor19), block.number << 224, block.timestamp << 192, 9
    tradingEnabled = 1
    stor11 = 0
}

function setMaxWalletSize(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if arg1 > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if 1000 * 10^18 * arg1 / arg2 < 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Max Wallet amt must be above 0.1% of total supply.'
    if arg1 > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    stor31 = 1000 * 10^18 * arg1 / arg2
}

function setMaxTxPercent(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if arg1 > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if 1000 * 10^18 * arg1 / arg2 < 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Max Transaction amt must be above 0.1% of total supply.'
    if arg1 > 0x4b8ed0283a6d3df769fb7e0b75e52f01a33f7668a62f547:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    stor30 = 1000 * 10^18 * arg1 / arg2
}

function setLpPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if not arg2:
        stor3[address(arg1)] = 0
        require ext_code.size(address(stor32.field_16))
        call address(stor32.field_16).0x80c581d1 with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        if stor4:
            if block.timestamp < stor4:
                revert with 'NH{q', 17
            if block.timestamp - stor4 <= 72 * 24 * 3600:
                revert with 0, '3 Day cooldown.!'
        stor3[address(arg1)] = 1
        stor4 = block.timestamp
        require ext_code.size(address(stor32.field_16))
        call address(stor32.field_16).0x80c581d1 with:
             gas gas_remaining wei
            args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f08f43a2(?) {
    require calldata.size - 4 >= 160
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    uint16(stor17.field_0) = uint16(arg1)
    uint16(stor17.field_16) = uint16(arg2)
    uint16(stor17.field_32) = uint16(arg3)
    uint16(stor17.field_48) = uint16(arg4)
    uint16(stor17.field_64) = uint16(arg5)
    if uint16(arg1) > -uint16(arg2) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg2) + uint16(arg1)) > -uint16(arg3) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))) > -uint16(arg4) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))) > -uint16(arg5) + 65535:
        revert with 'NH{q', 17
    uint16(stor17.field_80) = uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))))
}

function sub_8f55b3b3(?) {
    require calldata.size - 4 >= 192
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    require arg6 == uint16(arg6)
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if uint16(arg1) > -uint16(arg2) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg2) + uint16(arg1)) > -uint16(arg3) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))) > -uint16(arg4) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))) > -uint16(arg5) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))))) > -uint16(arg6) + 65535:
        revert with 'NH{q', 17
    require uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))))) <= 2000
    uint16(stor15.field_16) = uint16(arg2)
    uint16(stor15.field_0) = uint16(arg1)
    uint16(stor15.field_32) = uint16(arg3)
    uint16(stor15.field_48) = uint16(arg4)
    uint16(stor15.field_64) = uint16(arg5)
    uint16(stor15.field_80) = uint16(arg6)
    if uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))))) < uint16(arg1):
        revert with 'NH{q', 17
    uint16(stor15.field_96) = uint16(uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))))) - uint16(arg1))
}

function sub_db49c245(?) {
    require calldata.size - 4 >= 192
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    require arg6 == uint16(arg6)
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if uint16(arg1) > -uint16(arg2) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg2) + uint16(arg1)) > -uint16(arg3) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))) > -uint16(arg4) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))) > -uint16(arg5) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))))) > -uint16(arg6) + 65535:
        revert with 'NH{q', 17
    require uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))))) <= 2000
    uint16(stor14.field_16) = uint16(arg2)
    uint16(stor14.field_0) = uint16(arg1)
    uint16(stor14.field_32) = uint16(arg3)
    uint16(stor14.field_48) = uint16(arg4)
    uint16(stor14.field_64) = uint16(arg5)
    uint16(stor14.field_80) = uint16(arg6)
    if uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))))) < uint16(arg1):
        revert with 'NH{q', 17
    uint16(stor14.field_96) = uint16(uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))))) - uint16(arg1))
}

function sub_ee7c1839(?) {
    require calldata.size - 4 >= 192
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    require arg6 == uint16(arg6)
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    if uint16(arg1) > -uint16(arg2) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg2) + uint16(arg1)) > -uint16(arg3) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))) > -uint16(arg4) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))) > -uint16(arg5) + 65535:
        revert with 'NH{q', 17
    if uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1))))) > -uint16(arg6) + 65535:
        revert with 'NH{q', 17
    require uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))))) <= 2000
    uint16(stor16.field_16) = uint16(arg2)
    uint16(stor16.field_0) = uint16(arg1)
    uint16(stor16.field_32) = uint16(arg3)
    uint16(stor16.field_48) = uint16(arg4)
    uint16(stor16.field_64) = uint16(arg5)
    uint16(stor16.field_80) = uint16(arg6)
    if uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))))) < uint16(arg1):
        revert with 'NH{q', 17
    uint16(stor16.field_96) = uint16(uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(uint16(arg2) + uint16(arg1)))))) - uint16(arg1))
}

function setNewRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller =/= owner.'
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg1.0xad5c4648 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).0xe6a43905 with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        staticcall arg1.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall arg1.0xad5c4648 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call address(ext_call.return_data[0]).0xc9c65396 with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    address(lpPairAddress) = ext_call.return_data[12 len 20]
    dexRouterAddress = arg1
    if not this.address:
        revert with 0, 'ERC20: Zero Address'
    if not arg1:
        revert with 0, 'ERC20: Zero Address'
    allowance[address(this.address)][address(arg1)] = -1
    emit Approval(-1, this.address, arg1);
}



}
