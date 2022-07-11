contract main {




// =====================  Runtime code  =====================


const name = 'GuAiling'

const decimals = 5

const symbol = 'GuAiling'

const sub_ee8a2cdf(?) = 1000000000000000000000000 * 10^18


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 sub_141d51f4;
uint256 stor7;
uint256 sub_b3ad6127;
uint256 stor9;
address projectAddress;
address burnAddress;

function sub_141d51f4(?) {
    return sub_141d51f4
}

function totalSupply() {
    return totalSupply
}

function projectAddress() {
    return projectAddress
}

function isLocked(address arg1) {
    return bool(stor5[address(arg1)])
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function burnAddress() {
    return burnAddress
}

function owner() {
    return owner
}

function isExcludeFromFee(address arg1) {
    return bool(stor4[address(arg1)])
}

function sub_b3ad6127(?) {
    return sub_b3ad6127
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_b19d73b7(?) {
    require msg.sender == owner
    sub_141d51f4 = arg1
}

function sub_2390f548(?) {
    require msg.sender == owner
    projectAddress = arg1
}

function sub_8533b34f(?) {
    require msg.sender == owner
    stor5[address(arg1)] = 0
}

function sub_c9fa6c2b(?) {
    require msg.sender == owner
    stor5[address(arg1)] = 1
}

function setBurnFee(uint256 arg1) {
    require msg.sender == owner
    sub_b3ad6127 = arg1
}

function includeInFee(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_1971108a(?) {
    require msg.sender == owner
    require totalSupply + arg2 <= 1000000000000000000000000 * 10^18
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'is 0 address'
    if stor5[address(msg.sender)]:
        revert with 0, 'is locked'
    if stor4[address(msg.sender)]:
        if sub_141d51f4:
            stor7 = sub_141d51f4
            stor9 = sub_b3ad6127
            sub_141d51f4 = 0
            sub_b3ad6127 = 0
        else:
            if sub_b3ad6127:
                stor7 = sub_141d51f4
                stor9 = sub_b3ad6127
                sub_141d51f4 = 0
                sub_b3ad6127 = 0
    if not arg2:
        if not arg2:
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            require 0 <= balanceOf[address(arg1)] + arg2
            balanceOf[address(arg1)] += arg2
        else:
            require arg2
            require arg2 * sub_b3ad6127 / arg2 == sub_b3ad6127
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            require 0 <= balanceOf[address(arg1)] + arg2
            require arg2 * sub_b3ad6127 / 100 <= balanceOf[address(arg1)] + arg2
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_b3ad6127 / 100)
            if arg2 * sub_b3ad6127 / 100 > 0:
                require balanceOf[stor11] + (arg2 * sub_b3ad6127 / 100) >= balanceOf[stor11]
                balanceOf[stor11] += arg2 * sub_b3ad6127 / 100
                emit Transfer((arg2 * sub_b3ad6127 / 100), msg.sender, burnAddress);
    else:
        require arg2
        require arg2 * sub_141d51f4 / arg2 == sub_141d51f4
        if not arg2:
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            require arg2 * sub_141d51f4 / 100 <= balanceOf[address(arg1)] + arg2
            require 0 <= balanceOf[address(arg1)] + arg2 - (arg2 * sub_141d51f4 / 100)
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_141d51f4 / 100)
            if arg2 * sub_141d51f4 / 100 > 0:
                require balanceOf[stor10] + (arg2 * sub_141d51f4 / 100) >= balanceOf[stor10]
                balanceOf[stor10] += arg2 * sub_141d51f4 / 100
                emit Transfer((arg2 * sub_141d51f4 / 100), msg.sender, projectAddress);
        else:
            require arg2
            require arg2 * sub_b3ad6127 / arg2 == sub_b3ad6127
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            require arg2 * sub_141d51f4 / 100 <= balanceOf[address(arg1)] + arg2
            require arg2 * sub_b3ad6127 / 100 <= balanceOf[address(arg1)] + arg2 - (arg2 * sub_141d51f4 / 100)
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sub_141d51f4 / 100) - (arg2 * sub_b3ad6127 / 100)
            if arg2 * sub_141d51f4 / 100 > 0:
                require balanceOf[stor10] + (arg2 * sub_141d51f4 / 100) >= balanceOf[stor10]
                balanceOf[stor10] += arg2 * sub_141d51f4 / 100
                emit Transfer((arg2 * sub_141d51f4 / 100), msg.sender, projectAddress);
            if arg2 * sub_b3ad6127 / 100 > 0:
                require balanceOf[stor11] + (arg2 * sub_b3ad6127 / 100) >= balanceOf[stor11]
                balanceOf[stor11] += arg2 * sub_b3ad6127 / 100
                emit Transfer((arg2 * sub_b3ad6127 / 100), msg.sender, burnAddress);
    if stor4[address(msg.sender)]:
        sub_141d51f4 = stor7
        sub_b3ad6127 = stor9
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if not arg2:
        revert with 0, 'is 0 address'
    if stor5[address(arg1)]:
        revert with 0, 'is locked'
    if stor4[address(arg1)]:
        if sub_141d51f4:
            stor7 = sub_141d51f4
            stor9 = sub_b3ad6127
            sub_141d51f4 = 0
            sub_b3ad6127 = 0
        else:
            if sub_b3ad6127:
                stor7 = sub_141d51f4
                stor9 = sub_b3ad6127
                sub_141d51f4 = 0
                sub_b3ad6127 = 0
    if not arg3:
        if not arg3:
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            require 0 <= balanceOf[address(arg2)] + arg3
            balanceOf[address(arg2)] += arg3
        else:
            require arg3
            require arg3 * sub_b3ad6127 / arg3 == sub_b3ad6127
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            require 0 <= balanceOf[address(arg2)] + arg3
            require arg3 * sub_b3ad6127 / 100 <= balanceOf[address(arg2)] + arg3
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_b3ad6127 / 100)
            if arg3 * sub_b3ad6127 / 100 > 0:
                require balanceOf[stor11] + (arg3 * sub_b3ad6127 / 100) >= balanceOf[stor11]
                balanceOf[stor11] += arg3 * sub_b3ad6127 / 100
                emit Transfer((arg3 * sub_b3ad6127 / 100), arg1, burnAddress);
    else:
        require arg3
        require arg3 * sub_141d51f4 / arg3 == sub_141d51f4
        if not arg3:
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            require arg3 * sub_141d51f4 / 100 <= balanceOf[address(arg2)] + arg3
            require 0 <= balanceOf[address(arg2)] + arg3 - (arg3 * sub_141d51f4 / 100)
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_141d51f4 / 100)
            if arg3 * sub_141d51f4 / 100 > 0:
                require balanceOf[stor10] + (arg3 * sub_141d51f4 / 100) >= balanceOf[stor10]
                balanceOf[stor10] += arg3 * sub_141d51f4 / 100
                emit Transfer((arg3 * sub_141d51f4 / 100), arg1, projectAddress);
        else:
            require arg3
            require arg3 * sub_b3ad6127 / arg3 == sub_b3ad6127
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            require arg3 * sub_141d51f4 / 100 <= balanceOf[address(arg2)] + arg3
            require arg3 * sub_b3ad6127 / 100 <= balanceOf[address(arg2)] + arg3 - (arg3 * sub_141d51f4 / 100)
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sub_141d51f4 / 100) - (arg3 * sub_b3ad6127 / 100)
            if arg3 * sub_141d51f4 / 100 > 0:
                require balanceOf[stor10] + (arg3 * sub_141d51f4 / 100) >= balanceOf[stor10]
                balanceOf[stor10] += arg3 * sub_141d51f4 / 100
                emit Transfer((arg3 * sub_141d51f4 / 100), arg1, projectAddress);
            if arg3 * sub_b3ad6127 / 100 > 0:
                require balanceOf[stor11] + (arg3 * sub_b3ad6127 / 100) >= balanceOf[stor11]
                balanceOf[stor11] += arg3 * sub_b3ad6127 / 100
                emit Transfer((arg3 * sub_b3ad6127 / 100), arg1, burnAddress);
    if stor4[address(arg1)]:
        sub_141d51f4 = stor7
        sub_b3ad6127 = stor9
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
