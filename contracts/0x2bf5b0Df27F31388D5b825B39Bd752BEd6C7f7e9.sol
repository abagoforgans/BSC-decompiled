contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor5; offset 8
uint256 howManyOwnersDecide;
address stor7;
uint256 stor7;
uint256 stor8;
array of address owners;
array of uint256 allOperations;
mapping of uint256 ownersIndices;
mapping of uint256 allOperationsIndicies;
mapping of uint256 votesMaskByOperation;
mapping of uint256 votesCountByOperation;
mapping of uint8 stor15;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1]
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function allOperationsCount() {
    return allOperations.length
}

function howManyOwnersDecide() {
    return howManyOwnersDecide
}

function decimals() {
    return decimals
}

function allOperations(uint256 arg1) {
    require arg1 < allOperations.length
    return allOperations[arg1]
}

function governanceContracts(address arg1) {
    return bool(stor15[arg1])
}

function votesMaskByOperation(bytes32 arg1) {
    return votesMaskByOperation[arg1]
}

function paused() {
    return bool(stor5)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getOwner() {
    require 0 < owners.length
    return owners
}

function votesCountByOperation(bytes32 arg1) {
    return votesCountByOperation[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function ownersCount() {
    return owners.length
}

function ownersIndices(address arg1) {
    return ownersIndices[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function allOperationsIndicies(bytes32 arg1) {
    return allOperationsIndicies[arg1]
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    return (ownersIndices[address(arg1)] > 0)
}

function approve(address arg1, uint256 arg2) {
    require not stor5
    allowance[msg.sender][address(arg1)] = arg2
    emit 0xef8c5be1: arg2, msg.sender, arg1
    return 1
}

function approveForOtherContracts(address arg1, address arg2, uint256 arg3) {
    require stor15[msg.sender]
    allowance[address(arg1)][address(arg2)] = arg3
    emit 0xef8c5be1: arg3, arg1, arg2
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor5
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit 0xef8c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
    return 1
}

function mint(address arg1, uint256 arg2) {
    require stor15[msg.sender]
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor5
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor5
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit 0xef8c5be1: allowance[msg.sender][address(arg1)], msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor5
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require stor15[msg.sender]
    allowance[address(arg1)][msg.sender] = arg2
    require not stor5
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    require msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = arg2 + balanceOf[msg.sender]
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    emit Transfer(arg2, arg1, msg.sender);
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, msg.sender);
    emit Transfer(arg2, msg.sender, 0);
    return 1
}

function transferMany(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor15[msg.sender]
    require arg1.length == arg2.length
    require 0 < arg1.length
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _22 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _24 = mem[(32 * arg1.length) + (32 * idx) + 160]
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * arg1.length) + (32 * idx) + 160]
        require mem[(32 * arg1.length) + (32 * idx) + 160] <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= mem[(32 * arg1.length) + (32 * idx) + 160]
        require mem[(32 * arg1.length) + (32 * idx) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[32] = 0
        balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * arg1.length) + (32 * idx) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * arg1.length) + (32 * idx) + 160]
        mem[0] = address(_22)
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_22));
        s = _24
        s = _22
        idx = idx + 1
        continue 
}

