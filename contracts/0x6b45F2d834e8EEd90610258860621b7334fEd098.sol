contract main {




// =====================  Runtime code  =====================


#
#  - _sendMessage(address arg1, bytes arg2, uint256 arg3, uint256 arg4)
#  - initialize(uint256 arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7)
#  - setChainIds(uint256 arg1, uint256 arg2)
#  - failedMessageSender(bytes32 arg1)
#  - submitSignature(bytes arg1, bytes arg2)
#  - numAffirmationsSigned(bytes32 arg1)
#  - messagesSigned(bytes32 arg1)
#  - messageCallStatus(bytes32 arg1)
#  - failedMessageDataHash(bytes32 arg1)
#  - executeAffirmation(bytes arg1)
#
const getBridgeMode = 0x2544fbb900000000000000000000000000000000000000000000000000000000

const getBridgeInterfacesVersion = 5, 4, 0


mapping of uint256 numMessagesSigned;
mapping of address failedMessageReceiver;
array of uint256 stor3;
mapping of uint8 stor4;
uint8 isInitialized;
uint256 stor2F30;
uint256 maxGasPerTx;
uint256 messageSourceChainId;
uint256 stor7B62;
address messageSenderAddress;
uint256 messageId;
uint64 storA9B0;
uint256 storA9B0; offset 64
uint256 storA9B0;
address validatorContractAddress;
address owner;
uint256 requiredBlockConfirmations;
uint256 decimalShift;
uint256 deployedAtBlock;
uint128 storF6C6; offset 160
uint256 sourceChainId;
uint256 gasPrice;

function transactionHash() {
    return messageId
}

function numMessagesSigned(bytes32 arg1) {
    return numMessagesSigned['numMessagesSigned'][arg1]
}

function sourceChainId() {
    return sourceChainId
}

function isInitialized() {
    return bool(isInitialized)
}

function requiredBlockConfirmations() {
    return requiredBlockConfirmations
}

function failedMessageReceiver(bytes32 arg1) {
    return failedMessageReceiver['failedMessageReceiver'][arg1]
}

function messageId() {
    return messageId
}

function affirmationsSigned(bytes32 arg1) {
    return bool(stor4['affirmationsSigned'][arg1])
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

function messageSourceChainId() {
    return messageSourceChainId
}

function destinationChainId() {
    return destinationChainId
}

function messageSender() {
    return messageSenderAddress
}

function decimalShift() {
    return decimalShift
}

function maxGasPerTx() {
    return maxGasPerTx
}

function gasPrice() {
    return gasPrice
}

function _fallback() payable {
    revert
}

function setMaxGasPerTx(uint256 arg1) {
    require msg.sender == owner
    maxGasPerTx = arg1
}

function setGasPrice(uint256 arg1) {
    require msg.sender == owner
    gasPrice = arg1
    emit GasPriceChanged(arg1);
}

function isAlreadyProcessed(uint256 arg1) {
    return (Mask(1, 255, arg1) == 0x8000000000000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getMinimumGasUsage(bytes arg1) {
    if not arg1.length:
        return 0
    require 16 * arg1.length / arg1.length == 16
    return (16 * arg1.length)
}

function setRequiredBlockConfirmations(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    requiredBlockConfirmations = arg1
    emit RequiredBlockConfirmationChanged(arg1);
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

function message(bytes32 arg1) {
    mem[128] = 'messages'
    mem[136] = arg1
    _38 = sha3(sha3('messages', Mask(192, 64, arg1) >> 64, mem[200 len 8]), 3)
    mem[64] = ceil32(stor3['messages'][Mask(192, 64, arg1) >> 64][mem[200 len 8]].length) + 200
    mem[168] = stor3['messages'][Mask(192, 64, arg1) >> 64][mem[200 len 8]].length
    mem[0] = sha3(sha3('messages', Mask(192, 64, arg1) >> 64, mem[200 len 8]), 3)
    mem[200] = stor3['messages'][Mask(192, 64, arg1) >> 64][mem[200 len 8]]
    idx = 200
    s = 0
    while stor[_38].length + 168 > idx:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[168]
    _73 = mem[168]
    mem[mem[64] + 64 len ceil32(mem[168])] = mem[200 len ceil32(mem[168])]
    if not _73 % 32:
        return 32, mem[mem[64] + 32 len _73 + 32]
    mem[floor32(_73) + mem[64] + 64] = mem[floor32(_73) + mem[64] + -(_73 % 32) + 96 len _73 % 32]
    return 32, mem[mem[64] + 32 len floor32(_73) + 64]
}

function signature(bytes32 arg1, uint256 arg2) {
    mem[128] = arg1
    mem[160] = arg2
    mem[96] = 64
    mem[224] = 'signatures'
    mem[234] = sha3(arg1, arg2)
    mem[192] = 42
    mem[32] = 3
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
    _112 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[266]
    _114 = mem[266]
    mem[mem[64] + 64 len ceil32(mem[266])] = mem[298 len ceil32(mem[266])]
    if not _114 % 32:
        return 32, mem[mem[64] + 32 len _114 + 32]
    mem[floor32(_114) + mem[64] + 64] = mem[floor32(_114) + mem[64] + -(_114 % 32) + 96 len _114 % 32]
    return memory
      from mem[64]
       len floor32(_114) + _112 + -mem[64] + 96
}

function requireToPassMessage(address arg1, bytes arg2, uint256 arg3) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    require not messageId
    if not arg2.length:
        require arg3 >= 0
        require arg3 <= maxGasPerTx
        mem[ceil32(arg2.length) + 160] = sourceChainId
        mem[ceil32(arg2.length) + 192] = address(this.address)
        mem[ceil32(arg2.length) + 128] = 52
        mem[ceil32(arg2.length) + 244] = uint64(this.address), storF6C6 or Mask(96, 160, mem[ceil32(arg2.length) + 244])
        _122 = sha3(sourceChainId, mem[ceil32(arg2.length) + 244 len 20])
        mem[ceil32(arg2.length) + 212] = stor2F30 + stor7B62 + 79
        if stor2F30 + stor7B62 + 79:
            mem[ceil32(arg2.length) + 244 len 32 * stor2F30 + stor7B62 + 79] = code.data[14439 len 32 * stor2F30 + stor7B62 + 79]
            mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 291] = destinationChainId
            mem[ceil32(arg2.length) + stor2F30 + 291] = sourceChainId
            mem[ceil32(arg2.length) + 291] = 0
            mem[ceil32(arg2.length) + 290] = stor7B62
            mem[ceil32(arg2.length) + 289] = stor2F30
            mem[ceil32(arg2.length) + 288] = arg3
            mem[ceil32(arg2.length) + 284] = arg1
            mem[ceil32(arg2.length) + 264] = msg.sender
            uint64(storA9B0.field_0) = uint64(uint256(storA9B0.field_0) + 1)
            Mask(192, 0, storA9B0.field_64) = 0
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _122) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and code.data[floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 14471 len 32] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), code.data[stor2F30 + stor7B62 + 14518 len floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32])]
            if not code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] % 32:
                emit UserRequestForSignature(bytes32 rg1, bytes rg2):
                                             32,
                                             mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] + 32],
                                             0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _122) or uint64(storA9B0.field_0),
            else:
                mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] % 32) + 451 len code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] % 32]
                emit UserRequestForSignature(Array(len=code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32], data=mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]) + 32]), 0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _122) or uint64(storA9B0.field_0));
        else:
            mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 291] = destinationChainId
            mem[ceil32(arg2.length) + stor2F30 + 291] = sourceChainId
            mem[ceil32(arg2.length) + 291] = 0
            mem[ceil32(arg2.length) + 290] = stor7B62
            mem[ceil32(arg2.length) + 289] = stor2F30
            mem[ceil32(arg2.length) + 288] = arg3
            mem[ceil32(arg2.length) + 284] = arg1
            mem[ceil32(arg2.length) + 264] = msg.sender
            mem[ceil32(arg2.length) + 268 len 8] = uint64(storA9B0.field_0)
            mem[ceil32(arg2.length) + 248 len 20] = Mask(160, 64, sha3(sourceChainId, mem[ceil32(arg2.length) + 244 len 20])) >> 64
            mem[ceil32(arg2.length) + 246 len 2] = 0
            mem[ceil32(arg2.length) + 245 len 1] = 5
            mem[ceil32(arg2.length) + 244 len 1] = 0
            mem[0] = 0x7ab1577440dd7bedf920cb6de2f9fc6bf7ba98c78c85a3fa1f8311aac95e1759
            mem[32] = 0
            uint64(storA9B0.field_0) = uint64(uint256(storA9B0.field_0) + 1)
            Mask(192, 0, storA9B0.field_64) = 0
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _122) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 323 len -stor2F30 + -stor7B62 + floor32(stor2F30 + stor7B62 + 79) - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[64] = arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])]
            if not mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32:
                emit UserRequestForSignature(bytes32 rg1, bytes rg2):
                                             32,
                                             mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] + 32],
                                             0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _122) or uint64(storA9B0.field_0),
            else:
                mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32) + 451 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32]
                emit UserRequestForSignature(bytes32 rg1, bytes rg2):
                                             32,
                                             mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + 64],
                                             0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _122) or uint64(storA9B0.field_0),
        return (0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _122) or uint64(storA9B0.field_0))
    require 16 * arg2.length / arg2.length == 16
    require arg3 >= 16 * arg2.length
    require arg3 <= maxGasPerTx
    mem[ceil32(arg2.length) + 160] = sourceChainId
    mem[ceil32(arg2.length) + 192] = address(this.address)
    mem[ceil32(arg2.length) + 128] = 52
    mem[ceil32(arg2.length) + 244] = uint64(this.address), storF6C6 or Mask(96, 160, mem[ceil32(arg2.length) + 244])
    _116 = sha3(sourceChainId, mem[ceil32(arg2.length) + 244 len 20])
    mem[ceil32(arg2.length) + 212] = stor2F30 + stor7B62 + 79
    if stor2F30 + stor7B62 + 79:
        mem[ceil32(arg2.length) + 244 len 32 * stor2F30 + stor7B62 + 79] = code.data[14439 len 32 * stor2F30 + stor7B62 + 79]
        mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 291] = destinationChainId
        mem[ceil32(arg2.length) + stor2F30 + 291] = sourceChainId
        mem[ceil32(arg2.length) + 291] = 0
        mem[ceil32(arg2.length) + 290] = stor7B62
        mem[ceil32(arg2.length) + 289] = stor2F30
        mem[ceil32(arg2.length) + 288] = arg3
        mem[ceil32(arg2.length) + 284] = arg1
        mem[ceil32(arg2.length) + 264] = msg.sender
        uint64(storA9B0.field_0) = uint64(uint256(storA9B0.field_0) + 1)
        Mask(192, 0, storA9B0.field_64) = 0
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _116) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and code.data[floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 14471 len 32] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), code.data[stor2F30 + stor7B62 + 14518 len floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32])]
        if not code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] % 32:
            emit UserRequestForSignature(bytes32 rg1, bytes rg2):
                                         32,
                                         mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] + 32],
                                         0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _116) or uint64(storA9B0.field_0),
        else:
            mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] % 32) + 451 len code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] % 32]
            emit UserRequestForSignature(Array(len=code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32], data=mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]) + 32]), 0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _116) or uint64(storA9B0.field_0));
    else:
        mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 291] = destinationChainId
        mem[ceil32(arg2.length) + stor2F30 + 291] = sourceChainId
        mem[ceil32(arg2.length) + 291] = 0
        mem[ceil32(arg2.length) + 290] = stor7B62
        mem[ceil32(arg2.length) + 289] = stor2F30
        mem[ceil32(arg2.length) + 288] = arg3
        mem[ceil32(arg2.length) + 284] = arg1
        mem[ceil32(arg2.length) + 264] = msg.sender
        mem[ceil32(arg2.length) + 268 len 8] = uint64(storA9B0.field_0)
        mem[ceil32(arg2.length) + 248 len 20] = Mask(160, 64, sha3(sourceChainId, mem[ceil32(arg2.length) + 244 len 20])) >> 64
        mem[ceil32(arg2.length) + 246 len 2] = 0
        mem[ceil32(arg2.length) + 245 len 1] = 5
        mem[ceil32(arg2.length) + 244 len 1] = 0
        mem[0] = 0x7ab1577440dd7bedf920cb6de2f9fc6bf7ba98c78c85a3fa1f8311aac95e1759
        mem[32] = 0
        uint64(storA9B0.field_0) = uint64(uint256(storA9B0.field_0) + 1)
        Mask(192, 0, storA9B0.field_64) = 0
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _116) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 323 len -stor2F30 + -stor7B62 + floor32(stor2F30 + stor7B62 + 79) - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        mem[64] = arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])]
        if not mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32:
            emit UserRequestForSignature(bytes32 rg1, bytes rg2):
                                         32,
                                         mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] + 32],
                                         0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _116) or uint64(storA9B0.field_0),
        else:
            mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32) + 451 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32]
            emit UserRequestForSignature(bytes32 rg1, bytes rg2):
                                         32,
                                         mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + 64],
                                         0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _116) or uint64(storA9B0.field_0),
    return (0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _116) or uint64(storA9B0.field_0))
}

