contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address ethFundDepositAddress;
uint8 stor4; offset 160
uint128 stor4; offset 160
address tokenFundDepositAddress;
uint256 fundingStartBlock;
uint256 fundingEndBlock;
uint256 tokenFund;
uint256 tokenExchangeRate;
uint256 tokenCreationCap;
uint256 tokenCreationMin;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function tokenFund() {
    return tokenFund
}

function tokenExchangeRate() {
    return tokenExchangeRate
}

function tokenCreationCap() {
    return tokenCreationCap
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isFinalized() {
    return bool(uint8(stor4.field_160))
}

function fundingEndBlock() {
    return fundingEndBlock
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenFundDeposit() {
    return tokenFundDepositAddress
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function tokenCreationMin() {
    return tokenCreationMin
}

function fundingStartBlock() {
    return fundingStartBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
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

function finalize() {
    require not uint8(stor4.field_160)
    require msg.sender == ethFundDepositAddress
    require totalSupply > tokenCreationMin
    if block.number <= fundingEndBlock:
        require totalSupply == tokenCreationCap
    Mask(96, 0, stor4.field_160) = 1
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
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

function refund() {
    require not uint8(stor4.field_160)
    require block.number > fundingEndBlock
    require totalSupply < tokenCreationMin
    require tokenFundDepositAddress != msg.sender
    require balanceOf[address(msg.sender)] > 0
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] <= totalSupply
    totalSupply -= balanceOf[address(msg.sender)]
    require tokenExchangeRate
    emit LogRefund((balanceOf[address(msg.sender)] / tokenExchangeRate), msg.sender);
    call msg.sender with:
       value balanceOf[address(msg.sender)] / tokenExchangeRate wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require not uint8(stor4.field_160)
    require block.number > fundingStartBlock
    require block.number < fundingEndBlock
    require msg.value > 0
    if not msg.value:
        require totalSupply >= totalSupply
        require tokenCreationCap >= totalSupply
        emit CreateToken(0, msg.sender);
    else:
        require msg.value
        require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
        require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
        require tokenCreationCap >= totalSupply + (msg.value * tokenExchangeRate)
        totalSupply += msg.value * tokenExchangeRate
        balanceOf[address(msg.sender)] += msg.value * tokenExchangeRate
        emit CreateToken((msg.value * tokenExchangeRate), msg.sender);
}



}
