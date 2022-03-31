contract main {




// =====================  Runtime code  =====================


address msAddress;
address soteMasterAddress;
array of struct iARankDetailsByDate;
array of struct lastMCRPerc;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 apiCallIndex;
mapping of struct currOfApiId;
mapping of uint256 stor8;
mapping of struct currencyAssetBaseMin;
mapping of struct investmentAssetMaxHoldingPerc;
mapping of uint256 stor12;
mapping of uint256 stor13;
address notariseMCRAddress;
address daiFeedAddress;
uint256 uniswapDeadline;
uint256 liquidityTradeCallbackTime;
uint256 lastLiquidityTradeTrigger;
uint64 lastDate;
uint256 variationPercX100;
uint256 iaRatesTime;
uint256 minCap;
uint256 mcrTime;
uint256 a;
uint256 shockParameter;
uint256 c;
uint256 mcrFailTime;
uint256 ethVolumeLimit;
uint256 capReached;
uint256 capacityLimit;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint64 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;

function a() payable {
    return a
}

function getIARankDetailsByDate(uint64 arg1) payable {
    require calldata.size - 4 >= 32
    require stor8[arg1 << 192] < iARankDetailsByDate.length
    return Mask(32, 224, iARankDetailsByDate[stor8[arg1 << 192]].field_0), 
           iARankDetailsByDate[stor8[arg1 << 192]].field_0,
           iARankDetailsByDate[stor8[arg1 << 192]].field_96 << 224,
           iARankDetailsByDate[stor8[arg1 << 192]].field_128
}

function getInvestmentAssetMaxHoldingPerc(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_256
}

function getCurrencyAssetBaseMin(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return currencyAssetBaseMin[Mask(32, 224, arg1)].field_256
}

function getCurrOfApiId(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return (currOfApiId[arg1].field_32 << 224)
}

function getInvestmentAssetStatus(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_160)
}

function getAllCurrenciesLen() payable {
    return stor5.length
}

function getDateAddOfAPI(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return currOfApiId[arg1].field_512
}

function getIdOfApiId(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return currOfApiId[arg1].field_256
}

function uniswapDeadline() payable {
    return uniswapDeadline
}

function minCap() payable {
    return minCap
}

function notariseMCR() payable {
    return notariseMCRAddress
}

function getDateUpdOfAPI(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return currOfApiId[arg1].field_576
}

function getCurrencyAssetVarMin(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return currencyAssetBaseMin[Mask(32, 224, arg1)].field_512
}

function iaRatesTime() payable {
    return iaRatesTime
}

function lastLiquidityTradeTrigger() payable {
    return lastLiquidityTradeTrigger
}

function capReached() payable {
    return capReached
}

function getLastDate() payable {
    return lastDate
}

function liquidityTradeCallbackTime() payable {
    return liquidityTradeCallbackTime
}

function getInvestmentAssetMinHoldingPerc(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_168
}

function allAPIcall(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < apiCallIndex.length
    return apiCallIndex[arg1]
}

function mcrFailTime() payable {
    return mcrFailTime
}

function getApiCallIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < apiCallIndex.length
    return apiCallIndex[arg1]
}

function allAPIid(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return Mask(32, 224, currOfApiId[arg1].field_0), 
           currOfApiId[arg1].field_32 << 224,
           currOfApiId[arg1].field_256,
           currOfApiId[arg1].field_512,
           currOfApiId[arg1].field_576
}

function mcrTime() payable {
    return mcrTime
}

function getInvestmentCurrencyLen() payable {
    return stor4.length
}

function getInvestmentAssetAddress(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_0
}

function getLastMCRPerc() payable {
    require 1 <= lastMCRPerc.length
    require lastMCRPerc.length - 1 < lastMCRPerc.length
    return lastMCRPerc[lastMCRPerc.length - 1].field_0
}

function variationPercX100() payable {
    return variationPercX100
}

function getInvestmentAssetHoldingPerc(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_0, 
           investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_256
}

function ms() payable {
    return msAddress
}

function getMCRDataLength() payable {
    return lastMCRPerc.length
}

function getInvestmentAssetDecimals(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_320
}

function getLastMCREther() payable {
    require 1 <= lastMCRPerc.length
    require lastMCRPerc.length - 1 < lastMCRPerc.length
    return lastMCRPerc[lastMCRPerc.length - 1].field_256
}

