contract main {




// =====================  Runtime code  =====================


#
#  - mint(address arg1, uint256 arg2)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor5; offset 8
mapping of uint8 stor6;
address governanceAddress;
mapping of uint8 stor8;
mapping of uint256 stor9;
mapping of uint256 stor10;
uint256 stor11;
uint256 sub_07c81167;

function name() payable {
    return name[0 len name.length]
}

function sub_07c81167(?) payable {
    return sub_07c81167
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function governance() payable {
    return governanceAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0, '!governance'
    stor5 = arg1
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0, '!governance'
    stor6[address(arg1)] = 1
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor5 != msg.sender:
        revert with 0, '!governance'
    stor6[address(arg1)] = 0
}

function create(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    require arg1 <= stor9[address(msg.sender)]
    if stor11 + arg1 < stor11:
        revert with 0, 'SafeMath: addition overflow'
    stor11 += arg1
    if stor9[address(msg.sender)] + arg1 < stor9[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    stor9[address(msg.sender)] += arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    if not msg.sender:
        revert with 0, 32, 36, 0xfe42455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[264 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[262 len 30]
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_d4ff4368(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= stor10[address(arg1)][address(msg.sender)]
    if stor10[address(arg1)][address(msg.sender)] + arg2 < stor10[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    stor10[address(arg1)][address(msg.sender)] += arg2
    require arg2
    require arg2 <= stor9[address(arg1)]
    if stor11 + arg2 < stor11:
        revert with 0, 'SafeMath: addition overflow'
    stor11 += arg2
    if stor9[address(arg1)] + arg2 < stor9[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor9[address(arg1)] += arg2
    emit Transfer(arg2, arg1, 0);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe42455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    if arg2 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(msg.sender)] + (arg2 / 10^6) < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg2 / 10^6
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    if totalSupply + (arg2 / 10^6) < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2 / 10^6
    emit Transfer(arg2, msg.sender, arg1);
    emit Transfer((arg2 / 10^6), 0, msg.sender);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[address(msg.sender)][address(arg1)] += arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe42455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if arg3 < arg3:
        revert with 0, 'SafeMath: addition overflow'
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    if totalSupply + (arg3 / 10^6) < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg3 / 10^6
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if allowance[address(arg1)][address(msg.sender)] + (arg3 / 10^6) < allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[address(arg1)][address(msg.sender)] += arg3 / 10^6
    emit Transfer(arg3, arg1, arg2);
    emit Transfer((arg3 / 10^6), 0, msg.sender);
    return 1
}

function multiTransfer(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _39 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _41 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = msg.sender
        mem[32] = 0
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        require mem[(32 * idx) + 140 len 20]
        _43 = mem[64]
        mem[64] = mem[64] + 64
        mem[_43] = 26
        mem[_43 + 32] = 'SafeMath: division by zero'
        if _41 < _41:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = msg.sender
        mem[32] = 0
        _47 = mem[64]
        mem[64] = mem[64] + 64
        mem[_47] = 30
        mem[_47 + 32] = 'SafeMath: subtraction overflow'
        if _41 > balanceOf[address(msg.sender)]:
            _48 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_48 + idx + 68] = mem[_47 + idx + 32]
                idx = idx + 32
                continue 
            mem[_48 + 68] = mem[_48 + 70 len 30]
            revert with memory
              from mem[64]
               len _48 + -mem[64] + 100
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] -= _41
        _53 = mem[64]
        mem[64] = mem[64] + 64
        mem[_53] = 26
        mem[_53 + 32] = 'SafeMath: division by zero'
        if balanceOf[address(msg.sender)] + (_41 / 10^6) < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += _41 / 10^6
        if balanceOf[address(_39)] + _41 < balanceOf[address(_39)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = address(_39)
        mem[32] = 0
        balanceOf[address(_39)] += _41
        if totalSupply + (_41 / 10^6) < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += _41 / 10^6
        emit Transfer(_41, msg.sender, address(_39));
        mem[mem[64]] = _41 / 10^6
        emit Transfer((_41 / 10^6), 0, msg.sender);
        idx = idx + 1
        continue 
}



}
