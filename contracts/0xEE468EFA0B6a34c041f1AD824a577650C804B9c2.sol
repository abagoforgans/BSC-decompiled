contract main {




// =====================  Runtime code  =====================


const name = 'CUPRUM'

const decimals = 18

const feeParts = 10^6

const symbol = 'XCU'

const feeDecimals = 6


uint8 stor0;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
uint8 paused; offset 160
uint128 stor5; offset 160
address proposedOwner;
address assetProtectionRoleAddress;
mapping of uint8 stor7;
address supplyControllerAddress;
uint256 feeRate;
address feeControllerAddress;
address feeRecipientAddress;

function assetProtectionRole() {
    return assetProtectionRoleAddress
}

function totalSupply() {
    return totalSupply
}

function feeRecipient() {
    return feeRecipientAddress
}

function paused() {
    return bool(paused)
}

function feeController() {
    return feeControllerAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function feeRate() {
    return feeRate
}

function proposedOwner() {
    return proposedOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isFrozen(address arg1) {
    return bool(stor7[address(arg1)])
}

function supplyController() {
    return supplyControllerAddress
}

function _fallback() payable {
    revert
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    if paused:
        revert with 0, 'already paused'
    stor5 = 1
    emit Pause()
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    if not paused:
        revert with 0, 'already unpaused'
    stor5 = 0
    emit Unpause()
}

function claimOwnership() {
    if proposedOwner != msg.sender:
        revert with 0, 'onlyProposedOwner'
    owner = proposedOwner
    proposedOwner = 0
    emit OwnershipTransferred(owner, owner);
}

function getFeeFor(uint256 arg1) {
    if not feeRate:
        return 0
    if not arg1:
        return 0
    require arg1
    require arg1 * feeRate / arg1 == feeRate
    return (arg1 * feeRate / 10^6)
}

function setFeeRate(uint256 arg1) {
    if feeControllerAddress != msg.sender:
        revert with 0, 'only FeeController'
    if arg1 > 10^6:
        revert with 0, 'cannot set fee rate above 100%'
    feeRate = arg1
    emit FeeRateSet(feeRate, feeRate);
}

function freeze(address arg1) {
    if assetProtectionRoleAddress != msg.sender:
        revert with 0, 'onlyAssetProtectionRole'
    if stor7[address(arg1)]:
        revert with 0, 'address already frozen'
    stor7[address(arg1)] = 1
    emit AddressFrozen(arg1);
}

function unfreeze(address arg1) {
    if assetProtectionRoleAddress != msg.sender:
        revert with 0, 'onlyAssetProtectionRole'
    if not stor7[address(arg1)]:
        revert with 0, 'address already unfrozen'
    stor7[address(arg1)] = 0
    emit AddressUnfrozen(arg1);
}

function initialize() {
    if stor0:
        revert with 0, 'Contract is already initialized'
    owner = msg.sender
    proposedOwner = 0
    assetProtectionRoleAddress = 0
    totalSupply = 0
    supplyControllerAddress = msg.sender
    feeRate = 0
    feeControllerAddress = msg.sender
    feeRecipientAddress = msg.sender
    stor0 = 1
}

function sub_bb48a74a(?) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    balanceOf[address(this.address)] = 0
    require balanceOf[stor4] + balanceOf[address(this.address)] >= balanceOf[stor4]
    balanceOf[stor4] += balanceOf[address(this.address)]
    emit Transfer(balanceOf[address(this.address)], this.address, owner);
}

function approve(address arg1, uint256 arg2) {
    if paused:
        revert with 0, 'whenNotPaused'
    if stor7[address(arg1)]:
        revert with 0, 'address frozen'
    if stor7[address(msg.sender)]:
        revert with 0, 'address frozen'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setAssetProtectionRole(address arg1) {
    if assetProtectionRoleAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only assetProtectionRole or Owner'
    emit AssetProtectionRoleSet(assetProtectionRoleAddress, arg1);
    assetProtectionRoleAddress = arg1
}

function setFeeRecipient(address arg1) {
    if feeControllerAddress != msg.sender:
        revert with 0, 'only FeeController'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot set fee recipient to address zero'
    feeRecipientAddress = arg1
    emit FeeRecipientSet(feeRecipientAddress, feeRecipientAddress);
}

function proposeOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot transfer ownership to address zero'
    if msg.sender == arg1:
        revert with 0, 'caller already is owner'
    proposedOwner = arg1
    emit OwnershipTransferProposed(owner, proposedOwner);
}

function increaseSupply(uint256 arg1) {
    if supplyControllerAddress != msg.sender:
        revert with 0, 'onlySupplyController'
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    require balanceOf[stor8] + arg1 >= balanceOf[stor8]
    balanceOf[stor8] += arg1
    emit SupplyIncreased(arg1, supplyControllerAddress);
    emit Transfer(arg1, 0, supplyControllerAddress);
    return 1
}

function setFeeController(address arg1) {
    if feeControllerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'only FeeController or Owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot set fee controller to address zero'
    feeControllerAddress = arg1
    emit FeeControllerSet(feeControllerAddress, feeControllerAddress);
}

function setSupplyController(address arg1) {
    if supplyControllerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'only SupplyController or Owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot set supply controller to address zero'
    emit SupplyControllerSet(supplyControllerAddress, arg1);
    supplyControllerAddress = arg1
}

function disregardProposeOwner() {
    if proposedOwner != msg.sender:
        if owner != msg.sender:
            revert with 0, 'only proposedOwner or owner'
    if not proposedOwner:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'can only disregard a proposed owner that was previously set'
    proposedOwner = 0
    emit OwnershipTransferDisregarded(proposedOwner);
}

function decreaseSupply(uint256 arg1) {
    if supplyControllerAddress != msg.sender:
        revert with 0, 'onlySupplyController'
    if arg1 > balanceOf[stor8]:
        revert with 0, 'not enough supply'
    require arg1 <= balanceOf[stor8]
    balanceOf[stor8] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit SupplyDecreased(arg1, supplyControllerAddress);
    emit Transfer(arg1, supplyControllerAddress, 0);
    return 1
}

function wipeFrozenAddress(address arg1) {
    if assetProtectionRoleAddress != msg.sender:
        revert with 0, 'onlyAssetProtectionRole'
    if not stor7[address(arg1)]:
        revert with 0, 'address is not frozen'
    balanceOf[address(arg1)] = 0
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    emit FrozenAddressWiped(arg1);
    emit SupplyDecreased(balanceOf[address(arg1)], arg1);
    emit Transfer(balanceOf[address(arg1)], arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    if paused:
        revert with 0, 'whenNotPaused'
    if not arg1:
        revert with 0, 'cannot transfer to address zero'
    if stor7[address(arg1)]:
        revert with 0, 'address frozen'
    if stor7[address(msg.sender)]:
        revert with 0, 'address frozen'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'insufficient funds'
    if not feeRate:
        require 0 <= arg2
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        emit Transfer(0, msg.sender, feeRecipientAddress);
    else:
        if not arg2:
            require 0 <= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            emit Transfer(0, msg.sender, feeRecipientAddress);
        else:
            require arg2
            require arg2 * feeRate / arg2 == feeRate
            require arg2 * feeRate / 10^6 <= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 - (arg2 * feeRate / 10^6) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * feeRate / 10^6)
            emit Transfer((arg2 - (arg2 * feeRate / 10^6)), msg.sender, arg1);
            emit Transfer((arg2 * feeRate / 10^6), msg.sender, feeRecipientAddress);
            if arg2 * feeRate / 10^6 > 0:
                require balanceOf[stor11] + (arg2 * feeRate / 10^6) >= balanceOf[stor11]
                balanceOf[stor11] += arg2 * feeRate / 10^6
                emit FeeCollected((arg2 * feeRate / 10^6), msg.sender, feeRecipientAddress);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if paused:
        revert with 0, 'whenNotPaused'
    if not arg2:
        revert with 0, 'cannot transfer to address zero'
    if stor7[address(arg2)]:
        revert with 0, 'address frozen'
    if stor7[address(arg1)]:
        revert with 0, 'address frozen'
    if stor7[address(msg.sender)]:
        revert with 0, 'address frozen'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'insufficient funds'
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'insufficient allowance'
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if not feeRate:
        require 0 <= arg3
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        emit Transfer(0, arg1, feeRecipientAddress);
    else:
        if not arg3:
            require 0 <= arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            emit Transfer(0, arg1, feeRecipientAddress);
        else:
            require arg3
            require arg3 * feeRate / arg3 == feeRate
            require arg3 * feeRate / 10^6 <= arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 - (arg3 * feeRate / 10^6) >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * feeRate / 10^6)
            emit Transfer((arg3 - (arg3 * feeRate / 10^6)), arg1, arg2);
            emit Transfer((arg3 * feeRate / 10^6), arg1, feeRecipientAddress);
            if arg3 * feeRate / 10^6 > 0:
                require balanceOf[stor11] + (arg3 * feeRate / 10^6) >= balanceOf[stor11]
                balanceOf[stor11] += arg3 * feeRate / 10^6
                emit FeeCollected((arg3 * feeRate / 10^6), arg1, feeRecipientAddress);
    return 1
}



}
