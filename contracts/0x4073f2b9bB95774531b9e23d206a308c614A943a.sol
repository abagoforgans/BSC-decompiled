contract main {




// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 50


uint256 lockSeconds;
mapping of struct stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint256 unlockTimes;
array of struct owners;
uint256 required;
uint256 transactionCount;
array of struct emergencyCalls;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function confirmations(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor2[arg1][arg2])
}

function unlockTimes(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return unlockTimes[arg1]
}

function emergencyCalls(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < emergencyCalls.length
    return emergencyCalls[arg1].field_0, emergencyCalls[arg1].field_256
}

function transactionCount() {
    return transactionCount
}

function lockSeconds() {
    return lockSeconds
}

function getEmergencyCallsCount() {
    return emergencyCalls.length
}

function required() {
    return required
}

function _fallback() payable {
    if msg.value:
        emit Deposit(msg.value, msg.sender);
}

function changeLockSeconds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0, 'ONLY_WALLET_ERROR'
    lockSeconds = arg1
    emit 0x884d6758: arg1
}

function revokeConfirmation(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[msg.sender]:
        revert with 0, 'OWNER_EXISTS_ERROR'
    if not stor2[arg1][msg.sender]:
        revert with 0, 'CONFIRMED_ERROR'
    if uint8(stor1[arg1].field_768):
        revert with 0, 'NOT_EXECUTED_ERROR'
    stor2[arg1][msg.sender] = 0
    emit Revocation(msg.sender, arg1);
}