function requireToConfirmMessage(address arg1, bytes arg2, uint256 arg3) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    require not messageId
    if not arg2.length:
        require arg3 >= 0
        require arg3 <= maxGasPerTx
        mem[ceil32(arg2.length) + 160] = sourceChainId
        mem[ceil32(arg2.length) + 192] = address(this.address)
        mem[ceil32(arg2.length) + 128] = 52
        mem[ceil32(arg2.length) + 244] = uint64(this.address), storF6C6 or Mask(96, 160, mem[ceil32(arg2.length) + 244])
        _122 = sha3(sourceChainId, mem[ceil32(arg2.length) + 244 len 20])
        mem[ceil32(arg2.length) + 212] = stor2F30 + stor7B62 + 79
        if stor2F30 + stor7B62 + 79:
            mem[ceil32(arg2.length) + 244 len 32 * stor2F30 + stor7B62 + 79] = code.data[14439 len 32 * stor2F30 + stor7B62 + 79]
            mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 291] = destinationChainId
            mem[ceil32(arg2.length) + stor2F30 + 291] = sourceChainId
            mem[ceil32(arg2.length) + 291] = 240
            mem[ceil32(arg2.length) + 290] = stor7B62
            mem[ceil32(arg2.length) + 289] = stor2F30
            mem[ceil32(arg2.length) + 288] = arg3
            mem[ceil32(arg2.length) + 284] = arg1
            mem[ceil32(arg2.length) + 264] = msg.sender
            uint64(storA9B0.field_0) = uint64(uint256(storA9B0.field_0) + 1)
            Mask(192, 0, storA9B0.field_64) = 0
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _122) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and code.data[floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 14471 len 32] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), code.data[stor2F30 + stor7B62 + 14518 len floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32])]
            if not code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] % 32:
                emit UserRequestForSignature(bytes32 rg1, bytes rg2):
                                             32,
                                             mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] + 32],
                                             0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _122) or uint64(storA9B0.field_0),
            else:
                mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] % 32) + 451 len code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] % 32]
                emit UserRequestForSignature(Array(len=code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32], data=mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]) + 32]), 0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _122) or uint64(storA9B0.field_0));
        else:
            mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 291] = destinationChainId
            mem[ceil32(arg2.length) + stor2F30 + 291] = sourceChainId
            mem[ceil32(arg2.length) + 291] = 240
            mem[ceil32(arg2.length) + 290] = stor7B62
            mem[ceil32(arg2.length) + 289] = stor2F30
            mem[ceil32(arg2.length) + 288] = arg3
            mem[ceil32(arg2.length) + 284] = arg1
            mem[ceil32(arg2.length) + 264] = msg.sender
            mem[ceil32(arg2.length) + 268 len 8] = uint64(storA9B0.field_0)
            mem[ceil32(arg2.length) + 248 len 20] = Mask(160, 64, sha3(sourceChainId, mem[ceil32(arg2.length) + 244 len 20])) >> 64
            mem[ceil32(arg2.length) + 246 len 2] = 0
            mem[ceil32(arg2.length) + 245 len 1] = 5
            mem[ceil32(arg2.length) + 244 len 1] = 0
            mem[0] = 0x7ab1577440dd7bedf920cb6de2f9fc6bf7ba98c78c85a3fa1f8311aac95e1759
            mem[32] = 0
            uint64(storA9B0.field_0) = uint64(uint256(storA9B0.field_0) + 1)
            Mask(192, 0, storA9B0.field_64) = 0
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _122) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 323 len -stor2F30 + -stor7B62 + floor32(stor2F30 + stor7B62 + 79) - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[64] = arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])]
            if not mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32:
                emit UserRequestForSignature(bytes32 rg1, bytes rg2):
                                             32,
                                             mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] + 32],
                                             0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _122) or uint64(storA9B0.field_0),
            else:
                mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32) + 451 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32]
                emit UserRequestForSignature(bytes32 rg1, bytes rg2):
                                             32,
                                             mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + 64],
                                             0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _122) or uint64(storA9B0.field_0),
        return (0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _122) or uint64(storA9B0.field_0))
    require 16 * arg2.length / arg2.length == 16
    require arg3 >= 16 * arg2.length
    require arg3 <= maxGasPerTx
    mem[ceil32(arg2.length) + 160] = sourceChainId
    mem[ceil32(arg2.length) + 192] = address(this.address)
    mem[ceil32(arg2.length) + 128] = 52
    mem[ceil32(arg2.length) + 244] = uint64(this.address), storF6C6 or Mask(96, 160, mem[ceil32(arg2.length) + 244])
    _116 = sha3(sourceChainId, mem[ceil32(arg2.length) + 244 len 20])
    mem[ceil32(arg2.length) + 212] = stor2F30 + stor7B62 + 79
    if stor2F30 + stor7B62 + 79:
        mem[ceil32(arg2.length) + 244 len 32 * stor2F30 + stor7B62 + 79] = code.data[14439 len 32 * stor2F30 + stor7B62 + 79]
        mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 291] = destinationChainId
        mem[ceil32(arg2.length) + stor2F30 + 291] = sourceChainId
        mem[ceil32(arg2.length) + 291] = 240
        mem[ceil32(arg2.length) + 290] = stor7B62
        mem[ceil32(arg2.length) + 289] = stor2F30
        mem[ceil32(arg2.length) + 288] = arg3
        mem[ceil32(arg2.length) + 284] = arg1
        mem[ceil32(arg2.length) + 264] = msg.sender
        uint64(storA9B0.field_0) = uint64(uint256(storA9B0.field_0) + 1)
        Mask(192, 0, storA9B0.field_64) = 0
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _116) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and code.data[floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 14471 len 32] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), code.data[stor2F30 + stor7B62 + 14518 len floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32])]
        if not code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] % 32:
            emit UserRequestForSignature(bytes32 rg1, bytes rg2):
                                         32,
                                         mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] + 32],
                                         0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _116) or uint64(storA9B0.field_0),
        else:
            mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] % 32) + 451 len code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32] % 32]
            emit UserRequestForSignature(Array(len=code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32], data=mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 14439 len 32]) + 32]), 0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _116) or uint64(storA9B0.field_0));
    else:
        mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 291] = destinationChainId
        mem[ceil32(arg2.length) + stor2F30 + 291] = sourceChainId
        mem[ceil32(arg2.length) + 291] = 240
        mem[ceil32(arg2.length) + 290] = stor7B62
        mem[ceil32(arg2.length) + 289] = stor2F30
        mem[ceil32(arg2.length) + 288] = arg3
        mem[ceil32(arg2.length) + 284] = arg1
        mem[ceil32(arg2.length) + 264] = msg.sender
        mem[ceil32(arg2.length) + 268 len 8] = uint64(storA9B0.field_0)
        mem[ceil32(arg2.length) + 248 len 20] = Mask(160, 64, sha3(sourceChainId, mem[ceil32(arg2.length) + 244 len 20])) >> 64
        mem[ceil32(arg2.length) + 246 len 2] = 0
        mem[ceil32(arg2.length) + 245 len 1] = 5
        mem[ceil32(arg2.length) + 244 len 1] = 0
        mem[0] = 0x7ab1577440dd7bedf920cb6de2f9fc6bf7ba98c78c85a3fa1f8311aac95e1759
        mem[32] = 0
        uint64(storA9B0.field_0) = uint64(uint256(storA9B0.field_0) + 1)
        Mask(192, 0, storA9B0.field_64) = 0
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _116) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 323 len -stor2F30 + -stor7B62 + floor32(stor2F30 + stor7B62 + 79) - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        mem[64] = arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])]
        if not mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32:
            emit UserRequestForSignature(bytes32 rg1, bytes rg2):
                                         32,
                                         mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] + 32],
                                         0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _116) or uint64(storA9B0.field_0),
        else:
            mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32) + 451 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32]
            emit UserRequestForSignature(bytes32 rg1, bytes rg2):
                                         32,
                                         mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + 64],
                                         0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _116) or uint64(storA9B0.field_0),
    return (0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _116) or uint64(storA9B0.field_0))
}



}
