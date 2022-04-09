contract main {




// =====================  Runtime code  =====================


#
#  - allocateSeigniorage()
#
const bootstrapSupplyExpansionPercent = 450

const premiumPercent = 6500

const bootstrapEpochs = 12

const PERIOD = (6 * 3600)


mapping of uint8 stor0;
uint8 stor1; offset 160
uint8 stor1; offset 168
address operatorAddress;
uint256 stor1;
uint256 stor1;
uint256 startTime;
uint256 epoch;
uint256 epochSupplyContractionLeft;
address dollarAddress;
address bondAddress;
address shareAddress;
address sub_f179acdeAddress;
address dollarOracleAddress;
uint256 dollarPriceOne;
uint256 dollarPriceCeiling;
uint256 seigniorageSaved;
uint256 maxSupplyExpansionPercent;
uint256 maxSupplyExpansionPercentInDebtPhase;
uint256 bondDepletionFloorPercent;
uint256 seigniorageExpansionFloorPercent;
uint256 maxSupplyContractionPercent;
uint256 maxDeptRatioPercent;
uint256 previousEpochDollarPrice;
address sub_f37d2458Address;
uint256 sub_da3cfe9d;

function maxDeptRatioPercent() payable {
    return maxDeptRatioPercent
}

function initialized() payable {
    return bool(uint8(stor1.field_168))
}

function seigniorageExpansionFloorPercent() payable {
    return seigniorageExpansionFloorPercent
}

function migrated() payable {
    return bool(uint8(stor1.field_160))
}

function isInitialized() payable {
    return bool(uint8(stor1.field_168))
}

function dollarOracle() payable {
    return dollarOracleAddress
}

function dollar() payable {
    return dollarAddress
}

function operator() payable {
    return operatorAddress
}

function getReserve() payable {
    return seigniorageSaved
}

function seigniorageSaved() payable {
    return seigniorageSaved
}

function bond() payable {
    return bondAddress
}

function dollarPriceCeiling() payable {
    return dollarPriceCeiling
}

function startTime() payable {
    return startTime
}

function bondDepletionFloorPercent() payable {
    return bondDepletionFloorPercent
}

function maxSupplyExpansionPercentInDebtPhase() payable {
    return maxSupplyExpansionPercentInDebtPhase
}

function epoch() payable {
    return epoch
}

function dollarPriceOne() payable {
    return dollarPriceOne
}

function share() payable {
    return shareAddress
}

function isMigrated() payable {
    return bool(uint8(stor1.field_160))
}

function maxSupplyExpansionPercent() payable {
    return maxSupplyExpansionPercent
}

function sub_da3cfe9d(?) payable {
    return sub_da3cfe9d
}

function maxSupplyContractionPercent() payable {
    return maxSupplyContractionPercent
}

function sub_f179acde(?) payable {
    return sub_f179acdeAddress
}

function sub_f37d2458(?) payable {
    return sub_f37d2458Address
}

function previousEpochDollarPrice() payable {
    return previousEpochDollarPrice
}

function epochSupplyContractionLeft() payable {
    return epochSupplyContractionLeft
}

function _fallback() payable {
    revert
}

function sub_3d2587f1(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    sub_f179acdeAddress = arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    operatorAddress = arg1
}

function setDollarOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    dollarOracleAddress = arg1
}

function sub_8fbf92d8(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if not arg1:
        revert with 0, 'zero'
    sub_f37d2458Address = arg1
}

function sub_f0e25124(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1 > 2000:
        revert with 0, 'out of range'
    sub_da3cfe9d = arg1
}

