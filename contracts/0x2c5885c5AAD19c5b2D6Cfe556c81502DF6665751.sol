contract main {




// =====================  Runtime code  =====================


#
#  - relayTokens(address arg1, uint256 arg2)
#  - setExecutionMaxPerTx(address arg1, uint256 arg2)
#  - isRewardAddress(address arg1)
#  - fixFailedMessage(bytes32 arg1)
#  - withinLimit(address arg1, uint256 arg2)
#  - removeRewardAddress(address arg1)
#  - handleBridgedTokens(address arg1, address arg2, uint256 arg3)
#  - executionMaxPerTx(address arg1)
#  - isTokenRegistered(address arg1)
#  - setDailyLimit(address arg1, uint256 arg2)
#  - deployAndHandleBridgedTokens(address arg1, string arg2, string arg3, uint8 arg4, address arg5, uint256 arg6)
#  - withinExecutionLimit(address arg1, uint256 arg2)
#  - executionDailyLimit(address arg1)
#  - setFee(bytes32 arg1, address arg2, uint256 arg3)
#  - claimTokens(address arg1, address arg2)
#  - getNextRewardAddress(address arg1)
#  - forwardingRule(address arg1, address arg2, address arg3)
#  - maxAvailablePerTx(address arg1)
#  - setExecutionDailyLimit(address arg1, uint256 arg2)
#  - minPerTx(address arg1)
#  - onTokenTransfer(address arg1, uint256 arg2, bytes arg3)
#  - relayTokens(address arg1, address arg2, uint256 arg3)
#  - addRewardAddress(address arg1)
#  - setMaxPerTx(address arg1, uint256 arg2)
#  - homeTokenAddress(address arg1)
#  - rewardAddressList()
#  - setMinPerTx(address arg1, uint256 arg2)
#  - sub_f07e71a6(?)
#  - totalExecutedPerDay(address arg1, uint256 arg2)
#  - dailyLimit(address arg1)
#  - destinationLane(address arg1, address arg2, address arg3)
#
const getCurrentDay = (block.timestamp / 24 * 3600)

const getBridgeMode = 0xb1516c2600000000000000000000000000000000000000000000000000000000

const getBridgeInterfacesVersion = 1, 2, 0

const F_ADDR = 0xffffffffffffffffffffffffffffffffffffffff

const FOREIGN_TO_HOME_FEE = code.data[24228 len 32]

const HOME_TO_FOREIGN_FEE = code.data[24196 len 32]


mapping of uint256 maxPerTx;
mapping of address foreignToken;
mapping of uint8 stor4;
mapping of uint256 stor5;
uint8 isInitialized;
uint32 storC120;
address mediatorContractOnOtherSideAddress;
uint256 storC120;
address tokenImageAddress;
uint256 requestGasLimit;
uint256 rewardAddressCount;
address bridgeContractAddress;
address owner;

function maxPerTx(address arg1) {
    return maxPerTx[Mask(224, 0, 'maxPerTx', arg1, 0)]
}

function isInitialized() {
    return bool(isInitialized)
}

function foreignTokenAddress(address arg1) {
    return foreignToken['foreignTokenAddress'][arg1]
}

function messageFixed(bytes32 arg1) {
    return bool(stor4['messageFixed'][arg1])
}

function rewardAddressCount() {
    return rewardAddressCount
}

function mediatorContractOnOtherSide() {
    return address(mediatorContractOnOtherSideAddress)
}

function owner() {
    return owner
}

function totalSpentPerDay(address arg1, uint256 arg2) {
    return maxPerTx[arg1, Mask(224, 32, arg2) >> 32 >> 256][uint32(arg2)]
}

function requestGasLimit() {
    return requestGasLimit
}

function tokenImage() {
    return tokenImageAddress
}

function bridgeContract() {
    return bridgeContractAddress
}

function _fallback() payable {
    revert
}

function setTokenImage(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1) > 0
    tokenImageAddress = arg1
}

function setMediatorContractOnOtherSide(address arg1) {
    require msg.sender == owner
    address(mediatorContractOnOtherSideAddress) = arg1
}

function setBridgeContract(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1) > 0
    bridgeContractAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getFee(bytes32 arg1, address arg2) {
    if arg1 != code.data[24196 len 32]:
        require arg1 == code.data[24228 len 32]
    return maxPerTx[arg1][arg2]
}

function calculateFee(bytes32 arg1, address arg2, uint256 arg3) {
    if arg1 != code.data[24196 len 32]:
        require arg1 == code.data[24228 len 32]
    if not arg3:
        return 0
    require maxPerTx[arg1][arg2] * arg3 / arg3 == maxPerTx[arg1][arg2]
    return (maxPerTx[arg1][arg2] * arg3 / 10^18)
}