function capacityLimit() payable {
    return capacityLimit
}

function soteMasterAddress() payable {
    return soteMasterAddress
}

function c() payable {
    return c
}

function getLastMCR() payable {
    require 1 <= lastMCRPerc.length
    require lastMCRPerc.length - 1 < lastMCRPerc.length
    return lastMCRPerc[lastMCRPerc.length - 1].field_0, 
           lastMCRPerc[lastMCRPerc.length - 1].field_256,
           lastMCRPerc[lastMCRPerc.length - 1].field_512,
           lastMCRPerc[lastMCRPerc.length - 1].field_768
}

function getApilCallLength() payable {
    return apiCallIndex.length
}

function shockParameter() payable {
    return shockParameter
}

function getApiCallDetails(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return Mask(32, 224, currOfApiId[arg1].field_0), 
           currOfApiId[arg1].field_32 << 224,
           currOfApiId[arg1].field_256,
           currOfApiId[arg1].field_512,
           currOfApiId[arg1].field_576
}

function ethVolumeLimit() payable {
    return ethVolumeLimit
}

function getLastVfull() payable {
    require 1 <= lastMCRPerc.length
    require lastMCRPerc.length - 1 < lastMCRPerc.length
    return lastMCRPerc[lastMCRPerc.length - 1].field_512
}

function getCurrencyAssetAddress(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return currencyAssetBaseMin[Mask(32, 224, arg1)].field_0
}

function allMCRData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lastMCRPerc.length
    return lastMCRPerc[arg1].field_0, lastMCRPerc[arg1].field_256, lastMCRPerc[arg1].field_512, lastMCRPerc[arg1].field_768
}

function daiFeedAddress() payable {
    return daiFeedAddress
}

function getApiIdTypeOf(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return Mask(32, 224, currOfApiId[arg1].field_0)
}

function getLastMCRDate() payable {
    require 1 <= lastMCRPerc.length
    require lastMCRPerc.length - 1 < lastMCRPerc.length
    return lastMCRPerc[lastMCRPerc.length - 1].field_768
}

function _fallback() payable {
    revert
}

function isnotarise(address arg1) payable {
    require calldata.size - 4 >= 32
    if notariseMCRAddress != arg1:
        return 0
    return 1
}

function getCurrenciesByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor5.length
    return (stor5[0.125 / arg1].field_0 / 256^(4 * arg1 % 8) << 224)
}

function getInvestmentCurrencyByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor4.length
    return (stor4[0.125 / arg1].field_0 / 256^(4 * arg1 % 8) << 224)
}

function changeMasterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if msAddress:
        if msAddress != msg.sender:
            revert with 0, 'Not master'
    msAddress = arg1
    soteMasterAddress = arg1
}

function getCurrencyAssetVarBase(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return Mask(32, 224, arg1), 
           currencyAssetBaseMin[Mask(32, 224, arg1)].field_256,
           currencyAssetBaseMin[Mask(32, 224, arg1)].field_512
}

function changeDependentContractAddress() payable {
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function setLastLiquidityTradeTrigger() payable {
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    lastLiquidityTradeTrigger = block.timestamp
}

function updatelastDate(uint64 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    lastDate = arg1
}

function setCapReached(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    capReached = arg1
}

function changeDAIfeedAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    daiFeedAddress = arg1
}

function changeNotariseAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    notariseMCRAddress = arg1
}

function updateIAAvgRate(bytes4 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor13[Mask(32, 224, arg1)] = arg2
}

function updateCAAvgRate(bytes4 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor12[Mask(32, 224, arg1)] = arg2
}

function updateDateUpdOfAPI(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    currOfApiId[arg1].field_576 = uint64(block.timestamp)
}

function addInAllApiCall(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    apiCallIndex.length++
    apiCallIndex[apiCallIndex.length] = arg1
}

function changeCurrencyAssetVarMin(bytes4 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    currencyAssetBaseMin[Mask(32, 224, arg1)].field_512 = arg2
}

function getInvestmentAssetDetails(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return Mask(32, 224, arg1), 
           investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_0,
           bool(investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_160),
           investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_0,
           investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_256,
           investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_256
}

