contract main {


// =======================  Init code  ======================


mapping of uint8 stor2;
array of address stor3;
uint256 stor4;
uint256 stor6;

function _fallback() {
    mem[96 len -9021] = code.data[9750 len -9021]
    mem[64] = -8925
    require mem[mem[96] + 96] <= 50
    require mem[128] <= mem[mem[96] + 96]
    require mem[128]
    require mem[mem[96] + 96]
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require not stor2[mem[(32 * idx) + mem[96] + 140 len 20]]
        require idx < mem[mem[96] + 96]
        require mem[(32 * idx) + mem[96] + 140 len 20]
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
        idx = idx + 1
        continue 
    stor3.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor3[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor4 = mem[128]
    stor6 = mem[160]
    return code.data[729 len 9021]
}



// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 50


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of struct owners;
uint256 required;
uint256 transactionCount;
uint256 dailyLimit;
uint256 lastDay;
uint256 spentToday;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function isOwner(address arg1) {
    return bool(stor2[arg1])
}

function confirmations(uint256 arg1, address arg2) {
    return bool(uint8(stor1[arg1][arg2]))
}

function dailyLimit() {
    return dailyLimit
}

function lastDay() {
    return lastDay
}

function transactionCount() {
    return transactionCount
}

function required() {
    return required
}

function spentToday() {
    return spentToday
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender);
}

function changeDailyLimit(uint256 arg1) {
    require msg.sender == this.address
    dailyLimit = arg1
    emit DailyLimitChange(arg1);
}

function calcMaxWithdraw() {
    if block.timestamp > lastDay + (24 * 3600):
        return dailyLimit
    if dailyLimit >= spentToday:
        return (dailyLimit - spentToday)
    else:
        return 0
}

function changeRequirement(uint256 arg1) {
    require msg.sender == this.address
    require owners.length <= 50
    require arg1 <= owners.length
    require arg1
    require owners.length
    required = arg1
    emit RequirementChange(arg1);
}

function revokeConfirmation(uint256 arg1) {
    require stor2[address(msg.sender)]
    require uint8(stor1[arg1][address(msg.sender)])
    require not uint8(stor0[arg1].field_768)
    uint8(stor1[arg1][address(msg.sender)]) = 0
    emit Revocation(msg.sender, arg1);
}

function getConfirmationCount(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function isConfirmed(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        return 1
    return 0
}

function transactions(uint256 arg1) {
    mem[256] = stor0[arg1][2].field_0
    idx = 256
    s = 0
    while stor0[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           stor0[arg1].field_256,
           Array(len=stor0[arg1][2].length, data=mem[256 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32)]),
           bool(uint8(stor0[arg1].field_768))
}

function addOwner(address arg1) {
    require msg.sender == this.address
    require not stor2[address(arg1)]
    require arg1
    require owners.length + 1 <= 50
    require required <= owners.length + 1
    require required
    require owners.length + 1
    stor2[address(arg1)] = 1
    owners.length++
    if not owners.length <= owners.length + 1:
        idx = owners.length + 1
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(owners[owners.length].field_0) = arg1
    emit OwnerAddition(arg1);
}

function replaceOwner(address arg1, address arg2) {
    require msg.sender == this.address
    require stor2[address(arg1)]
    require not stor2[address(arg2)]
    idx = 0
    while idx < owners.length:
        mem[0] = 3
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require idx < owners.length
        address(owners[idx].field_0) = arg2
        stor2[address(arg1)] = 0
        stor2[address(arg2)] = 1
        emit OwnerRemoval(arg1);
        emit OwnerAddition(arg2);
    stor2[address(arg1)] = 0
    stor2[address(arg2)] = 1
    emit OwnerRemoval(arg1);
    emit OwnerAddition(arg2);
}

function getOwners() {
    if not owners.length:
        mem[(32 * owners.length) + 160] = 32
        mem[(32 * owners.length) + 192] = owners.length
        mem[(32 * owners.length) + 224 len floor32(owners.length)] = mem[160 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 160
           len (96 * owners.length) + 64
    mem[160] = address(owners.field_0)
    idx = 160
    s = 0
    while (32 * owners.length) + 128 > idx:
        mem[idx + 32] = address(owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 224 len floor32(owners.length)] = mem[160 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[160 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 224 len (32 * owners.length) - floor32(owners.length)]), 
}

function getTransactionCount(bool arg1, bool arg2) {
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 0
            if not uint8(stor0[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_768):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(stor0[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getConfirmations(uint256 arg1) {
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            idx = idx + 1
            s = s
            continue 
        require idx < owners.length
        mem[0] = 3
        require s < owners.length
        mem[(32 * s) + 192] = address(owners[idx].field_0)
        idx = idx + 1
        s = s + 1
        continue 
    if (32 * s) + 224 < (32 * owners.length) + 192:
        mem[(32 * owners.length) + 192] = s
        t = 0
        while t < s:
            require t < owners.length
            require t < s
            mem[(32 * t) + (32 * owners.length) + 224] = mem[(32 * t) + 204 len 20]
            t = t + 1
            continue 
        mem[(32 * owners.length) + (32 * s) + 288 len floor32(s)] = mem[(32 * owners.length) + 224 len floor32(s)]
        return Array(len=s, data=mem[(32 * owners.length) + 224 len floor32(s)], mem[(32 * owners.length) + (32 * s) + floor32(s) + 288 len (32 * s) - floor32(s)]), 
    mem[(32 * s) + 224] = s
    t = 0
    while t < s:
        require t < owners.length
        require t < s, None
        mem[(32 * t) + (32 * s) + 256] = mem[(32 * t) + 204 len 20]
        t = t + 1
        continue 
    mem[(64 * s) + 256] = 32
    mem[(64 * s) + 288] = s, None
    mem[(64 * s) + 320 len floor32(s)] = mem[(32 * s) + 256 len floor32(s)]
    return memory
      from (64 * s) + 256
       len (32 * s, None) + 64
}

function removeOwner(address arg1) {
    require msg.sender == this.address
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        mem[0] = 3
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require owners.length - 1 < owners.length
        require idx < owners.length
        address(owners[idx].field_0) = address(owners[owners.length].field_0)
        owners.length--
        if not owners.length <= owners.length - 1:
            idx = sha3(3) + owners.length - 1
            while sha3(3) + owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if required > owners.length:
            require msg.sender == this.address
            require owners.length <= 50
            require owners.length <= owners.length
            require owners.length
            required = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    owners.length--
    if not owners.length <= owners.length - 1:
        idx = owners.length - 1
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    if required > owners.length:
        require msg.sender == this.address
        require owners.length <= 50
        require owners.length <= owners.length
        require owners.length
        required = owners.length
        emit RequirementChange(owners.length);
    emit OwnerRemoval(arg1);
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) {
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg3:
            if not arg4:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 0
            if not uint8(stor0[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_768):
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(stor0[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        require s < transactionCount
        mem[(32 * s) + 192] = idx
        idx = idx + 1
        s = s + 1
        continue 
    if (32 * s) + 224 < (32 * transactionCount) + 192:
        mem[(32 * transactionCount) + 192] = arg2 - arg1
        idx = arg1
        while idx < arg2:
            require idx < transactionCount
            require idx - arg1 < mem[(32 * transactionCount) + 192]
            mem[(32 * idx - arg1) + (32 * transactionCount) + 224] = mem[(32 * idx) + 192]
            idx = idx + 1
            continue 
        mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224] = 32
        mem[(32 * transactionCount) + (32 * arg2 - arg1) + 256] = mem[(32 * transactionCount) + 192]
        mem[(32 * transactionCount) + (32 * arg2 - arg1) + 288 len floor32(mem[(32 * transactionCount) + 192])] = mem[(32 * transactionCount) + 224 len floor32(mem[(32 * transactionCount) + 192])]
        return Array(len=mem[(32 * transactionCount) + 192], data=mem[(32 * transactionCount) + (32 * arg2 - arg1) + 288 len 32 * mem[(32 * transactionCount) + 192]]), 
    mem[(32 * s) + 224] = arg2 - arg1
    idx = arg1
    while idx < arg2:
        require idx < transactionCount
        require idx - arg1 < arg2 - arg1, None
        mem[(32 * idx - arg1) + (32 * s) + 256] = mem[(32 * idx) + 192]
        idx = idx + 1
        continue 
    mem[(32 * s) + (32 * arg2 - arg1) + 256] = 32
    mem[(32 * s) + (32 * arg2 - arg1) + 288] = arg2 - arg1, None
    mem[(32 * s) + (32 * arg2 - arg1) + 320 len floor32(arg2 - arg1)] = mem[(32 * s) + 256 len floor32(arg2 - arg1)]
    return memory
      from (32 * s) + (32 * arg2 - arg1) + 256
       len (32 * arg2 - arg1, None) + 64
}

function executeTransaction(uint256 arg1) {
    require stor2[address(msg.sender)]
    require uint8(stor1[arg1][address(msg.sender)])
    require not uint8(stor0[arg1].field_768)
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor0[arg1].field_768) = 1
        mem[96] = stor0[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 0) + 2)
        while stor0[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_0).mem[96 len 4] with:
           value stor0[arg1].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(stor0[arg1].field_768) = 0
    if not Mask(255, 1, (256 * not bool(stor0[arg1].field_512)) - 1 and stor0[arg1].field_512):
        if block.timestamp > lastDay + (24 * 3600):
            lastDay = block.timestamp
            spentToday = 0
        if spentToday + stor0[arg1].field_256 <= dailyLimit:
            if spentToday + stor0[arg1].field_256 >= spentToday:
                uint8(stor0[arg1].field_768) = 1
                spentToday += stor0[arg1].field_256
                mem[96] = stor0[arg1][2].field_0
                idx = 96
                s = 0
                while stor0[arg1][2].length + 96 > idx + 32:
                    mem[idx + 32] = stor0[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call address(stor0[arg1].field_0).mem[96 len 4] with:
                   value stor0[arg1].field_256 wei
                     gas gas_remaining - 34710 wei
                    args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                if ext_call.success:
                    emit Execution(arg1);
                else:
                    emit ExecutionFailure(arg1);
                    uint8(stor0[arg1].field_768) = 0
                    spentToday -= stor0[arg1].field_256
}

function confirmTransaction(uint256 arg1) {
    require stor2[address(msg.sender)]
    require address(stor0[arg1].field_0)
    require not uint8(stor1[arg1][address(msg.sender)])
    uint8(stor1[arg1][address(msg.sender)]) = 1
    emit Confirmation(msg.sender, arg1);
    require stor2[address(msg.sender)]
    require uint8(stor1[arg1][address(msg.sender)])
    require not uint8(stor0[arg1].field_768)
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor0[arg1].field_768) = 1
        mem[96] = stor0[arg1][2].field_0
        idx = 96
        s = sha3(sha3(arg1, 0) + 2)
        while stor0[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_0).mem[96 len 4] with:
           value stor0[arg1].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(stor0[arg1].field_768) = 0
    if not Mask(255, 1, (256 * not bool(stor0[arg1].field_512)) - 1 and stor0[arg1].field_512):
        if block.timestamp > lastDay + (24 * 3600):
            lastDay = block.timestamp
            spentToday = 0
        if spentToday + stor0[arg1].field_256 <= dailyLimit:
            if spentToday + stor0[arg1].field_256 >= spentToday:
                uint8(stor0[arg1].field_768) = 1
                spentToday += stor0[arg1].field_256
                mem[96] = stor0[arg1][2].field_0
                idx = 96
                s = 0
                while stor0[arg1][2].length + 96 > idx + 32:
                    mem[idx + 32] = stor0[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call address(stor0[arg1].field_0).mem[96 len 4] with:
                   value stor0[arg1].field_256 wei
                     gas gas_remaining - 34710 wei
                    args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                if ext_call.success:
                    emit Execution(arg1);
                else:
                    emit ExecutionFailure(arg1);
                    uint8(stor0[arg1].field_768) = 0
                    spentToday -= stor0[arg1].field_256
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    address(stor0[stor5].field_0) = arg1
    stor0[stor5].field_256 = arg2
    stor0[stor5][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(stor0[stor5].field_768) = 0
    transactionCount++
    emit Submission(transactionCount);
    require stor2[address(msg.sender)]
    require address(stor0[stor5].field_0)
    require not uint8(stor1[stor5][address(msg.sender)])
    uint8(stor1[stor5][address(msg.sender)]) = 1
    emit Confirmation(msg.sender, transactionCount);
    require stor2[address(msg.sender)]
    require uint8(stor1[stor5][address(msg.sender)])
    require not uint8(stor0[stor5].field_768)
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(transactionCount, 1)
        if not uint8(stor1[stor5][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor0[stor5].field_768) = 1
        mem[ceil32(arg3.length) + 256] = stor0[stor5][2].field_0
        idx = ceil32(arg3.length) + 256
        s = sha3(sha3(transactionCount, 0) + 2)
        while ceil32(arg3.length) + stor0[stor5][2].length + 256 > idx + 32:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[stor5].field_0).mem[ceil32(arg3.length) + 256 len 4] with:
           value stor0[stor5].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg3.length) + 260 len stor0[stor5][2].length + (floor32(stor0[stor5][2].length - 1) + -stor0[stor5][2].length + 32 % 32) - 4]
        if ext_call.success:
            emit Execution(transactionCount);
        else:
            emit ExecutionFailure(transactionCount);
            uint8(stor0[stor5].field_768) = 0
        return transactionCount
    if not Mask(255, 1, (256 * not bool(stor0[stor5].field_512)) - 1 and stor0[stor5].field_512):
        if block.timestamp > lastDay + (24 * 3600):
            lastDay = block.timestamp
            spentToday = 0
        if spentToday + stor0[stor5].field_256 <= dailyLimit:
            if spentToday + stor0[stor5].field_256 >= spentToday:
                uint8(stor0[stor5].field_768) = 1
                spentToday += stor0[stor5].field_256
                mem[ceil32(arg3.length) + 256] = stor0[stor5][2].field_0
                idx = ceil32(arg3.length) + 256
                s = 0
                while ceil32(arg3.length) + stor0[stor5][2].length + 256 > idx + 32:
                    mem[idx + 32] = stor0[stor5][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call address(stor0[stor5].field_0).mem[ceil32(arg3.length) + 256 len 4] with:
                   value stor0[stor5].field_256 wei
                     gas gas_remaining - 34710 wei
                    args mem[ceil32(arg3.length) + 260 len stor0[stor5][2].length + (floor32(stor0[stor5][2].length - 1) + -stor0[stor5][2].length + 32 % 32) - 4]
                if ext_call.success:
                    emit Execution(transactionCount);
                else:
                    emit ExecutionFailure(transactionCount);
                    uint8(stor0[stor5].field_768) = 0
                    spentToday -= stor0[stor5].field_256
    return transactionCount
}



}
