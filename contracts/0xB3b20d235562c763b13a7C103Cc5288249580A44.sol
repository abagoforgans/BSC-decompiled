contract main {




// =====================  Runtime code  =====================


#
#  - totalSpentPerDay(uint256 arg1)
#  - setHomeFee(uint256 arg1)
#  - totalExecutedPerDay(uint256 arg1)
#  - sub_62d4ed34(?)
#  - submitSignature(bytes arg1, bytes arg2)
#  - numAffirmationsSigned(bytes32 arg1)
#  - affirmationsSigned(bytes32 arg1)
#  - withinExecutionLimit(uint256 arg1)
#  - messagesSigned(bytes32 arg1)
#  - executeAffirmation(address arg1, uint256 arg2, bytes32 arg3)
#  - onTokenTransfer(address arg1, uint256 arg2, bytes arg3)
#  - fixAssetsAboveLimits(bytes32 arg1, bool arg2, uint256 arg3)
#  - withinLimit(uint256 arg1)
#  - getForeignFee()
#
const getCurrentDay = (block.timestamp / 24 * 3600)

const requiredMessageLength = 104

const getBridgeMode = Mask(32, 224, sha3(Mask(120, 16, 'erc-to-erc-core') >> 16))

const getBridgeInterfacesVersion = 2, 3, 0


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

function feeManagerContract() {
    return erc677token['feeManagerContract']
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

function transferOwnership(address arg1) {
    require msg.sender == erc677token['owner']
    require arg1
    emit OwnershipTransferred(erc677token['owner'], address(arg1));
    erc677token['owner'] = arg1
}

function setFeeManagerContract(address arg1) {
    require msg.sender == erc677token['owner']
    if arg1:
        require ext_code.size(arg1) > 0
    erc677token[Mask(144, 0, 'feeManagerContract', 0)] = arg1
}

function getFeeManagerMode() {
    codecall erc677token['feeManagerContract'].0xf2ba9561 with:
         gas gas_remaining wei
        args 
    require callcode.return_code
    return (callcode.return_data[0 len 4] << 224)
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

function setDailyLimit(uint256 arg1) {
    require msg.sender == erc677token['owner']
    if arg1 <= numMessagesSigned['maxPerTx']:
        require not arg1
    numMessagesSigned[Mask(80, 0, 'dailyLimit', 0)] = arg1
    emit DailyLimitChanged(arg1);
}

function setExecutionDailyLimit(uint256 arg1) {
    require msg.sender == erc677token['owner']
    if arg1 <= numMessagesSigned['executionMaxPerTx']:
        require not arg1
    numMessagesSigned[Mask(152, 0, 'executionDailyLimit', 0)] = arg1
    emit ExecutionDailyLimitChanged(arg1);
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

function getHomeFee() {
    if sha3(code.data[21721 len 8]) == sha3(uint64(code.data[21713 len 8], 0)):
        codecall erc677token['feeManagerContract'].0x94da17cd with:
             gas gas_remaining wei
            args 
    else:
        codecall erc677token['feeManagerContract'].0xffd66196 with:
             gas gas_remaining wei
            args 
    require callcode.return_code
    return callcode.return_data[0]
}

function setForeignFee(uint256 arg1) {
    require msg.sender == erc677token['owner']
    if sha3(code.data[21692 len 11]) == sha3(uint64(code.data[21713 len 8], 0)):
        mem[334 len 64] = unknown_0x34a9e148(?????), arg1, mem[334 len 28]
    else:
        mem[334 len 64] = '(l@f', arg1, mem[334 len 28]
    mem[366] = mem[394 len 4]
    delegate erc677token['feeManagerContract'].mem[334 len 4] with:
         gas gas_remaining wei
        args mem[338 len 60]
    require delegate.return_code
}

function claimTokensFromErc677(address arg1, address arg2) {
    require ext_code.size(this.address)
    call this.address.0x6fde8202 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(erc677token[Mask(88, 0, 'erc677token', 0)])
    call erc677token[Mask(88, 0, 'erc677token', 0)].0x69ffa08a with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function message(bytes32 arg1) {
    mem[128] = 'messages'
    mem[136] = arg1
    mem[96] = 40
    mem[32] = 3
    _38 = sha3(sha3('messages', Mask(192, 64, arg1) >> 64, mem[200 len 8]), 3)
    mem[64] = ceil32(stor3['messages'][Mask(192, 64, arg1) >> 64][mem[200 len 8]].length) + 200
    mem[168] = stor3['messages'][Mask(192, 64, arg1) >> 64][mem[200 len 8]].length
    mem[0] = sha3(sha3('messages', Mask(192, 64, arg1) >> 64, mem[200 len 8]), 3)
    mem[200] = stor3['messages'][Mask(192, 64, arg1) >> 64][mem[200 len 8]]
    idx = 200
    s = 0
    while stor[_38].length + 168 > idx:
        mem[idx + 32] = stor[s + sha3(_38) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    _70 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[168]
    _72 = mem[168]
    mem[mem[64] + 64 len ceil32(mem[168])] = mem[200 len ceil32(mem[168])]
    if not _72 % 32:
        return 32, mem[mem[64] + 32 len _72 + 32]
    mem[floor32(_72) + mem[64] + 64] = mem[floor32(_72) + mem[64] + -(_72 % 32) + 96 len _72 % 32]
    return memory
      from mem[64]
       len floor32(_72) + _70 + -mem[64] + 96
}

function signature(bytes32 arg1, uint256 arg2) {
    mem[128] = arg1
    mem[160] = arg2
    mem[224] = 'signatures'
    mem[234] = sha3(arg1, arg2)
    mem[192] = 42
    _80 = sha3(sha3('signatures', Mask(176, 80, sha3(arg1, arg2)) >> 80, mem[298 len 10]), 3)
    mem[64] = ceil32(stor3['signatures'][Mask(176, 80, ('map', ('param', 'arg1'), ('param', 'arg2'))) >> 80][mem[298 len 10]].length) + 298
    mem[266] = stor3['signatures'][Mask(176, 80, ('map', ('param', 'arg1'), ('param', 'arg2'))) >> 80][mem[298 len 10]].length
    mem[0] = sha3(sha3('signatures', Mask(176, 80, sha3(arg1, arg2)) >> 80, mem[298 len 10]), 3)
    mem[298] = stor3['signatures'][Mask(176, 80, ('map', ('param', 'arg1'), ('param', 'arg2'))) >> 80][mem[298 len 10]]
    idx = 298
    s = 0
    while stor[_80].length + 266 > idx:
        mem[idx + 32] = stor[s + sha3(_80) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[266]
    _114 = mem[266]
    mem[mem[64] + 64 len ceil32(mem[266])] = mem[298 len ceil32(mem[266])]
    if not _114 % 32:
        return 32, mem[mem[64] + 32 len _114 + 32]
    mem[floor32(_114) + mem[64] + 64] = mem[floor32(_114) + mem[64] + -(_114 % 32) + 96 len _114 % 32]
    return 32, mem[mem[64] + 32 len floor32(_114) + 64]
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8, uint256 arg9, address arg10) {
    require not stor4[Mask(104, 0, 'isInitialized', 0)]
    require ext_code.size(arg1) > 0
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
    erc677token['owner'] = arg10
    require ext_code.size(arg7) > 0
    erc677token['erc677token'] = arg7
    emit RequiredBlockConfirmationChanged(arg6);
    emit GasPriceChanged(arg5);
    emit DailyLimitChanged(arg2);
    emit ExecutionDailyLimitChanged(arg8);
    stor4[Mask(104, 0, 'isInitialized', 0)] = 1
    return bool(stor4[Mask(104, 0, 'isInitialized', 0)])
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
                            code: code.data[21648 len 33], arg2
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



}
