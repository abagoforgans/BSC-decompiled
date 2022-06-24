contract main {




// =====================  Runtime code  =====================


const name = 'TICOEX Token'

const decimals = 8

const symbol = 'TICO'


uint256 _totalSupply;
uint256 RATE;
uint8 stor2;
address owner; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return _totalSupply
}

function isMinting() {
    return bool(stor2)
}

function _totalSupply() {
    return _totalSupply
}

function RATE() {
    return RATE
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function endCrowdsale() {
    require msg.sender == owner
    stor2 = 0
}

function changeCrowdsaleRate(uint256 arg1) {
    require msg.sender == owner
    RATE = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnTokens(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 > 0
    require arg1 <= _totalSupply
    _totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require bool(stor2) == 1
    require msg.value > 0
    if msg.value:
        require msg.value
        require msg.value * RATE / msg.value == RATE
    require balanceOf[address(msg.sender)] + (msg.value * RATE) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * RATE
    require _totalSupply + (msg.value * RATE) >= _totalSupply
    _totalSupply += msg.value * RATE
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createTokens() payable {
    require bool(stor2) == 1
    require msg.value > 0
    if msg.value:
        require msg.value
        require msg.value * RATE / msg.value == RATE
    require balanceOf[address(msg.sender)] + (msg.value * RATE) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * RATE
    require _totalSupply + (msg.value * RATE) >= _totalSupply
    _totalSupply += msg.value * RATE
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
