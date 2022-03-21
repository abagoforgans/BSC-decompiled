contract main {




// =====================  Runtime code  =====================


const name = 'BinanceSwap'

const decimals = 4

const symbol = 'BIN'


address owner;
address newOwner;
uint256 totalSupply;
uint256 icoPrice;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function icoPrice() {
    return icoPrice
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    require msg.sender == newOwner
    owner = newOwner
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function etherWithdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenICOWithdraw() {
    require msg.sender == owner
    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
    require balanceOf[stor0] + balanceOf[address(this.address)] >= balanceOf[stor0]
    balanceOf[stor0] += balanceOf[address(this.address)]
    emit Transfer(balanceOf[address(this.address)], this.address, owner);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6553656e64657220646f6573206e6f7420686176652073756666656e6369656e742062616c616e63,
                    mem[204 len 24]
    if arg1 == this.address:
        if not arg1:
            revert with 0, 'Cannot send to yourself or 0x0'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe546f6b656e20486f6c64657220646f6573206e6f74206861766520656e6f7567682062616c616e63,
                    mem[205 len 23]
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x655472616e73666572206e6f7420617070726f76656420627920746f6b656e20686f6c6465,
                    mem[201 len 27]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
