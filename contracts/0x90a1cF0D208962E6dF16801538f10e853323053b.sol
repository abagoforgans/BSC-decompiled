contract main {




// =====================  Runtime code  =====================


#
#  - executeSignatures(bytes arg1, bytes arg2)
#  - totalExecutedPerDay(uint256 arg1)
#  - withinExecutionLimit(uint256 arg1)
#
const getCurrentDay = (block.timestamp / 24 * 3600)

const getBridgeMode = 0x92a8d7fe00000000000000000000000000000000000000000000000000000000

const getBridgeInterfacesVersion = 5, 0, 0


mapping of uint256 totalSpentPerDay;
mapping of uint8 stor4;
uint8 isInitialized;
uint256 dailyLimit;
address stor21FF;
address erc677tokenAddress;
uint256 minPerTx;
uint256 maxPerTx;
address validatorContractAddress;
uint256 executionDailyLimit;
address owner;
address feeManagerContractAddress;
uint256 requiredBlockConfirmations;
uint256 decimalShift;
uint256 deployedAtBlock;
uint256 gasPrice;
uint256 executionMaxPerTx;

function erc677token() {
    return erc677tokenAddress
}

function relayedMessages(bytes32 arg1) {
    return bool(stor4['relayedMessages'][arg1])
}

function totalSpentPerDay(uint256 arg1) {
    return totalSpentPerDay['totalSpentPerDay'][uint128(arg1)][uint128(arg1)]
}

function isInitialized() {
    return bool(isInitialized)
}

function requiredBlockConfirmations() {
    return requiredBlockConfirmations
}

function executionDailyLimit() {
    return executionDailyLimit
}

function dailyLimit() {
    return dailyLimit
}

function executionMaxPerTx() {
    return executionMaxPerTx
}

function owner() {
    return owner
}

function validatorContract() {
    return validatorContractAddress
}

function deployedAtBlock() {
    return deployedAtBlock
}

function decimalShift() {
    return decimalShift
}

function feeManagerContract() {
    return feeManagerContractAddress
}

function minPerTx() {
    return minPerTx
}

function maxPerTx() {
    return maxPerTx
}

function gasPrice() {
    return gasPrice
}

function _fallback() payable {
    revert
}

function setGasPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    gasPrice = arg1
    emit GasPriceChanged(arg1);
}

function setExecutionMaxPerTx(uint256 arg1) {
    require msg.sender == owner
    require arg1 < executionDailyLimit
    executionMaxPerTx = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMinPerTx(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 < dailyLimit
    require arg1 < maxPerTx
    minPerTx = arg1
}

function setMaxPerTx(uint256 arg1) {
    require msg.sender == owner
    if arg1:
        require arg1 > minPerTx
        require arg1 < dailyLimit
    maxPerTx = arg1
}

function setFeeManagerContract(address arg1) {
    require msg.sender == owner
    if arg1:
        require ext_code.size(arg1) > 0
    feeManagerContractAddress = arg1
}

function setDailyLimit(uint256 arg1) {
    require msg.sender == owner
    if arg1 <= maxPerTx:
        require not arg1
    dailyLimit = arg1
    emit DailyLimitChanged(arg1);
}

function setRequiredBlockConfirmations(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    requiredBlockConfirmations = arg1
    emit RequiredBlockConfirmationChanged(arg1);
}

function setExecutionDailyLimit(uint256 arg1) {
    require msg.sender == owner
    if arg1 <= executionMaxPerTx:
        require not arg1
    executionDailyLimit = arg1
    emit ExecutionDailyLimitChanged(arg1);
}

function getFeeManagerMode() {
    codecall feeManagerContractAddress.0xf2ba9561 with:
         gas gas_remaining wei
        args 
    require callcode.return_code
    return Mask(32, 224, callcode.return_data[0 len 4], 0x5bee7817f04c960f525ee3e2f2516078c38c68a314978797)
}

function requiredSignatures() {
    require ext_code.size(validatorContractAddress)
    call validatorContractAddress.0x8d068043 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getHomeFee() {
    if code.data[13548 len 32] == code.data[13548 len 32]:
        codecall feeManagerContractAddress.0x94da17cd with:
             gas gas_remaining wei
            args 
    else:
        codecall feeManagerContractAddress.getForeignFee() with:
             gas gas_remaining wei
            args 
    require callcode.return_code
    return callcode.return_data[0]
}

function maxAvailablePerTx() {
    if dailyLimit > totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]:
        if maxPerTx < dailyLimit - totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]:
            return maxPerTx
        return (dailyLimit - totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600])
    if maxPerTx < 0:
        return maxPerTx
    else:
        return 0
}

function setHomeFee(uint256 arg1) {
    require msg.sender == owner
    if code.data[13548 len 32] == code.data[13548 len 32]:
        mem[164 len 64] = unknown_0x34a9e148(?????), arg1, mem[164 len 28]
    else:
        mem[164 len 64] = '(l@f', arg1, mem[164 len 28]
    mem[196] = mem[224 len 4]
    delegate feeManagerContractAddress.mem[164 len 4] with:
         gas gas_remaining wei
        args mem[168 len 60]
    require delegate.return_code
}

function withinLimit(uint256 arg1) {
    require arg1 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600] >= totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]
    if dailyLimit < arg1 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]:
        return dailyLimit >= arg1 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]
    if arg1 > maxPerTx:
        return arg1 <= maxPerTx
    return arg1 >= minPerTx
}

