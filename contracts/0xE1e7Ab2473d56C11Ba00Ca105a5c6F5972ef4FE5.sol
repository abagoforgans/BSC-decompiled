contract main {




// =====================  Runtime code  =====================


#
#  - removeValidator(address arg1)
#  - validatorList()
#  - addRewardableValidator(address arg1, address arg2)
#  - getNextValidator(address arg1)
#  - isValidatorDuty(address arg1)
#  - initialize(uint256 arg1, address[] arg2, address[] arg3, address arg4)
#  - isValidator(address arg1)
#
const getBridgeValidatorsInterfacesVersion = 2, 3, 0

const F_ADDR = 0xffffffffffffffffffffffffffffffffffffffff


mapping of address validatorReward;
uint8 isInitialized;
uint256 requiredSignatures;
uint256 validatorCount;
address owner;
uint256 deployedAtBlock;

function validatorCount() {
    return validatorCount
}

function isInitialized() {
    return bool(isInitialized)
}

function getValidatorRewardAddress(address arg1) {
    return validatorReward['validatorsRewards'][arg1]
}

function requiredSignatures() {
    return requiredSignatures
}

function owner() {
    return owner
}

function deployedAtBlock() {
    return deployedAtBlock
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRequiredSignatures(uint256 arg1) {
    require msg.sender == owner
    require validatorCount >= arg1
    require arg1
    requiredSignatures = arg1
    emit RequiredSignaturesChanged(arg1);
}



}