function changeCurrencyAssetAddress(bytes4 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.checkIsAuthToGoverned(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    currencyAssetBaseMin[Mask(32, 224, arg1)].field_0 = arg2
}

function changeCurrencyAssetBaseMin(bytes4 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.checkIsAuthToGoverned(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    currencyAssetBaseMin[Mask(32, 224, arg1)].field_256 = arg2
}

function getCAAvgRate(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) != 0x4441490000000000000000000000000000000000000000000000000000000000:
        return stor12[Mask(32, 224, arg1)]
    require ext_code.size(daiFeedAddress)
    staticcall daiFeedAddress.read() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] / 10^16)
}

function getIAAvgRate(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) != 0x4441490000000000000000000000000000000000000000000000000000000000:
        return stor13[Mask(32, 224, arg1)]
    require ext_code.size(daiFeedAddress)
    staticcall daiFeedAddress.read() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] / 10^16)
}

function changeInvestmentAssetStatus(bytes4 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.checkIsAuthToGoverned(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_160 = Mask(96, 0, arg2)
}

function getTokenPriceDetails(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) != 0x4441490000000000000000000000000000000000000000000000000000000000:
        return a, c, stor12[Mask(32, 224, arg1)]
    require ext_code.size(daiFeedAddress)
    staticcall daiFeedAddress.read() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return a, c, ext_call.return_data[0] / 10^16
}

function changeInvestmentAssetHoldingPerc(bytes4 arg1, uint64 arg2, uint64 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.checkIsAuthToGoverned(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_168 = arg2
    investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_256 = arg3
}

function changeInvestmentAssetAddressAndDecimal(bytes4 arg1, address arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.checkIsAuthToGoverned(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_0 = arg2
    investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_320 = arg3
}

function saveApiDetails(bytes32 arg1, bytes4 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    currOfApiId[arg1].field_0 = 0
    currOfApiId[arg1].field_256 = arg3
    currOfApiId[arg1].field_512 = uint64(block.timestamp)
    currOfApiId[arg1].field_576 = uint64(block.timestamp)
}

function pushMCRData(uint256 arg1, uint256 arg2, uint256 arg3, uint64 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    lastMCRPerc.length++
    lastMCRPerc[lastMCRPerc.length].field_0 = arg1
    storC257[stor3.length] = arg2
    storC257[stor3.length] = arg3
    storC257[stor3.length] = arg4
}

function addCurrencyAssetCurrency(bytes4 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.checkIsAuthToGoverned(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor5.length++
    stor36B6[stor5.length.field_3] = !(test266151307() * 256^(4 * stor5.length % 8)) and stor36B6[stor5.length.field_3]
    currencyAssetBaseMin[Mask(32, 224, arg1)].field_0 = arg2
    currencyAssetBaseMin[Mask(32, 224, arg1)].field_256 = arg3
    currencyAssetBaseMin[Mask(32, 224, arg1)].field_512 = 0
}

function getAllCurrencies() payable {
    if stor5.length:
        mem[128] = Mask(32, 224, uint32(stor5.field_0))
        if (32 * stor5.length) + 32 > 64:
            mem[160] = uint256(stor5.field_0) / 256^4 << 224
            idx = 160
            s = 4
            while (32 * stor5.length) + 96 > idx:
                mem[idx + 32] = uint256(stor5.field_0) / 256^((4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)) << 224
                idx = idx + 32
                s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
                continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return memory
      from (32 * stor5.length) + 128
       len (96 * stor5.length) + 64
}

function saveIARankDetails(bytes4 arg1, uint64 arg2, bytes4 arg3, uint64 arg4, uint64 arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    iARankDetailsByDate.length++
    iARankDetailsByDate[iARankDetailsByDate.length].field_0 = 0
    iARankDetailsByDate[iARankDetailsByDate.length].field_32 = arg2
    iARankDetailsByDate[iARankDetailsByDate.length].field_96 = 0
    iARankDetailsByDate[iARankDetailsByDate.length].field_128 = arg4
    require 1 <= iARankDetailsByDate.length
    stor8[arg5 << 192] = iARankDetailsByDate.length - 1
}

function getAllInvestmentCurrencies() payable {
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = uint256(stor4.field_0) / 256^0 << 224
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = uint256(stor4.field_0) / 256^((4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)) << 224
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
    return Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 192 len (32 * stor4.length) - floor32(stor4.length)]), 
}

function addInvestmentAssetCurrency(bytes4 arg1, address arg2, bool arg3, uint64 arg4, uint64 arg5, uint8 arg6) payable {
    require calldata.size - 4 >= 192
    require ext_code.size(msAddress)
    staticcall msAddress.checkIsAuthToGoverned(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor4.length++
    stor4[stor4.length.field_3].field_0 = stor4[stor4.length.field_3].field_0 and !(test266151307() * 256^(4 * stor4.length % 8))
    investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_0 = arg2
    investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_160 = uint8(arg3)
    investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_168 = arg4
    investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_232 = Mask(24, 72, arg3) >> 72
    investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_256 = arg5
    investmentAssetMaxHoldingPerc[Mask(32, 224, arg1)].field_320 = arg6
}

function getUintParameters(bytes8 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(64, 192, arg1) == 0x4d435254494d0000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), mcrTime / 3600
    if Mask(64, 192, arg1) == 'MCRFTIM' << 200:
        return Mask(64, 192, arg1), mcrFailTime / 3600
    if Mask(64, 192, arg1) == 0x4d43524d494e0000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), minCap
    if Mask(64, 192, arg1) == 'MCRSHOCK' << 192:
        return Mask(64, 192, arg1), shockParameter
    if Mask(64, 192, arg1) == 0x4d43524341504c00000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), capacityLimit
    if Mask(64, 192, arg1) == 0x494d5a0000000000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), variationPercX100
    if Mask(64, 192, arg1) == 0x494d524154455400000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), iaRatesTime / 3600
    if Mask(64, 192, arg1) == 0x494d554e49444c00000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), uniswapDeadline / 60
    if Mask(64, 192, arg1) == 0x494d4c4951540000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), liquidityTradeCallbackTime / 3600
    if Mask(64, 192, arg1) == 0x494d455448564c00000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), ethVolumeLimit
    if Mask(64, 192, arg1) == 0x4300000000000000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), c
    if Mask(64, 192, arg1) != 0x4100000000000000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), 0
    return Mask(64, 192, arg1), a
}