function sub_0b16596a(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(sub_f179acdeAddress)
    call sub_f179acdeAddress.0xb3ab15fb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9bc25bdf(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(sub_f179acdeAddress)
    call sub_f179acdeAddress.0x97ffe1d7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_05314d52(?) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(sub_f179acdeAddress)
    call sub_f179acdeAddress.0x2ffaaa09 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function nextEpochPoint() payable {
    if not epoch:
        if startTime < startTime:
            revert with 0, 'SafeMath: addition overflow'
        return startTime
    if 6 * 3600 * epoch / epoch != 6 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (6 * 3600 * epoch) + startTime < startTime:
        revert with 0, 'SafeMath: addition overflow'
    return ((6 * 3600 * epoch) + startTime)
}

function sub_aea997a9(?) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(sub_f179acdeAddress)
    call sub_f179acdeAddress.0x54575af4 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getDollarPrice() payable {
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    return ext_call.return_data[14 len 18]
}

function getDollarUpdatedPrice() payable {
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.twap(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    return ext_call.return_data[14 len 18]
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if uint8(stor1.field_168):
        revert with 0, 'Treasury: already initialized'
    dollarAddress = arg1
    bondAddress = arg2
    shareAddress = arg3
    startTime = arg4
    dollarPriceOne = 10^18
    dollarPriceCeiling = 101 * 10^16
    maxSupplyExpansionPercent = 300
    maxSupplyExpansionPercentInDebtPhase = 300
    bondDepletionFloorPercent = 10000
    seigniorageExpansionFloorPercent = 3000
    maxSupplyContractionPercent = 300
    maxDeptRatioPercent = 3500
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    seigniorageSaved = ext_call.return_data[0]
    uint256(stor1.field_0) = msg.sender or 0x1000000000000000000000000000000000000000000 or Mask(80, 176, uint256(stor1.field_0)) or Mask(96, 160, Mask(168, 0, stor1.field_0))
    emit Initialized(block.number, msg.sender);
}

function getBondPremiumRate() payable {
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] <= dollarPriceCeiling:
        return 0
    if dollarPriceOne > Mask(144, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    if not Mask(144, 0, ext_call.return_data[0]) - dollarPriceOne:
        if dollarPriceOne < dollarPriceOne:
            revert with 0, 'SafeMath: addition overflow'
        return dollarPriceOne
    if (6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / Mask(144, 0, ext_call.return_data[0]) - dollarPriceOne != 6500:
        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000) + dollarPriceOne < dollarPriceOne:
        revert with 0, 'SafeMath: addition overflow'
    return (((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000) + dollarPriceOne)
}

function getRedeemableBonds() payable {
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] <= dollarPriceCeiling:
        return 0
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] <= dollarPriceCeiling:
        return 0
    if dollarPriceOne > Mask(144, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    if not Mask(144, 0, ext_call.return_data[0]) - dollarPriceOne:
        if dollarPriceOne < dollarPriceOne:
            revert with 0, 'SafeMath: addition overflow'
        if not dollarPriceOne:
            return 0
        if not ext_call.return_data[0]:
            if not dollarPriceOne:
                revert with 0, 'SafeMath: division by zero'
            return (0 / dollarPriceOne)
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not dollarPriceOne:
            revert with 0, 'SafeMath: division by zero'
        return (10^18 * ext_call.return_data[0] / dollarPriceOne)
    if (6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / Mask(144, 0, ext_call.return_data[0]) - dollarPriceOne != 6500:
        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000) + dollarPriceOne < dollarPriceOne:
        revert with 0, 'SafeMath: addition overflow'
    if not ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000) + dollarPriceOne:
        return 0
    if not ext_call.return_data[0]:
        if not ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000) + dollarPriceOne:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000) + dollarPriceOne)
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000) + dollarPriceOne:
        revert with 0, 'SafeMath: division by zero'
    return (10^18 * ext_call.return_data[0] / ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000) + dollarPriceOne)
}

