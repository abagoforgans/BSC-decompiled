contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor5; offset 160
uint128 stor5; offset 160
address stor5;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    # nil
}

function sub_0be1b87e(?) {
    require msg.sender == address(stor5.field_0)
    Mask(96, 0, stor5.field_160) = Mask(96, 0, not bool(uint8(stor5.field_160)))
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_6337ad7a(?) {
    require msg.sender == address(stor5.field_0)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    balanceOf[address(msg.sender)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 0
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor5.field_160):
        require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
