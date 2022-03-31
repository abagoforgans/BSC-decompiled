contract main {




// =====================  Runtime code  =====================


address msAddress;
address soteMasterAddress;
address authQuoteEngineAddress;
mapping of uint256 totalSumAssured;
array of struct userCoverLength;
array of uint256 userHoldedCover;
mapping of uint8 stor6;
mapping of uint256 totalSumAssuredSC;
mapping of uint8 coverStatus;
mapping of uint256 holdedCoverIDStatus;
mapping of uint8 stor10;
array of struct coverSumAssured;
array of struct stor12;
uint256 stlp;
uint256 stl;
uint256 pm;
uint256 minDays;
uint256 tokensRetained;
address kycAuthAddress;

function getCoverSumAssured(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < coverSumAssured.length
    return coverSumAssured[arg1].field_256
}

function stl() payable {
    return stl
}

function stlp() payable {
    return stlp
}

function getCoverMemberAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < coverSumAssured.length
    return coverSumAssured[arg1].field_0
}

function getTotalSumAssured(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return totalSumAssured[Mask(32, 224, arg1)]
}

function getCoverStatusNo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return coverStatus[arg1]
}

function getCoverPremiumSOTE(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < coverSumAssured.length
    return coverSumAssured[arg1].field_1280
}

function getTotalSumAssuredSC(address arg1, bytes4 arg2) payable {
    require calldata.size - 4 >= 64
    return totalSumAssuredSC[address(arg1)][Mask(32, 224, arg2)]
}

function getUserCoverLength(address arg1) payable {
    require calldata.size - 4 >= 32
    return userCoverLength[address(arg1)].field_0
}

function getCoverLength() payable {
    return coverSumAssured.length
}

function getValidityOfCover(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < coverSumAssured.length
    return coverSumAssured[arg1].field_768
}

function getCoverPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < coverSumAssured.length
    return coverSumAssured[arg1].field_512
}

function kycAuthAddress() payable {
    return kycAuthAddress
}

function pm() payable {
    return pm
}

function getCurrencyOfCover(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < coverSumAssured.length
    return (coverSumAssured[arg1].field_160 << 224)
}

function timestampRepeated(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function ms() payable {
    return msAddress
}

function userHoldedCover(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < userHoldedCover[arg1]
    return userHoldedCover[arg1][arg2]
}

function coverStatus(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return coverStatus[arg1]
}

function holdedCoverIDStatus(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return holdedCoverIDStatus[arg1]
}

function soteMasterAddress() payable {
    return soteMasterAddress
}

function getUserHoldedCoverLength(address arg1) payable {
    require calldata.size - 4 >= 32
    return userHoldedCover[address(arg1)]
}

function refundEligible(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function authQuoteEngine() payable {
    return authQuoteEngineAddress
}

function getAuthQuoteEngine() payable {
    return authQuoteEngineAddress
}

function minDays() payable {
    return minDays
}

function getUserHoldedCoverByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < userHoldedCover[address(arg1)]
    return userHoldedCover[address(arg1)][arg2]
}

function tokensRetained() payable {
    return tokensRetained
}

function _fallback() payable {
    revert
}

function changeDependentContractAddress() payable {
  stop
}

function getProductDetails() payable {
    return minDays, pm, stl, stlp
}

function getscAddressOfCover(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < coverSumAssured.length
    return arg1, coverSumAssured[arg1].field_1024
}

function getHoldedCoverDetailsByID1(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor12.length
    return arg1, stor12[arg1].field_512, stor12[arg1].field_672 << 224, stor12[arg1].field_1024
}

function changeMasterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if msAddress:
        if msAddress != msg.sender:
            revert with 0, 'Not master'
    msAddress = arg1
    soteMasterAddress = arg1
}

function getCoverDetailsByCoverID2(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < coverSumAssured.length
    return arg1, 
           coverStatus[arg1],
           coverSumAssured[arg1].field_256,
           coverSumAssured[arg1].field_512,
           coverSumAssured[arg1].field_768
}

function getCoverDetailsByCoverID1(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < coverSumAssured.length
    return arg1, 
           coverSumAssured[arg1].field_0,
           coverSumAssured[arg1].field_1024,
           coverSumAssured[arg1].field_160 << 224,
           coverSumAssured[arg1].field_256,
           coverSumAssured[arg1].field_1280
}

function setTimestampRepeated(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor10[arg1] = 1
}

function setKycAuthAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    kycAuthAddress = arg1
}

function changeAuthQuoteEngine(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    authQuoteEngineAddress = arg1
}

function setRefundEligible(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor6[address(arg1)] = uint8(arg2)
}

function setHoldedCoverIDStatus(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    holdedCoverIDStatus[arg1] = arg2
}

function changeCoverStatusNo(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    coverStatus[arg1] = arg2
    emit CoverStatusEvent(arg2, arg1);
}

function subFromTotalSumAssured(bytes4 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 <= totalSumAssured[Mask(32, 224, arg1)]
    totalSumAssured[Mask(32, 224, arg1)] -= arg2
}

function addInTotalSumAssured(bytes4 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + totalSumAssured[Mask(32, 224, arg1)] >= totalSumAssured[Mask(32, 224, arg1)]
    totalSumAssured[Mask(32, 224, arg1)] += arg2
}

function subFromTotalSumAssuredSC(address arg1, bytes4 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg3 <= totalSumAssuredSC[address(arg1)][Mask(32, 224, arg2)]
    totalSumAssuredSC[address(arg1)][Mask(32, 224, arg2)] -= arg3
}

function addInTotalSumAssuredSC(address arg1, bytes4 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg3 + totalSumAssuredSC[address(arg1)][Mask(32, 224, arg2)] >= totalSumAssuredSC[address(arg1)][Mask(32, 224, arg2)]
    totalSumAssuredSC[address(arg1)][Mask(32, 224, arg2)] += arg3
}

function getUintParameters(bytes8 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(64, 192, arg1) == 0x53544c5000000000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), stlp
    if Mask(64, 192, arg1) == 0x53544c0000000000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), stl
    if Mask(64, 192, arg1) == 0x504d000000000000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), pm
    if Mask(64, 192, arg1) == 0x51554f4d494e4400000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), minDays
    if Mask(64, 192, arg1) != 0x51554f544f4b0000000000000000000000000000000000000000000000000000:
        return Mask(64, 192, arg1), 0
    return Mask(64, 192, arg1), tokensRetained
}

function getHoldedCoverDetailsByID2(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor12.length
    if stor12[arg1].field_768:
        mem[128] = stor[sha3((5 * arg1) + ('name', 'stor12', 12) + 3)].field_0
        idx = 128
        s = 0
        while (32 * stor12[arg1].field_768) + 96 > idx:
            mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor12', 12) + 3)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor12[arg1].field_768) + 256 len floor32(stor12[arg1].field_768)] = mem[128 len floor32(stor12[arg1].field_768)]
    return arg1, 
           stor12[arg1].field_256,
           Array(len=stor12[arg1].field_768, data=mem[128 len floor32(stor12[arg1].field_768)], mem[(32 * stor12[arg1].field_768) + floor32(stor12[arg1].field_768) + 256 len (32 * stor12[arg1].field_768) - floor32(stor12[arg1].field_768)])
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
    if Mask(64, 192, arg1) == 0x53544c5000000000000000000000000000000000000000000000000000000000:
        stlp = arg2
    else:
        if Mask(64, 192, arg1) == 0x53544c0000000000000000000000000000000000000000000000000000000000:
            stl = arg2
        else:
            if Mask(64, 192, arg1) == 0x504d000000000000000000000000000000000000000000000000000000000000:
                pm = arg2
            else:
                if Mask(64, 192, arg1) == 0x51554f4d494e4400000000000000000000000000000000000000000000000000:
                    minDays = arg2
                else:
                    if Mask(64, 192, arg1) != 0x51554f544f4b0000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Invalid param code'
                    tokensRetained = arg2
}

