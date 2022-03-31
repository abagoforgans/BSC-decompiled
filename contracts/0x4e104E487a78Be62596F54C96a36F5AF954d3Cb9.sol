contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of address sub_2e0f1166;
uint256 totalSupply;
uint256 saleSupply;
uint256 airdropSupply;
uint256 bountySupply;
uint256 weiRaised;
uint256 RATE;
mapping of uint8 stor14;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_2e0f1166(?) {
    require arg1 < sub_2e0f1166.length
    return sub_2e0f1166[arg1]
}

function decimals() {
    return decimals
}

function weiRaised() {
    return weiRaised
}

function RATE() {
    return RATE
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_85d17ae3(?) {
    return bool(stor14[arg1])
}

function bountySupply() {
    return bountySupply
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function saleSupply() {
    return saleSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function airdropSupply() {
    return airdropSupply
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only owner method'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'Only owner method'
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require stor0 + arg2 >= stor0
    stor0 += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_df2cfb28(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if 0x446ae861c2df2f8b813bc956b99909ca4904bdba != msg.sender:
        revert with 0, 'Only Bounty and Airdrop holder address can execute this method'
    idx = 0
    s = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        _20 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg2.length
        require mem[(32 * uint8(idx)) + 140 len 20]
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * uint8(idx)) + 128])] + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * uint8(idx)) + 128])]
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 1
        balanceOf[address(mem[(32 * uint8(idx)) + 128])] += mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_20));
        require uint8(idx) < arg2.length
        idx = idx + 1
        s = s + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        continue 
}

function _fallback() payable {
    require msg.sender
    if not stor14[address(msg.sender)]:
        sub_2e0f1166.length++
        sub_2e0f1166[sub_2e0f1166.length] = msg.sender
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        if not saleSupply:
            revert with 0, 'Sale supply ended !'
        require ext_code.size(this.address)
        call this.address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer not successful'
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor14[address(msg.sender)] = 1
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require msg.value
        require msg.value * RATE / msg.value == RATE
        require msg.value * RATE >= 0
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        saleSupply += -1 * msg.value * RATE
        if not saleSupply:
            revert with 0, 'Sale supply ended !'
        require ext_code.size(this.address)
        call this.address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * RATE
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer not successful'
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor14[address(msg.sender)] = 1
        emit TokenPurchase(msg.value, msg.value * RATE, msg.sender, msg.sender);
}

function buyTokens(address arg1, address arg2) payable {
    require arg1
    if not stor14[address(msg.sender)]:
        sub_2e0f1166.length++
        sub_2e0f1166[sub_2e0f1166.length] = msg.sender
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        if not saleSupply:
            revert with 0, 'Sale supply ended !'
        require ext_code.size(this.address)
        call this.address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer not successful'
        require ext_code.size(this.address)
        call this.address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer not successful'
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor14[address(msg.sender)] = 1
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value
        require msg.value * RATE / msg.value == RATE
        require msg.value * RATE >= 0
        if not msg.value * RATE:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            saleSupply += -1 * msg.value * RATE
            if not saleSupply:
                revert with 0, 'Sale supply ended !'
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), msg.value * RATE
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer not successful'
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), 0
        else:
            require msg.value * RATE
            require 10 * msg.value * RATE / msg.value * RATE == 10
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            saleSupply = saleSupply - (msg.value * RATE) - (10 * msg.value * RATE / 100)
            if not saleSupply:
                revert with 0, 'Sale supply ended !'
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), msg.value * RATE
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer not successful'
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), 10 * msg.value * RATE / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer not successful'
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor14[address(msg.sender)] = 1
        emit TokenPurchase(msg.value, msg.value * RATE, msg.sender, arg1);
    return 1
}



}