function getConfirmationCount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 2)
        if not stor2[arg1][address(stor5[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function changeRequirement(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0, 'ONLY_WALLET_ERROR'
    if owners.length > 50:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    if arg1 > owners.length:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    if not arg1:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    if not owners.length:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    required = arg1
    emit RequirementChange(arg1);
}

function transactions(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128] = stor1[arg1][2].field_0
    idx = 128
    s = 0
    while stor1[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor1[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor1[arg1].field_0), 
           stor1[arg1].field_256,
           Array(len=stor1[arg1][2].length, data=mem[128 len ceil32(stor1[arg1][2].length)]),
           bool(uint8(stor1[arg1].field_768))
}

function isConfirmed(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 2)
        if not stor2[arg1][address(stor5[idx].field_0)]:
            if s < required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 < required:
                idx = idx + 1
                s = s + 1
                continue 
        return 1
    return 0
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0, 'ONLY_WALLET_ERROR'
    if stor3[address(arg1)]:
        revert with 0, 'OWNER_DOES_NOT_EXIST_ERROR'
    if not arg1:
        revert with 0, 'NOT_NULL_ERROR'
    if owners.length + 1 > 50:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    if required > owners.length + 1:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    if not required:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    if not owners.length + 1:
        revert with 0, 'VALID_REQUIREMENT_ERROR'
    stor3[address(arg1)] = 1
    owners.length++
    stor36B6[stor5.length] = arg1
    emit OwnerAddition(arg1);
}

function replaceOwner(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender != this.address:
        revert with 0, 'ONLY_WALLET_ERROR'
    if not stor3[address(arg1)]:
        revert with 0, 'OWNER_EXISTS_ERROR'
    if stor3[address(arg2)]:
        revert with 0, 'OWNER_DOES_NOT_EXIST_ERROR'
    idx = 0
    while idx < owners.length:
        mem[0] = 5
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require idx < owners.length
        address(owners[idx].field_0) = arg2
        stor3[address(arg1)] = 0
        stor3[arg2] = 1
        emit OwnerRemoval(arg1);
        emit OwnerAddition(arg2);
    stor3[address(arg1)] = 0
    stor3[arg2] = 1
    emit OwnerRemoval(arg1);
    emit OwnerAddition(arg2);
}

function getTransactionCount(bool arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 1
            if not uint8(stor1[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 1
            if uint8(stor1[idx].field_768):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 1
                if not uint8(stor1[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getOwners() {
    mem[64] = (32 * owners.length) + 128
    mem[96] = owners.length
    if not owners.length:
        mem[(32 * owners.length) + 128] = 32
        mem[(32 * owners.length) + 160] = owners.length
        idx = 0
        s = 128
        t = (32 * owners.length) + 192
        while idx < owners.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * owners.length) + 128
           len (96 * owners.length) + 64
    mem[128] = address(owners.field_0)
    idx = 128
    s = 0
    while (32 * owners.length) + 96 > idx:
        mem[idx + 32] = address(owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 128] = 32
    mem[(32 * owners.length) + 160] = owners.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < owners.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * owners.length) + -mem[64] + 192
}

function getConfirmations(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = owners.length
    if owners.length:
        mem[128 len 32 * owners.length] = code.data[8215 len 32 * owners.length]
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 2)
        if not stor2[arg1][address(stor5[idx].field_0)]:
            idx = idx + 1
            s = s
            continue 
        require idx < owners.length
        mem[0] = 5
        require s < owners.length
        mem[(32 * s) + 128] = address(owners[idx].field_0)
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * owners.length) + 128] = s
    mem[64] = (32 * owners.length) + (32 * s) + 160
    if s:
        mem[(32 * owners.length) + 160 len 32 * s] = code.data[8215 len 32 * s]
    t = 0
    while t < s:
        require t < owners.length
        require t < s
        mem[(32 * t) + (32 * owners.length) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[(32 * owners.length) + (32 * s) + 160] = 32
    mem[(32 * owners.length) + (32 * s) + 192] = s
    t = 0
    u = (32 * owners.length) + 160
    v = mem[64] + 64
    while t < s:
        mem[v] = mem[u + 12 len 20]
        t = t + 1
        u = u + 32
        v = v + 32
        continue 
    return memory
      from mem[64]
       len (32 * owners.length) + (64 * s) + -mem[64] + 224
}

function removeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        revert with 0, 'ONLY_WALLET_ERROR'
    if not stor3[address(arg1)]:
        revert with 0, 'OWNER_EXISTS_ERROR'
    stor3[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        require idx < owners.length
        mem[0] = 5
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require owners.length - 1 < owners.length
        require idx < owners.length
        address(owners[idx].field_0) = address(owners[owners.length].field_0)
        owners.length--
        if owners.length > owners.length - 1:
            idx = owners.length + sha3(5) - 1
            while sha3(5) + owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if required > owners.length:
            if msg.sender != this.address:
                revert with 0, 'ONLY_WALLET_ERROR'
            if owners.length > 50:
                revert with 0, 'VALID_REQUIREMENT_ERROR'
            if owners.length > owners.length:
                revert with 0, 'VALID_REQUIREMENT_ERROR'
            if not owners.length:
                revert with 0, 'VALID_REQUIREMENT_ERROR'
            if not owners.length:
                revert with 0, 'VALID_REQUIREMENT_ERROR'
            required = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    owners.length--
    if owners.length > owners.length - 1:
        idx = owners.length - 1
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    if required > owners.length:
        if msg.sender != this.address:
            revert with 0, 'ONLY_WALLET_ERROR'
        if owners.length > 50:
            revert with 0, 'VALID_REQUIREMENT_ERROR'
        if owners.length > owners.length:
            revert with 0, 'VALID_REQUIREMENT_ERROR'
        if not owners.length:
            revert with 0, 'VALID_REQUIREMENT_ERROR'
        if not owners.length:
            revert with 0, 'VALID_REQUIREMENT_ERROR'
        required = owners.length
        emit RequirementChange(owners.length);
    emit OwnerRemoval(arg1);
}

function executeTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[msg.sender]:
        revert with 0, 'OWNER_EXISTS_ERROR'
    if uint8(stor1[arg1].field_768):
        revert with 0, 'NOT_EXECUTED_ERROR'
    if block.timestamp < unlockTimes[arg1]:
        revert with 0, 'TRANSACTION_NEED_TO_UNLOCK'
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 2)
        if not stor2[arg1][address(stor5[idx].field_0)]:
            if s < required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 < required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor1[arg1].field_768) = 1
        if not bool(stor1[arg1].field_512):
            mem[96] = Mask(248, 8, stor1[arg1].field_512)
            call address(stor1[arg1].field_0) with:
               funct uint32(stor1[arg1].field_736)
               value stor1[arg1].field_256 wei
                 gas gas_remaining wei
                args mem[100 len stor1[arg1].field_513 % 128 - 4]
            if ext_call.success:
                emit Execution(arg1);
            else:
                emit ExecutionFailure(arg1);
                uint8(stor1[arg1].field_768) = 0
        else:
            if bool(stor1[arg1].field_512) != 1:
                call address(stor1[arg1].field_0).mem[96 len 4] with:
                   value stor1[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = sha3(sha3(arg1, 1) + 2)
                while idx < uint255(stor1[arg1].field_513):
                    mem[idx + 96] = stor[s]
                    idx = idx + 32
                    s = s + 1
                    continue 
                call address(stor1[arg1].field_0).mem[96 len 4] with:
                   value stor1[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len uint255(stor1[arg1].field_513) - 4]
            if ext_call.success:
                emit Execution(arg1);
            else:
                emit ExecutionFailure(arg1);
                uint8(stor1[arg1].field_768) = 0
}

function confirmTransaction(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[msg.sender]:
        revert with 0, 'OWNER_EXISTS_ERROR'
    if not address(stor1[arg1].field_0):
        revert with 0, 'TRANSACTION_EXISTS_ERROR'
    if stor2[arg1][msg.sender]:
        revert with 0, 'NOT_CONFIRMED_ERROR'
    stor2[arg1][msg.sender] = 1
    emit Confirmation(msg.sender, arg1);
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 2)
        if not stor2[arg1][address(stor5[idx].field_0)]:
            if s < required:
                idx = idx + 1
                s = s
                continue 
            if not unlockTimes[arg1]:
                mem[64] = ceil32(stor1[arg1][2].length) + 128
                mem[96] = stor1[arg1][2].length
                idx = 128
                s = sha3(sha3(arg1, 1) + 2)
                while stor1[arg1][2].length + 96 > idx:
                    mem[idx + 32] = stor1[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                while idx < emergencyCalls.length:
                    _414 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_414] = 0
                    mem[_414 + 32] = 0
                    mem[0] = 8
                    _417 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_417] = emergencyCalls[idx].field_0
                    mem[_417 + 32] = emergencyCalls[idx].field_256
                    if mem[96] != emergencyCalls[idx].field_256 + 4:
                        idx = idx + 1
                        continue 
                    if mem[96] < 4:
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    require 1 < mem[96]
                    if Mask(8, -(('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'emergencyCalls', 8)))), 0) + 256, 1):
                        idx = idx + 1
                        continue 
                    require 2 < mem[96]
                    if Mask(8, -(('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'emergencyCalls', 8)))), 0) + 256, 2):
                        idx = idx + 1
                        continue 
                    require 3 < mem[96]
                    if Mask(8, -(('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'emergencyCalls', 8)))), 0) + 256, 3):
                        idx = idx + 1
                        continue 
                unlockTimes[arg1] = lockSeconds + block.timestamp
                emit 0x280af6a3: (lockSeconds + block.timestamp), arg1
        else:
            if s + 1 < required:
                idx = idx + 1
                s = s + 1
                continue 
            if not unlockTimes[arg1]:
                mem[64] = ceil32(stor1[arg1][2].length) + 128
                mem[96] = stor1[arg1][2].length
                idx = 128
                s = sha3(sha3(arg1, 1) + 2)
                while stor1[arg1][2].length + 96 > idx:
                    mem[idx + 32] = stor1[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                idx = 0
                while idx < emergencyCalls.length:
                    _415 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_415] = 0
                    mem[_415 + 32] = 0
                    mem[0] = 8
                    _421 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_421] = emergencyCalls[idx].field_0
                    mem[_421 + 32] = emergencyCalls[idx].field_256
                    if mem[96] != emergencyCalls[idx].field_256 + 4:
                        idx = idx + 1
                        continue 
                    if mem[96] < 4:
                        idx = idx + 1
                        continue 
                    require 0 < mem[96]
                    require 1 < mem[96]
                    if Mask(8, -(('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'emergencyCalls', 8)))), 0) + 256, 1):
                        idx = idx + 1
                        continue 
                    require 2 < mem[96]
                    if Mask(8, -(('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'emergencyCalls', 8)))), 0) + 256, 2):
                        idx = idx + 1
                        continue 
                    require 3 < mem[96]
                    if Mask(8, -(('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'emergencyCalls', 8)))), 0) + 256, 3):
                        idx = idx + 1
                        continue 
                unlockTimes[arg1] = lockSeconds + block.timestamp
                emit 0x280af6a3: (lockSeconds + block.timestamp), arg1
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if not stor3[msg.sender]:
        revert with 0, 'OWNER_EXISTS_ERROR'
    if not arg1:
        revert with 0, 'NOT_NULL_ERROR'
    mem[64] = ceil32(arg3.length) + 256
    mem[arg3.length + 256] = 0
    address(stor1[stor7].field_0) = arg1
    stor1[stor7].field_256 = arg2
    stor1[stor7][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(stor1[stor7].field_768) = 0
    transactionCount++
    emit Submission(transactionCount);
    if not stor3[msg.sender]:
        revert with 0, 'OWNER_EXISTS_ERROR'
    if not address(stor1[stor7].field_0):
        revert with 0, 'TRANSACTION_EXISTS_ERROR'
    if stor2[stor7][msg.sender]:
        revert with 0, 'NOT_CONFIRMED_ERROR'
    stor2[stor7][msg.sender] = 1
    emit Confirmation(msg.sender, transactionCount);
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(transactionCount, 2)
        if not stor2[stor7][address(stor5[idx].field_0)]:
            if s < required:
                idx = idx + 1
                s = s
                continue 
            if unlockTimes[stor7]:
                mem[ceil32(arg3.length) + 256] = transactionCount
                return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 288 len -arg3.length + ceil32(arg3.length)]
            mem[64] = ceil32(arg3.length) + ceil32(stor1[stor7][2].length) + 288
            mem[ceil32(arg3.length) + 256] = stor1[stor7][2].length
            idx = ceil32(arg3.length) + 288
            s = sha3(sha3(transactionCount, 1) + 2)
            while ceil32(arg3.length) + stor1[stor7][2].length + 256 > idx:
                mem[idx + 32] = stor1[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < emergencyCalls.length:
                _2342 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2342] = 0
                mem[_2342 + 32] = 0
                mem[0] = 8
                _2345 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2345] = emergencyCalls[idx].field_0
                mem[_2345 + 32] = emergencyCalls[idx].field_256
                if mem[ceil32(arg3.length) + 256] != emergencyCalls[idx].field_256 + 4:
                    idx = idx + 1
                    continue 
                if mem[ceil32(arg3.length) + 256] < 4:
                    idx = idx + 1
                    continue 
                require 0 < mem[ceil32(arg3.length) + 256]
                require 1 < mem[ceil32(arg3.length) + 256]
                if Mask(8, -(('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'emergencyCalls', 8)))), 0) + 256, 1):
                    idx = idx + 1
                    continue 
                require 2 < mem[ceil32(arg3.length) + 256]
                if Mask(8, -(('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'emergencyCalls', 8)))), 0) + 256, 2):
                    idx = idx + 1
                    continue 
                require 3 < mem[ceil32(arg3.length) + 256]
                if Mask(8, -(('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'emergencyCalls', 8)))), 0) + 256, 3):
                    idx = idx + 1
                    continue 
                return transactionCount
        else:
            if s + 1 < required:
                idx = idx + 1
                s = s + 1
                continue 
            if unlockTimes[stor7]:
                mem[ceil32(arg3.length) + 256] = transactionCount
                return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 288 len -arg3.length + ceil32(arg3.length)]
            mem[64] = ceil32(arg3.length) + ceil32(stor1[stor7][2].length) + 288
            mem[ceil32(arg3.length) + 256] = stor1[stor7][2].length
            idx = ceil32(arg3.length) + 288
            s = sha3(sha3(transactionCount, 1) + 2)
            while ceil32(arg3.length) + stor1[stor7][2].length + 256 > idx:
                mem[idx + 32] = stor1[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < emergencyCalls.length:
                _2343 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2343] = 0
                mem[_2343 + 32] = 0
                mem[0] = 8
                _2349 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2349] = emergencyCalls[idx].field_0
                mem[_2349 + 32] = emergencyCalls[idx].field_256
                if mem[ceil32(arg3.length) + 256] != emergencyCalls[idx].field_256 + 4:
                    idx = idx + 1
                    continue 
                if mem[ceil32(arg3.length) + 256] < 4:
                    idx = idx + 1
                    continue 
                require 0 < mem[ceil32(arg3.length) + 256]
                require 1 < mem[ceil32(arg3.length) + 256]
                if Mask(8, -(('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'emergencyCalls', 8)))), 0) + 256, 1):
                    idx = idx + 1
                    continue 
                require 2 < mem[ceil32(arg3.length) + 256]
                if Mask(8, -(('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'emergencyCalls', 8)))), 0) + 256, 2):
                    idx = idx + 1
                    continue 
                require 3 < mem[ceil32(arg3.length) + 256]
                if Mask(8, -(('field', 3, ('stor', ('array', ('mul', 2, ('var', 0)), ('name', 'emergencyCalls', 8)))), 0) + 256, 3):
                    idx = idx + 1
                    continue 
                return transactionCount
        unlockTimes[stor7] = lockSeconds + block.timestamp
        emit 0x280af6a3: (lockSeconds + block.timestamp), transactionCount
        return transactionCount
    mem[ceil32(arg3.length) + 256] = transactionCount
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 288 len -arg3.length + ceil32(arg3.length)]
}



}
