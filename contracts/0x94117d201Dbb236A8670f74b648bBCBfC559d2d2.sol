contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner;
uint128 stor155; offset 168
uint128 stor155; offset 160
address monetaryPolicyAddress;
uint256 totalSupply;
uint256 stor157;
mapping of uint256 stor158;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function owner() {
    return owner
}

function monetaryPolicy() {
    return monetaryPolicyAddress
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function balanceOf(address arg1) {
    require stor157 > 0
    require stor157
    return (stor158[address(arg1)] / stor157)
}

function setMonetaryPolicy(address arg1) {
    require msg.sender == owner
    monetaryPolicyAddress = arg1
    emit LogMonetaryPolicyUpdated(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function initialize(string arg1, string arg2, uint8 arg3) {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    symbol[].field_0 = Array(len=arg2.length, data=arg2[all])
    decimals = arg3
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    if not arg2:
        require 0 <= stor158[address(msg.sender)]
        require stor158[address(arg1)] >= stor158[address(arg1)]
    else:
        require arg2
        require arg2 * stor157 / arg2 == stor157
        require arg2 * stor157 <= stor158[address(msg.sender)]
        stor158[address(msg.sender)] += -1 * arg2 * stor157
        require stor158[address(arg1)] + (arg2 * stor157) >= stor158[address(arg1)]
        stor158[address(arg1)] += arg2 * stor157
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if not arg3:
        require 0 <= stor158[address(arg1)]
        require stor158[address(arg2)] >= stor158[address(arg2)]
    else:
        require arg3
        require arg3 * stor157 / arg3 == stor157
        require arg3 * stor157 <= stor158[address(arg1)]
        stor158[address(arg1)] += -1 * arg3 * stor157
        require stor158[address(arg2)] + (arg3 * stor157) >= stor158[address(arg2)]
        stor158[address(arg2)] += arg3 * stor157
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function rebase(uint256 arg1, int256 arg2) {
    require msg.sender == monetaryPolicyAddress
    if arg2:
        if arg2 >= 0:
            require totalSupply + arg2 >= totalSupply
            totalSupply += arg2
        else:
            require arg2 != 0x8000000000000000000000000000000000000000000000000000000000000000
            if arg2 < 0:
                require -arg2 <= totalSupply
                totalSupply += arg2
            else:
                require arg2 <= totalSupply
                totalSupply -= arg2
        if totalSupply > test266151307():
            totalSupply = test266151307()
        require totalSupply > 0
        require totalSupply
        stor157 = -34007913129639936 / totalSupply
    emit LogRebase(totalSupply, arg1);
    return totalSupply
}

function initialize(address arg1) {
    if uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    bool(name.length) = 0
    name.length.field_1 = 18
    name.length.field_8 = 'Binance Ampleforth' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 5
    symbol.length.field_8 = 'BAMPL' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 9
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    owner = arg1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(96, 0, stor155.field_160) = 0
    Mask(88, 0, stor155.field_168) = 0
    totalSupply = 5 * 10^16
    stor158[address(arg1)] = -34007913129639936
    require totalSupply > 0
    require totalSupply
    stor157 = -34007913129639936 / totalSupply
    emit Transfer(totalSupply, 0, arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}



}