function getBurnableDollarLeft() payable {
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] > dollarPriceOne:
        return 0
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(bondAddress)
        staticcall bondAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 <= ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -ext_call.return_data[0]:
            if epochSupplyContractionLeft < 0:
                return epochSupplyContractionLeft
            else:
                return 0
        if -1 * Mask(144, 0, ext_call.return_data[0]) * ext_call.return_data[0] / -ext_call.return_data[0] != Mask(144, 0, ext_call.return_data[0]):
            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if epochSupplyContractionLeft < -1 * Mask(144, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^18:
            return epochSupplyContractionLeft
        return (-1 * Mask(144, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 10^18)
    if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(bondAddress)
    staticcall bondAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if maxDeptRatioPercent * ext_call.return_data[0] / 10000 <= ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (maxDeptRatioPercent * ext_call.return_data[0] / 10000) - ext_call.return_data[0]:
        if epochSupplyContractionLeft < 0:
            return epochSupplyContractionLeft
        else:
            return 0
    if (maxDeptRatioPercent * ext_call.return_data[0] / 10000 * Mask(144, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(144, 0, ext_call.return_data[0])) / (maxDeptRatioPercent * ext_call.return_data[0] / 10000) - ext_call.return_data[0] != Mask(144, 0, ext_call.return_data[0]):
        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if epochSupplyContractionLeft < (maxDeptRatioPercent * ext_call.return_data[0] / 10000 * Mask(144, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(144, 0, ext_call.return_data[0])) / 10^18:
        return epochSupplyContractionLeft
    return ((maxDeptRatioPercent * ext_call.return_data[0] / 10000 * Mask(144, 0, ext_call.return_data[0])) - (ext_call.return_data[0] * Mask(144, 0, ext_call.return_data[0])) / 10^18)
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6554726561737572793a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(bondAddress)
    staticcall bondAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(shareAddress)
    staticcall shareAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(sub_f179acdeAddress)
    staticcall sub_f179acdeAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    if uint8(stor1.field_160):
        revert with 0, 'Treasury: migrated'
    require ext_code.size(dollarAddress)
    call dollarAddress.')`^w' with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(dollarAddress)
    call dollarAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dollarAddress)
    call dollarAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bondAddress)
    call bondAddress.')`^w' with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(bondAddress)
    call bondAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(bondAddress)
    staticcall bondAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bondAddress)
    call bondAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(shareAddress)
    call shareAddress.')`^w' with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(shareAddress)
    call shareAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(shareAddress)
    staticcall shareAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(shareAddress)
    call shareAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor1.field_160) = 1
    emit Migration(arg1);
}

function buyBonds(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor0[block.number][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if uint8(stor1.field_160):
        revert with 0, 'Treasury: migrated'
    if block.timestamp < startTime:
        revert with 0, 'Treasury: not started yet'
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(bondAddress)
    staticcall bondAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(shareAddress)
    staticcall shareAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(sub_f179acdeAddress)
    staticcall sub_f179acdeAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7754726561737572793a2063616e6e6f7420707572636861736520626f6e64732077697468207a65726f20616d6f756e,
                    mem[212 len 16]
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] != arg2:
        revert with 0, 'Treasury: dollar price moved'
    if ext_call.return_data[14 len 18] >= dollarPriceOne:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xfe54726561737572793a20646f6c6c61725072696365206e6f7420656c696769626c6520666f7220626f6e642070757263686173,
                    mem[216 len 12]
    if arg1 > epochSupplyContractionLeft:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6554726561737572793a206e6f7420656e6f75676820626f6e64206c65667420746f2070757263686173,
                    mem[206 len 22]
    if not arg1:
        require ext_code.size(dollarAddress)
        staticcall dollarAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(bondAddress)
        staticcall bondAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                revert with 0, 'over max debt ratio'
        else:
            if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                revert with 0, 'over max debt ratio'
        require ext_code.size(dollarAddress)
        call dollarAddress.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(bondAddress)
        call bondAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 > epochSupplyContractionLeft:
            revert with 0, 'SafeMath: subtraction overflow'
        epochSupplyContractionLeft -= arg1
        require ext_code.size(dollarOracleAddress)
        call dollarOracleAddress.update() with:
             gas gas_remaining wei
        emit BoughtBonds(arg1, 0, msg.sender);
    else:
        if dollarPriceOne * arg1 / arg1 != dollarPriceOne:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(dollarAddress)
        staticcall dollarAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(bondAddress)
        staticcall bondAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] > 0:
                revert with 0, 'over max debt ratio'
        else:
            if maxDeptRatioPercent * ext_call.return_data[0] / ext_call.return_data[0] != maxDeptRatioPercent:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if (dollarPriceOne * arg1 / 10^18) + ext_call.return_data[0] > maxDeptRatioPercent * ext_call.return_data[0] / 10000:
                revert with 0, 'over max debt ratio'
        require ext_code.size(dollarAddress)
        call dollarAddress.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(bondAddress)
        call bondAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, dollarPriceOne * arg1 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 > epochSupplyContractionLeft:
            revert with 0, 'SafeMath: subtraction overflow'
        epochSupplyContractionLeft -= arg1
        require ext_code.size(dollarOracleAddress)
        call dollarOracleAddress.update() with:
             gas gas_remaining wei
        emit BoughtBonds(arg1, dollarPriceOne * arg1 / 10^18, msg.sender);
    stor0[block.number][tx.origin] = 1
    stor0[block.number][msg.sender] = 1
}