function updateUintParameters(bytes8 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.checkIsAuthToGoverned(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if Mask(64, 192, arg1) == 0x4d435254494d0000000000000000000000000000000000000000000000000000:
        mcrTime = 3600 * arg2
    else:
        if Mask(64, 192, arg1) == 'MCRFTIM' << 200:
            mcrFailTime = 3600 * arg2
        else:
            if Mask(64, 192, arg1) == 0x4d43524d494e0000000000000000000000000000000000000000000000000000:
                minCap = arg2
            else:
                if Mask(64, 192, arg1) == 'MCRSHOCK' << 192:
                    shockParameter = arg2
                else:
                    if Mask(64, 192, arg1) == 0x4d43524341504c00000000000000000000000000000000000000000000000000:
                        capacityLimit = arg2
                    else:
                        if Mask(64, 192, arg1) == 0x494d5a0000000000000000000000000000000000000000000000000000000000:
                            variationPercX100 = arg2
                        else:
                            if Mask(64, 192, arg1) == 0x494d524154455400000000000000000000000000000000000000000000000000:
                                iaRatesTime = 3600 * arg2
                            else:
                                if Mask(64, 192, arg1) == 0x494d554e49444c00000000000000000000000000000000000000000000000000:
                                    uniswapDeadline = 60 * arg2
                                else:
                                    if Mask(64, 192, arg1) == 0x494d4c4951540000000000000000000000000000000000000000000000000000:
                                        liquidityTradeCallbackTime = 3600 * arg2
                                    else:
                                        if Mask(64, 192, arg1) == 0x494d455448564c00000000000000000000000000000000000000000000000000:
                                            ethVolumeLimit = arg2
                                        else:
                                            if Mask(64, 192, arg1) == 0x4300000000000000000000000000000000000000000000000000000000000000:
                                                c = arg2
                                            else:
                                                if Mask(64, 192, arg1) != 0x4100000000000000000000000000000000000000000000000000000000000000:
                                                    revert with 0, 'Invalid param code'
                                                a = arg2
}



}
