contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of uint8 stor1;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor5;
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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function freeze() {
    require msg.sender == owner
    stor0 = 1
    emit Freezed()
}

function unfreeze() {
    require msg.sender == owner
    stor0 = 0
    emit UnFreezed()
}

function totalSupply() {
    require balanceOf[0] <= stor5
    return (stor5 - balanceOf[0])
}

function lockUser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1[address(arg1)] = 1
    emit LockUser(arg1);
}

function unlockUser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1[address(arg1)] = 0
    emit UnlockUser(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor0
    require not stor1[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor0
    require not stor1[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not stor0
    require not stor1[address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor0
    require not stor1[address(msg.sender)]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    require arg1 <= stor5
    stor5 -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function burnForAllowance(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if not arg1:
        revert with 0, 'burn from the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'insufficient balance'
    if arg3:
        require arg3
        require 2 * arg3 / arg3 == 2
    require 2 * arg3 / 10 <= arg3
    require arg3 - (2 * arg3 / 10) <= stor5
    stor5 = stor5 - arg3 + (2 * arg3 / 10)
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + (2 * arg3 / 10) >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += 2 * arg3 / 10
    emit Transfer((arg3 - (2 * arg3 / 10)), arg1, 0);
    emit Transfer((2 * arg3 / 10), arg1, msg.sender);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require not stor0
    require not stor1[address(msg.sender)]
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