function addAddressToGovernanceContract(address arg1) {
    if msg.sender == address(stor7):
        if howManyOwnersDecide > stor8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
    else:
        if ownersIndices[msg.sender] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        mem[calldata.size + 128 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[calldata.size + floor32(calldata.size) + 128] = 256^(-(calldata.size % 32) + 32) - 1 and mem[calldata.size + floor32(calldata.size) + 128] or call.data[floor32(calldata.size) len calldata.size % 32], mem[calldata.size + 128 len -(calldata.size % 32) + 32] and !(256^(-(calldata.size % 32) + 32) - 1)
        _306 = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
        if 2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]:
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = 2^(ownersIndices[msg.sender] - 1) or votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]
        _310 = sha3(sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]), 14)
        votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]++
        if votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] + 1 != 1:
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationUpvoted(mem[calldata.size + 128], stor[_310] + 1, howManyOwnersDecide, owners.length, msg.sender);
        else:
            allOperationsIndicies[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationCreated(mem[calldata.size + 128], howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(_306, stor[_310] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if howManyOwnersDecide != votesCountByOperation[_306]:
            return 0
        if allOperationsIndicies[_306] < allOperations.length - 1:
            require allOperations.length - 1 < allOperations.length
            require allOperationsIndicies[_306] < allOperations.length
            allOperations[stor12[_306]] = allOperations[allOperations.length]
            allOperationsIndicies[stor10[allOperationsIndicies[_306]]] = allOperationsIndicies[_306]
        allOperations.length--
        if allOperations.length > allOperations.length - 1:
            idx = allOperations.length - 1
            while allOperations.length > idx:
                allOperations[idx] = 0
                idx = idx + 1
                continue 
        votesMaskByOperation[_306] = 0
        votesCountByOperation[_306] = 0
        allOperationsIndicies[_306] = 0
        emit OperationPerformed(_306, howManyOwnersDecide, owners.length, msg.sender);
    if not address(stor7):
        uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
        stor8 = howManyOwnersDecide
    if stor15[address(arg1)]:
        if not address(stor7):
            address(stor7) = 0
            stor8 = 0
            return 0
        else:
            return 0
    stor15[address(arg1)] = 1
    emit GovernanceContractAdded(arg1);
    if not address(stor7):
        address(stor7) = 0
        stor8 = 0
    return 1
}

function removeAddressFromGovernanceContract(address arg1) {
    if msg.sender == address(stor7):
        if howManyOwnersDecide > stor8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
    else:
        if ownersIndices[msg.sender] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        mem[calldata.size + 128 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[calldata.size + floor32(calldata.size) + 128] = 256^(-(calldata.size % 32) + 32) - 1 and mem[calldata.size + floor32(calldata.size) + 128] or call.data[floor32(calldata.size) len calldata.size % 32], mem[calldata.size + 128 len -(calldata.size % 32) + 32] and !(256^(-(calldata.size % 32) + 32) - 1)
        _306 = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
        if 2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]:
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = 2^(ownersIndices[msg.sender] - 1) or votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]
        _310 = sha3(sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]), 14)
        votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]++
        if votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] + 1 != 1:
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationUpvoted(mem[calldata.size + 128], stor[_310] + 1, howManyOwnersDecide, owners.length, msg.sender);
        else:
            allOperationsIndicies[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationCreated(mem[calldata.size + 128], howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(_306, stor[_310] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if howManyOwnersDecide != votesCountByOperation[_306]:
            return 0
        if allOperationsIndicies[_306] < allOperations.length - 1:
            require allOperations.length - 1 < allOperations.length
            require allOperationsIndicies[_306] < allOperations.length
            allOperations[stor12[_306]] = allOperations[allOperations.length]
            allOperationsIndicies[stor10[allOperationsIndicies[_306]]] = allOperationsIndicies[_306]
        allOperations.length--
        if allOperations.length > allOperations.length - 1:
            idx = allOperations.length - 1
            while allOperations.length > idx:
                allOperations[idx] = 0
                idx = idx + 1
                continue 
        votesMaskByOperation[_306] = 0
        votesCountByOperation[_306] = 0
        allOperationsIndicies[_306] = 0
        emit OperationPerformed(_306, howManyOwnersDecide, owners.length, msg.sender);
    if not address(stor7):
        uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
        stor8 = howManyOwnersDecide
    if not stor15[address(arg1)]:
        if not address(stor7):
            address(stor7) = 0
            stor8 = 0
            return 0
        else:
            return 0
    stor15[address(arg1)] = 0
    emit GovernanceContractRemoved(arg1);
    if not address(stor7):
        address(stor7) = 0
        stor8 = 0
    return 1
}

function unpause() {
    if msg.sender == address(stor7):
        if howManyOwnersDecide > stor8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not address(stor7):
            uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
            stor8 = howManyOwnersDecide
        require stor5
        stor5 = 0
        emit Unpause()
        if not address(stor7):
            address(stor7) = 0
            stor8 = 0
    else:
        if ownersIndices[msg.sender] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        mem[calldata.size + 128 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[calldata.size + floor32(calldata.size) + 128] = 256^(-(calldata.size % 32) + 32) - 1 and mem[calldata.size + floor32(calldata.size) + 128] or call.data[floor32(calldata.size) len calldata.size % 32], mem[calldata.size + 128 len -(calldata.size % 32) + 32] and !(256^(-(calldata.size % 32) + 32) - 1)
        _104 = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
        if 2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]:
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = 2^(ownersIndices[msg.sender] - 1) or votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]
        _108 = sha3(sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]), 14)
        votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]++
        if votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] + 1 != 1:
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationUpvoted(mem[calldata.size + 128], stor[_108] + 1, howManyOwnersDecide, owners.length, msg.sender);
        else:
            allOperationsIndicies[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationCreated(mem[calldata.size + 128], howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(_104, stor[_108] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if howManyOwnersDecide == votesCountByOperation[_104]:
            if allOperationsIndicies[_104] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[_104] < allOperations.length
                allOperations[stor12[_104]] = allOperations[allOperations.length]
                allOperationsIndicies[stor10[allOperationsIndicies[_104]]] = allOperationsIndicies[_104]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[_104] = 0
            votesCountByOperation[_104] = 0
            allOperationsIndicies[_104] = 0
            emit OperationPerformed(_104, howManyOwnersDecide, owners.length, msg.sender);
            if not address(stor7):
                uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
                stor8 = howManyOwnersDecide
            require stor5
            stor5 = 0
            emit Unpause()
            if not address(stor7):
                address(stor7) = 0
                stor8 = 0
}

function pause() {
    if msg.sender == address(stor7):
        if howManyOwnersDecide > stor8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not address(stor7):
            uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
            stor8 = howManyOwnersDecide
        require not stor5
        stor5 = 1
        emit Pause()
        if not address(stor7):
            address(stor7) = 0
            stor8 = 0
    else:
        if ownersIndices[msg.sender] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        mem[calldata.size + 128 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[calldata.size + floor32(calldata.size) + 128] = 256^(-(calldata.size % 32) + 32) - 1 and mem[calldata.size + floor32(calldata.size) + 128] or call.data[floor32(calldata.size) len calldata.size % 32], mem[calldata.size + 128 len -(calldata.size % 32) + 32] and !(256^(-(calldata.size % 32) + 32) - 1)
        _104 = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
        if 2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]:
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = 2^(ownersIndices[msg.sender] - 1) or votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]
        _108 = sha3(sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]), 14)
        votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]++
        if votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] + 1 != 1:
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationUpvoted(mem[calldata.size + 128], stor[_108] + 1, howManyOwnersDecide, owners.length, msg.sender);
        else:
            allOperationsIndicies[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationCreated(mem[calldata.size + 128], howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(_104, stor[_108] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if howManyOwnersDecide == votesCountByOperation[_104]:
            if allOperationsIndicies[_104] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[_104] < allOperations.length
                allOperations[stor12[_104]] = allOperations[allOperations.length]
                allOperationsIndicies[stor10[allOperationsIndicies[_104]]] = allOperationsIndicies[_104]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[_104] = 0
            votesCountByOperation[_104] = 0
            allOperationsIndicies[_104] = 0
            emit OperationPerformed(_104, howManyOwnersDecide, owners.length, msg.sender);
            if not address(stor7):
                uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
                stor8 = howManyOwnersDecide
            require not stor5
            stor5 = 1
            emit Pause()
            if not address(stor7):
                address(stor7) = 0
                stor8 = 0
}

function transferOwnership(address arg1, address arg2) {
    if msg.sender == address(stor7):
        if howManyOwnersDecide > stor8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not address(stor7):
            uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
            stor8 = howManyOwnersDecide
        require arg1
        idx = 0
        while idx < owners.length:
            mem[0] = 9
            if owners[idx] != arg2:
                idx = idx + 1
                continue 
            require idx < owners.length
            owners[idx] = arg1
            ownersIndices[arg1] = ownersIndices[address(arg2)]
            ownersIndices[address(arg2)] = 0
            emit OwnershipTransferred(arg2, arg1);
            if not address(stor7):
                address(stor7) = 0
                stor8 = 0
        emit OwnershipTransferred(arg2, arg1);
        if not address(stor7):
            address(stor7) = 0
            stor8 = 0
    else:
        if ownersIndices[msg.sender] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        mem[calldata.size + 128 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[calldata.size + floor32(calldata.size) + 128] = 256^(-(calldata.size % 32) + 32) - 1 and mem[calldata.size + floor32(calldata.size) + 128] or call.data[floor32(calldata.size) len calldata.size % 32], mem[calldata.size + 128 len -(calldata.size % 32) + 32] and !(256^(-(calldata.size % 32) + 32) - 1)
        _230 = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
        if 2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]:
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = 2^(ownersIndices[msg.sender] - 1) or votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]
        _238 = sha3(sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]), 14)
        votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]++
        if votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] + 1 != 1:
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationUpvoted(mem[calldata.size + 128], stor[_238] + 1, howManyOwnersDecide, owners.length, msg.sender);
        else:
            allOperationsIndicies[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationCreated(mem[calldata.size + 128], howManyOwnersDecide, owners.length, msg.sender);
            emit OperationUpvoted(_230, stor[_238] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if howManyOwnersDecide == votesCountByOperation[_230]:
            if allOperationsIndicies[_230] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[_230] < allOperations.length
                allOperations[stor12[_230]] = allOperations[allOperations.length]
                allOperationsIndicies[stor10[allOperationsIndicies[_230]]] = allOperationsIndicies[_230]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[_230] = 0
            votesCountByOperation[_230] = 0
            allOperationsIndicies[_230] = 0
            emit OperationPerformed(_230, howManyOwnersDecide, owners.length, msg.sender);
            if not address(stor7):
                uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
                stor8 = howManyOwnersDecide
            require arg1
            idx = 0
            while idx < owners.length:
                mem[0] = 9
                if owners[idx] != arg2:
                    idx = idx + 1
                    continue 
                require idx < owners.length
                owners[idx] = arg1
                ownersIndices[arg1] = ownersIndices[address(arg2)]
                ownersIndices[address(arg2)] = 0
                emit OwnershipTransferred(arg2, arg1);
                if not address(stor7):
                    address(stor7) = 0
                    stor8 = 0
            emit OwnershipTransferred(arg2, arg1);
            if not address(stor7):
                address(stor7) = 0
                stor8 = 0
}

function cancelPending(bytes32 arg1) {
    if msg.sender == address(stor7):
        if 1 > stor8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not address(stor7):
            uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
            stor8 = 1
        if not 2^(ownersIndices[msg.sender] - 1) or not votesMaskByOperation[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cancelPending: operation not found for this user'
        votesMaskByOperation[arg1] = !2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[arg1]
        votesCountByOperation[arg1]--
        emit OperationDownvoted(arg1, votesCountByOperation[arg1] - 1, owners.length, msg.sender);
        if not votesCountByOperation[arg1] - 1:
            if allOperationsIndicies[arg1] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[arg1] < allOperations.length
                allOperations[stor12[arg1]] = allOperations[allOperations.length]
                allOperationsIndicies[stor10[allOperationsIndicies[arg1]]] = allOperationsIndicies[arg1]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[arg1] = 0
            votesCountByOperation[arg1] = 0
            allOperationsIndicies[arg1] = 0
            emit OperationCancelled(arg1, msg.sender);
        if not address(stor7):
            address(stor7) = 0
            stor8 = 0
    else:
        if ownersIndices[msg.sender] - 1 >= owners.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        mem[calldata.size + 128 len floor32(calldata.size)] = call.data[0 len floor32(calldata.size)]
        mem[calldata.size + floor32(calldata.size) + 128] = 256^(-(calldata.size % 32) + 32) - 1 and mem[calldata.size + floor32(calldata.size) + 128] or call.data[floor32(calldata.size) len calldata.size % 32], mem[calldata.size + 128 len -(calldata.size % 32) + 32] and !(256^(-(calldata.size % 32) + 32) - 1)
        _716 = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
        if 2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]:
            revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = 2^(ownersIndices[msg.sender] - 1) or votesMaskByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]
        _720 = sha3(sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]), 14)
        votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]]++
        if votesCountByOperation[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] + 1 != 1:
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationUpvoted(mem[calldata.size + 128], stor[_720] + 1, 1, owners.length, msg.sender);
        else:
            allOperationsIndicies[call.data[0 len floor32(calldata.size)]][mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32]] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            mem[calldata.size + 128] = sha3(call.data[0 len floor32(calldata.size)], mem[calldata.size + floor32(calldata.size) + 128 len calldata.size % 32])
            emit OperationCreated(mem[calldata.size + 128], 1, owners.length, msg.sender);
            emit OperationUpvoted(_716, stor[_720] + 1, 1, owners.length, msg.sender);
        if 1 == votesCountByOperation[_716]:
            if allOperationsIndicies[_716] < allOperations.length - 1:
                require allOperations.length - 1 < allOperations.length
                require allOperationsIndicies[_716] < allOperations.length
                allOperations[stor12[_716]] = allOperations[allOperations.length]
                allOperationsIndicies[stor10[allOperationsIndicies[_716]]] = allOperationsIndicies[_716]
            allOperations.length--
            if allOperations.length > allOperations.length - 1:
                idx = allOperations.length - 1
                while allOperations.length > idx:
                    allOperations[idx] = 0
                    idx = idx + 1
                    continue 
            votesMaskByOperation[_716] = 0
            votesCountByOperation[_716] = 0
            allOperationsIndicies[_716] = 0
            emit OperationPerformed(_716, 1, owners.length, msg.sender);
            if not address(stor7):
                uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
                stor8 = 1
            if not 2^(ownersIndices[msg.sender] - 1) or not votesMaskByOperation[arg1]:
                revert with 0, 'cancelPending: operation not found for this user'
            votesMaskByOperation[arg1] = !2^(ownersIndices[msg.sender] - 1) and votesMaskByOperation[arg1]
            votesCountByOperation[arg1]--
            emit OperationDownvoted(arg1, votesCountByOperation[arg1] - 1, owners.length, msg.sender);
            if not votesCountByOperation[arg1] - 1:
                if allOperationsIndicies[arg1] < allOperations.length - 1:
                    require allOperations.length - 1 < allOperations.length
                    require allOperationsIndicies[arg1] < allOperations.length
                    allOperations[stor12[arg1]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor10[allOperationsIndicies[arg1]]] = allOperationsIndicies[arg1]
                allOperations.length--
                if allOperations.length > allOperations.length - 1:
                    idx = allOperations.length - 1
                    while allOperations.length > idx:
                        allOperations[idx] = 0
                        idx = idx + 1
                        continue 
                votesMaskByOperation[arg1] = 0
                votesCountByOperation[arg1] = 0
                allOperationsIndicies[arg1] = 0
                emit OperationCancelled(arg1, msg.sender);
            if not address(stor7):
                address(stor7) = 0
                stor8 = 0
}



}
