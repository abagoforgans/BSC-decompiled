contract main {




// =====================  Runtime code  =====================


const name = 'NEURO FINANCE'

const decimals = 18

const cap = 100000000 * 10^18

const symbol = 'NER'

const basePrice = 150000 * 10^18

const tokenReserve = 40000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint256 tokensSold;
uint256 remainingTokens;
uint8 stor5; offset 160
address owner;

function totalSupply() {
    return totalSupply
}

function tokensSold() {
    return tokensSold
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function remainingTokens() {
    return remainingTokens
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function startIco() {
    require msg.sender == owner
    require uint8(stor5.field_160) <= 2
    require uint8(stor5.field_160) != 2
    uint8(stor5.field_160) = 1
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

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function finalizeIco() {
    require msg.sender == owner
    require uint8(stor5.field_160) <= 2
    require uint8(stor5.field_160) != 2
    uint8(stor5.field_160) = 2
    if remainingTokens > 0:
        require balanceOf[address(stor5.field_0)] + remainingTokens >= balanceOf[address(stor5.field_0)]
        balanceOf[address(stor5.field_0)] += remainingTokens
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require uint8(stor5.field_160) <= 2
    require uint8(stor5.field_160) == 1
    require msg.value > 0
    require remainingTokens > 0
    if not msg.value:
        require tokensSold >= tokensSold
        require tokensSold <= 100000000 * 10^18
        require tokensSold >= tokensSold
        require tokensSold <= 100000000 * 10^18
        remainingTokens = -tokensSold + 100000000 * 10^18
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Transfer(0, this.address, msg.sender);
        require totalSupply >= totalSupply
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require msg.value
        require 150000 * 10^18 * msg.value / msg.value == 150000 * 10^18
        require tokensSold + (150000 * 10^18 * msg.value / 10^18) >= tokensSold
        if tokensSold + (150000 * 10^18 * msg.value / 10^18) <= 100000000 * 10^18:
            require tokensSold + (150000 * 10^18 * msg.value / 10^18) >= tokensSold
            tokensSold += 150000 * 10^18 * msg.value / 10^18
            require tokensSold <= 100000000 * 10^18
            remainingTokens = -tokensSold + 100000000 * 10^18
            require balanceOf[address(msg.sender)] + (150000 * 10^18 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 150000 * 10^18 * msg.value / 10^18
            emit Transfer((150000 * 10^18 * msg.value / 10^18), this.address, msg.sender);
            require totalSupply + (150000 * 10^18 * msg.value / 10^18) >= totalSupply
            totalSupply += 150000 * 10^18 * msg.value / 10^18
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        else:
            require tokensSold <= 100000000 * 10^18
            if not -tokensSold + 100000000 * 10^18 / 150000 * 10^18:
                require 0 <= msg.value
                require 100000000 * 10^18 >= tokensSold
                tokensSold = 100000000 * 10^18
                require tokensSold <= 100000000 * 10^18
                remainingTokens = -tokensSold + 100000000 * 10^18
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Transfer(msg.value, this.address, msg.sender);
                require balanceOf[address(msg.sender)] + -tokensSold + 100000000 * 10^18 >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -tokensSold + 100000000 * 10^18
                emit Transfer((-tokensSold + 100000000 * 10^18), this.address, msg.sender);
                require totalSupply + -tokensSold + 100000000 * 10^18 >= totalSupply
                totalSupply = totalSupply + -tokensSold + 100000000 * 10^18
                call owner with:
                     gas 2300 wei
            else:
                require -tokensSold + 100000000 * 10^18 / 150000 * 10^18
                require 10^18 * -tokensSold + 100000000 * 10^18 / 150000 * 10^18 / -tokensSold + 100000000 * 10^18 / 150000 * 10^18 == 10^18
                require 10^18 * -tokensSold + 100000000 * 10^18 / 150000 * 10^18 <= msg.value
                require 100000000 * 10^18 >= tokensSold
                tokensSold = 100000000 * 10^18
                require tokensSold <= 100000000 * 10^18
                remainingTokens = -tokensSold + 100000000 * 10^18
                if msg.value - (10^18 * -tokensSold + 100000000 * 10^18 / 150000 * 10^18) > 0:
                    call msg.sender with:
                       value msg.value - (10^18 * -tokensSold + 100000000 * 10^18 / 150000 * 10^18) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Transfer((msg.value - (10^18 * -tokensSold + 100000000 * 10^18 / 150000 * 10^18)), this.address, msg.sender);
                require balanceOf[address(msg.sender)] + -tokensSold + 100000000 * 10^18 >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -tokensSold + 100000000 * 10^18
                emit Transfer((-tokensSold + 100000000 * 10^18), this.address, msg.sender);
                require totalSupply + -tokensSold + 100000000 * 10^18 >= totalSupply
                totalSupply = totalSupply + -tokensSold + 100000000 * 10^18
                call owner with:
                   value 10^18 * -tokensSold + 100000000 * 10^18 / 150000 * 10^18 wei
                     gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
