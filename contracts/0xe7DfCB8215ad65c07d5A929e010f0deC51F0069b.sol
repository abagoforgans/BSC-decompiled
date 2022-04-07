contract main {




// =====================  Runtime code  =====================


const getbalance = eth.balance(this.address)

const DOMAIN_TYPEHASH = sha3(0x29454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374)

const PERMIT_TYPEHASH = sha3(0x655065726d69742861646472657373206f776e65722c61646472657373207370656e6465722c75696e743235362076616c75652c75696e74323536206e6f6e63652c75696e7432353620646561646c696e65)


uint256 totalGlobalShares;
uint256 globalShareSeconds;
uint256 globalTimestampSec;
uint256 initialTimestampSec;
uint256 totalClaimedTokens;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 totalSupply;
uint256 burnMin;
mapping of struct userWorkers;
mapping of uint256 nonces;
mapping of uint256 balanceOf;
mapping of struct allowance;
uint8 decimals;
array of uint256 symbol;
array of struct name;

function burnMin() {
    return burnMin
}

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function InitialTimestampSec() {
    return initialTimestampSec
}

function decimals() {
    return decimals
}

function UserWorkers(address arg1) {
    require calldata.size - 4 >= 32
    return userWorkers[address(arg1)].field_0
}

function TotalClaimedTokens() {
    return totalClaimedTokens
}

function UserTimestampSec(address arg1) {
    require calldata.size - 4 >= 32
    return userWorkers[address(arg1)].field_512
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function GlobalTimestampSec() {
    return globalTimestampSec
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function UserWorkerSeconds(address arg1) {
    require calldata.size - 4 >= 32
    return userWorkers[address(arg1)].field_256
}

function symbol() {
    return symbol[0 len symbol.length]
}

function GlobalShareSeconds() {
    return globalShareSeconds
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)].field_0
}

function TotalGlobalShares() {
    return totalGlobalShares
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 
                    32,
                    37,
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)].field_0 -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)].field_0 + arg2 < allowance[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)].field_0 += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sell(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= totalClaimedTokens:
        revert with 0, 'exceeds total claimed'
    if not msg.sender:
        revert with 0, 'call from address 0'
    if arg1 < burnMin:
        revert with 0, 'Min 10000 tokens'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Bankruptcy'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if not arg1:
        if totalClaimedTokens <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalClaimedTokens
        if arg1 > totalClaimedTokens:
            revert with 0, 'SafeMath: subtraction overflow'
        totalClaimedTokens -= arg1
        call msg.sender with:
           value 0 / totalClaimedTokens wei
             gas 2300 * is_zero(value) wei
    else:
        require arg1
        if arg1 * eth.balance(this.address) / arg1 != eth.balance(this.address):
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalClaimedTokens <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalClaimedTokens
        if arg1 > totalClaimedTokens:
            revert with 0, 'SafeMath: subtraction overflow'
        totalClaimedTokens -= arg1
        call msg.sender with:
           value arg1 * eth.balance(this.address) / totalClaimedTokens wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sold(arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)].field_0:
        revert with 0, 
                    32,
                    40,
                    0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)].field_0 -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)].field_0 - arg3), arg1, msg.sender);
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    if arg3 == -1:
        mem[96 len 67] = 0x29454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374
        mem[96] = uint256(name.field_0)
        idx = 96
        s = 0
        while name.length + 96 > idx + 32:
            mem[idx + 32] = name[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        nonces[address(arg1)]++
        signer = erecover(sha3(0, sha3(sha3(0x29454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(mem[96 len name.length]), chainid, this.address), sha3(sha3(0x655065726d69742861646472657373206f776e65722c61646472657373207370656e6465722c75696e743235362076616c75652c75696e74323536206e6f6e63652c75696e7432353620646561646c696e65), address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'permit: invalid signature'
        if address(signer) != arg1:
            revert with 0, 'permit: unauthorized'
        if block.timestamp > arg4:
            revert with 0, 'permit: signature expired'
        allowance[address(arg1)][address(arg2)].field_0 = test266151307()
        emit Approval(test266151307(), arg1, arg2);
    else:
        if arg3 >= 0x1000000000000000000000000:
            revert with 0, 'permit: amount exceeds 96 bits'
        mem[160 len 67] = 0x29454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374
        mem[160] = uint256(name.field_0)
        idx = 160
        s = 0
        while name.length + 160 > idx + 32:
            mem[idx + 32] = name[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        nonces[address(arg1)]++
        signer = erecover(sha3(0, sha3(sha3(0x29454950373132446f6d61696e28737472696e67206e616d652c75696e7432353620636861696e49642c6164647265737320766572696679696e67436f6e7472616374), sha3(mem[160 len name.length]), chainid, this.address), sha3(sha3(0x655065726d69742861646472657373206f776e65722c61646472657373207370656e6465722c75696e743235362076616c75652c75696e74323536206e6f6e63652c75696e7432353620646561646c696e65), address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'permit: invalid signature'
        if address(signer) != arg1:
            revert with 0, 'permit: unauthorized'
        if block.timestamp > arg4:
            revert with 0, 'permit: signature expired'
        allowance[address(arg1)][address(arg2)].field_0 = Mask(96, 0, arg3)
        allowance[address(arg1)][address(arg2)].field_96 = 0
        emit Approval(Mask(96, 0, arg3), arg1, arg2);
}

function mint() payable {
    if not msg.sender:
        revert with 0, 'call from address 0'
    if totalClaimedTokens >= totalSupply:
        revert with 0, 'cap exceeded'
    userWorkers[address(msg.sender)].field_512 = block.timestamp
    if userWorkers[address(msg.sender)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - userWorkers[address(msg.sender)].field_512 <= stor6:
        revert with 0, 'Must wait 10 minutes'
    if not block.timestamp - userWorkers[address(msg.sender)].field_512:
        if userWorkers[address(msg.sender)].field_256 < userWorkers[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
    else:
        require block.timestamp - userWorkers[address(msg.sender)].field_512
        if (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) / block.timestamp - userWorkers[address(msg.sender)].field_512 != userWorkers[address(msg.sender)].field_0:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) < userWorkers[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        userWorkers[address(msg.sender)].field_256 = userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0)
    if msg.value == 10^16:
        stor5 = 10
    else:
        if 10^17 != msg.value:
            stor5 = 1
        else:
            stor5 = 100
    if userWorkers[address(msg.sender)].field_0 + stor5 < userWorkers[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    userWorkers[address(msg.sender)].field_0 += stor5
    if globalTimestampSec > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - globalTimestampSec:
        if globalShareSeconds < globalShareSeconds:
            revert with 0, 'SafeMath: addition overflow'
    else:
        require block.timestamp - globalTimestampSec
        if (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares) / block.timestamp - globalTimestampSec != totalGlobalShares:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if globalShareSeconds + (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares) < globalShareSeconds:
            revert with 0, 'SafeMath: addition overflow'
        globalShareSeconds = globalShareSeconds + (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares)
    if totalGlobalShares + stor5 < totalGlobalShares:
        revert with 0, 'SafeMath: addition overflow'
    totalGlobalShares += stor5
    globalTimestampSec = block.timestamp
    emit WorkerAdded(msg.sender);
}

function claimTokens() {
    if not msg.sender:
        revert with 0, 'call from address 0'
    if totalClaimedTokens >= totalSupply:
        revert with 0, 'cap exceeded'
    if userWorkers[address(msg.sender)].field_0 <= 0:
        revert with 0, 'No worker.'
    if userWorkers[address(msg.sender)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - userWorkers[address(msg.sender)].field_512 <= stor6:
        revert with 0, 'Must wait 10 minutes'
    userWorkers[address(msg.sender)].field_256 = 0
    userWorkers[address(msg.sender)].field_0 = 0
    userWorkers[address(msg.sender)].field_512 = block.timestamp
    if initialTimestampSec > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - initialTimestampSec:
        if 0 <= totalSupply:
            if totalClaimedTokens > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if globalTimestampSec > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - globalTimestampSec:
                if globalShareSeconds < globalShareSeconds:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require block.timestamp - globalTimestampSec
                if (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares) / block.timestamp - globalTimestampSec != totalGlobalShares:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if globalShareSeconds + (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares) < globalShareSeconds:
                    revert with 0, 'SafeMath: addition overflow'
                globalShareSeconds = globalShareSeconds + (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares)
            globalTimestampSec = block.timestamp
            if not block.timestamp - userWorkers[address(msg.sender)].field_512:
                if userWorkers[address(msg.sender)].field_256 < userWorkers[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if globalShareSeconds <= 0:
                    if userWorkers[address(msg.sender)].field_256 > globalShareSeconds:
                        revert with 0, 'SafeMath: subtraction overflow'
                    globalShareSeconds -= userWorkers[address(msg.sender)].field_256
                    if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                    if totalClaimedTokens < totalClaimedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit TokensClaimed(0, msg.sender);
                else:
                    if not -totalClaimedTokens:
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds -= userWorkers[address(msg.sender)].field_256
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + (0 / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += 0 / globalShareSeconds
                        if balanceOf[address(msg.sender)] + (0 / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / globalShareSeconds
                        emit TokensClaimed((0 / globalShareSeconds), msg.sender);
                    else:
                        require -totalClaimedTokens
                        if -1 * totalClaimedTokens * userWorkers[address(msg.sender)].field_256 / -totalClaimedTokens != userWorkers[address(msg.sender)].field_256:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds -= userWorkers[address(msg.sender)].field_256
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + (-1 * totalClaimedTokens * userWorkers[address(msg.sender)].field_256 / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += -1 * totalClaimedTokens * userWorkers[address(msg.sender)].field_256 / globalShareSeconds
                        if balanceOf[address(msg.sender)] + (-1 * totalClaimedTokens * userWorkers[address(msg.sender)].field_256 / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += -1 * totalClaimedTokens * userWorkers[address(msg.sender)].field_256 / globalShareSeconds
                        emit TokensClaimed((-1 * totalClaimedTokens * userWorkers[address(msg.sender)].field_256 / globalShareSeconds), msg.sender);
            else:
                require block.timestamp - userWorkers[address(msg.sender)].field_512
                if (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) / block.timestamp - userWorkers[address(msg.sender)].field_512 != userWorkers[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) < userWorkers[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if globalShareSeconds <= 0:
                    if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) > globalShareSeconds:
                        revert with 0, 'SafeMath: subtraction overflow'
                    globalShareSeconds = globalShareSeconds - userWorkers[address(msg.sender)].field_256 - (block.timestamp * userWorkers[address(msg.sender)].field_0) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0)
                    if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                    if totalClaimedTokens < totalClaimedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit TokensClaimed(0, msg.sender);
                else:
                    if not -totalClaimedTokens:
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds = globalShareSeconds - userWorkers[address(msg.sender)].field_256 - (block.timestamp * userWorkers[address(msg.sender)].field_0) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0)
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + (0 / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += 0 / globalShareSeconds
                        if balanceOf[address(msg.sender)] + (0 / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / globalShareSeconds
                        emit TokensClaimed((0 / globalShareSeconds), msg.sender);
                    else:
                        require -totalClaimedTokens
                        if (-1 * userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / -totalClaimedTokens != userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0):
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds = globalShareSeconds - userWorkers[address(msg.sender)].field_256 - (block.timestamp * userWorkers[address(msg.sender)].field_0) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0)
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + ((-1 * userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += (-1 * userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds
                        if balanceOf[address(msg.sender)] + ((-1 * userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += (-1 * userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds
                        emit TokensClaimed(((-1 * userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds), msg.sender);
        else:
            if totalClaimedTokens > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if globalTimestampSec > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - globalTimestampSec:
                if globalShareSeconds < globalShareSeconds:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require block.timestamp - globalTimestampSec
                if (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares) / block.timestamp - globalTimestampSec != totalGlobalShares:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if globalShareSeconds + (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares) < globalShareSeconds:
                    revert with 0, 'SafeMath: addition overflow'
                globalShareSeconds = globalShareSeconds + (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares)
            globalTimestampSec = block.timestamp
            if not block.timestamp - userWorkers[address(msg.sender)].field_512:
                if userWorkers[address(msg.sender)].field_256 < userWorkers[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if globalShareSeconds <= 0:
                    if userWorkers[address(msg.sender)].field_256 > globalShareSeconds:
                        revert with 0, 'SafeMath: subtraction overflow'
                    globalShareSeconds -= userWorkers[address(msg.sender)].field_256
                    if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                    if totalClaimedTokens < totalClaimedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit TokensClaimed(0, msg.sender);
                else:
                    if not totalSupply - totalClaimedTokens:
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds -= userWorkers[address(msg.sender)].field_256
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + (0 / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += 0 / globalShareSeconds
                        if balanceOf[address(msg.sender)] + (0 / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / globalShareSeconds
                        emit TokensClaimed((0 / globalShareSeconds), msg.sender);
                    else:
                        require totalSupply - totalClaimedTokens
                        if (totalSupply * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / totalSupply - totalClaimedTokens != userWorkers[address(msg.sender)].field_256:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds -= userWorkers[address(msg.sender)].field_256
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + ((totalSupply * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += (totalSupply * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds
                        if balanceOf[address(msg.sender)] + ((totalSupply * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += (totalSupply * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds
                        emit TokensClaimed(((totalSupply * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds), msg.sender);
            else:
                require block.timestamp - userWorkers[address(msg.sender)].field_512
                if (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) / block.timestamp - userWorkers[address(msg.sender)].field_512 != userWorkers[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) < userWorkers[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if globalShareSeconds <= 0:
                    if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) > globalShareSeconds:
                        revert with 0, 'SafeMath: subtraction overflow'
                    globalShareSeconds = globalShareSeconds - userWorkers[address(msg.sender)].field_256 - (block.timestamp * userWorkers[address(msg.sender)].field_0) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0)
                    if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                    if totalClaimedTokens < totalClaimedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit TokensClaimed(0, msg.sender);
                else:
                    if not totalSupply - totalClaimedTokens:
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds = globalShareSeconds - userWorkers[address(msg.sender)].field_256 - (block.timestamp * userWorkers[address(msg.sender)].field_0) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0)
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + (0 / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += 0 / globalShareSeconds
                        if balanceOf[address(msg.sender)] + (0 / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / globalShareSeconds
                        emit TokensClaimed((0 / globalShareSeconds), msg.sender);
                    else:
                        require totalSupply - totalClaimedTokens
                        if (userWorkers[address(msg.sender)].field_256 * totalSupply) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / totalSupply - totalClaimedTokens != userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0):
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds = globalShareSeconds - userWorkers[address(msg.sender)].field_256 - (block.timestamp * userWorkers[address(msg.sender)].field_0) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0)
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + ((userWorkers[address(msg.sender)].field_256 * totalSupply) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += (userWorkers[address(msg.sender)].field_256 * totalSupply) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds
                        if balanceOf[address(msg.sender)] + ((userWorkers[address(msg.sender)].field_256 * totalSupply) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += (userWorkers[address(msg.sender)].field_256 * totalSupply) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds
                        emit TokensClaimed(((userWorkers[address(msg.sender)].field_256 * totalSupply) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds), msg.sender);
    else:
        require block.timestamp - initialTimestampSec
        if (block.timestamp * stor7) - (initialTimestampSec * stor7) / block.timestamp - initialTimestampSec != stor7:
            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if (block.timestamp * stor7) - (initialTimestampSec * stor7) <= totalSupply:
            if totalClaimedTokens > (block.timestamp * stor7) - (initialTimestampSec * stor7):
                revert with 0, 'SafeMath: subtraction overflow'
            if globalTimestampSec > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - globalTimestampSec:
                if globalShareSeconds < globalShareSeconds:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require block.timestamp - globalTimestampSec
                if (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares) / block.timestamp - globalTimestampSec != totalGlobalShares:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if globalShareSeconds + (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares) < globalShareSeconds:
                    revert with 0, 'SafeMath: addition overflow'
                globalShareSeconds = globalShareSeconds + (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares)
            globalTimestampSec = block.timestamp
            if not block.timestamp - userWorkers[address(msg.sender)].field_512:
                if userWorkers[address(msg.sender)].field_256 < userWorkers[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if globalShareSeconds <= 0:
                    if userWorkers[address(msg.sender)].field_256 > globalShareSeconds:
                        revert with 0, 'SafeMath: subtraction overflow'
                    globalShareSeconds -= userWorkers[address(msg.sender)].field_256
                    if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                    if totalClaimedTokens < totalClaimedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit TokensClaimed(0, msg.sender);
                else:
                    if not (block.timestamp * stor7) - (initialTimestampSec * stor7) - totalClaimedTokens:
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds -= userWorkers[address(msg.sender)].field_256
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + (0 / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += 0 / globalShareSeconds
                        if balanceOf[address(msg.sender)] + (0 / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / globalShareSeconds
                        emit TokensClaimed((0 / globalShareSeconds), msg.sender);
                    else:
                        require (block.timestamp * stor7) - (initialTimestampSec * stor7) - totalClaimedTokens
                        if (block.timestamp * stor7 * userWorkers[address(msg.sender)].field_256) - (initialTimestampSec * stor7 * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / (block.timestamp * stor7) - (initialTimestampSec * stor7) - totalClaimedTokens != userWorkers[address(msg.sender)].field_256:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds -= userWorkers[address(msg.sender)].field_256
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + ((block.timestamp * stor7 * userWorkers[address(msg.sender)].field_256) - (initialTimestampSec * stor7 * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += (block.timestamp * stor7 * userWorkers[address(msg.sender)].field_256) - (initialTimestampSec * stor7 * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds
                        if balanceOf[address(msg.sender)] + ((block.timestamp * stor7 * userWorkers[address(msg.sender)].field_256) - (initialTimestampSec * stor7 * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += (block.timestamp * stor7 * userWorkers[address(msg.sender)].field_256) - (initialTimestampSec * stor7 * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds
                        emit TokensClaimed(((block.timestamp * stor7 * userWorkers[address(msg.sender)].field_256) - (initialTimestampSec * stor7 * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds), msg.sender);
            else:
                require block.timestamp - userWorkers[address(msg.sender)].field_512
                if (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) / block.timestamp - userWorkers[address(msg.sender)].field_512 != userWorkers[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) < userWorkers[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if globalShareSeconds <= 0:
                    if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) > globalShareSeconds:
                        revert with 0, 'SafeMath: subtraction overflow'
                    globalShareSeconds = globalShareSeconds - userWorkers[address(msg.sender)].field_256 - (block.timestamp * userWorkers[address(msg.sender)].field_0) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0)
                    if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                    if totalClaimedTokens < totalClaimedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit TokensClaimed(0, msg.sender);
                else:
                    if not (block.timestamp * stor7) - (initialTimestampSec * stor7) - totalClaimedTokens:
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds = globalShareSeconds - userWorkers[address(msg.sender)].field_256 - (block.timestamp * userWorkers[address(msg.sender)].field_0) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0)
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + (0 / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += 0 / globalShareSeconds
                        if balanceOf[address(msg.sender)] + (0 / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / globalShareSeconds
                        emit TokensClaimed((0 / globalShareSeconds), msg.sender);
                    else:
                        require (block.timestamp * stor7) - (initialTimestampSec * stor7) - totalClaimedTokens
                        if (userWorkers[address(msg.sender)].field_256 * block.timestamp * stor7) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * block.timestamp * stor7) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * block.timestamp * stor7) - (userWorkers[address(msg.sender)].field_256 * initialTimestampSec * stor7) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * initialTimestampSec * stor7) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * initialTimestampSec * stor7) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / (block.timestamp * stor7) - (initialTimestampSec * stor7) - totalClaimedTokens != userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0):
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds = globalShareSeconds - userWorkers[address(msg.sender)].field_256 - (block.timestamp * userWorkers[address(msg.sender)].field_0) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0)
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + ((userWorkers[address(msg.sender)].field_256 * block.timestamp * stor7) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * block.timestamp * stor7) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * block.timestamp * stor7) - (userWorkers[address(msg.sender)].field_256 * initialTimestampSec * stor7) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * initialTimestampSec * stor7) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * initialTimestampSec * stor7) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += (userWorkers[address(msg.sender)].field_256 * block.timestamp * stor7) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * block.timestamp * stor7) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * block.timestamp * stor7) - (userWorkers[address(msg.sender)].field_256 * initialTimestampSec * stor7) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * initialTimestampSec * stor7) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * initialTimestampSec * stor7) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds
                        if balanceOf[address(msg.sender)] + ((userWorkers[address(msg.sender)].field_256 * block.timestamp * stor7) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * block.timestamp * stor7) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * block.timestamp * stor7) - (userWorkers[address(msg.sender)].field_256 * initialTimestampSec * stor7) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * initialTimestampSec * stor7) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * initialTimestampSec * stor7) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += (userWorkers[address(msg.sender)].field_256 * block.timestamp * stor7) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * block.timestamp * stor7) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * block.timestamp * stor7) - (userWorkers[address(msg.sender)].field_256 * initialTimestampSec * stor7) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * initialTimestampSec * stor7) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * initialTimestampSec * stor7) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds
                        emit TokensClaimed(((userWorkers[address(msg.sender)].field_256 * block.timestamp * stor7) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * block.timestamp * stor7) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * block.timestamp * stor7) - (userWorkers[address(msg.sender)].field_256 * initialTimestampSec * stor7) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * initialTimestampSec * stor7) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * initialTimestampSec * stor7) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds), msg.sender);
        else:
            if totalClaimedTokens > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if globalTimestampSec > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - globalTimestampSec:
                if globalShareSeconds < globalShareSeconds:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require block.timestamp - globalTimestampSec
                if (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares) / block.timestamp - globalTimestampSec != totalGlobalShares:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if globalShareSeconds + (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares) < globalShareSeconds:
                    revert with 0, 'SafeMath: addition overflow'
                globalShareSeconds = globalShareSeconds + (block.timestamp * totalGlobalShares) - (globalTimestampSec * totalGlobalShares)
            globalTimestampSec = block.timestamp
            if not block.timestamp - userWorkers[address(msg.sender)].field_512:
                if userWorkers[address(msg.sender)].field_256 < userWorkers[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if globalShareSeconds <= 0:
                    if userWorkers[address(msg.sender)].field_256 > globalShareSeconds:
                        revert with 0, 'SafeMath: subtraction overflow'
                    globalShareSeconds -= userWorkers[address(msg.sender)].field_256
                    if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                    if totalClaimedTokens < totalClaimedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit TokensClaimed(0, msg.sender);
                else:
                    if not totalSupply - totalClaimedTokens:
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds -= userWorkers[address(msg.sender)].field_256
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + (0 / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += 0 / globalShareSeconds
                        if balanceOf[address(msg.sender)] + (0 / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / globalShareSeconds
                        emit TokensClaimed((0 / globalShareSeconds), msg.sender);
                    else:
                        require totalSupply - totalClaimedTokens
                        if (totalSupply * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / totalSupply - totalClaimedTokens != userWorkers[address(msg.sender)].field_256:
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds -= userWorkers[address(msg.sender)].field_256
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + ((totalSupply * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += (totalSupply * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds
                        if balanceOf[address(msg.sender)] + ((totalSupply * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += (totalSupply * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds
                        emit TokensClaimed(((totalSupply * userWorkers[address(msg.sender)].field_256) - (totalClaimedTokens * userWorkers[address(msg.sender)].field_256) / globalShareSeconds), msg.sender);
            else:
                require block.timestamp - userWorkers[address(msg.sender)].field_512
                if (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) / block.timestamp - userWorkers[address(msg.sender)].field_512 != userWorkers[address(msg.sender)].field_0:
                    revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) < userWorkers[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if globalShareSeconds <= 0:
                    if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) > globalShareSeconds:
                        revert with 0, 'SafeMath: subtraction overflow'
                    globalShareSeconds = globalShareSeconds - userWorkers[address(msg.sender)].field_256 - (block.timestamp * userWorkers[address(msg.sender)].field_0) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0)
                    if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                    if totalClaimedTokens < totalClaimedTokens:
                        revert with 0, 'SafeMath: addition overflow'
                    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    emit TokensClaimed(0, msg.sender);
                else:
                    if not totalSupply - totalClaimedTokens:
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds = globalShareSeconds - userWorkers[address(msg.sender)].field_256 - (block.timestamp * userWorkers[address(msg.sender)].field_0) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0)
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + (0 / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += 0 / globalShareSeconds
                        if balanceOf[address(msg.sender)] + (0 / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / globalShareSeconds
                        emit TokensClaimed((0 / globalShareSeconds), msg.sender);
                    else:
                        require totalSupply - totalClaimedTokens
                        if (userWorkers[address(msg.sender)].field_256 * totalSupply) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / totalSupply - totalClaimedTokens != userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0):
                            revert with 0, 32, 33, 0x29536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if globalShareSeconds <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require globalShareSeconds
                        if userWorkers[address(msg.sender)].field_256 + (block.timestamp * userWorkers[address(msg.sender)].field_0) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0) > globalShareSeconds:
                            revert with 0, 'SafeMath: subtraction overflow'
                        globalShareSeconds = globalShareSeconds - userWorkers[address(msg.sender)].field_256 - (block.timestamp * userWorkers[address(msg.sender)].field_0) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0)
                        if userWorkers[address(msg.sender)].field_0 > totalGlobalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalGlobalShares -= userWorkers[address(msg.sender)].field_0
                        if totalClaimedTokens + ((userWorkers[address(msg.sender)].field_256 * totalSupply) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds) < totalClaimedTokens:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimedTokens += (userWorkers[address(msg.sender)].field_256 * totalSupply) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds
                        if balanceOf[address(msg.sender)] + ((userWorkers[address(msg.sender)].field_256 * totalSupply) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds) < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += (userWorkers[address(msg.sender)].field_256 * totalSupply) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds
                        emit TokensClaimed(((userWorkers[address(msg.sender)].field_256 * totalSupply) + (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalSupply) - (userWorkers[address(msg.sender)].field_256 * totalClaimedTokens) - (block.timestamp * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) + (userWorkers[address(msg.sender)].field_512 * userWorkers[address(msg.sender)].field_0 * totalClaimedTokens) / globalShareSeconds), msg.sender);
}



}
