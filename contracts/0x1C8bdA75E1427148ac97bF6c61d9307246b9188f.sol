contract main {




// =====================  Runtime code  =====================


const name = 'SuperKing'

const decimals = 18

const symbol = 'SuperKing'

const sub_a4022bd1(?) = 0xf316271c7fc3908a8bef464e3945ef7a25360a0000000000000000


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 _taxFee;
uint256 stor7;
uint256 _burnFee;
uint256 stor9;
address projectAddress;
address burnAddress;

function totalSupply() {
    return totalSupply
}

function _taxFee() {
    return _taxFee
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

function _burnFee() {
    return _burnFee
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function setTaxFee(uint256 arg1) {
    require msg.sender == owner
    _taxFee = arg1
}

function setBurnFee(uint256 arg1) {
    require msg.sender == owner
    _burnFee = arg1
}

function sub_9df788fc(?) {
    require msg.sender == owner
    stor5[address(arg1)] = 0
}

function setLocked(address arg1) {
    require msg.sender == owner
    stor5[address(arg1)] = 1
}

function includeInFee(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
}

function setProjectAddress(address arg1) {
    require msg.sender == owner
    projectAddress = arg1
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

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require totalSupply + arg2 <= 0xf316271c7fc3908a8bef464e3945ef7a25360a0000000000000000
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
        if _taxFee:
            stor7 = _taxFee
            stor9 = _burnFee
            _taxFee = 0
            _burnFee = 0
        else:
            if _burnFee:
                stor7 = _taxFee
                stor9 = _burnFee
                _taxFee = 0
                _burnFee = 0
    if not arg2:
        if not arg2:
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            require 0 <= balanceOf[address(arg1)] + arg2
            balanceOf[address(arg1)] += arg2
        else:
            require arg2
            require arg2 * _burnFee / arg2 == _burnFee
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            require 0 <= balanceOf[address(arg1)] + arg2
            require arg2 * _burnFee / 100 <= balanceOf[address(arg1)] + arg2
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _burnFee / 100)
            if arg2 * _burnFee / 100 > 0:
                require balanceOf[stor11] + (arg2 * _burnFee / 100) >= balanceOf[stor11]
                balanceOf[stor11] += arg2 * _burnFee / 100
                emit Transfer((arg2 * _burnFee / 100), msg.sender, burnAddress);
    else:
        require arg2
        require arg2 * _taxFee / arg2 == _taxFee
        if not arg2:
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            require arg2 * _taxFee / 100 <= balanceOf[address(arg1)] + arg2
            require 0 <= balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
            if arg2 * _taxFee / 100 > 0:
                require balanceOf[stor10] + (arg2 * _taxFee / 100) >= balanceOf[stor10]
                balanceOf[stor10] += arg2 * _taxFee / 100
                emit Transfer((arg2 * _taxFee / 100), msg.sender, projectAddress);
        else:
            require arg2
            require arg2 * _burnFee / arg2 == _burnFee
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            require arg2 * _taxFee / 100 <= balanceOf[address(arg1)] + arg2
            require arg2 * _burnFee / 100 <= balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * _taxFee / 100) - (arg2 * _burnFee / 100)
            if arg2 * _taxFee / 100 > 0:
                require balanceOf[stor10] + (arg2 * _taxFee / 100) >= balanceOf[stor10]
                balanceOf[stor10] += arg2 * _taxFee / 100
                emit Transfer((arg2 * _taxFee / 100), msg.sender, projectAddress);
            if arg2 * _burnFee / 100 > 0:
                require balanceOf[stor11] + (arg2 * _burnFee / 100) >= balanceOf[stor11]
                balanceOf[stor11] += arg2 * _burnFee / 100
                emit Transfer((arg2 * _burnFee / 100), msg.sender, burnAddress);
    if stor4[address(msg.sender)]:
        _taxFee = stor7
        _burnFee = stor9
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
        if _taxFee:
            stor7 = _taxFee
            stor9 = _burnFee
            _taxFee = 0
            _burnFee = 0
        else:
            if _burnFee:
                stor7 = _taxFee
                stor9 = _burnFee
                _taxFee = 0
                _burnFee = 0
    if not arg3:
        if not arg3:
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            require 0 <= balanceOf[address(arg2)] + arg3
            balanceOf[address(arg2)] += arg3
        else:
            require arg3
            require arg3 * _burnFee / arg3 == _burnFee
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            require 0 <= balanceOf[address(arg2)] + arg3
            require arg3 * _burnFee / 100 <= balanceOf[address(arg2)] + arg3
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _burnFee / 100)
            if arg3 * _burnFee / 100 > 0:
                require balanceOf[stor11] + (arg3 * _burnFee / 100) >= balanceOf[stor11]
                balanceOf[stor11] += arg3 * _burnFee / 100
                emit Transfer((arg3 * _burnFee / 100), arg1, burnAddress);
    else:
        require arg3
        require arg3 * _taxFee / arg3 == _taxFee
        if not arg3:
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            require arg3 * _taxFee / 100 <= balanceOf[address(arg2)] + arg3
            require 0 <= balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
            if arg3 * _taxFee / 100 > 0:
                require balanceOf[stor10] + (arg3 * _taxFee / 100) >= balanceOf[stor10]
                balanceOf[stor10] += arg3 * _taxFee / 100
                emit Transfer((arg3 * _taxFee / 100), arg1, projectAddress);
        else:
            require arg3
            require arg3 * _burnFee / arg3 == _burnFee
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            require arg3 * _taxFee / 100 <= balanceOf[address(arg2)] + arg3
            require arg3 * _burnFee / 100 <= balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * _taxFee / 100) - (arg3 * _burnFee / 100)
            if arg3 * _taxFee / 100 > 0:
                require balanceOf[stor10] + (arg3 * _taxFee / 100) >= balanceOf[stor10]
                balanceOf[stor10] += arg3 * _taxFee / 100
                emit Transfer((arg3 * _taxFee / 100), arg1, projectAddress);
            if arg3 * _burnFee / 100 > 0:
                require balanceOf[stor11] + (arg3 * _burnFee / 100) >= balanceOf[stor11]
                balanceOf[stor11] += arg3 * _burnFee / 100
                emit Transfer((arg3 * _burnFee / 100), arg1, burnAddress);
    if stor4[address(arg1)]:
        _taxFee = stor7
        _burnFee = stor9
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