function claimTokensFromErc677(address arg1, address arg2) {
    require ext_code.size(this.address)
    call this.address.0x6fde8202 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(erc677tokenAddress)
    call erc677tokenAddress.0x69ffa08a with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onTokenTransfer(address arg1, uint256 arg2, bytes arg3) {
    require erc677tokenAddress == msg.sender
    require arg2 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600] >= totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]
    require dailyLimit >= arg2 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]
    require arg2 <= maxPerTx
    require arg2 >= minPerTx
    require arg2 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600] >= totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]
    mem[368 len 16] = uint128(block.timestamp / 24 * 3600)
    totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600] += arg2
    mem[368 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 368] = 0x42966c6800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 372] = arg2
    require ext_code.size(erc677tokenAddress)
    call erc677tokenAddress.0x42966c68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= arg3.length:
        emit UserRequestForAffirmation(address(arg1), arg2);
    else:
        require 20 == arg3.length
        require mem[368 len 20]
        require stor21FF != mem[368 len 20]
        mem[ceil32(arg3.length) + 368] = mem[368 len 20]
        emit UserRequestForAffirmation(mem[ceil32(arg3.length) + 368], arg2);
    return 1
}

function claimTokens(address arg1, address arg2) {
    require ext_code.size(this.address)
    call this.address.0x6fde8202 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg2
    if not arg1:
        call arg2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            create contract with ('balance', 'address') wei
                            code: code.data[13515 len 33], arg2
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[132] = arg2
        mem[164] = ext_call.return_data[0]
        mem[96] = 68
        mem[64] = 196
        mem[132 len 28] = address(arg2) << 64
        mem[128 len 4] = unknown_0xa9059cbb(?????)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2) << 64, 0, ext_call.return_data[0]
        mem[0] = ext_call.return_data[0]
        require ext_call.success
        if mem[ext_call.return_data[0]] > 0:
            require ext_call.return_data[0]
}

function sub_9c175e70(?) {
    mem[132] = 0, mem[132 len 28]
    mem[132] = mem[160 len 4]
    call this.address.mem[132 len 4] with:
         gas gas_remaining wei
        args mem[136 len 28]
    if ext_call.success:
        require ext_code.size(this.address)
        call this.address.0x6fde8202 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            require this.address == msg.sender
    require not isInitialized
    require ext_code.size(arg1) > 0
    require arg5
    validatorContractAddress = arg1
    require ext_code.size(arg2) > 0
    erc677tokenAddress = arg2
    require 0 < call.data[132]
    require call.data[100] > call.data[132]
    require call.data[68] > call.data[100]
    dailyLimit = call.data[68]
    maxPerTx = call.data[100]
    minPerTx = call.data[132]
    emit DailyLimitChanged(call.data[68]);
    deployedAtBlock = block.number
    require arg3 > 0
    gasPrice = arg3
    emit GasPriceChanged(arg3);
    require arg4 > 0
    requiredBlockConfirmations = arg4
    emit RequiredBlockConfirmationChanged(arg4);
    require call.data[260] < call.data[228]
    executionDailyLimit = call.data[228]
    executionMaxPerTx = call.data[260]
    emit ExecutionDailyLimitChanged(call.data[228]);
    require arg6 > -77
    require arg6 < 77
    decimalShift = arg6
    emit OwnershipTransferred(owner, arg5);
    owner = arg5
    stor21FF = arg7
    isInitialized = 1
    return bool(isInitialized)
}

function sub_4396cef9(?) {
    mem[132] = 0, mem[132 len 28]
    mem[132] = mem[160 len 4]
    call this.address.mem[132 len 4] with:
         gas gas_remaining wei
        args mem[136 len 28]
    if ext_call.success:
        require ext_code.size(this.address)
        call this.address.0x6fde8202 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            require this.address == msg.sender
    require not isInitialized
    require ext_code.size(arg1) > 0
    require arg5
    validatorContractAddress = arg1
    require ext_code.size(arg2) > 0
    erc677tokenAddress = arg2
    require 0 < call.data[132]
    require call.data[100] > call.data[132]
    require call.data[68] > call.data[100]
    dailyLimit = call.data[68]
    maxPerTx = call.data[100]
    minPerTx = call.data[132]
    emit DailyLimitChanged(call.data[68]);
    deployedAtBlock = block.number
    require arg3 > 0
    gasPrice = arg3
    emit GasPriceChanged(arg3);
    require arg4 > 0
    requiredBlockConfirmations = arg4
    emit RequiredBlockConfirmationChanged(arg4);
    require call.data[260] < call.data[228]
    executionDailyLimit = call.data[228]
    executionMaxPerTx = call.data[260]
    emit ExecutionDailyLimitChanged(call.data[228]);
    require arg8 > -77
    require arg8 < 77
    decimalShift = arg8
    emit OwnershipTransferred(owner, arg5);
    owner = arg5
    stor21FF = arg9
    require ext_code.size(arg6) > 0
    feeManagerContractAddress = arg6
    if code.data[13548 len 32] == code.data[13548 len 32]:
        mem[360 len 64] = 0, arg7, mem[360 len 28]
    else:
        mem[360 len 64] = '(l@f', arg7, mem[360 len 28]
    mem[392] = mem[420 len 4]
    delegate arg6.mem[360 len 4] with:
         gas gas_remaining wei
        args mem[364 len 60]
    require delegate.return_code
    isInitialized = 1
    return bool(isInitialized)
}



}
