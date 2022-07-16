contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
address _owner;
uint256 sellFeeRate;
address uniswapV2PairAddress;
uint256 stor9;
address routeAddress;
mapping of uint8 stor11;
uint256 sub_8c244f36;
uint256 sub_61156ae9;
uint256 buyLimit;
mapping of uint8 stor15;
mapping of uint256 sub_80549c4d;

function name() payable {
    return name[0 len name.length].field_0
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function uniswapV2Pair() payable {
    return address(uniswapV2PairAddress)
}

function buyLimit() payable {
    return buyLimit
}

function sellFeeRate() payable {
    return sellFeeRate
}

function sub_61156ae9(?) payable {
    return sub_61156ae9
}

function sub_66b750c7(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function inWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor15[arg1])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_80549c4d(?) payable {
    require calldata.size - 4 >= 32
    return sub_80549c4d[arg1]
}

function sub_8c244f36(?) payable {
    return sub_8c244f36
}

function symbol() payable {
    return symbol[0 len symbol.length].field_0
}

function _owner() payable {
    return _owner
}

function route() payable {
    return routeAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setSellRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'admin: wut?'
    sellFeeRate = arg1
}

function setWhiteList(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if _owner != msg.sender:
        revert with 0, 'admin: wut?'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 15
        stor15[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe45524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0xfe45524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe45524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function initialize(uint256 arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                        mem[210 len 18]
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
    sub_8c244f36 = 500
    buyLimit = 1000 * 10^18
    sellFeeRate = 5
    decimals = 18
    totalSupply = arg1 * 10^decimals
    bool(name.length) = 0
    name.length.field_1 = 1
    name.length.field_8 = 'A' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 1
    symbol.length.field_8 = 'A' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    balanceOf[address(msg.sender)] = totalSupply
    emit Transfer(totalSupply, 0, msg.sender);
    routeAddress = arg4
    require ext_code.size(arg2)
    call arg2.createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
    _owner = arg5
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6f45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[205 len 23]
    if msg.sender == address(uniswapV2PairAddress):
        if not stor15[address(arg1)]:
            if stor11[address(arg1)]:
                if sub_80549c4d[address(arg1)] + arg2 > buyLimit:
                    revert with 0, 'exceed buy limit'
                sub_80549c4d[address(arg1)] += arg2
            else:
                if sub_61156ae9 < sub_8c244f36:
                    sub_61156ae9++
                    stor11[address(arg1)] = 1
    if arg1 != address(uniswapV2PairAddress):
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor15[address(msg.sender)]:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not arg2:
                if balanceOf[0] < balanceOf[0]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, msg.sender, 0);
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                require arg2
                if arg2 * sellFeeRate / arg2 != sellFeeRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if balanceOf[0] + (arg2 * sellFeeRate / 100) < balanceOf[0]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[0] += arg2 * sellFeeRate / 100
                emit Transfer((arg2 * sellFeeRate / 100), msg.sender, 0);
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 - (arg2 * sellFeeRate / 100) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * sellFeeRate / 100)
                emit Transfer((arg2 - (arg2 * sellFeeRate / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6f45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x655472616e7366657220616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[205 len 23]
    if arg1 == address(uniswapV2PairAddress):
        if not stor15[address(arg2)]:
            if stor11[address(arg2)]:
                if sub_80549c4d[address(arg2)] + arg3 > buyLimit:
                    revert with 0, 'exceed buy limit'
                sub_80549c4d[address(arg2)] += arg3
            else:
                if sub_61156ae9 < sub_8c244f36:
                    sub_61156ae9++
                    stor11[address(arg2)] = 1
    if arg2 != address(uniswapV2PairAddress):
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[232 len 24],
                        mem[280 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[360 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0xfe45524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[358 len 30]
    else:
        if stor15[address(arg1)]:
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[232 len 24],
                            mem[280 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[360 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0xfe45524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[358 len 30]
        else:
            if not arg3:
                if balanceOf[0] < balanceOf[0]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Transfer(0, arg1, 0);
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                require arg3
                if arg3 * sellFeeRate / arg3 != sellFeeRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if balanceOf[0] + (arg3 * sellFeeRate / 100) < balanceOf[0]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[0] += arg3 * sellFeeRate / 100
                emit Transfer((arg3 * sellFeeRate / 100), arg1, 0);
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 - (arg3 * sellFeeRate / 100) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * sellFeeRate / 100)
                emit Transfer((arg3 - (arg3 * sellFeeRate / 100)), arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[296 len 24],
                            mem[344 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[424 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0xfe45524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[422 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