function redeemBonds(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor0[block.number][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if uint8(stor1.field_160):
        revert with 0, 'Treasury: migrated'
    if block.timestamp < startTime:
        revert with 0, 'Treasury: not started yet'
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(bondAddress)
    staticcall bondAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(shareAddress)
    staticcall shareAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    require ext_code.size(sub_f179acdeAddress)
    staticcall sub_f179acdeAddress.0x570ca735 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Treasury: need more permission'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6554726561737572793a2063616e6e6f742072656465656d20626f6e64732077697468207a65726f20616d6f756e,
                    mem[210 len 18]
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] != arg2:
        revert with 0, 'Treasury: dollar price moved'
    if ext_call.return_data[14 len 18] <= dollarPriceCeiling:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0xfe54726561737572793a20646f6c6c61725072696365206e6f7420656c696769626c6520666f7220626f6e642070757263686173,
                    mem[216 len 12]
    require ext_code.size(dollarOracleAddress)
    staticcall dollarOracleAddress.consult(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args dollarAddress, 10^18
    if not ext_call.success:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x7454726561737572793a206661696c656420746f20636f6e73756c7420646f6c6c61722070726963652066726f6d20746865206f7261636c,
                    mem[220 len 8]
    require return_data.size >= 32
    if ext_call.return_data[14 len 18] <= dollarPriceCeiling:
        revert with 0, 'Treasury: invalid bond rate'
    if dollarPriceOne > Mask(144, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: subtraction overflow'
    if not Mask(144, 0, ext_call.return_data[0]) - dollarPriceOne:
        if dollarPriceOne < dollarPriceOne:
            revert with 0, 'SafeMath: addition overflow'
        if dollarPriceOne <= 0:
            revert with 0, 'Treasury: invalid bond rate'
        if not arg1:
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 32, 37, 0x7454726561737572793a20747265617375727920686173206e6f206d6f7265206275646765, mem[393 len 27]
            if seigniorageSaved >= 0:
                if 0 > seigniorageSaved:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if seigniorageSaved > seigniorageSaved:
                    revert with 0, 'SafeMath: subtraction overflow'
                seigniorageSaved = 0
            require ext_code.size(bondAddress)
            call bondAddress.0x79cc6790 with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ext_code.size(dollarAddress):
                revert with 0, 'Address: call to non-contract'
            mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
            call dollarAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
            require ext_code.size(dollarOracleAddress)
            call dollarOracleAddress.update() with:
                 gas gas_remaining wei
            emit RedeemedBonds(0, arg1, msg.sender);
        else:
            if dollarPriceOne * arg1 / arg1 != dollarPriceOne:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < dollarPriceOne * arg1 / 10^18:
                revert with 0, 32, 37, 0x7454726561737572793a20747265617375727920686173206e6f206d6f7265206275646765, mem[393 len 27]
            if seigniorageSaved < dollarPriceOne * arg1 / 10^18:
                if seigniorageSaved > seigniorageSaved:
                    revert with 0, 'SafeMath: subtraction overflow'
                seigniorageSaved = 0
                require ext_code.size(bondAddress)
                call bondAddress.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_code.size(dollarAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, dollarPriceOne * arg1 / 10^18) >> 32
            else:
                if dollarPriceOne * arg1 / 10^18 > seigniorageSaved:
                    revert with 0, 'SafeMath: subtraction overflow'
                seigniorageSaved -= dollarPriceOne * arg1 / 10^18
                require ext_code.size(bondAddress)
                call bondAddress.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_code.size(dollarAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, dollarPriceOne * arg1 / 10^18) >> 32
                mem[580 len 0] = 0
            call dollarAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, dollarPriceOne * arg1 / 10^18) << 224, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
            require ext_code.size(dollarOracleAddress)
            call dollarOracleAddress.update() with:
                 gas gas_remaining wei
            emit RedeemedBonds(dollarPriceOne * arg1 / 10^18, arg1, msg.sender);
    else:
        if (6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / Mask(144, 0, ext_call.return_data[0]) - dollarPriceOne != 6500:
            revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000) + dollarPriceOne < dollarPriceOne:
            revert with 0, 'SafeMath: addition overflow'
        if ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000) + dollarPriceOne <= 0:
            revert with 0, 'Treasury: invalid bond rate'
        if not arg1:
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 32, 37, 0x7454726561737572793a20747265617375727920686173206e6f206d6f7265206275646765, mem[393 len 27]
            if seigniorageSaved >= 0:
                if 0 > seigniorageSaved:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(bondAddress)
                call bondAddress.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_code.size(dollarAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                call dollarAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[580 len 4]
            else:
                if seigniorageSaved > seigniorageSaved:
                    revert with 0, 'SafeMath: subtraction overflow'
                seigniorageSaved = 0
                require ext_code.size(bondAddress)
                call bondAddress.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_code.size(dollarAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                mem[580 len 0] = 0
                call dollarAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
            require ext_code.size(dollarOracleAddress)
            call dollarOracleAddress.update() with:
                 gas gas_remaining wei
            emit RedeemedBonds(0, arg1, msg.sender);
        else:
            if ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000 * arg1) + (dollarPriceOne * arg1) / arg1 != ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000) + dollarPriceOne:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18:
                revert with 0, 32, 37, 0x7454726561737572793a20747265617375727920686173206e6f206d6f7265206275646765, mem[393 len 27]
            if seigniorageSaved >= ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18:
                if ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18 > seigniorageSaved:
                    revert with 0, 'SafeMath: subtraction overflow'
                seigniorageSaved -= ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18
                require ext_code.size(bondAddress)
                call bondAddress.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_code.size(dollarAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) >> 32
            else:
                if seigniorageSaved > seigniorageSaved:
                    revert with 0, 'SafeMath: subtraction overflow'
                seigniorageSaved = 0
                require ext_code.size(bondAddress)
                call bondAddress.0x79cc6790 with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_code.size(dollarAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[516 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) >> 32
                mem[580 len 0] = 0
            call dollarAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, ((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18) << 224, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
            require ext_code.size(dollarOracleAddress)
            call dollarOracleAddress.update() with:
                 gas gas_remaining wei
            emit RedeemedBonds(((6500 * Mask(144, 0, ext_call.return_data[0])) - (6500 * dollarPriceOne) / 10000 * arg1) + (dollarPriceOne * arg1) / 10^18, arg1, msg.sender);
    stor0[block.number][tx.origin] = 1
    stor0[block.number][msg.sender] = 1
}



}
