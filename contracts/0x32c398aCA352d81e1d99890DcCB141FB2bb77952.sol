contract main {




// =====================  Runtime code  =====================


#
#  - _sendMessage(address arg1, bytes arg2, uint256 arg3, uint256 arg4)
#  - initialize(uint256 arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7)
#  - executeSignatures(bytes arg1, bytes arg2)
#  - setChainIds(uint256 arg1, uint256 arg2)
#  - failedMessageSender(bytes32 arg1)
#  - messageCallStatus(bytes32 arg1)
#
const getBridgeMode = 0x2544fbb900000000000000000000000000000000000000000000000000000000

const getBridgeInterfacesVersion = 5, 6, 0


mapping of uint256 failedMessageDataHash;
mapping of address failedMessageReceiver;
mapping of uint8 stor4;
uint8 isInitialized;
uint8 allowReentrantRequests;
uint256 stor2F30;
uint256 maxGasPerTx;
address messageSenderAddress;
uint256 stor7B62;
uint256 messageSourceChainId;
uint64 storA9B0;
uint256 storA9B0; offset 64
uint256 storA9B0;
address validatorContractAddress;
address owner;
uint256 requiredBlockConfirmations;
uint256 decimalShift;
uint256 messageId;
uint256 deployedAtBlock;
uint128 storF6C6; offset 160
uint256 sourceChainId;
uint256 gasPrice;

function transactionHash() {
    return messageId
}

function sourceChainId() {
    return sourceChainId
}

function relayedMessages(bytes32 arg1) {
    return bool(stor4['relayedMessages'][arg1])
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

function allowReentrantRequests() {
    return bool(allowReentrantRequests)
}

function messageId() {
    return messageId
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

function failedMessageDataHash(bytes32 arg1) {
    return failedMessageDataHash['failedMessageDataHash'][arg1]
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

function setAllowReentrantRequests(bool arg1) {
    require msg.sender == owner
    allowReentrantRequests = uint8(arg1)
}

function setGasPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    gasPrice = arg1
    emit GasPriceChanged(arg1);
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

function requireToPassMessage(address arg1, bytes arg2, uint256 arg3) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if not messageId:
        if not arg2.length:
            require arg3 >= 0
            require arg3 <= maxGasPerTx
            mem[ceil32(arg2.length) + 160] = sourceChainId
            mem[ceil32(arg2.length) + 192] = address(this.address)
            mem[ceil32(arg2.length) + 128] = 52
            mem[ceil32(arg2.length) + 244] = uint64(this.address), storF6C6 or Mask(96, 160, mem[ceil32(arg2.length) + 244])
            _233 = sha3(sourceChainId, mem[ceil32(arg2.length) + 244 len 20])
            mem[ceil32(arg2.length) + 212] = stor2F30 + stor7B62 + 79
            if not stor2F30 + stor7B62 + 79:
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
                mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _233) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
                mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 323 len -stor2F30 + -stor7B62 + floor32(stor2F30 + stor7B62 + 79) - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
                mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                mem[64] = arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355
                mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
                mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]
                mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])]
                if not mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32:
                    emit UserRequestForAffirmation(bytes32 rg1, bytes rg2):
                                                   32,
                                                   mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] + 32],
                                                   0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _233) or uint64(storA9B0.field_0),
                else:
                    mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32) + 451 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32]
                    emit UserRequestForAffirmation(bytes32 rg1, bytes rg2):
                                                   32,
                                                   mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + 64],
                                                   0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _233) or uint64(storA9B0.field_0),
            else:
                mem[ceil32(arg2.length) + 244 len 32 * stor2F30 + stor7B62 + 79] = code.data[10739 len 32 * stor2F30 + stor7B62 + 79]
                mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 291] = destinationChainId
                mem[ceil32(arg2.length) + stor2F30 + 291] = sourceChainId
                mem[ceil32(arg2.length) + 291] = 0
                mem[ceil32(arg2.length) + 290] = stor7B62
                mem[ceil32(arg2.length) + 289] = stor2F30
                mem[ceil32(arg2.length) + 288] = arg3
                mem[ceil32(arg2.length) + 284] = arg1
                mem[ceil32(arg2.length) + 264] = msg.sender
                mem[ceil32(arg2.length) + 268 len 8] = uint64(storA9B0.field_0)
                mem[ceil32(arg2.length) + 248 len 20] = Mask(160, 64, _233) >> 64
                mem[ceil32(arg2.length) + 246 len 2] = 0
                mem[ceil32(arg2.length) + 245 len 1] = 5
                mem[ceil32(arg2.length) + 244 len 1] = 0
                mem[0] = 0x7ab1577440dd7bedf920cb6de2f9fc6bf7ba98c78c85a3fa1f8311aac95e1759
                mem[32] = 0
                uint64(storA9B0.field_0) = uint64(uint256(storA9B0.field_0) + 1)
                Mask(192, 0, storA9B0.field_64) = 0
                mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _233) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
                mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and code.data[floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 10771 len 32] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), code.data[stor2F30 + stor7B62 + 10818 len floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
                mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                mem[64] = arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355
                mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
                mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]
                mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32])]
                if not code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] % 32:
                    emit UserRequestForAffirmation(bytes32 rg1, bytes rg2):
                                                   32,
                                                   mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] + 32],
                                                   0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _233) or uint64(storA9B0.field_0),
                else:
                    mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] % 32) + 451 len code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] % 32]
                    emit UserRequestForAffirmation(Array(len=code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32], data=mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]) + 32]), 0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _233) or uint64(storA9B0.field_0));
            return (0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _233) or uint64(storA9B0.field_0))
        require 16 * arg2.length / arg2.length == 16
        require arg3 >= 16 * arg2.length
        require arg3 <= maxGasPerTx
        mem[ceil32(arg2.length) + 160] = sourceChainId
        mem[ceil32(arg2.length) + 192] = address(this.address)
        mem[ceil32(arg2.length) + 128] = 52
        mem[ceil32(arg2.length) + 244] = uint64(this.address), storF6C6 or Mask(96, 160, mem[ceil32(arg2.length) + 244])
        _227 = sha3(sourceChainId, mem[ceil32(arg2.length) + 244 len 20])
        mem[ceil32(arg2.length) + 212] = stor2F30 + stor7B62 + 79
        if not stor2F30 + stor7B62 + 79:
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
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _227) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 323 len -stor2F30 + -stor7B62 + floor32(stor2F30 + stor7B62 + 79) - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[64] = arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])]
            if not mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32:
                emit UserRequestForAffirmation(bytes32 rg1, bytes rg2):
                                               32,
                                               mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] + 32],
                                               0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _227) or uint64(storA9B0.field_0),
            else:
                mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32) + 451 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32]
                emit UserRequestForAffirmation(bytes32 rg1, bytes rg2):
                                               32,
                                               mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + 64],
                                               0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _227) or uint64(storA9B0.field_0),
        else:
            mem[ceil32(arg2.length) + 244 len 32 * stor2F30 + stor7B62 + 79] = code.data[10739 len 32 * stor2F30 + stor7B62 + 79]
            mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 291] = destinationChainId
            mem[ceil32(arg2.length) + stor2F30 + 291] = sourceChainId
            mem[ceil32(arg2.length) + 291] = 0
            mem[ceil32(arg2.length) + 290] = stor7B62
            mem[ceil32(arg2.length) + 289] = stor2F30
            mem[ceil32(arg2.length) + 288] = arg3
            mem[ceil32(arg2.length) + 284] = arg1
            mem[ceil32(arg2.length) + 264] = msg.sender
            mem[ceil32(arg2.length) + 268 len 8] = uint64(storA9B0.field_0)
            mem[ceil32(arg2.length) + 248 len 20] = Mask(160, 64, _227) >> 64
            mem[ceil32(arg2.length) + 246 len 2] = 0
            mem[ceil32(arg2.length) + 245 len 1] = 5
            mem[ceil32(arg2.length) + 244 len 1] = 0
            mem[0] = 0x7ab1577440dd7bedf920cb6de2f9fc6bf7ba98c78c85a3fa1f8311aac95e1759
            mem[32] = 0
            uint64(storA9B0.field_0) = uint64(uint256(storA9B0.field_0) + 1)
            Mask(192, 0, storA9B0.field_64) = 0
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _227) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and code.data[floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 10771 len 32] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), code.data[stor2F30 + stor7B62 + 10818 len floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[64] = arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32])]
            if not code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] % 32:
                emit UserRequestForAffirmation(bytes32 rg1, bytes rg2):
                                               32,
                                               mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] + 32],
                                               0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _227) or uint64(storA9B0.field_0),
            else:
                mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] % 32) + 451 len code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] % 32]
                emit UserRequestForAffirmation(Array(len=code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32], data=mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]) + 32]), 0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _227) or uint64(storA9B0.field_0));
        return (0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _227) or uint64(storA9B0.field_0))
    require allowReentrantRequests
    if not arg2.length:
        require arg3 >= 0
        require arg3 <= maxGasPerTx
        mem[ceil32(arg2.length) + 160] = sourceChainId
        mem[ceil32(arg2.length) + 192] = address(this.address)
        mem[ceil32(arg2.length) + 128] = 52
        mem[ceil32(arg2.length) + 244] = uint64(this.address), storF6C6 or Mask(96, 160, mem[ceil32(arg2.length) + 244])
        _245 = sha3(sourceChainId, mem[ceil32(arg2.length) + 244 len 20])
        mem[ceil32(arg2.length) + 212] = stor2F30 + stor7B62 + 79
        if not stor2F30 + stor7B62 + 79:
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
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _245) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 323 len -stor2F30 + -stor7B62 + floor32(stor2F30 + stor7B62 + 79) - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[64] = arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])]
            if not mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32:
                emit UserRequestForAffirmation(bytes32 rg1, bytes rg2):
                                               32,
                                               mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] + 32],
                                               0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _245) or uint64(storA9B0.field_0),
            else:
                mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32) + 451 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32]
                emit UserRequestForAffirmation(bytes32 rg1, bytes rg2):
                                               32,
                                               mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + 64],
                                               0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _245) or uint64(storA9B0.field_0),
        else:
            mem[ceil32(arg2.length) + 244 len 32 * stor2F30 + stor7B62 + 79] = code.data[10739 len 32 * stor2F30 + stor7B62 + 79]
            mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 291] = destinationChainId
            mem[ceil32(arg2.length) + stor2F30 + 291] = sourceChainId
            mem[ceil32(arg2.length) + 291] = 0
            mem[ceil32(arg2.length) + 290] = stor7B62
            mem[ceil32(arg2.length) + 289] = stor2F30
            mem[ceil32(arg2.length) + 288] = arg3
            mem[ceil32(arg2.length) + 284] = arg1
            mem[ceil32(arg2.length) + 264] = msg.sender
            mem[ceil32(arg2.length) + 268 len 8] = uint64(storA9B0.field_0)
            mem[ceil32(arg2.length) + 248 len 20] = Mask(160, 64, _245) >> 64
            mem[ceil32(arg2.length) + 246 len 2] = 0
            mem[ceil32(arg2.length) + 245 len 1] = 5
            mem[ceil32(arg2.length) + 244 len 1] = 0
            mem[0] = 0x7ab1577440dd7bedf920cb6de2f9fc6bf7ba98c78c85a3fa1f8311aac95e1759
            mem[32] = 0
            uint64(storA9B0.field_0) = uint64(uint256(storA9B0.field_0) + 1)
            Mask(192, 0, storA9B0.field_64) = 0
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _245) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and code.data[floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 10771 len 32] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), code.data[stor2F30 + stor7B62 + 10818 len floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[64] = arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]
            mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32])]
            if not code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] % 32:
                emit UserRequestForAffirmation(bytes32 rg1, bytes rg2):
                                               32,
                                               mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] + 32],
                                               0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _245) or uint64(storA9B0.field_0),
            else:
                mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] % 32) + 451 len code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] % 32]
                emit UserRequestForAffirmation(Array(len=code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32], data=mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]) + 32]), 0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _245) or uint64(storA9B0.field_0));
        return (0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _245) or uint64(storA9B0.field_0))
    require 16 * arg2.length / arg2.length == 16
    require arg3 >= 16 * arg2.length
    require arg3 <= maxGasPerTx
    mem[ceil32(arg2.length) + 160] = sourceChainId
    mem[ceil32(arg2.length) + 192] = address(this.address)
    mem[ceil32(arg2.length) + 128] = 52
    mem[ceil32(arg2.length) + 244] = uint64(this.address), storF6C6 or Mask(96, 160, mem[ceil32(arg2.length) + 244])
    _239 = sha3(sourceChainId, mem[ceil32(arg2.length) + 244 len 20])
    mem[ceil32(arg2.length) + 212] = stor2F30 + stor7B62 + 79
    if not stor2F30 + stor7B62 + 79:
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
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _239) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 323 len -stor2F30 + -stor7B62 + floor32(stor2F30 + stor7B62 + 79) - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        mem[64] = arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244])]
        if not mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32:
            emit UserRequestForAffirmation(bytes32 rg1, bytes rg2):
                                           32,
                                           mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] + 32],
                                           0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _239) or uint64(storA9B0.field_0),
        else:
            mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32) + 451 len mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244] % 32]
            emit UserRequestForAffirmation(bytes32 rg1, bytes rg2):
                                           32,
                                           mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len floor32(mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 244]) + 64],
                                           0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _239) or uint64(storA9B0.field_0),
    else:
        mem[ceil32(arg2.length) + 244 len 32 * stor2F30 + stor7B62 + 79] = code.data[10739 len 32 * stor2F30 + stor7B62 + 79]
        mem[ceil32(arg2.length) + stor2F30 + stor7B62 + 291] = destinationChainId
        mem[ceil32(arg2.length) + stor2F30 + 291] = sourceChainId
        mem[ceil32(arg2.length) + 291] = 0
        mem[ceil32(arg2.length) + 290] = stor7B62
        mem[ceil32(arg2.length) + 289] = stor2F30
        mem[ceil32(arg2.length) + 288] = arg3
        mem[ceil32(arg2.length) + 284] = arg1
        mem[ceil32(arg2.length) + 264] = msg.sender
        mem[ceil32(arg2.length) + 268 len 8] = uint64(storA9B0.field_0)
        mem[ceil32(arg2.length) + 248 len 20] = Mask(160, 64, _239) >> 64
        mem[ceil32(arg2.length) + 246 len 2] = 0
        mem[ceil32(arg2.length) + 245 len 1] = 5
        mem[ceil32(arg2.length) + 244 len 1] = 0
        mem[0] = 0x7ab1577440dd7bedf920cb6de2f9fc6bf7ba98c78c85a3fa1f8311aac95e1759
        mem[32] = 0
        uint64(storA9B0.field_0) = uint64(uint256(storA9B0.field_0) + 1)
        Mask(192, 0, storA9B0.field_64) = 0
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len floor32(stor2F30 + stor7B62 + 79)] = 0, 0, 0, Mask(160, 64, _239) >> 64, uint64(storA9B0.field_0), mem[ceil32(arg2.length) + 276 len stor2F30 + stor7B62 + 15], Mask(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47, 0, stor2423.field_-(8 * floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47) + 256)
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 276] = 256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1 and code.data[floor32(stor2F30 + stor7B62 + 110) + floor32(stor2F30 + stor7B62 + 79) + 10771 len 32] or Mask(8 * -floor32(stor2F30 + stor7B62 + 79) + stor2F30 + stor7B62 + 79, 0, stor2423.field_0), code.data[stor2F30 + stor7B62 + 10818 len floor32(stor2F30 + stor7B62 + 79) + -stor2F30 + -stor7B62 - 47] and !(256^(-(stor2F30 + stor7B62 + 79 % 32) + 32) - 1)
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + floor32(arg2.length) + -(arg2.length % 32) + 387 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        mem[64] = arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 355] = 32
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387] = code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]
        mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32])] = mem[ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + 276 len ceil32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32])]
        if not code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] % 32:
            emit UserRequestForAffirmation(bytes32 rg1, bytes rg2):
                                           32,
                                           mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 387 len code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] + 32],
                                           0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _239) or uint64(storA9B0.field_0),
        else:
            mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419] = mem[floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]) + arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + -(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] % 32) + 451 len code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32] % 32]
            emit UserRequestForAffirmation(Array(len=code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32], data=mem[arg2.length + ceil32(arg2.length) + floor32(stor2F30 + stor7B62 + 110) + stor2F30 + stor7B62 + 419 len floor32(code.data[floor32(stor2F30 + stor7B62 + 110) + 10739 len 32]) + 32]), 0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _239) or uint64(storA9B0.field_0));
    return (0x5000000000000000000000000000000000000000000000000000000000000 or Mask(160, 64, _239) or uint64(storA9B0.field_0))
}



}
