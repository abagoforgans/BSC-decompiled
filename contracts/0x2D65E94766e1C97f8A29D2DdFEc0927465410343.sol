contract main {




// =====================  Runtime code  =====================


#
#  - totalSpentPerDay(uint256 arg1)
#  - message(bytes32 arg1)
#  - totalExecutedPerDay(uint256 arg1)
#  - submitSignature(bytes arg1, bytes arg2)
#  - fixAssetsAboveLimits(bytes32 arg1, bool arg2)
#  - numAffirmationsSigned(bytes32 arg1)
#  - affirmationsSigned(bytes32 arg1)
#  - withinExecutionLimit(uint256 arg1)
#  - messagesSigned(bytes32 arg1)
#  - executeAffirmation(address arg1, uint256 arg2, bytes32 arg3)
#  - onTokenTransfer(address arg1, uint256 arg2, bytes arg3)
#  - withinLimit(uint256 arg1)
#
const getCurrentDay = (block.timestamp / 24 * 3600)

const requiredMessageLength = 104

const getBridgeMode = Mask(32, 224, sha3(Mask(120, 16, 'erc-to-erc-core') >> 16))

const getBridgeInterfacesVersion = 2, 2, 0


mapping of uint256 numMessagesSigned;
mapping of address erc677token;
array of uint256 stor3;
mapping of uint8 stor4;

function numMessagesSigned(bytes32 arg1) {
    return numMessagesSigned['numMessagesSigned'][arg1]
}

function erc677token() {
    return erc677token[Mask(88, 0, 'erc677token', 0)]
}

function fixedAssets(bytes32 arg1) {
    return bool(stor4['fixedAssets'][arg1])
}

function isInitialized() {
    return bool(stor4[Mask(104, 0, 'isInitialized', 0)])
}

function requiredBlockConfirmations() {
    return numMessagesSigned[Mask(208, 0, 'requiredBlockConfirmations', 0)]
}

function executionDailyLimit() {
    return numMessagesSigned['executionDailyLimit']
}

function dailyLimit() {
    return numMessagesSigned['dailyLimit']
}

function executionMaxPerTx() {
    return numMessagesSigned['executionMaxPerTx']
}

function owner() {
    return erc677token['owner']
}

function validatorContract() {
    return erc677token['validatorContract']
}

function deployedAtBlock() {
    return numMessagesSigned['deployedAtBlock']
}

function outOfLimitAmount() {
    return numMessagesSigned['outOfLimitAmount']
}

function minPerTx() {
    return numMessagesSigned['minPerTx']
}

function maxPerTx() {
    return numMessagesSigned['maxPerTx']
}

function gasPrice() {
    return numMessagesSigned['gasPrice']
}

function _fallback() payable {
    revert
}

function isAlreadyProcessed(uint256 arg1) {
    return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
}

function setMaxPerTx(uint256 arg1) {
    require msg.sender == erc677token['owner']
    require arg1 < numMessagesSigned['dailyLimit']
    numMessagesSigned['maxPerTx'] = arg1
}

function setDailyLimit(uint256 arg1) {
    require msg.sender == erc677token['owner']
    numMessagesSigned[Mask(80, 0, 'dailyLimit', 0)] = arg1
    emit DailyLimitChanged(arg1);
}

function setGasPrice(uint256 arg1) {
    require msg.sender == erc677token['owner']
    require arg1 > 0
    numMessagesSigned[uint64('gasPrice', 0)] = arg1
    emit GasPriceChanged(arg1);
}

function setExecutionMaxPerTx(uint256 arg1) {
    require msg.sender == erc677token['owner']
    require arg1 < numMessagesSigned['executionDailyLimit']
    numMessagesSigned['executionMaxPerTx'] = arg1
}

function setExecutionDailyLimit(uint256 arg1) {
    require msg.sender == erc677token['owner']
    numMessagesSigned[Mask(152, 0, 'executionDailyLimit', 0)] = arg1
    emit ExecutionDailyLimitChanged(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == erc677token['owner']
    require arg1
    emit OwnershipTransferred(erc677token['owner'], address(arg1));
    erc677token['owner', 0 % 1099511627776] = arg1
}

function setMinPerTx(uint256 arg1) {
    require msg.sender == erc677token['owner']
    require arg1 < numMessagesSigned['dailyLimit']
    require arg1 < numMessagesSigned['maxPerTx']
    numMessagesSigned[uint64('minPerTx', 0)] = arg1
}

function setRequiredBlockConfirmations(uint256 arg1) {
    require msg.sender == erc677token['owner']
    require arg1 > 0
    numMessagesSigned[Mask(208, 0, 'requiredBlockConfirmations', 0)] = arg1
    emit RequiredBlockConfirmationChanged(arg1);
}

function upgradeabilityAdmin() {
    require ext_code.size(this.address)
    call this.address.proxyOwner() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function requiredSignatures() {
    require ext_code.size(erc677token['validatorContract'])
    call erc677token['validatorContract'].0x8d068043 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function claimTokens(address arg1, address arg2) {
    require ext_code.size(this.address)
    call this.address.proxyOwner() with:
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
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.balanceOf(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8, uint256 arg9, address arg10) {
    require not stor4[Mask(104, 0, 'isInitialized', 0)]
    require arg1
    require ext_code.size(arg1) > 0
    require arg5 > 0
    require arg6 > 0
    require arg4 > 0
    require arg3 > arg4
    require arg2 > arg3
    require arg9 < arg8
    require arg10
    erc677token[Mask(136, 0, 'validatorContract', 0)] = arg1
    numMessagesSigned[Mask(120, 0, 'deployedAtBlock', 0)] = block.number
    numMessagesSigned[Mask(80, 0, 'dailyLimit', 0)] = arg2
    numMessagesSigned[uint64('maxPerTx', 0)] = arg3
    numMessagesSigned[uint64('minPerTx', 0)] = arg4
    numMessagesSigned[uint64('gasPrice', 0)] = arg5
    numMessagesSigned[Mask(208, 0, 'requiredBlockConfirmations', 0)] = arg6
    numMessagesSigned[Mask(152, 0, 'executionDailyLimit', 0)] = arg8
    numMessagesSigned[Mask(136, 0, 'executionMaxPerTx', 0)] = arg9
    emit OwnershipTransferred(erc677token['owner'], arg10);
    erc677token['owner', 0 % 1099511627776] = arg10
    stor4[Mask(104, 0, 'isInitialized', 0)] = 1
    require arg7
    require ext_code.size(arg7) > 0
    erc677token['erc677token'] = arg7
    return bool(stor4[Mask(104, 0, 'isInitialized', 0)])
}

function signature(bytes32 arg1, uint256 arg2) {
    mem[128] = arg1
    mem[160] = arg2
    mem[224] = 'signatures'
    mem[234] = sha3(arg1, arg2)
    mem[192] = 42
    mem[32] = 3
    _84 = sha3(sha3('signatures', Mask(176, 80, sha3(arg1, arg2)) >> 80, mem[298 len 10]), 3)
    mem[64] = ceil32(stor3['signatures'][Mask(176, 80, ('map', ('param', 'arg1'), ('param', 'arg2'))) >> 80][mem[298 len 10]].length) + 298
    mem[266] = stor3['signatures'][Mask(176, 80, ('map', ('param', 'arg1'), ('param', 'arg2'))) >> 80][mem[298 len 10]].length
    mem[0] = sha3(sha3('signatures', Mask(176, 80, sha3(arg1, arg2)) >> 80, mem[298 len 10]), 3)
    mem[298] = stor3['signatures'][Mask(176, 80, ('map', ('param', 'arg1'), ('param', 'arg2'))) >> 80][mem[298 len 10]]
    idx = 298
    s = 0
    while stor[_84].length + 266 > idx:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[266]
    _119 = mem[266]
    mem[mem[64] + 64 len ceil32(mem[266])] = mem[298 len ceil32(mem[266])]
    if not _119 % 32:
        return 32, mem[mem[64] + 32 len _119 + 32]
    mem[floor32(_119) + mem[64] + 64] = mem[floor32(_119) + mem[64] + -(_119 % 32) + 96 len _119 % 32]
    return 32, mem[mem[64] + 32 len floor32(_119) + 64]
}



}