function setRequestGasLimit(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(bridgeContractAddress)
    call bridgeContractAddress.maxGasPerTx() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    requestGasLimit = arg1
}

function setReceiverForwardingRule(address arg1, bool arg2) {
    require arg1 != 0xffffffffffffffffffffffffffffffffffffffff
    require msg.sender == owner
    if arg2:
        stor5['forwardTo'][test266151307()][test266151307()][arg1] = -1
        emit ForwardingRuleUpdated(0xffffffffffffffffffffffffffffffffffffffff, 0xffffffffffffffffffffffffffffffffffffffff, address(arg1), -1);
    else:
        stor5['forwardTo'][test266151307()][test266151307()][arg1] = 0
        emit ForwardingRuleUpdated(0xffffffffffffffffffffffffffffffffffffffff, 0xffffffffffffffffffffffffffffffffffffffff, address(arg1), 0);
}

function setReceiverExceptionForTokenForwardingRule(address arg1, address arg2, bool arg3) {
    require arg1 != 0xffffffffffffffffffffffffffffffffffffffff
    require arg2 != 0xffffffffffffffffffffffffffffffffffffffff
    require msg.sender == owner
    if arg3:
        stor5['forwardTo'][arg1][test266151307()][arg2] = 1
        emit ForwardingRuleUpdated(address(arg1), 0xffffffffffffffffffffffffffffffffffffffff, address(arg2), 1);
    else:
        stor5['forwardTo'][arg1][test266151307()][arg2] = 0
        emit ForwardingRuleUpdated(address(arg1), 0xffffffffffffffffffffffffffffffffffffffff, address(arg2), 0);
}

function setTokenForwardingRule(address arg1, bool arg2) {
    require arg1 != 0xffffffffffffffffffffffffffffffffffffffff
    require msg.sender == owner
    if arg2:
        stor5['forwardTo'][arg1][test266151307()][test266151307()][test266151307()] = -1
        emit ForwardingRuleUpdated(address(arg1), 0xffffffffffffffffffffffffffffffffffffffff, 0xffffffffffffffffffffffffffffffffffffffff, -1);
    else:
        stor5['forwardTo'][arg1][test266151307()][test266151307()][test266151307()] = 0
        emit ForwardingRuleUpdated(address(arg1), 0xffffffffffffffffffffffffffffffffffffffff, 0xffffffffffffffffffffffffffffffffffffffff, 0);
}

function setSenderForwardingRule(address arg1, bool arg2) {
    require arg1 != 0xffffffffffffffffffffffffffffffffffffffff
    require msg.sender == owner
    if arg2:
        stor5['forwardTo'][test266151307()][arg1][test266151307()][test266151307()] = -1
        emit ForwardingRuleUpdated(0xffffffffffffffffffffffffffffffffffffffff, address(arg1), 0xffffffffffffffffffffffffffffffffffffffff, -1);
    else:
        stor5['forwardTo'][test266151307()][arg1][test266151307()][test266151307()] = 0
        emit ForwardingRuleUpdated(0xffffffffffffffffffffffffffffffffffffffff, address(arg1), 0xffffffffffffffffffffffffffffffffffffffff, 0);
}

function setSenderExceptionForTokenForwardingRule(address arg1, address arg2, bool arg3) {
    require arg1 != 0xffffffffffffffffffffffffffffffffffffffff
    require arg2 != 0xffffffffffffffffffffffffffffffffffffffff
    require msg.sender == owner
    if arg3:
        stor5['forwardTo'][arg1][arg2][test266151307()][test266151307()] = 1
        emit ForwardingRuleUpdated(address(arg1), address(arg2), 0xffffffffffffffffffffffffffffffffffffffff, 1);
    else:
        stor5['forwardTo'][arg1][arg2][test266151307()][test266151307()] = 0
        emit ForwardingRuleUpdated(address(arg1), address(arg2), 0xffffffffffffffffffffffffffffffffffffffff, 0);
}

function requestFailedMessageFix(bytes32 arg1) {
    require ext_code.size(bridgeContractAddress)
    call bridgeContractAddress.messageCallStatus(bytes32 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(bridgeContractAddress)
    call bridgeContractAddress.failedMessageReceiver(bytes32 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(bridgeContractAddress)
    call bridgeContractAddress.failedMessageSender(bytes32 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == address(mediatorContractOnOtherSideAddress)
    require ext_code.size(bridgeContractAddress)
    call bridgeContractAddress.requireToPassMessage(address rg1, bytes rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(mediatorContractOnOtherSideAddress), 96, requestGasLimit, 36, fixFailedMessage(bytes32 rg1), arg1, 0, Mask(192, 0, storC120), uint32(storC120)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
