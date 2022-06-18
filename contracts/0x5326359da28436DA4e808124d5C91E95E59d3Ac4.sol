contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
uint8 decimals;
mapping of uint256 contributions;
mapping of uint8 stor8;
address walletAddress;
uint256 openingTime;
uint256 closingTime;
uint256 rate;
uint256 weiRaised;
uint256 goal;
uint256 cap;
uint256 minContribution;
uint256 maxContribution;
uint8 onlyWhitelisted;
uint8 isFinalized; offset 8
address vaultAddress; offset 16
uint256 stor18;

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function decimals() {
    return decimals
}

function cap() {
    return cap
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function contributions(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return contributions[arg1]
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function maxContribution() {
    return maxContribution
}

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function onlyWhitelisted() {
    return bool(onlyWhitelisted)
}

function minContribution() {
    return minContribution
}

function openingTime() {
    return openingTime
}

function getUserContribution(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return contributions[address(arg1)]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function vault() {
    return vaultAddress
}

function capReached() {
    return weiRaised >= cap
}

function goalReached() {
    return weiRaised >= goal
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0, 'transfer not allowed'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function toggleWhitelisting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = not onlyWhitelisted or Mask(248, 8, stor18)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    revert with 0, 'transfer not allowed'
}

function addToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 1
}

function removeFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function finalize() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not isFinalized
    if block.timestamp <= closingTime:
        if weiRaised < cap:
            if weiRaised > cap:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if cap < weiRaised:
                revert with 0, 17
            require cap - weiRaised < minContribution
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    isFinalized = 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function addManyToWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function removeManyFromWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function claimRefund() {
    require weiRaised < goal
    contributions[msg.sender] = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[msg.sender] > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    if balanceOf[address(msg.sender)] < balanceOf[msg.sender]:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= balanceOf[msg.sender]
    if balanceOf[msg.sender] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[msg.sender]:
        revert with 0, 17
    totalSupply -= balanceOf[msg.sender]
    emit Transfer(balanceOf[msg.sender], msg.sender, 0);
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    if onlyWhitelisted:
        require stor8[address(arg1)]
    require arg1
    require msg.value
    if contributions[address(arg1)] > !msg.value:
        revert with 0, 17
    if contributions[address(arg1)] + msg.value < contributions[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    require contributions[address(arg1)] + msg.value >= minContribution
    if contributions[address(arg1)] > !msg.value:
        revert with 0, 17
    if contributions[address(arg1)] + msg.value < contributions[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    require contributions[address(arg1)] + msg.value <= maxContribution
    if weiRaised > !msg.value:
        revert with 0, 17
    if weiRaised + msg.value < weiRaised:
        revert with 0, 'SafeMath: addition overflow'
    require weiRaised + msg.value <= cap
    if not msg.value:
        if weiRaised > !msg.value:
            revert with 0, 17
        if weiRaised + msg.value < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        weiRaised += msg.value
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > -1:
            revert with 0, 17
        if totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(arg1)] > -1:
            revert with 0, 17
        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, 0, arg1);
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        if msg.value and rate > -1 / msg.value:
            revert with 0, 17
        if not msg.value:
            revert with 0, 18
        if msg.value * rate / msg.value != rate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if weiRaised > !msg.value:
            revert with 0, 17
        if weiRaised + msg.value < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        weiRaised += msg.value
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !(msg.value * rate / 10^18):
            revert with 0, 17
        if totalSupply + (msg.value * rate / 10^18) < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += msg.value * rate / 10^18
        if balanceOf[address(arg1)] > !(msg.value * rate / 10^18):
            revert with 0, 17
        if balanceOf[address(arg1)] + (msg.value * rate / 10^18) < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += msg.value * rate / 10^18
        emit Transfer((msg.value * rate / 10^18), 0, arg1);
        emit TokenPurchase(msg.value, msg.value * rate / 10^18, msg.sender, arg1);
    if contributions[address(arg1)] > !msg.value:
        revert with 0, 17
    if contributions[address(arg1)] + msg.value < contributions[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    contributions[address(arg1)] += msg.value
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function name() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        require block.timestamp >= openingTime
        require block.timestamp <= closingTime
        if onlyWhitelisted:
            require stor8[address(msg.sender)]
        require msg.sender
        require msg.value
        if contributions[address(msg.sender)] > !msg.value:
            revert with 0, 17
        if contributions[address(msg.sender)] + msg.value < contributions[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        require contributions[address(msg.sender)] + msg.value >= minContribution
        if contributions[address(msg.sender)] > !msg.value:
            revert with 0, 17
        if contributions[address(msg.sender)] + msg.value < contributions[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        require contributions[address(msg.sender)] + msg.value <= maxContribution
        if weiRaised > !msg.value:
            revert with 0, 17
        if weiRaised + msg.value < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        require weiRaised + msg.value <= cap
        if not msg.value:
            if weiRaised > !msg.value:
                revert with 0, 17
            if weiRaised + msg.value < weiRaised:
                revert with 0, 'SafeMath: addition overflow'
            weiRaised += msg.value
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > -1:
                revert with 0, 17
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[address(msg.sender)] > -1:
                revert with 0, 17
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, msg.sender);
            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
        else:
            if msg.value and rate > -1 / msg.value:
                revert with 0, 17
            if not msg.value:
                revert with 0, 18
            if msg.value * rate / msg.value != rate:
                revert with 0, 'SafeMath: multiplication overflow'
            if weiRaised > !msg.value:
                revert with 0, 17
            if weiRaised + msg.value < weiRaised:
                revert with 0, 'SafeMath: addition overflow'
            weiRaised += msg.value
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !(msg.value * rate / 10^18):
                revert with 0, 17
            if totalSupply + (msg.value * rate / 10^18) < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += msg.value * rate / 10^18
            if balanceOf[address(msg.sender)] > !(msg.value * rate / 10^18):
                revert with 0, 17
            if balanceOf[address(msg.sender)] + (msg.value * rate / 10^18) < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += msg.value * rate / 10^18
            emit Transfer((msg.value * rate / 10^18), 0, msg.sender);
            emit TokenPurchase(msg.value, msg.value * rate / 10^18, msg.sender, msg.sender);
        if contributions[address(msg.sender)] > !msg.value:
            revert with 0, 17
        if contributions[address(msg.sender)] + msg.value < contributions[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        contributions[address(msg.sender)] += msg.value
        require ext_code.size(vaultAddress)
        call vaultAddress.deposit(address arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if unknown_0x8c10671c(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x4042b66f(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x2c4e722e(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != name():
                        if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            if not msg.sender:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(msg.sender)][address(cd[4])] = cd[36]
                            emit Approval(cd[36], msg.sender, address(cd[4]));
                            return 1
                        if unknown_0x1515bc2b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return (block.timestamp > closingTime)
                        if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return totalSupply
                        require unknown_0x23b872dd(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        revert with 0, 'transfer not allowed'
                    require not msg.value
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor4.length):
                            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4.length):
                                if 31 < uint255(stor4.length) * 0.5:
                                    mem[160] = uint256(stor4.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor4.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                mem[160] = 256 * stor4.length.field_8
                        else:
                            if bool(stor4.length) == stor4.length.field_1 < 32:
                                revert with 0, 34
                            if stor4.length.field_1:
                                if 31 < stor4.length.field_1:
                                    mem[160] = uint256(stor4.field_0)
                                    idx = 160
                                    s = 0
                                    while stor4.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                mem[160] = 256 * stor4.length.field_8
                        mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
                    if bool(stor4.length) == stor4.length.field_1 < 32:
                        revert with 0, 34
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4.length):
                            if 31 < uint255(stor4.length) * 0.5:
                                mem[160] = uint256(stor4.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor4.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                            mem[160] = 256 * stor4.length.field_8
                    else:
                        if bool(stor4.length) == stor4.length.field_1 < 32:
                            revert with 0, 34
                        if stor4.length.field_1:
                            if 31 < stor4.length.field_1:
                                mem[160] = uint256(stor4.field_0)
                                idx = 160
                                s = 0
                                while stor4.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor4[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                            mem[160] = 256 * stor4.length.field_8
                    mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
                    if ceil32(stor4.length.field_1) > stor4.length.field_1:
                        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 224] = 0
                    return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
                if unknown_0x2c4e722e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return rate
                if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return decimals
                if unknown_0x355274ea(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return cap
                if uint32(call.func_hash) >> 224 != unknown_0x39509351(?????):
                    require unknown_0x40193883(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return goal
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if allowance[msg.sender][address(cd[4])] > !cd[36]:
                    revert with 0, 17
                if allowance[msg.sender][address(cd[4])] + cd[36] < allowance[msg.sender][address(cd[4])]:
                    revert with 0, 'SafeMath: addition overflow'
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(cd[4]):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(cd[4])] = allowance[msg.sender][address(cd[4])] + cd[36]
                emit Approval((allowance[msg.sender][address(cd[4])] + cd[36]), msg.sender, address(cd[4]));
                return 1
            if unknown_0x521eb273(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x521eb273(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return walletAddress
                if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return balanceOf[address(cd[4])]
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
                else:
                    if unknown_0x7d3d6522(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return weiRaised >= goal
                    require unknown_0x8ab1d681(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor8[address(cd[4])] = 0
            else:
                if unknown_0x4042b66f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return weiRaised
                if unknown_0x42e94c90(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return contributions[cd[4]]
                if unknown_0x4b6753bc(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return closingTime
                if uint32(call.func_hash) >> 224 != unknown_0x4bb278f3(?????):
                    require unknown_0x4f935945(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return weiRaised >= cap
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require not isFinalized
                if block.timestamp <= closingTime:
                    if weiRaised < cap:
                        if weiRaised > cap:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if cap < weiRaised:
                            revert with 0, 17
                        require cap - weiRaised < minContribution
                require ext_code.size(vaultAddress)
                if weiRaised < goal:
                    call vaultAddress.enableRefunds() with:
                         gas gas_remaining wei
                else:
                    call vaultAddress.close() with:
                         gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Finalized()
                isFinalized = 1
        else:
            if unknown_0xb5545a3c(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9b19251a(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x9b19251a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor8[cd[4]])
                    if unknown_0x9c70b512(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(onlyWhitelisted)
                    if uint32(call.func_hash) >> 224 != unknown_0xa457c2d7(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                            require unknown_0xaaffadf3(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return minContribution
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        revert with 0, 'transfer not allowed'
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if cd[36] > allowance[msg.sender][address(cd[4])]:
                        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[197 len 27] >> 40, 0
                    if allowance[msg.sender][address(cd[4])] < cd[36]:
                        revert with 0, 17
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(cd[4])] = allowance[msg.sender][address(cd[4])] - cd[36]
                    emit Approval((allowance[msg.sender][address(cd[4])] - cd[36]), msg.sender, address(cd[4]));
                    return 1
                if unknown_0x8c10671c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                        revert with 0, 65
                    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
                    s = 160
                    idx = cd[4] + 36
                    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 172 len 20]
                        mem[32] = 8
                        stor8[mem[(32 * idx) + 172 len 20]] = 1
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                if unknown_0x8d3d6576(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return maxContribution
                if unknown_0x8d4e4083(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(isFinalized)
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                require unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if bool(stor5.length):
                    if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor5.length):
                        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor5.length):
                            if 31 < uint255(stor5.length) * 0.5:
                                mem[160] = uint256(stor5.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor5.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor5[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)])
                            mem[160] = 256 * stor5.length.field_8
                    else:
                        if bool(stor5.length) == stor5.length.field_1 < 32:
                            revert with 0, 34
                        if stor5.length.field_1:
                            if 31 < stor5.length.field_1:
                                mem[160] = uint256(stor5.field_0)
                                idx = 160
                                s = 0
                                while stor5.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor5[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)])
                            mem[160] = 256 * stor5.length.field_8
                    mem[ceil32(uint255(stor5.length) * 0.5) + 224 len ceil32(uint255(stor5.length) * 0.5)] = mem[160 len ceil32(uint255(stor5.length) * 0.5)]
                    if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
                        mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[160 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
                if bool(stor5.length) == stor5.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor5.length):
                    if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor5.length):
                        if 31 < uint255(stor5.length) * 0.5:
                            mem[160] = uint256(stor5.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor5.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor5[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)])
                        mem[160] = 256 * stor5.length.field_8
                else:
                    if bool(stor5.length) == stor5.length.field_1 < 32:
                        revert with 0, 34
                    if stor5.length.field_1:
                        if 31 < stor5.length.field_1:
                            mem[160] = uint256(stor5.field_0)
                            idx = 160
                            s = 0
                            while stor5.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor5[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)])
                        mem[160] = 256 * stor5.length.field_8
                mem[ceil32(stor5.length.field_1) + 224 len ceil32(stor5.length.field_1)] = mem[160 len ceil32(stor5.length.field_1)]
                if ceil32(stor5.length.field_1) > stor5.length.field_1:
                    mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 224] = 0
                return Array(len=stor5.length % 128, data=mem[160 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 224 len 2 * ceil32(stor5.length.field_1)]), 
            if unknown_0xec8ac4d8(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0xb5545a3c(?????):
                    if unknown_0xb7a8807c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return openingTime
                    if unknown_0xbb8b2b47(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return contributions[address(cd[4])]
                    if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        return allowance[address(cd[4])][address(cd[36])]
                    require unknown_0xe43252d7(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor8[address(cd[4])] = 1
                else:
                    require not msg.value
                    require weiRaised < goal
                    contributions[msg.sender] = 0
                    if not msg.sender:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[msg.sender] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[194 len 30] >> 16, 0
                    if balanceOf[address(msg.sender)] < balanceOf[msg.sender]:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] -= balanceOf[msg.sender]
                    if balanceOf[msg.sender] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if totalSupply < balanceOf[msg.sender]:
                        revert with 0, 17
                    totalSupply -= balanceOf[msg.sender]
                    emit Transfer(balanceOf[msg.sender], msg.sender, 0);
                    require ext_code.size(vaultAddress)
                    call vaultAddress.refund(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xec8ac4d8(?????):
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, address(cd[4]));
                        owner = address(cd[4])
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xf674d799(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0xfbefa413(?????):
                                require unknown_0xfbfa77cf(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return vaultAddress
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stor18 = not onlyWhitelisted or Mask(248, 8, stor18)
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            if ('cd', 4).length > test266151307():
                                revert with 0, 65
                            if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                                revert with 0, 65
                            require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
                            s = 160
                            idx = cd[4] + 36
                            while idx < (32 * ('cd', 4).length) + cd[4] + 36:
                                require cd[idx] == address(cd[idx])
                                mem[s] = cd[idx]
                                s = s + 32
                                idx = idx + 32
                                continue 
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            idx = 0
                            while idx < ('cd', 4).length:
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                mem[0] = mem[(32 * idx) + 172 len 20]
                                mem[32] = 8
                                stor8[mem[(32 * idx) + 172 len 20]] = 0
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                else:
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require block.timestamp >= openingTime
                    require block.timestamp <= closingTime
                    if onlyWhitelisted:
                        require stor8[address(cd[4])]
                    require address(cd[4])
                    require msg.value
                    if contributions[address(cd[4])] > !msg.value:
                        revert with 0, 17
                    if contributions[address(cd[4])] + msg.value < contributions[address(cd[4])]:
                        revert with 0, 'SafeMath: addition overflow'
                    require contributions[address(cd[4])] + msg.value >= minContribution
                    if contributions[address(cd[4])] > !msg.value:
                        revert with 0, 17
                    if contributions[address(cd[4])] + msg.value < contributions[address(cd[4])]:
                        revert with 0, 'SafeMath: addition overflow'
                    require contributions[address(cd[4])] + msg.value <= maxContribution
                    if weiRaised > !msg.value:
                        revert with 0, 17
                    if weiRaised + msg.value < weiRaised:
                        revert with 0, 'SafeMath: addition overflow'
                    require weiRaised + msg.value <= cap
                    if not msg.value:
                        if weiRaised > !msg.value:
                            revert with 0, 17
                        if weiRaised + msg.value < weiRaised:
                            revert with 0, 'SafeMath: addition overflow'
                        weiRaised += msg.value
                        if not address(cd[4]):
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > -1:
                            revert with 0, 17
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(cd[4])] > -1:
                            revert with 0, 17
                        if balanceOf[address(cd[4])] < balanceOf[address(cd[4])]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, address(cd[4]));
                        emit TokenPurchase(msg.value, 0, msg.sender, address(cd[4]));
                    else:
                        if msg.value and rate > -1 / msg.value:
                            revert with 0, 17
                        if not msg.value:
                            revert with 0, 18
                        if msg.value * rate / msg.value != rate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if weiRaised > !msg.value:
                            revert with 0, 17
                        if weiRaised + msg.value < weiRaised:
                            revert with 0, 'SafeMath: addition overflow'
                        weiRaised += msg.value
                        if not address(cd[4]):
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply > !(msg.value * rate / 10^18):
                            revert with 0, 17
                        if totalSupply + (msg.value * rate / 10^18) < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += msg.value * rate / 10^18
                        if balanceOf[address(cd[4])] > !(msg.value * rate / 10^18):
                            revert with 0, 17
                        if balanceOf[address(cd[4])] + (msg.value * rate / 10^18) < balanceOf[address(cd[4])]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(cd[4])] += msg.value * rate / 10^18
                        emit Transfer((msg.value * rate / 10^18), 0, address(cd[4]));
                        emit TokenPurchase(msg.value, msg.value * rate / 10^18, msg.sender, address(cd[4]));
                    if contributions[address(cd[4])] > !msg.value:
                        revert with 0, 17
                    if contributions[address(cd[4])] + msg.value < contributions[address(cd[4])]:
                        revert with 0, 'SafeMath: addition overflow'
                    contributions[address(cd[4])] += msg.value
                    require ext_code.size(vaultAddress)
                    call vaultAddress.deposit(address arg1) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