function getAllCoversOfUser(address arg1) payable {
    require calldata.size - 4 >= 32
    if not userCoverLength[address(arg1)].field_0:
        mem[(32 * userCoverLength[address(arg1)].field_0) + 128] = 32
        mem[(32 * userCoverLength[address(arg1)].field_0) + 160] = userCoverLength[address(arg1)].field_0
        mem[(32 * userCoverLength[address(arg1)].field_0) + 192 len floor32(userCoverLength[address(arg1)].field_0)] = mem[128 len floor32(userCoverLength[address(arg1)].field_0)]
        return memory
          from (32 * userCoverLength[address(arg1)].field_0) + 128
           len (96 * userCoverLength[address(arg1)].field_0) + 64
    mem[128] = userCoverLength[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * userCoverLength[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = userCoverLength[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * userCoverLength[address(arg1)].field_0) + 192 len floor32(userCoverLength[address(arg1)].field_0)] = mem[128 len floor32(userCoverLength[address(arg1)].field_0)]
    return Array(len=userCoverLength[address(arg1)].field_0, data=mem[128 len floor32(userCoverLength[address(arg1)].field_0)], mem[(32 * userCoverLength[address(arg1)].field_0) + floor32(userCoverLength[address(arg1)].field_0) + 192 len (32 * userCoverLength[address(arg1)].field_0) - floor32(userCoverLength[address(arg1)].field_0)]), 
}

function addHoldCover(address arg1, address arg2, bytes4 arg3, uint256[] arg4, uint16 arg5) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    holdedCoverIDStatus[stor12.length] = 1
    mem[320 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 320] = 0
    stor12.length++
    stor12[stor12.length].field_0 = stor12.length
    stor12[stor12.length].field_256 = arg1
    stor12[stor12.length].field_512 = arg2
    stor12[stor12.length].field_672 = 0
    stor12[stor12.length].field_768 = arg4.length
    if not arg4.length:
        idx = 0
        while stor12[stor12.length].field_768 > idx:
            stor[idx + sha3((5 * stor12.length) + ('name', 'stor12', 12) + 3)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 320
        while (32 * arg4.length) + 320 > idx:
            stor[s + sha3((5 * stor12.length) + ('name', 'stor12', 12) + 3)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while stor12[stor12.length].field_768 > idx:
            stor[idx + sha3((5 * stor12.length) + ('name', 'stor12', 12) + 3)].field_0 = 0
            idx = idx + 1
            continue 
    stor12[stor12.length].field_1024 = arg5
    require 1 <= stor12.length
    userHoldedCover[address(arg1)]++
    userHoldedCover[address(arg1)][userHoldedCover[address(arg1)]] = stor12.length - 1
}

function addCover(uint16 arg1, uint256 arg2, address arg3, bytes4 arg4, address arg5, uint256 arg6, uint256 arg7) payable {
    require calldata.size - 4 >= 224
    require ext_code.size(msAddress)
    staticcall msAddress.isInternal(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not arg1:
        require block.timestamp >= block.timestamp
        coverSumAssured.length++
        coverSumAssured[coverSumAssured.length].field_0 = arg3
        coverSumAssured[coverSumAssured.length].field_160 = 0
        coverSumAssured[coverSumAssured.length].field_256 = arg2
        coverSumAssured[coverSumAssured.length].field_512 = arg1
        coverSumAssured[coverSumAssured.length].field_768 = block.timestamp
        coverSumAssured[coverSumAssured.length].field_1024 = arg5
        coverSumAssured[coverSumAssured.length].field_1280 = arg7
        require 1 <= coverSumAssured.length
        userCoverLength[address(arg3)].field_0++
        userCoverLength[address(arg3)][userCoverLength[address(arg3)].field_0].field_0 = coverSumAssured.length - 1
        emit CoverDetailsEvent(address(arg5), arg2, block.timestamp, arg6, arg7, Mask(32, 224, arg4), coverSumAssured.length - 1);
    else:
        require 24 * 3600 * arg1 / arg1 == 24 * 3600
        require (24 * 3600 * arg1) + block.timestamp >= block.timestamp
        coverSumAssured.length++
        coverSumAssured[coverSumAssured.length].field_0 = arg3
        coverSumAssured[coverSumAssured.length].field_160 = 0
        coverSumAssured[coverSumAssured.length].field_256 = arg2
        coverSumAssured[coverSumAssured.length].field_512 = arg1
        coverSumAssured[coverSumAssured.length].field_768 = (24 * 3600 * arg1) + block.timestamp
        coverSumAssured[coverSumAssured.length].field_1024 = arg5
        coverSumAssured[coverSumAssured.length].field_1280 = arg7
        require 1 <= coverSumAssured.length
        userCoverLength[address(arg3)].field_0++
        userCoverLength[address(arg3)][userCoverLength[address(arg3)].field_0].field_0 = coverSumAssured.length - 1
        emit CoverDetailsEvent(address(arg5), arg2, (24 * 3600 * arg1) + block.timestamp, arg6, arg7, Mask(32, 224, arg4), coverSumAssured.length - 1);
}



}
