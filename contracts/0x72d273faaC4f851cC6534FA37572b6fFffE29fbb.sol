contract main {




// =====================  Runtime code  =====================


const name = 'rino USD'

const decimals = 18

const symbol = ''


address stor0;
uint8 stor1; offset 160
address stor1;
array of struct stor2;
uint256 stor3;
uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 allowance;

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    if stor3 > stor3 + stor4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x796164646974696f6e206f766572666c6f7720666f7220746f74616c20737570706c,
                    mem[198 len 30]
    return (stor4 + stor3)
}

function deprecate() payable {
    if stor0 != msg.sender:
        if address(stor1.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x644f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572206f722061646d69,
                        mem[205 len 23]
    uint8(stor1.field_160) = 1
    emit Deprecate(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if address(stor1.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x644f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572206f722061646d69,
                        mem[205 len 23]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    stor0 = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor1.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f446570726563617465626c653a20636f6e747261637420697320646570726563617465,
                    mem[200 len 28]
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[msg.sender][address(arg1)] > allowance[msg.sender][address(arg1)] + arg2:
        revert with 0, 'addition overflow'
    if uint8(stor1.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f446570726563617465626c653a20636f6e747261637420697320646570726563617465,
                    mem[200 len 28]
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[201 len 27]
    if uint8(stor1.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f446570726563617465626c653a20636f6e747261637420697320646570726563617465,
                    mem[200 len 28]
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor5[address(arg1)]:
        if not stor6[address(arg1)]:
            return 0
    if stor7[address(arg1)] == stor2.length - 1:
        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
            revert with 0, 'addition overflow for balance'
        return (stor6[address(arg1)] + stor5[address(arg1)])
    if not stor6[address(arg1)]:
        require stor2.length - 1 < stor2.length
        require stor7[address(arg1)] < stor2.length
        require stor2[stor7[address(arg1)]].field_0
        return (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
    require stor7[address(arg1)] < stor2.length
    require stor2.length - 1 < stor2.length
    require stor2[stor7[address(arg1)]].field_0
    require stor7[address(arg1)] + 1 < stor2.length
    require stor2.length - 1 < stor2.length
    require stor2[stor7[address(arg1)]].field_256
    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
        revert with 0, 'addition overflow for balance'
    return ((stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0))
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if address(stor1.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x644f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572206f722061646d69,
                        mem[205 len 23]
    if uint8(stor1.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f446570726563617465626c653a20636f6e747261637420697320646570726563617465,
                    mem[200 len 28]
    if arg1 <= 0:
        revert with 0, 'reward should be > 0'
    if not stor3:
        stor2.length++
        stor2[stor2.length].field_0 = 10^12
        if stor3 + stor4 < stor3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x796164646974696f6e206f766572666c6f7720666f7220746f74616c20737570706c,
                        mem[198 len 30]
        stor3 += stor4
    else:
        require stor2.length - 1 < stor2.length
        require stor3
        if (10^12 * arg1 / stor3) + 10^12 < 10^12 * arg1 / stor3:
            revert with 0, 'addition overflow for percent'
        stor2.length++
        stor2[stor2.length].field_0 = (10^12 * stor2[stor2.length].field_0) + (10^12 * arg1 / stor3 * stor2[stor2.length].field_0) / 10^12
        if stor3 > stor3 + arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x656164646974696f6e206f766572666c6f7720666f7220746f74616c20737570706c79202b207265776172,
                        mem[207 len 21]
        if stor4 < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x796164646974696f6e206f766572666c6f7720666f7220746f74616c20737570706c,
                        mem[198 len 30]
        stor3 = stor4 + arg1 + stor3
    stor4 = 0
    emit Reward(stor2.length, arg1);
    return 1
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        if address(stor1.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x644f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572206f722061646d69,
                        mem[205 len 23]
    if uint8(stor1.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f446570726563617465626c653a20636f6e747261637420697320646570726563617465,
                    mem[200 len 28]
    if arg2 <= 0:
        revert with 0, 'amount should be > 0'
    if not arg1:
        revert with 0, 'deposit to the zero address'
    if stor4 > stor4 + arg2:
        revert with 0, 'addition overflow for deposit'
    stor4 += arg2
    if not stor6[address(arg1)]:
        if stor5[address(arg1)]:
            if stor7[address(arg1)] == stor2.length - 1:
                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                    revert with 0, 'addition overflow for balance'
                stor5[address(arg1)] += stor6[address(arg1)]
            else:
                if not stor6[address(arg1)]:
                    require stor2.length - 1 < stor2.length
                    require stor7[address(arg1)] < stor2.length
                    require stor2[stor7[address(arg1)]].field_0
                    stor5[address(arg1)] = stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0
                else:
                    require stor7[address(arg1)] < stor2.length
                    require stor2.length - 1 < stor2.length
                    require stor2[stor7[address(arg1)]].field_0
                    require stor7[address(arg1)] + 1 < stor2.length
                    require stor2.length - 1 < stor2.length
                    require stor2[stor7[address(arg1)]].field_256
                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                        revert with 0, 'addition overflow for balance'
                    stor5[address(arg1)] = (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
        else:
            if not stor6[address(arg1)]:
                stor5[address(arg1)] = 0
            else:
                if stor7[address(arg1)] == stor2.length - 1:
                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                        revert with 0, 'addition overflow for balance'
                    stor5[address(arg1)] += stor6[address(arg1)]
                else:
                    if not stor6[address(arg1)]:
                        require stor2.length - 1 < stor2.length
                        require stor7[address(arg1)] < stor2.length
                        require stor2[stor7[address(arg1)]].field_0
                        stor5[address(arg1)] = stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0
                    else:
                        require stor7[address(arg1)] < stor2.length
                        require stor2.length - 1 < stor2.length
                        require stor2[stor7[address(arg1)]].field_0
                        require stor7[address(arg1)] + 1 < stor2.length
                        require stor2.length - 1 < stor2.length
                        require stor2[stor7[address(arg1)]].field_256
                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                            revert with 0, 'addition overflow for balance'
                        stor5[address(arg1)] = (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
        stor7[address(arg1)] = stor2.length - 1
        stor6[address(arg1)] = arg2
    else:
        if stor7[address(arg1)] == stor2.length - 1:
            if stor6[address(arg1)] + arg2 < stor6[address(arg1)]:
                revert with 0, 'addition overflow for deposit'
            stor6[address(arg1)] += arg2
        else:
            if stor5[address(arg1)]:
                if stor7[address(arg1)] == stor2.length - 1:
                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                        revert with 0, 'addition overflow for balance'
                    stor5[address(arg1)] += stor6[address(arg1)]
                else:
                    if not stor6[address(arg1)]:
                        require stor2.length - 1 < stor2.length
                        require stor7[address(arg1)] < stor2.length
                        require stor2[stor7[address(arg1)]].field_0
                        stor5[address(arg1)] = stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0
                    else:
                        require stor7[address(arg1)] < stor2.length
                        require stor2.length - 1 < stor2.length
                        require stor2[stor7[address(arg1)]].field_0
                        require stor7[address(arg1)] + 1 < stor2.length
                        require stor2.length - 1 < stor2.length
                        require stor2[stor7[address(arg1)]].field_256
                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                            revert with 0, 'addition overflow for balance'
                        stor5[address(arg1)] = (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
            else:
                if not stor6[address(arg1)]:
                    stor5[address(arg1)] = 0
                else:
                    if stor7[address(arg1)] == stor2.length - 1:
                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                            revert with 0, 'addition overflow for balance'
                        stor5[address(arg1)] += stor6[address(arg1)]
                    else:
                        if not stor6[address(arg1)]:
                            require stor2.length - 1 < stor2.length
                            require stor7[address(arg1)] < stor2.length
                            require stor2[stor7[address(arg1)]].field_0
                            stor5[address(arg1)] = stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0
                        else:
                            require stor7[address(arg1)] < stor2.length
                            require stor2.length - 1 < stor2.length
                            require stor2[stor7[address(arg1)]].field_0
                            require stor7[address(arg1)] + 1 < stor2.length
                            require stor2.length - 1 < stor2.length
                            require stor2[stor7[address(arg1)]].field_256
                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                revert with 0, 'addition overflow for balance'
                            stor5[address(arg1)] = (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
            stor7[address(arg1)] = stor2.length - 1
            stor6[address(arg1)] = arg2
    emit 0x74ddf252: arg2, 0, arg1
    return 1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if address(stor1.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x644f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572206f722061646d69,
                        mem[205 len 23]
    if uint8(stor1.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f446570726563617465626c653a20636f6e747261637420697320646570726563617465,
                    mem[200 len 28]
    if stor7[address(arg1)] == stor2.length - 1:
        if stor5[address(arg1)] > stor3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x657375627472616374696f6e206f766572666c6f7720666f7220746f74616c20737570706c,
                        mem[201 len 27]
        stor3 -= stor5[address(arg1)]
        if stor6[address(arg1)] > stor4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x797375627472616374696f6e206f766572666c6f7720666f72206c6971756964206465706f7369,
                        mem[203 len 25]
        stor4 -= stor6[address(arg1)]
        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x736164646974696f6e206f766572666c6f7720666f7220746f74616c2062616c616e6365202b206f6c644465706f7369,
                        mem[212 len 16]
        emit 0x74ddf252: (stor6[address(arg1)] + stor5[address(arg1)]), arg1, 0
    else:
        if stor5[address(arg1)]:
            if stor7[address(arg1)] == stor2.length - 1:
                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                    revert with 0, 'addition overflow for balance'
                if stor6[address(arg1)] + stor5[address(arg1)] > stor3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x657375627472616374696f6e206f766572666c6f7720666f7220746f74616c20737570706c,
                                mem[201 len 27]
                stor3 = stor3 - stor6[address(arg1)] - stor5[address(arg1)]
                emit 0x74ddf252: (stor6[address(arg1)] + stor5[address(arg1)]), arg1, 0
            else:
                if not stor6[address(arg1)]:
                    require stor2.length - 1 < stor2.length
                    require stor7[address(arg1)] < stor2.length
                    require stor2[stor7[address(arg1)]].field_0
                    if stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0 > stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x657375627472616374696f6e206f766572666c6f7720666f7220746f74616c20737570706c,
                                    mem[201 len 27]
                    stor3 -= stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0
                    emit 0x74ddf252: (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0), arg1, 0
                else:
                    require stor7[address(arg1)] < stor2.length
                    require stor2.length - 1 < stor2.length
                    require stor2[stor7[address(arg1)]].field_0
                    require stor7[address(arg1)] + 1 < stor2.length
                    require stor2.length - 1 < stor2.length
                    require stor2[stor7[address(arg1)]].field_256
                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                        revert with 0, 'addition overflow for balance'
                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) > stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x657375627472616374696f6e206f766572666c6f7720666f7220746f74616c20737570706c,
                                    mem[201 len 27]
                    stor3 = stor3 - (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) - (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                    emit 0x74ddf252: ((stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)), arg1, 0
        else:
            if not stor6[address(arg1)]:
                if 0 > stor3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x657375627472616374696f6e206f766572666c6f7720666f7220746f74616c20737570706c,
                                mem[201 len 27]
                emit 0x74ddf252: 0, arg1, 0
            else:
                if stor7[address(arg1)] == stor2.length - 1:
                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                        revert with 0, 'addition overflow for balance'
                    if stor6[address(arg1)] + stor5[address(arg1)] > stor3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x657375627472616374696f6e206f766572666c6f7720666f7220746f74616c20737570706c,
                                    mem[201 len 27]
                    stor3 = stor3 - stor6[address(arg1)] - stor5[address(arg1)]
                    emit 0x74ddf252: (stor6[address(arg1)] + stor5[address(arg1)]), arg1, 0
                else:
                    if not stor6[address(arg1)]:
                        require stor2.length - 1 < stor2.length
                        require stor7[address(arg1)] < stor2.length
                        require stor2[stor7[address(arg1)]].field_0
                        if stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0 > stor3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x657375627472616374696f6e206f766572666c6f7720666f7220746f74616c20737570706c,
                                        mem[201 len 27]
                        stor3 -= stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0
                        emit 0x74ddf252: (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0), arg1, 0
                    else:
                        require stor7[address(arg1)] < stor2.length
                        require stor2.length - 1 < stor2.length
                        require stor2[stor7[address(arg1)]].field_0
                        require stor7[address(arg1)] + 1 < stor2.length
                        require stor2.length - 1 < stor2.length
                        require stor2[stor7[address(arg1)]].field_256
                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                            revert with 0, 'addition overflow for balance'
                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) > stor3:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x657375627472616374696f6e206f766572666c6f7720666f7220746f74616c20737570706c,
                                        mem[201 len 27]
                        stor3 = stor3 - (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) - (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                        emit 0x74ddf252: ((stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)), arg1, 0
    stor5[address(arg1)] = 0
    stor6[address(arg1)] = 0
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor1.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f446570726563617465626c653a20636f6e747261637420697320646570726563617465,
                    mem[200 len 28]
    if arg3 <= 0:
        revert with 0, 'amount should be > 0'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xef45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not stor6[address(arg1)]:
        if stor5[address(arg1)]:
            if stor7[address(arg1)] == stor2.length - 1:
                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                    revert with 0, 'addition overflow for balance'
                if arg3 > stor6[address(arg1)] + stor5[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[202 len 26]
                stor5[address(arg1)] = stor6[address(arg1)] + stor5[address(arg1)] - arg3
            else:
                if not stor6[address(arg1)]:
                    require stor2.length - 1 < stor2.length
                    require stor7[address(arg1)] < stor2.length
                    require stor2[stor7[address(arg1)]].field_0
                    if arg3 > stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[202 len 26]
                    stor5[address(arg1)] = (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) - arg3
                else:
                    require stor7[address(arg1)] < stor2.length
                    require stor2.length - 1 < stor2.length
                    require stor2[stor7[address(arg1)]].field_0
                    require stor7[address(arg1)] + 1 < stor2.length
                    require stor2.length - 1 < stor2.length
                    require stor2[stor7[address(arg1)]].field_256
                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                        revert with 0, 'addition overflow for balance'
                    if arg3 > (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[202 len 26]
                    stor5[address(arg1)] = (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) - arg3
        else:
            if not stor6[address(arg1)]:
                if arg3 > 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[202 len 26]
                stor5[address(arg1)] = -arg3
            else:
                if stor7[address(arg1)] == stor2.length - 1:
                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                        revert with 0, 'addition overflow for balance'
                    if arg3 > stor6[address(arg1)] + stor5[address(arg1)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[202 len 26]
                    stor5[address(arg1)] = stor6[address(arg1)] + stor5[address(arg1)] - arg3
                else:
                    if not stor6[address(arg1)]:
                        require stor2.length - 1 < stor2.length
                        require stor7[address(arg1)] < stor2.length
                        require stor2[stor7[address(arg1)]].field_0
                        if arg3 > stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[202 len 26]
                        stor5[address(arg1)] = (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) - arg3
                    else:
                        require stor7[address(arg1)] < stor2.length
                        require stor2.length - 1 < stor2.length
                        require stor2[stor7[address(arg1)]].field_0
                        require stor7[address(arg1)] + 1 < stor2.length
                        require stor2.length - 1 < stor2.length
                        require stor2[stor7[address(arg1)]].field_256
                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                            revert with 0, 'addition overflow for balance'
                        if arg3 > (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[202 len 26]
                        stor5[address(arg1)] = (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) - arg3
        stor6[address(arg1)] = 0
        stor7[address(arg1)] = stor2.length - 1
        if not stor6[address(arg2)]:
            if stor5[address(arg2)]:
                if stor7[address(arg2)] == stor2.length - 1:
                    if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                        revert with 0, 'addition overflow for balance'
                    if arg3 < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                    mem[210 len 18]
                    stor5[address(arg2)] = arg3 + stor6[address(arg2)] + stor5[address(arg2)]
                else:
                    if not stor6[address(arg2)]:
                        require stor2.length - 1 < stor2.length
                        require stor7[address(arg2)] < stor2.length
                        require stor2[stor7[address(arg2)]].field_0
                        if arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                        mem[210 len 18]
                        stor5[address(arg2)] = arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0)
                    else:
                        require stor7[address(arg2)] < stor2.length
                        require stor2.length - 1 < stor2.length
                        require stor2[stor7[address(arg2)]].field_0
                        require stor7[address(arg2)] + 1 < stor2.length
                        require stor2.length - 1 < stor2.length
                        require stor2[stor7[address(arg2)]].field_256
                        if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                            revert with 0, 'addition overflow for balance'
                        if arg3 < 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                        mem[210 len 18]
                        stor5[address(arg2)] = arg3 + (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
            else:
                if not stor6[address(arg2)]:
                    if arg3 < 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                    mem[210 len 18]
                    stor5[address(arg2)] = arg3
                else:
                    if stor7[address(arg2)] == stor2.length - 1:
                        if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                            revert with 0, 'addition overflow for balance'
                        if arg3 < 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                        mem[210 len 18]
                        stor5[address(arg2)] = arg3 + stor6[address(arg2)] + stor5[address(arg2)]
                    else:
                        if not stor6[address(arg2)]:
                            require stor2.length - 1 < stor2.length
                            require stor7[address(arg2)] < stor2.length
                            require stor2[stor7[address(arg2)]].field_0
                            if arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                            mem[210 len 18]
                            stor5[address(arg2)] = arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0)
                        else:
                            require stor7[address(arg2)] < stor2.length
                            require stor2.length - 1 < stor2.length
                            require stor2[stor7[address(arg2)]].field_0
                            require stor7[address(arg2)] + 1 < stor2.length
                            require stor2.length - 1 < stor2.length
                            require stor2[stor7[address(arg2)]].field_256
                            if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                revert with 0, 'addition overflow for balance'
                            if arg3 < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                            mem[210 len 18]
                            stor5[address(arg2)] = arg3 + (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
            stor7[address(arg2)] = stor2.length - 1
            stor6[address(arg2)] = 0
        else:
            if stor7[address(arg2)] == stor2.length - 1:
                stor5[address(arg2)] += arg3
            else:
                if stor5[address(arg2)]:
                    if stor7[address(arg2)] == stor2.length - 1:
                        if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                            revert with 0, 'addition overflow for balance'
                        if arg3 < 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                        mem[210 len 18]
                        stor5[address(arg2)] = arg3 + stor6[address(arg2)] + stor5[address(arg2)]
                    else:
                        if not stor6[address(arg2)]:
                            require stor2.length - 1 < stor2.length
                            require stor7[address(arg2)] < stor2.length
                            require stor2[stor7[address(arg2)]].field_0
                            if arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                            mem[210 len 18]
                            stor5[address(arg2)] = arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0)
                        else:
                            require stor7[address(arg2)] < stor2.length
                            require stor2.length - 1 < stor2.length
                            require stor2[stor7[address(arg2)]].field_0
                            require stor7[address(arg2)] + 1 < stor2.length
                            require stor2.length - 1 < stor2.length
                            require stor2[stor7[address(arg2)]].field_256
                            if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                revert with 0, 'addition overflow for balance'
                            if arg3 < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                            mem[210 len 18]
                            stor5[address(arg2)] = arg3 + (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
                else:
                    if not stor6[address(arg2)]:
                        if arg3 < 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                        mem[210 len 18]
                        stor5[address(arg2)] = arg3
                    else:
                        if stor7[address(arg2)] == stor2.length - 1:
                            if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                                revert with 0, 'addition overflow for balance'
                            if arg3 < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                            mem[210 len 18]
                            stor5[address(arg2)] = arg3 + stor6[address(arg2)] + stor5[address(arg2)]
                        else:
                            if not stor6[address(arg2)]:
                                require stor2.length - 1 < stor2.length
                                require stor7[address(arg2)] < stor2.length
                                require stor2[stor7[address(arg2)]].field_0
                                if arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                mem[210 len 18]
                                stor5[address(arg2)] = arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0)
                            else:
                                require stor7[address(arg2)] < stor2.length
                                require stor2.length - 1 < stor2.length
                                require stor2[stor7[address(arg2)]].field_0
                                require stor7[address(arg2)] + 1 < stor2.length
                                require stor2.length - 1 < stor2.length
                                require stor2[stor7[address(arg2)]].field_256
                                if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                    revert with 0, 'addition overflow for balance'
                                if arg3 < 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                mem[210 len 18]
                                stor5[address(arg2)] = arg3 + (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
                stor7[address(arg2)] = stor2.length - 1
                stor6[address(arg2)] = 0
    else:
        if stor7[address(arg1)] == stor2.length - 1:
            if arg3 <= stor6[address(arg1)]:
                stor6[address(arg1)] -= arg3
                if not stor6[address(arg2)]:
                    if stor5[address(arg2)]:
                        if stor7[address(arg2)] == stor2.length - 1:
                            if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                                revert with 0, 'addition overflow for balance'
                            stor5[address(arg2)] += stor6[address(arg2)]
                        else:
                            if not stor6[address(arg2)]:
                                require stor2.length - 1 < stor2.length
                                require stor7[address(arg2)] < stor2.length
                                require stor2[stor7[address(arg2)]].field_0
                                if stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0 < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                mem[210 len 18]
                                stor5[address(arg2)] = stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0
                            else:
                                require stor7[address(arg2)] < stor2.length
                                require stor2.length - 1 < stor2.length
                                require stor2[stor7[address(arg2)]].field_0
                                require stor7[address(arg2)] + 1 < stor2.length
                                require stor2.length - 1 < stor2.length
                                require stor2[stor7[address(arg2)]].field_256
                                if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                    revert with 0, 'addition overflow for balance'
                                stor5[address(arg2)] = (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
                    else:
                        if not stor6[address(arg2)]:
                            stor5[address(arg2)] = 0
                        else:
                            if stor7[address(arg2)] == stor2.length - 1:
                                if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                                    revert with 0, 'addition overflow for balance'
                                stor5[address(arg2)] += stor6[address(arg2)]
                            else:
                                if not stor6[address(arg2)]:
                                    require stor2.length - 1 < stor2.length
                                    require stor7[address(arg2)] < stor2.length
                                    require stor2[stor7[address(arg2)]].field_0
                                    if stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0 < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                    mem[210 len 18]
                                    stor5[address(arg2)] = stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0
                                else:
                                    require stor7[address(arg2)] < stor2.length
                                    require stor2.length - 1 < stor2.length
                                    require stor2[stor7[address(arg2)]].field_0
                                    require stor7[address(arg2)] + 1 < stor2.length
                                    require stor2.length - 1 < stor2.length
                                    require stor2[stor7[address(arg2)]].field_256
                                    if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                        revert with 0, 'addition overflow for balance'
                                    stor5[address(arg2)] = (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
                    stor7[address(arg2)] = stor2.length - 1
                    stor6[address(arg2)] = arg3
                else:
                    if stor7[address(arg2)] == stor2.length - 1:
                        stor6[address(arg2)] += arg3
                    else:
                        if stor5[address(arg2)]:
                            if stor7[address(arg2)] == stor2.length - 1:
                                if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                                    revert with 0, 'addition overflow for balance'
                                stor5[address(arg2)] += stor6[address(arg2)]
                            else:
                                if not stor6[address(arg2)]:
                                    require stor2.length - 1 < stor2.length
                                    require stor7[address(arg2)] < stor2.length
                                    require stor2[stor7[address(arg2)]].field_0
                                    if stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0 < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                    mem[210 len 18]
                                    stor5[address(arg2)] = stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0
                                else:
                                    require stor7[address(arg2)] < stor2.length
                                    require stor2.length - 1 < stor2.length
                                    require stor2[stor7[address(arg2)]].field_0
                                    require stor7[address(arg2)] + 1 < stor2.length
                                    require stor2.length - 1 < stor2.length
                                    require stor2[stor7[address(arg2)]].field_256
                                    if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                        revert with 0, 'addition overflow for balance'
                                    stor5[address(arg2)] = (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
                        else:
                            if not stor6[address(arg2)]:
                                stor5[address(arg2)] = 0
                            else:
                                if stor7[address(arg2)] == stor2.length - 1:
                                    if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                                        revert with 0, 'addition overflow for balance'
                                    stor5[address(arg2)] += stor6[address(arg2)]
                                else:
                                    if not stor6[address(arg2)]:
                                        require stor2.length - 1 < stor2.length
                                        require stor7[address(arg2)] < stor2.length
                                        require stor2[stor7[address(arg2)]].field_0
                                        if stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0 < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                        mem[210 len 18]
                                        stor5[address(arg2)] = stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0
                                    else:
                                        require stor7[address(arg2)] < stor2.length
                                        require stor2.length - 1 < stor2.length
                                        require stor2[stor7[address(arg2)]].field_0
                                        require stor7[address(arg2)] + 1 < stor2.length
                                        require stor2.length - 1 < stor2.length
                                        require stor2[stor7[address(arg2)]].field_256
                                        if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                            revert with 0, 'addition overflow for balance'
                                        stor5[address(arg2)] = (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
                        stor7[address(arg2)] = stor2.length - 1
                        stor6[address(arg2)] = arg3
            else:
                if stor5[address(arg1)] < arg3 - stor6[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[202 len 26]
                stor5[address(arg1)] = stor5[address(arg1)] - arg3 + stor6[address(arg1)]
                stor6[address(arg1)] = 0
                if not stor6[address(arg2)]:
                    if stor5[address(arg2)]:
                        if stor7[address(arg2)] == stor2.length - 1:
                            if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                                revert with 0, 'addition overflow for balance'
                            if arg3 - stor6[address(arg1)] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                            mem[210 len 18]
                            stor5[address(arg2)] = arg3 - stor6[address(arg1)] + stor6[address(arg2)] + stor5[address(arg2)]
                        else:
                            if not stor6[address(arg2)]:
                                require stor2.length - 1 < stor2.length
                                require stor7[address(arg2)] < stor2.length
                                require stor2[stor7[address(arg2)]].field_0
                                if arg3 - stor6[address(arg1)] + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                mem[210 len 18]
                                stor5[address(arg2)] = arg3 - stor6[address(arg1)] + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0)
                            else:
                                require stor7[address(arg2)] < stor2.length
                                require stor2.length - 1 < stor2.length
                                require stor2[stor7[address(arg2)]].field_0
                                require stor7[address(arg2)] + 1 < stor2.length
                                require stor2.length - 1 < stor2.length
                                require stor2[stor7[address(arg2)]].field_256
                                if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                    revert with 0, 'addition overflow for balance'
                                if arg3 - stor6[address(arg1)] < 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                mem[210 len 18]
                                stor5[address(arg2)] = arg3 - stor6[address(arg1)] + (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
                    else:
                        if not stor6[address(arg2)]:
                            if arg3 - stor6[address(arg1)] < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                            mem[210 len 18]
                            stor5[address(arg2)] = arg3 - stor6[address(arg1)]
                        else:
                            if stor7[address(arg2)] == stor2.length - 1:
                                if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                                    revert with 0, 'addition overflow for balance'
                                if arg3 - stor6[address(arg1)] < 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                mem[210 len 18]
                                stor5[address(arg2)] = arg3 - stor6[address(arg1)] + stor6[address(arg2)] + stor5[address(arg2)]
                            else:
                                if not stor6[address(arg2)]:
                                    require stor2.length - 1 < stor2.length
                                    require stor7[address(arg2)] < stor2.length
                                    require stor2[stor7[address(arg2)]].field_0
                                    if arg3 - stor6[address(arg1)] + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                    mem[210 len 18]
                                    stor5[address(arg2)] = arg3 - stor6[address(arg1)] + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0)
                                else:
                                    require stor7[address(arg2)] < stor2.length
                                    require stor2.length - 1 < stor2.length
                                    require stor2[stor7[address(arg2)]].field_0
                                    require stor7[address(arg2)] + 1 < stor2.length
                                    require stor2.length - 1 < stor2.length
                                    require stor2[stor7[address(arg2)]].field_256
                                    if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                        revert with 0, 'addition overflow for balance'
                                    if arg3 - stor6[address(arg1)] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                    mem[210 len 18]
                                    stor5[address(arg2)] = arg3 - stor6[address(arg1)] + (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
                    stor7[address(arg2)] = stor2.length - 1
                    stor6[address(arg2)] = stor6[address(arg1)]
                else:
                    if stor7[address(arg2)] == stor2.length - 1:
                        stor5[address(arg2)] = arg3 - stor6[address(arg1)] + stor5[address(arg2)]
                        stor6[address(arg2)] += stor6[address(arg1)]
                    else:
                        if stor5[address(arg2)]:
                            if stor7[address(arg2)] == stor2.length - 1:
                                if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                                    revert with 0, 'addition overflow for balance'
                                if arg3 - stor6[address(arg1)] < 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                mem[210 len 18]
                                stor5[address(arg2)] = arg3 - stor6[address(arg1)] + stor6[address(arg2)] + stor5[address(arg2)]
                            else:
                                if not stor6[address(arg2)]:
                                    require stor2.length - 1 < stor2.length
                                    require stor7[address(arg2)] < stor2.length
                                    require stor2[stor7[address(arg2)]].field_0
                                    if arg3 - stor6[address(arg1)] + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                    mem[210 len 18]
                                    stor5[address(arg2)] = arg3 - stor6[address(arg1)] + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0)
                                else:
                                    require stor7[address(arg2)] < stor2.length
                                    require stor2.length - 1 < stor2.length
                                    require stor2[stor7[address(arg2)]].field_0
                                    require stor7[address(arg2)] + 1 < stor2.length
                                    require stor2.length - 1 < stor2.length
                                    require stor2[stor7[address(arg2)]].field_256
                                    if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                        revert with 0, 'addition overflow for balance'
                                    if arg3 - stor6[address(arg1)] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                    mem[210 len 18]
                                    stor5[address(arg2)] = arg3 - stor6[address(arg1)] + (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
                        else:
                            if not stor6[address(arg2)]:
                                if arg3 - stor6[address(arg1)] < 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                mem[210 len 18]
                                stor5[address(arg2)] = arg3 - stor6[address(arg1)]
                            else:
                                if stor7[address(arg2)] == stor2.length - 1:
                                    if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                                        revert with 0, 'addition overflow for balance'
                                    if arg3 - stor6[address(arg1)] < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                    mem[210 len 18]
                                    stor5[address(arg2)] = arg3 - stor6[address(arg1)] + stor6[address(arg2)] + stor5[address(arg2)]
                                else:
                                    if not stor6[address(arg2)]:
                                        require stor2.length - 1 < stor2.length
                                        require stor7[address(arg2)] < stor2.length
                                        require stor2[stor7[address(arg2)]].field_0
                                        if arg3 - stor6[address(arg1)] + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                        mem[210 len 18]
                                        stor5[address(arg2)] = arg3 - stor6[address(arg1)] + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0)
                                    else:
                                        require stor7[address(arg2)] < stor2.length
                                        require stor2.length - 1 < stor2.length
                                        require stor2[stor7[address(arg2)]].field_0
                                        require stor7[address(arg2)] + 1 < stor2.length
                                        require stor2.length - 1 < stor2.length
                                        require stor2[stor7[address(arg2)]].field_256
                                        if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                            revert with 0, 'addition overflow for balance'
                                        if arg3 - stor6[address(arg1)] < 0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                        mem[210 len 18]
                                        stor5[address(arg2)] = arg3 - stor6[address(arg1)] + (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
                        stor7[address(arg2)] = stor2.length - 1
                        stor6[address(arg2)] = stor6[address(arg1)]
        else:
            if stor5[address(arg1)]:
                if stor7[address(arg1)] == stor2.length - 1:
                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                        revert with 0, 'addition overflow for balance'
                    if arg3 > stor6[address(arg1)] + stor5[address(arg1)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[202 len 26]
                    stor5[address(arg1)] = stor6[address(arg1)] + stor5[address(arg1)] - arg3
                else:
                    if not stor6[address(arg1)]:
                        require stor2.length - 1 < stor2.length
                        require stor7[address(arg1)] < stor2.length
                        require stor2[stor7[address(arg1)]].field_0
                        if arg3 > stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[202 len 26]
                        stor5[address(arg1)] = (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) - arg3
                    else:
                        require stor7[address(arg1)] < stor2.length
                        require stor2.length - 1 < stor2.length
                        require stor2[stor7[address(arg1)]].field_0
                        require stor7[address(arg1)] + 1 < stor2.length
                        require stor2.length - 1 < stor2.length
                        require stor2[stor7[address(arg1)]].field_256
                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                            revert with 0, 'addition overflow for balance'
                        if arg3 > (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[202 len 26]
                        stor5[address(arg1)] = (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) - arg3
            else:
                if not stor6[address(arg1)]:
                    if arg3 > 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[202 len 26]
                    stor5[address(arg1)] = -arg3
                else:
                    if stor7[address(arg1)] == stor2.length - 1:
                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                            revert with 0, 'addition overflow for balance'
                        if arg3 > stor6[address(arg1)] + stor5[address(arg1)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[202 len 26]
                        stor5[address(arg1)] = stor6[address(arg1)] + stor5[address(arg1)] - arg3
                    else:
                        if not stor6[address(arg1)]:
                            require stor2.length - 1 < stor2.length
                            require stor7[address(arg1)] < stor2.length
                            require stor2[stor7[address(arg1)]].field_0
                            if arg3 > stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[202 len 26]
                            stor5[address(arg1)] = (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) - arg3
                        else:
                            require stor7[address(arg1)] < stor2.length
                            require stor2.length - 1 < stor2.length
                            require stor2[stor7[address(arg1)]].field_0
                            require stor7[address(arg1)] + 1 < stor2.length
                            require stor2.length - 1 < stor2.length
                            require stor2[stor7[address(arg1)]].field_256
                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                revert with 0, 'addition overflow for balance'
                            if arg3 > (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[202 len 26]
                            stor5[address(arg1)] = (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) - arg3
            stor6[address(arg1)] = 0
            stor7[address(arg1)] = stor2.length - 1
            if not stor6[address(arg2)]:
                if stor5[address(arg2)]:
                    if stor7[address(arg2)] == stor2.length - 1:
                        if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                            revert with 0, 'addition overflow for balance'
                        if arg3 < 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                        mem[210 len 18]
                        stor5[address(arg2)] = arg3 + stor6[address(arg2)] + stor5[address(arg2)]
                    else:
                        if not stor6[address(arg2)]:
                            require stor2.length - 1 < stor2.length
                            require stor7[address(arg2)] < stor2.length
                            require stor2[stor7[address(arg2)]].field_0
                            if arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                            mem[210 len 18]
                            stor5[address(arg2)] = arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0)
                        else:
                            require stor7[address(arg2)] < stor2.length
                            require stor2.length - 1 < stor2.length
                            require stor2[stor7[address(arg2)]].field_0
                            require stor7[address(arg2)] + 1 < stor2.length
                            require stor2.length - 1 < stor2.length
                            require stor2[stor7[address(arg2)]].field_256
                            if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                revert with 0, 'addition overflow for balance'
                            if arg3 < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                            mem[210 len 18]
                            stor5[address(arg2)] = arg3 + (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
                else:
                    if not stor6[address(arg2)]:
                        if arg3 < 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                        mem[210 len 18]
                        stor5[address(arg2)] = arg3
                    else:
                        if stor7[address(arg2)] == stor2.length - 1:
                            if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                                revert with 0, 'addition overflow for balance'
                            if arg3 < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                            mem[210 len 18]
                            stor5[address(arg2)] = arg3 + stor6[address(arg2)] + stor5[address(arg2)]
                        else:
                            if not stor6[address(arg2)]:
                                require stor2.length - 1 < stor2.length
                                require stor7[address(arg2)] < stor2.length
                                require stor2[stor7[address(arg2)]].field_0
                                if arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                mem[210 len 18]
                                stor5[address(arg2)] = arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0)
                            else:
                                require stor7[address(arg2)] < stor2.length
                                require stor2.length - 1 < stor2.length
                                require stor2[stor7[address(arg2)]].field_0
                                require stor7[address(arg2)] + 1 < stor2.length
                                require stor2.length - 1 < stor2.length
                                require stor2[stor7[address(arg2)]].field_256
                                if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                    revert with 0, 'addition overflow for balance'
                                if arg3 < 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                mem[210 len 18]
                                stor5[address(arg2)] = arg3 + (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
                stor7[address(arg2)] = stor2.length - 1
                stor6[address(arg2)] = 0
            else:
                if stor7[address(arg2)] == stor2.length - 1:
                    stor5[address(arg2)] += arg3
                else:
                    if stor5[address(arg2)]:
                        if stor7[address(arg2)] == stor2.length - 1:
                            if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                                revert with 0, 'addition overflow for balance'
                            if arg3 < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                            mem[210 len 18]
                            stor5[address(arg2)] = arg3 + stor6[address(arg2)] + stor5[address(arg2)]
                        else:
                            if not stor6[address(arg2)]:
                                require stor2.length - 1 < stor2.length
                                require stor7[address(arg2)] < stor2.length
                                require stor2[stor7[address(arg2)]].field_0
                                if arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                mem[210 len 18]
                                stor5[address(arg2)] = arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0)
                            else:
                                require stor7[address(arg2)] < stor2.length
                                require stor2.length - 1 < stor2.length
                                require stor2[stor7[address(arg2)]].field_0
                                require stor7[address(arg2)] + 1 < stor2.length
                                require stor2.length - 1 < stor2.length
                                require stor2[stor7[address(arg2)]].field_256
                                if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                    revert with 0, 'addition overflow for balance'
                                if arg3 < 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                mem[210 len 18]
                                stor5[address(arg2)] = arg3 + (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
                    else:
                        if not stor6[address(arg2)]:
                            if arg3 < 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                            mem[210 len 18]
                            stor5[address(arg2)] = arg3
                        else:
                            if stor7[address(arg2)] == stor2.length - 1:
                                if stor5[address(arg2)] + stor6[address(arg2)] < stor5[address(arg2)]:
                                    revert with 0, 'addition overflow for balance'
                                if arg3 < 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                mem[210 len 18]
                                stor5[address(arg2)] = arg3 + stor6[address(arg2)] + stor5[address(arg2)]
                            else:
                                if not stor6[address(arg2)]:
                                    require stor2.length - 1 < stor2.length
                                    require stor7[address(arg2)] < stor2.length
                                    require stor2[stor7[address(arg2)]].field_0
                                    if arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                    mem[210 len 18]
                                    stor5[address(arg2)] = arg3 + (stor2[stor2.length].field_0 * stor5[address(arg2)] / stor2[stor7[address(arg2)]].field_0)
                                else:
                                    require stor7[address(arg2)] < stor2.length
                                    require stor2.length - 1 < stor2.length
                                    require stor2[stor7[address(arg2)]].field_0
                                    require stor7[address(arg2)] + 1 < stor2.length
                                    require stor2.length - 1 < stor2.length
                                    require stor2[stor7[address(arg2)]].field_256
                                    if (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0) < stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0:
                                        revert with 0, 'addition overflow for balance'
                                    if arg3 < 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                    mem[210 len 18]
                                    stor5[address(arg2)] = arg3 + (stor6[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_256) + (stor5[address(arg2)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg2)]].field_0)
                    stor7[address(arg2)] = stor2.length - 1
                    stor6[address(arg2)] = 0
    emit 0x74ddf252: arg3, arg1, arg2
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6e45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[204 len 24]
    if uint8(stor1.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f446570726563617465626c653a20636f6e747261637420697320646570726563617465,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor1.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f446570726563617465626c653a20636f6e747261637420697320646570726563617465,
                    mem[200 len 28]
    else:
        if arg2 <= 0:
            revert with 0, 'amount should be > 0'
        else:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0xef45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            else:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                else:
                    if not stor6[address(msg.sender)]:
                        if stor5[address(msg.sender)]:
                            if stor7[address(msg.sender)] != stor2.length - 1:
                                if stor6[address(msg.sender)]:
                                    require stor7[address(msg.sender)] < stor2.length
                                    require stor2.length - 1 < stor2.length
                                    require stor2[stor7[address(msg.sender)]].field_0
                                    require stor7[address(msg.sender)] + 1 < stor2.length
                                    require stor2.length - 1 < stor2.length
                                    require stor2[stor7[address(msg.sender)]].field_256
                                    if (stor6[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_256) + (stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0) < stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0:
                                        revert with 0, 'addition overflow for balance'
                                    else:
                                        if arg2 > (stor6[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_256) + (stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[202 len 26]
                                        else:
                                            stor5[address(msg.sender)] = (stor6[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_256) + (stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0) - arg2
                                            stor6[address(msg.sender)] = 0
                                            stor7[address(msg.sender)] = stor2.length - 1
                                            if not stor6[address(arg1)]:
                                                if stor5[address(arg1)]:
                                                    if stor7[address(arg1)] != stor2.length - 1:
                                                        if stor6[address(arg1)]:
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            require stor7[address(arg1)] + 1 < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_256
                                                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            require stor2.length - 1 < stor2.length
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if stor6[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if arg2 < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                            else:
                                                if stor7[address(arg1)] == stor2.length - 1:
                                                    stor5[address(arg1)] += arg2
                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                    return 1
                                                else:
                                                    if stor5[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if stor6[address(arg1)]:
                                                            if stor7[address(arg1)] != stor2.length - 1:
                                                                if stor6[address(arg1)]:
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_256
                                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                else:
                                    require stor2.length - 1 < stor2.length
                                    require stor7[address(msg.sender)] < stor2.length
                                    require stor2[stor7[address(msg.sender)]].field_0
                                    if arg2 > stor2[stor2.length].field_0 * stor5[address(msg.sender)] / stor2[stor7[address(msg.sender)]].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                                    else:
                                        stor5[address(msg.sender)] = (stor2[stor2.length].field_0 * stor5[address(msg.sender)] / stor2[stor7[address(msg.sender)]].field_0) - arg2
                                        stor6[address(msg.sender)] = 0
                                        stor7[address(msg.sender)] = stor2.length - 1
                                        if not stor6[address(arg1)]:
                                            if stor5[address(arg1)]:
                                                if stor7[address(arg1)] != stor2.length - 1:
                                                    if stor6[address(arg1)]:
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        require stor7[address(arg1)] + 1 < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_256
                                                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        require stor2.length - 1 < stor2.length
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                                else:
                                                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                        revert with 0, 'addition overflow for balance'
                                                    else:
                                                        if arg2 < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                            else:
                                                if stor6[address(arg1)]:
                                                    if stor7[address(arg1)] != stor2.length - 1:
                                                        if stor6[address(arg1)]:
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            require stor7[address(arg1)] + 1 < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_256
                                                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            require stor2.length - 1 < stor2.length
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if arg2 < 0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    46,
                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                    mem[210 len 18]
                                                    else:
                                                        stor5[address(arg1)] = arg2
                                                        stor7[address(arg1)] = stor2.length - 1
                                                        stor6[address(arg1)] = 0
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                        else:
                                            if stor7[address(arg1)] == stor2.length - 1:
                                                stor5[address(arg1)] += arg2
                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                return 1
                                            else:
                                                if stor5[address(arg1)]:
                                                    if stor7[address(arg1)] != stor2.length - 1:
                                                        if stor6[address(arg1)]:
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            require stor7[address(arg1)] + 1 < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_256
                                                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            require stor2.length - 1 < stor2.length
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if stor6[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if arg2 < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                            else:
                                if stor5[address(msg.sender)] + stor6[address(msg.sender)] < stor5[address(msg.sender)]:
                                    revert with 0, 'addition overflow for balance'
                                else:
                                    if arg2 > stor6[address(msg.sender)] + stor5[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                                    else:
                                        stor5[address(msg.sender)] = stor6[address(msg.sender)] + stor5[address(msg.sender)] - arg2
                                        stor6[address(msg.sender)] = 0
                                        stor7[address(msg.sender)] = stor2.length - 1
                                        if not stor6[address(arg1)]:
                                            if stor5[address(arg1)]:
                                                if stor7[address(arg1)] != stor2.length - 1:
                                                    if stor6[address(arg1)]:
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        require stor7[address(arg1)] + 1 < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_256
                                                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        require stor2.length - 1 < stor2.length
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                                else:
                                                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                        revert with 0, 'addition overflow for balance'
                                                    else:
                                                        if arg2 < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                            else:
                                                if stor6[address(arg1)]:
                                                    if stor7[address(arg1)] != stor2.length - 1:
                                                        if stor6[address(arg1)]:
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            require stor7[address(arg1)] + 1 < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_256
                                                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            require stor2.length - 1 < stor2.length
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if arg2 < 0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    46,
                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                    mem[210 len 18]
                                                    else:
                                                        stor5[address(arg1)] = arg2
                                                        stor7[address(arg1)] = stor2.length - 1
                                                        stor6[address(arg1)] = 0
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                        else:
                                            if stor7[address(arg1)] == stor2.length - 1:
                                                stor5[address(arg1)] += arg2
                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                return 1
                                            else:
                                                if stor5[address(arg1)]:
                                                    if stor7[address(arg1)] != stor2.length - 1:
                                                        if stor6[address(arg1)]:
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            require stor7[address(arg1)] + 1 < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_256
                                                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            require stor2.length - 1 < stor2.length
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if stor6[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if arg2 < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                        else:
                            if stor6[address(msg.sender)]:
                                if stor7[address(msg.sender)] != stor2.length - 1:
                                    if stor6[address(msg.sender)]:
                                        require stor7[address(msg.sender)] < stor2.length
                                        require stor2.length - 1 < stor2.length
                                        require stor2[stor7[address(msg.sender)]].field_0
                                        require stor7[address(msg.sender)] + 1 < stor2.length
                                        require stor2.length - 1 < stor2.length
                                        require stor2[stor7[address(msg.sender)]].field_256
                                        if (stor6[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_256) + (stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0) < stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0:
                                            revert with 0, 'addition overflow for balance'
                                        else:
                                            if arg2 > (stor6[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_256) + (stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[202 len 26]
                                            else:
                                                stor5[address(msg.sender)] = (stor6[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_256) + (stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0) - arg2
                                                stor6[address(msg.sender)] = 0
                                                stor7[address(msg.sender)] = stor2.length - 1
                                                if not stor6[address(arg1)]:
                                                    if stor5[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if stor6[address(arg1)]:
                                                            if stor7[address(arg1)] != stor2.length - 1:
                                                                if stor6[address(arg1)]:
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_256
                                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if stor7[address(arg1)] == stor2.length - 1:
                                                        stor5[address(arg1)] += arg2
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                                    else:
                                                        if stor5[address(arg1)]:
                                                            if stor7[address(arg1)] != stor2.length - 1:
                                                                if stor6[address(arg1)]:
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_256
                                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                        else:
                                                            if stor6[address(arg1)]:
                                                                if stor7[address(arg1)] != stor2.length - 1:
                                                                    if stor6[address(arg1)]:
                                                                        require stor7[address(arg1)] < stor2.length
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_0
                                                                        require stor7[address(arg1)] + 1 < stor2.length
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_256
                                                                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                            revert with 0, 'addition overflow for balance'
                                                                        else:
                                                                            if arg2 < 0:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            32,
                                                                                            46,
                                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                            mem[210 len 18]
                                                                            else:
                                                                                stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                                stor7[address(arg1)] = stor2.length - 1
                                                                                stor6[address(arg1)] = 0
                                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                                return 1
                                                                    else:
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor7[address(arg1)] < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_0
                                                                        if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                    else:
                                        require stor2.length - 1 < stor2.length
                                        require stor7[address(msg.sender)] < stor2.length
                                        require stor2[stor7[address(msg.sender)]].field_0
                                        if arg2 > stor2[stor2.length].field_0 * stor5[address(msg.sender)] / stor2[stor7[address(msg.sender)]].field_0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[202 len 26]
                                        else:
                                            stor5[address(msg.sender)] = (stor2[stor2.length].field_0 * stor5[address(msg.sender)] / stor2[stor7[address(msg.sender)]].field_0) - arg2
                                            stor6[address(msg.sender)] = 0
                                            stor7[address(msg.sender)] = stor2.length - 1
                                            if not stor6[address(arg1)]:
                                                if stor5[address(arg1)]:
                                                    if stor7[address(arg1)] != stor2.length - 1:
                                                        if stor6[address(arg1)]:
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            require stor7[address(arg1)] + 1 < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_256
                                                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            require stor2.length - 1 < stor2.length
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if stor6[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if arg2 < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                            else:
                                                if stor7[address(arg1)] == stor2.length - 1:
                                                    stor5[address(arg1)] += arg2
                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                    return 1
                                                else:
                                                    if stor5[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if stor6[address(arg1)]:
                                                            if stor7[address(arg1)] != stor2.length - 1:
                                                                if stor6[address(arg1)]:
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_256
                                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                else:
                                    if stor5[address(msg.sender)] + stor6[address(msg.sender)] < stor5[address(msg.sender)]:
                                        revert with 0, 'addition overflow for balance'
                                    else:
                                        if arg2 > stor6[address(msg.sender)] + stor5[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[202 len 26]
                                        else:
                                            stor5[address(msg.sender)] = stor6[address(msg.sender)] + stor5[address(msg.sender)] - arg2
                                            stor6[address(msg.sender)] = 0
                                            stor7[address(msg.sender)] = stor2.length - 1
                                            if not stor6[address(arg1)]:
                                                if stor5[address(arg1)]:
                                                    if stor7[address(arg1)] != stor2.length - 1:
                                                        if stor6[address(arg1)]:
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            require stor7[address(arg1)] + 1 < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_256
                                                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            require stor2.length - 1 < stor2.length
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if stor6[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if arg2 < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                            else:
                                                if stor7[address(arg1)] == stor2.length - 1:
                                                    stor5[address(arg1)] += arg2
                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                    return 1
                                                else:
                                                    if stor5[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if stor6[address(arg1)]:
                                                            if stor7[address(arg1)] != stor2.length - 1:
                                                                if stor6[address(arg1)]:
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_256
                                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                            else:
                                if arg2 > 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                                else:
                                    stor5[address(msg.sender)] = -arg2
                                    stor6[address(msg.sender)] = 0
                                    stor7[address(msg.sender)] = stor2.length - 1
                                    if not stor6[address(arg1)]:
                                        if stor5[address(arg1)]:
                                            if stor7[address(arg1)] != stor2.length - 1:
                                                if stor6[address(arg1)]:
                                                    require stor7[address(arg1)] < stor2.length
                                                    require stor2.length - 1 < stor2.length
                                                    require stor2[stor7[address(arg1)]].field_0
                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                    require stor2.length - 1 < stor2.length
                                                    require stor2[stor7[address(arg1)]].field_256
                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                        revert with 0, 'addition overflow for balance'
                                                    else:
                                                        if arg2 < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                                else:
                                                    require stor2.length - 1 < stor2.length
                                                    require stor7[address(arg1)] < stor2.length
                                                    require stor2[stor7[address(arg1)]].field_0
                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    46,
                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                    mem[210 len 18]
                                                    else:
                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                        stor7[address(arg1)] = stor2.length - 1
                                                        stor6[address(arg1)] = 0
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                            else:
                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                    revert with 0, 'addition overflow for balance'
                                                else:
                                                    if arg2 < 0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    46,
                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                    mem[210 len 18]
                                                    else:
                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                        stor7[address(arg1)] = stor2.length - 1
                                                        stor6[address(arg1)] = 0
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                        else:
                                            if stor6[address(arg1)]:
                                                if stor7[address(arg1)] != stor2.length - 1:
                                                    if stor6[address(arg1)]:
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        require stor7[address(arg1)] + 1 < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_256
                                                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        require stor2.length - 1 < stor2.length
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                                else:
                                                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                        revert with 0, 'addition overflow for balance'
                                                    else:
                                                        if arg2 < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                            else:
                                                if arg2 < 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                mem[210 len 18]
                                                else:
                                                    stor5[address(arg1)] = arg2
                                                    stor7[address(arg1)] = stor2.length - 1
                                                    stor6[address(arg1)] = 0
                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                    return 1
                                    else:
                                        if stor7[address(arg1)] == stor2.length - 1:
                                            stor5[address(arg1)] += arg2
                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                            return 1
                                        else:
                                            if stor5[address(arg1)]:
                                                if stor7[address(arg1)] != stor2.length - 1:
                                                    if stor6[address(arg1)]:
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        require stor7[address(arg1)] + 1 < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_256
                                                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        require stor2.length - 1 < stor2.length
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                                else:
                                                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                        revert with 0, 'addition overflow for balance'
                                                    else:
                                                        if arg2 < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                            else:
                                                if stor6[address(arg1)]:
                                                    if stor7[address(arg1)] != stor2.length - 1:
                                                        if stor6[address(arg1)]:
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            require stor7[address(arg1)] + 1 < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_256
                                                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            require stor2.length - 1 < stor2.length
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if arg2 < 0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    46,
                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                    mem[210 len 18]
                                                    else:
                                                        stor5[address(arg1)] = arg2
                                                        stor7[address(arg1)] = stor2.length - 1
                                                        stor6[address(arg1)] = 0
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                    else:
                        if stor7[address(msg.sender)] == stor2.length - 1:
                            if arg2 > stor6[address(msg.sender)]:
                                if stor5[address(msg.sender)] < arg2 - stor6[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[202 len 26]
                                else:
                                    stor5[address(msg.sender)] = stor5[address(msg.sender)] - arg2 + stor6[address(msg.sender)]
                                    stor6[address(msg.sender)] = 0
                                    if not stor6[address(arg1)]:
                                        if stor5[address(arg1)]:
                                            if stor7[address(arg1)] != stor2.length - 1:
                                                if stor6[address(arg1)]:
                                                    require stor7[address(arg1)] < stor2.length
                                                    require stor2.length - 1 < stor2.length
                                                    require stor2[stor7[address(arg1)]].field_0
                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                    require stor2.length - 1 < stor2.length
                                                    require stor2[stor7[address(arg1)]].field_256
                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                        revert with 0, 'addition overflow for balance'
                                                    else:
                                                        if arg2 - stor6[address(msg.sender)] < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 - stor6[address(msg.sender)] + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = stor6[address(msg.sender)]
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                                else:
                                                    require stor2.length - 1 < stor2.length
                                                    require stor7[address(arg1)] < stor2.length
                                                    require stor2[stor7[address(arg1)]].field_0
                                                    if arg2 - stor6[address(msg.sender)] + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    46,
                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                    mem[210 len 18]
                                                    else:
                                                        stor5[address(arg1)] = arg2 - stor6[address(msg.sender)] + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                        stor7[address(arg1)] = stor2.length - 1
                                                        stor6[address(arg1)] = stor6[address(msg.sender)]
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                            else:
                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                    revert with 0, 'addition overflow for balance'
                                                else:
                                                    if arg2 - stor6[address(msg.sender)] < 0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    46,
                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                    mem[210 len 18]
                                                    else:
                                                        stor5[address(arg1)] = arg2 - stor6[address(msg.sender)] + stor6[address(arg1)] + stor5[address(arg1)]
                                                        stor7[address(arg1)] = stor2.length - 1
                                                        stor6[address(arg1)] = stor6[address(msg.sender)]
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                        else:
                                            if stor6[address(arg1)]:
                                                if stor7[address(arg1)] != stor2.length - 1:
                                                    if stor6[address(arg1)]:
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        require stor7[address(arg1)] + 1 < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_256
                                                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 - stor6[address(msg.sender)] < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 - stor6[address(msg.sender)] + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = stor6[address(msg.sender)]
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        require stor2.length - 1 < stor2.length
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        if arg2 - stor6[address(msg.sender)] + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 - stor6[address(msg.sender)] + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = stor6[address(msg.sender)]
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                                else:
                                                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                        revert with 0, 'addition overflow for balance'
                                                    else:
                                                        if arg2 - stor6[address(msg.sender)] < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 - stor6[address(msg.sender)] + stor6[address(arg1)] + stor5[address(arg1)]
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = stor6[address(msg.sender)]
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                            else:
                                                if arg2 - stor6[address(msg.sender)] < 0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                mem[210 len 18]
                                                else:
                                                    stor5[address(arg1)] = arg2 - stor6[address(msg.sender)]
                                                    stor7[address(arg1)] = stor2.length - 1
                                                    stor6[address(arg1)] = stor6[address(msg.sender)]
                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                    return 1
                                    else:
                                        if stor7[address(arg1)] == stor2.length - 1:
                                            stor5[address(arg1)] = arg2 - stor6[address(msg.sender)] + stor5[address(arg1)]
                                            stor6[address(arg1)] += stor6[address(msg.sender)]
                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                            return 1
                                        else:
                                            if stor5[address(arg1)]:
                                                if stor7[address(arg1)] != stor2.length - 1:
                                                    if stor6[address(arg1)]:
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        require stor7[address(arg1)] + 1 < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_256
                                                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 - stor6[address(msg.sender)] < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 - stor6[address(msg.sender)] + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = stor6[address(msg.sender)]
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        require stor2.length - 1 < stor2.length
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        if arg2 - stor6[address(msg.sender)] + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 - stor6[address(msg.sender)] + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = stor6[address(msg.sender)]
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                                else:
                                                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                        revert with 0, 'addition overflow for balance'
                                                    else:
                                                        if arg2 - stor6[address(msg.sender)] < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 - stor6[address(msg.sender)] + stor6[address(arg1)] + stor5[address(arg1)]
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = stor6[address(msg.sender)]
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                            else:
                                                if stor6[address(arg1)]:
                                                    if stor7[address(arg1)] != stor2.length - 1:
                                                        if stor6[address(arg1)]:
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            require stor7[address(arg1)] + 1 < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_256
                                                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 - stor6[address(msg.sender)] < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 - stor6[address(msg.sender)] + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = stor6[address(msg.sender)]
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            require stor2.length - 1 < stor2.length
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            if arg2 - stor6[address(msg.sender)] + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 - stor6[address(msg.sender)] + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = stor6[address(msg.sender)]
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 - stor6[address(msg.sender)] < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 - stor6[address(msg.sender)] + stor6[address(arg1)] + stor5[address(arg1)]
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = stor6[address(msg.sender)]
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if arg2 - stor6[address(msg.sender)] < 0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    46,
                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                    mem[210 len 18]
                                                    else:
                                                        stor5[address(arg1)] = arg2 - stor6[address(msg.sender)]
                                                        stor7[address(arg1)] = stor2.length - 1
                                                        stor6[address(arg1)] = stor6[address(msg.sender)]
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                            else:
                                stor6[address(msg.sender)] -= arg2
                                if not stor6[address(arg1)]:
                                    if stor5[address(arg1)]:
                                        if stor7[address(arg1)] != stor2.length - 1:
                                            if stor6[address(arg1)]:
                                                require stor7[address(arg1)] < stor2.length
                                                require stor2.length - 1 < stor2.length
                                                require stor2[stor7[address(arg1)]].field_0
                                                require stor7[address(arg1)] + 1 < stor2.length
                                                require stor2.length - 1 < stor2.length
                                                require stor2[stor7[address(arg1)]].field_256
                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                    revert with 0, 'addition overflow for balance'
                                                else:
                                                    stor5[address(arg1)] = (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                    stor7[address(arg1)] = stor2.length - 1
                                                    stor6[address(arg1)] = arg2
                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                    return 1
                                            else:
                                                require stor2.length - 1 < stor2.length
                                                require stor7[address(arg1)] < stor2.length
                                                require stor2[stor7[address(arg1)]].field_0
                                                if stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0 < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                46,
                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                mem[210 len 18]
                                                else:
                                                    stor5[address(arg1)] = stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0
                                                    stor7[address(arg1)] = stor2.length - 1
                                                    stor6[address(arg1)] = arg2
                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                    return 1
                                        else:
                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                revert with 0, 'addition overflow for balance'
                                            else:
                                                stor5[address(arg1)] += stor6[address(arg1)]
                                                stor7[address(arg1)] = stor2.length - 1
                                                stor6[address(arg1)] = arg2
                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                return 1
                                    else:
                                        if stor6[address(arg1)]:
                                            if stor7[address(arg1)] != stor2.length - 1:
                                                if stor6[address(arg1)]:
                                                    require stor7[address(arg1)] < stor2.length
                                                    require stor2.length - 1 < stor2.length
                                                    require stor2[stor7[address(arg1)]].field_0
                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                    require stor2.length - 1 < stor2.length
                                                    require stor2[stor7[address(arg1)]].field_256
                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                        revert with 0, 'addition overflow for balance'
                                                    else:
                                                        stor5[address(arg1)] = (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                        stor7[address(arg1)] = stor2.length - 1
                                                        stor6[address(arg1)] = arg2
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                                else:
                                                    require stor2.length - 1 < stor2.length
                                                    require stor7[address(arg1)] < stor2.length
                                                    require stor2[stor7[address(arg1)]].field_0
                                                    if stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0 < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    46,
                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                    mem[210 len 18]
                                                    else:
                                                        stor5[address(arg1)] = stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0
                                                        stor7[address(arg1)] = stor2.length - 1
                                                        stor6[address(arg1)] = arg2
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                            else:
                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                    revert with 0, 'addition overflow for balance'
                                                else:
                                                    stor5[address(arg1)] += stor6[address(arg1)]
                                                    stor7[address(arg1)] = stor2.length - 1
                                                    stor6[address(arg1)] = arg2
                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                    return 1
                                        else:
                                            stor5[address(arg1)] = 0
                                            stor7[address(arg1)] = stor2.length - 1
                                            stor6[address(arg1)] = arg2
                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                            return 1
                                else:
                                    if stor7[address(arg1)] == stor2.length - 1:
                                        stor6[address(arg1)] += arg2
                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                        return 1
                                    else:
                                        if stor5[address(arg1)]:
                                            if stor7[address(arg1)] != stor2.length - 1:
                                                if stor6[address(arg1)]:
                                                    require stor7[address(arg1)] < stor2.length
                                                    require stor2.length - 1 < stor2.length
                                                    require stor2[stor7[address(arg1)]].field_0
                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                    require stor2.length - 1 < stor2.length
                                                    require stor2[stor7[address(arg1)]].field_256
                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                        revert with 0, 'addition overflow for balance'
                                                    else:
                                                        stor5[address(arg1)] = (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                        stor7[address(arg1)] = stor2.length - 1
                                                        stor6[address(arg1)] = arg2
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                                else:
                                                    require stor2.length - 1 < stor2.length
                                                    require stor7[address(arg1)] < stor2.length
                                                    require stor2[stor7[address(arg1)]].field_0
                                                    if stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0 < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    46,
                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                    mem[210 len 18]
                                                    else:
                                                        stor5[address(arg1)] = stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0
                                                        stor7[address(arg1)] = stor2.length - 1
                                                        stor6[address(arg1)] = arg2
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                            else:
                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                    revert with 0, 'addition overflow for balance'
                                                else:
                                                    stor5[address(arg1)] += stor6[address(arg1)]
                                                    stor7[address(arg1)] = stor2.length - 1
                                                    stor6[address(arg1)] = arg2
                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                    return 1
                                        else:
                                            if stor6[address(arg1)]:
                                                if stor7[address(arg1)] != stor2.length - 1:
                                                    if stor6[address(arg1)]:
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        require stor7[address(arg1)] + 1 < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_256
                                                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            stor5[address(arg1)] = (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = arg2
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                                    else:
                                                        require stor2.length - 1 < stor2.length
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        if stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0 < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = arg2
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                                else:
                                                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                        revert with 0, 'addition overflow for balance'
                                                    else:
                                                        stor5[address(arg1)] += stor6[address(arg1)]
                                                        stor7[address(arg1)] = stor2.length - 1
                                                        stor6[address(arg1)] = arg2
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                            else:
                                                stor5[address(arg1)] = 0
                                                stor7[address(arg1)] = stor2.length - 1
                                                stor6[address(arg1)] = arg2
                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                return 1
                        else:
                            if stor5[address(msg.sender)]:
                                if stor7[address(msg.sender)] != stor2.length - 1:
                                    if stor6[address(msg.sender)]:
                                        require stor7[address(msg.sender)] < stor2.length
                                        require stor2.length - 1 < stor2.length
                                        require stor2[stor7[address(msg.sender)]].field_0
                                        require stor7[address(msg.sender)] + 1 < stor2.length
                                        require stor2.length - 1 < stor2.length
                                        require stor2[stor7[address(msg.sender)]].field_256
                                        if (stor6[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_256) + (stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0) < stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0:
                                            revert with 0, 'addition overflow for balance'
                                        else:
                                            if arg2 > (stor6[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_256) + (stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[202 len 26]
                                            else:
                                                stor5[address(msg.sender)] = (stor6[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_256) + (stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0) - arg2
                                                stor6[address(msg.sender)] = 0
                                                stor7[address(msg.sender)] = stor2.length - 1
                                                if not stor6[address(arg1)]:
                                                    if stor5[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if stor6[address(arg1)]:
                                                            if stor7[address(arg1)] != stor2.length - 1:
                                                                if stor6[address(arg1)]:
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_256
                                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if stor7[address(arg1)] == stor2.length - 1:
                                                        stor5[address(arg1)] += arg2
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                                    else:
                                                        if stor5[address(arg1)]:
                                                            if stor7[address(arg1)] != stor2.length - 1:
                                                                if stor6[address(arg1)]:
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_256
                                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                        else:
                                                            if stor6[address(arg1)]:
                                                                if stor7[address(arg1)] != stor2.length - 1:
                                                                    if stor6[address(arg1)]:
                                                                        require stor7[address(arg1)] < stor2.length
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_0
                                                                        require stor7[address(arg1)] + 1 < stor2.length
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_256
                                                                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                            revert with 0, 'addition overflow for balance'
                                                                        else:
                                                                            if arg2 < 0:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            32,
                                                                                            46,
                                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                            mem[210 len 18]
                                                                            else:
                                                                                stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                                stor7[address(arg1)] = stor2.length - 1
                                                                                stor6[address(arg1)] = 0
                                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                                return 1
                                                                    else:
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor7[address(arg1)] < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_0
                                                                        if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                    else:
                                        require stor2.length - 1 < stor2.length
                                        require stor7[address(msg.sender)] < stor2.length
                                        require stor2[stor7[address(msg.sender)]].field_0
                                        if arg2 > stor2[stor2.length].field_0 * stor5[address(msg.sender)] / stor2[stor7[address(msg.sender)]].field_0:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[202 len 26]
                                        else:
                                            stor5[address(msg.sender)] = (stor2[stor2.length].field_0 * stor5[address(msg.sender)] / stor2[stor7[address(msg.sender)]].field_0) - arg2
                                            stor6[address(msg.sender)] = 0
                                            stor7[address(msg.sender)] = stor2.length - 1
                                            if not stor6[address(arg1)]:
                                                if stor5[address(arg1)]:
                                                    if stor7[address(arg1)] != stor2.length - 1:
                                                        if stor6[address(arg1)]:
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            require stor7[address(arg1)] + 1 < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_256
                                                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            require stor2.length - 1 < stor2.length
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if stor6[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if arg2 < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                            else:
                                                if stor7[address(arg1)] == stor2.length - 1:
                                                    stor5[address(arg1)] += arg2
                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                    return 1
                                                else:
                                                    if stor5[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if stor6[address(arg1)]:
                                                            if stor7[address(arg1)] != stor2.length - 1:
                                                                if stor6[address(arg1)]:
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_256
                                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                else:
                                    if stor5[address(msg.sender)] + stor6[address(msg.sender)] < stor5[address(msg.sender)]:
                                        revert with 0, 'addition overflow for balance'
                                    else:
                                        if arg2 > stor6[address(msg.sender)] + stor5[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        38,
                                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[202 len 26]
                                        else:
                                            stor5[address(msg.sender)] = stor6[address(msg.sender)] + stor5[address(msg.sender)] - arg2
                                            stor6[address(msg.sender)] = 0
                                            stor7[address(msg.sender)] = stor2.length - 1
                                            if not stor6[address(arg1)]:
                                                if stor5[address(arg1)]:
                                                    if stor7[address(arg1)] != stor2.length - 1:
                                                        if stor6[address(arg1)]:
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            require stor7[address(arg1)] + 1 < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_256
                                                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            require stor2.length - 1 < stor2.length
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if stor6[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if arg2 < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                            else:
                                                if stor7[address(arg1)] == stor2.length - 1:
                                                    stor5[address(arg1)] += arg2
                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                    return 1
                                                else:
                                                    if stor5[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if stor6[address(arg1)]:
                                                            if stor7[address(arg1)] != stor2.length - 1:
                                                                if stor6[address(arg1)]:
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_256
                                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                            else:
                                if stor6[address(msg.sender)]:
                                    if stor7[address(msg.sender)] != stor2.length - 1:
                                        if stor6[address(msg.sender)]:
                                            require stor7[address(msg.sender)] < stor2.length
                                            require stor2.length - 1 < stor2.length
                                            require stor2[stor7[address(msg.sender)]].field_0
                                            require stor7[address(msg.sender)] + 1 < stor2.length
                                            require stor2.length - 1 < stor2.length
                                            require stor2[stor7[address(msg.sender)]].field_256
                                            if (stor6[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_256) + (stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0) < stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0:
                                                revert with 0, 'addition overflow for balance'
                                            else:
                                                if arg2 > (stor6[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_256) + (stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0):
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                38,
                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[202 len 26]
                                                else:
                                                    stor5[address(msg.sender)] = (stor6[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_256) + (stor5[address(msg.sender)] * stor2[stor2.length].field_0 / stor2[stor7[address(msg.sender)]].field_0) - arg2
                                                    stor6[address(msg.sender)] = 0
                                                    stor7[address(msg.sender)] = stor2.length - 1
                                                    if not stor6[address(arg1)]:
                                                        if stor5[address(arg1)]:
                                                            if stor7[address(arg1)] != stor2.length - 1:
                                                                if stor6[address(arg1)]:
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_256
                                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                        else:
                                                            if stor6[address(arg1)]:
                                                                if stor7[address(arg1)] != stor2.length - 1:
                                                                    if stor6[address(arg1)]:
                                                                        require stor7[address(arg1)] < stor2.length
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_0
                                                                        require stor7[address(arg1)] + 1 < stor2.length
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_256
                                                                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                            revert with 0, 'addition overflow for balance'
                                                                        else:
                                                                            if arg2 < 0:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            32,
                                                                                            46,
                                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                            mem[210 len 18]
                                                                            else:
                                                                                stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                                stor7[address(arg1)] = stor2.length - 1
                                                                                stor6[address(arg1)] = 0
                                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                                return 1
                                                                    else:
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor7[address(arg1)] < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_0
                                                                        if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if stor7[address(arg1)] == stor2.length - 1:
                                                            stor5[address(arg1)] += arg2
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                                        else:
                                                            if stor5[address(arg1)]:
                                                                if stor7[address(arg1)] != stor2.length - 1:
                                                                    if stor6[address(arg1)]:
                                                                        require stor7[address(arg1)] < stor2.length
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_0
                                                                        require stor7[address(arg1)] + 1 < stor2.length
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_256
                                                                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                            revert with 0, 'addition overflow for balance'
                                                                        else:
                                                                            if arg2 < 0:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            32,
                                                                                            46,
                                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                            mem[210 len 18]
                                                                            else:
                                                                                stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                                stor7[address(arg1)] = stor2.length - 1
                                                                                stor6[address(arg1)] = 0
                                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                                return 1
                                                                    else:
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor7[address(arg1)] < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_0
                                                                        if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                            else:
                                                                if stor6[address(arg1)]:
                                                                    if stor7[address(arg1)] != stor2.length - 1:
                                                                        if stor6[address(arg1)]:
                                                                            require stor7[address(arg1)] < stor2.length
                                                                            require stor2.length - 1 < stor2.length
                                                                            require stor2[stor7[address(arg1)]].field_0
                                                                            require stor7[address(arg1)] + 1 < stor2.length
                                                                            require stor2.length - 1 < stor2.length
                                                                            require stor2[stor7[address(arg1)]].field_256
                                                                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                                revert with 0, 'addition overflow for balance'
                                                                            else:
                                                                                if arg2 < 0:
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                32,
                                                                                                46,
                                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                                mem[210 len 18]
                                                                                else:
                                                                                    stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                                    stor6[address(arg1)] = 0
                                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                                    return 1
                                                                        else:
                                                                            require stor2.length - 1 < stor2.length
                                                                            require stor7[address(arg1)] < stor2.length
                                                                            require stor2[stor7[address(arg1)]].field_0
                                                                            if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            32,
                                                                                            46,
                                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                            mem[210 len 18]
                                                                            else:
                                                                                stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                                stor7[address(arg1)] = stor2.length - 1
                                                                                stor6[address(arg1)] = 0
                                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                                return 1
                                                                    else:
                                                                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                            revert with 0, 'addition overflow for balance'
                                                                        else:
                                                                            if arg2 < 0:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            32,
                                                                                            46,
                                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                            mem[210 len 18]
                                                                            else:
                                                                                stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                                stor7[address(arg1)] = stor2.length - 1
                                                                                stor6[address(arg1)] = 0
                                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                                return 1
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                        else:
                                            require stor2.length - 1 < stor2.length
                                            require stor7[address(msg.sender)] < stor2.length
                                            require stor2[stor7[address(msg.sender)]].field_0
                                            if arg2 > stor2[stor2.length].field_0 * stor5[address(msg.sender)] / stor2[stor7[address(msg.sender)]].field_0:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[202 len 26]
                                            else:
                                                stor5[address(msg.sender)] = (stor2[stor2.length].field_0 * stor5[address(msg.sender)] / stor2[stor7[address(msg.sender)]].field_0) - arg2
                                                stor6[address(msg.sender)] = 0
                                                stor7[address(msg.sender)] = stor2.length - 1
                                                if not stor6[address(arg1)]:
                                                    if stor5[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if stor6[address(arg1)]:
                                                            if stor7[address(arg1)] != stor2.length - 1:
                                                                if stor6[address(arg1)]:
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_256
                                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if stor7[address(arg1)] == stor2.length - 1:
                                                        stor5[address(arg1)] += arg2
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                                    else:
                                                        if stor5[address(arg1)]:
                                                            if stor7[address(arg1)] != stor2.length - 1:
                                                                if stor6[address(arg1)]:
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_256
                                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                        else:
                                                            if stor6[address(arg1)]:
                                                                if stor7[address(arg1)] != stor2.length - 1:
                                                                    if stor6[address(arg1)]:
                                                                        require stor7[address(arg1)] < stor2.length
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_0
                                                                        require stor7[address(arg1)] + 1 < stor2.length
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_256
                                                                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                            revert with 0, 'addition overflow for balance'
                                                                        else:
                                                                            if arg2 < 0:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            32,
                                                                                            46,
                                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                            mem[210 len 18]
                                                                            else:
                                                                                stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                                stor7[address(arg1)] = stor2.length - 1
                                                                                stor6[address(arg1)] = 0
                                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                                return 1
                                                                    else:
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor7[address(arg1)] < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_0
                                                                        if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                    else:
                                        if stor5[address(msg.sender)] + stor6[address(msg.sender)] < stor5[address(msg.sender)]:
                                            revert with 0, 'addition overflow for balance'
                                        else:
                                            if arg2 > stor6[address(msg.sender)] + stor5[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            38,
                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[202 len 26]
                                            else:
                                                stor5[address(msg.sender)] = stor6[address(msg.sender)] + stor5[address(msg.sender)] - arg2
                                                stor6[address(msg.sender)] = 0
                                                stor7[address(msg.sender)] = stor2.length - 1
                                                if not stor6[address(arg1)]:
                                                    if stor5[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if stor6[address(arg1)]:
                                                            if stor7[address(arg1)] != stor2.length - 1:
                                                                if stor6[address(arg1)]:
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_256
                                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if stor7[address(arg1)] == stor2.length - 1:
                                                        stor5[address(arg1)] += arg2
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                                    else:
                                                        if stor5[address(arg1)]:
                                                            if stor7[address(arg1)] != stor2.length - 1:
                                                                if stor6[address(arg1)]:
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    require stor7[address(arg1)] + 1 < stor2.length
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_256
                                                                    if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    require stor2.length - 1 < stor2.length
                                                                    require stor7[address(arg1)] < stor2.length
                                                                    require stor2[stor7[address(arg1)]].field_0
                                                                    if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                        else:
                                                            if stor6[address(arg1)]:
                                                                if stor7[address(arg1)] != stor2.length - 1:
                                                                    if stor6[address(arg1)]:
                                                                        require stor7[address(arg1)] < stor2.length
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_0
                                                                        require stor7[address(arg1)] + 1 < stor2.length
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_256
                                                                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                            revert with 0, 'addition overflow for balance'
                                                                        else:
                                                                            if arg2 < 0:
                                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                            32,
                                                                                            46,
                                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                            mem[210 len 18]
                                                                            else:
                                                                                stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                                stor7[address(arg1)] = stor2.length - 1
                                                                                stor6[address(arg1)] = 0
                                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                                return 1
                                                                    else:
                                                                        require stor2.length - 1 < stor2.length
                                                                        require stor7[address(arg1)] < stor2.length
                                                                        require stor2[stor7[address(arg1)]].field_0
                                                                        if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                                else:
                                                                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                        revert with 0, 'addition overflow for balance'
                                                                    else:
                                                                        if arg2 < 0:
                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                        32,
                                                                                        46,
                                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                        mem[210 len 18]
                                                                        else:
                                                                            stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                            stor7[address(arg1)] = stor2.length - 1
                                                                            stor6[address(arg1)] = 0
                                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                                            return 1
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                else:
                                    if arg2 > 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    38,
                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[202 len 26]
                                    else:
                                        stor5[address(msg.sender)] = -arg2
                                        stor6[address(msg.sender)] = 0
                                        stor7[address(msg.sender)] = stor2.length - 1
                                        if not stor6[address(arg1)]:
                                            if stor5[address(arg1)]:
                                                if stor7[address(arg1)] != stor2.length - 1:
                                                    if stor6[address(arg1)]:
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        require stor7[address(arg1)] + 1 < stor2.length
                                                        require stor2.length - 1 < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_256
                                                        if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        require stor2.length - 1 < stor2.length
                                                        require stor7[address(arg1)] < stor2.length
                                                        require stor2[stor7[address(arg1)]].field_0
                                                        if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                                else:
                                                    if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                        revert with 0, 'addition overflow for balance'
                                                    else:
                                                        if arg2 < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
                                            else:
                                                if stor6[address(arg1)]:
                                                    if stor7[address(arg1)] != stor2.length - 1:
                                                        if stor6[address(arg1)]:
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            require stor7[address(arg1)] + 1 < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_256
                                                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            require stor2.length - 1 < stor2.length
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if arg2 < 0:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    46,
                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                    mem[210 len 18]
                                                    else:
                                                        stor5[address(arg1)] = arg2
                                                        stor7[address(arg1)] = stor2.length - 1
                                                        stor6[address(arg1)] = 0
                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                        return 1
                                        else:
                                            if stor7[address(arg1)] == stor2.length - 1:
                                                stor5[address(arg1)] += arg2
                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                return 1
                                            else:
                                                if stor5[address(arg1)]:
                                                    if stor7[address(arg1)] != stor2.length - 1:
                                                        if stor6[address(arg1)]:
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            require stor7[address(arg1)] + 1 < stor2.length
                                                            require stor2.length - 1 < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_256
                                                            if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            require stor2.length - 1 < stor2.length
                                                            require stor7[address(arg1)] < stor2.length
                                                            require stor2[stor7[address(arg1)]].field_0
                                                            if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                    else:
                                                        if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                            revert with 0, 'addition overflow for balance'
                                                        else:
                                                            if arg2 < 0:
                                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                            32,
                                                                            46,
                                                                            0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                            mem[210 len 18]
                                                            else:
                                                                stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                stor7[address(arg1)] = stor2.length - 1
                                                                stor6[address(arg1)] = 0
                                                                emit 0x74ddf252: arg2, msg.sender, arg1
                                                                return 1
                                                else:
                                                    if stor6[address(arg1)]:
                                                        if stor7[address(arg1)] != stor2.length - 1:
                                                            if stor6[address(arg1)]:
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                require stor7[address(arg1)] + 1 < stor2.length
                                                                require stor2.length - 1 < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_256
                                                                if (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0) < stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0, 'addition overflow for balance'
                                                                else:
                                                                    if arg2 < 0:
                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                    32,
                                                                                    46,
                                                                                    0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                    mem[210 len 18]
                                                                    else:
                                                                        stor5[address(arg1)] = arg2 + (stor6[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_256) + (stor5[address(arg1)] * stor2[stor2.length].field_0 / stor2[stor7[address(arg1)]].field_0)
                                                                        stor7[address(arg1)] = stor2.length - 1
                                                                        stor6[address(arg1)] = 0
                                                                        emit 0x74ddf252: arg2, msg.sender, arg1
                                                                        return 1
                                                            else:
                                                                require stor2.length - 1 < stor2.length
                                                                require stor7[address(arg1)] < stor2.length
                                                                require stor2[stor7[address(arg1)]].field_0
                                                                if arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0) < stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + (stor2[stor2.length].field_0 * stor5[address(arg1)] / stor2[stor7[address(arg1)]].field_0)
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                        else:
                                                            if stor5[address(arg1)] + stor6[address(arg1)] < stor5[address(arg1)]:
                                                                revert with 0, 'addition overflow for balance'
                                                            else:
                                                                if arg2 < 0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                46,
                                                                                0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                                mem[210 len 18]
                                                                else:
                                                                    stor5[address(arg1)] = arg2 + stor6[address(arg1)] + stor5[address(arg1)]
                                                                    stor7[address(arg1)] = stor2.length - 1
                                                                    stor6[address(arg1)] = 0
                                                                    emit 0x74ddf252: arg2, msg.sender, arg1
                                                                    return 1
                                                    else:
                                                        if arg2 < 0:
                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                        32,
                                                                        46,
                                                                        0x6545524332303a206164646974696f6e206f766572666c6f7720666f7220726563697069656e742062616c616e63,
                                                                        mem[210 len 18]
                                                        else:
                                                            stor5[address(arg1)] = arg2
                                                            stor7[address(arg1)] = stor2.length - 1
                                                            stor6[address(arg1)] = 0
                                                            emit 0x74ddf252: arg2, msg.sender, arg1
                                                            return 1
}



}
