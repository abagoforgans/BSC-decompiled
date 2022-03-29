contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor157;
array of uint256 stor158;
array of uint256 stor159;
uint256 stor160;
address owner;
uint256 stor161;
address stor162;
mapping of struct delegates;
mapping of uint256 prices;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    return delegates[arg1].field_0, delegates[arg1].field_128
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return address(owner)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function prices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return prices[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function acceptOwner() payable {
    require msg.sender == stor162
    address(owner) = stor162
}

function snapshot() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Permission denied'
    stor160++
    emit Snapshot(stor160);
    return stor160
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Permission denied'
    stor162 = arg1
}

function transferOwnerToDfPool() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Permission denied'
    address(owner) = 0xfb87002e2c029fd4a9e9aa20930f2bea9d464757
}

function snapshot(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Permission denied'
    stor160++
    emit Snapshot(stor160);
    prices[stor160] = arg1
    return stor160
}

function balanceOfWithoutReceived(address arg1) payable {
    require calldata.size - 4 >= 32
    if delegates[address(arg1)].field_128 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (balanceOf[address(arg1)] - delegates[address(arg1)].field_128)
}

function balanceOfWithDelegated(address arg1) payable {
    require calldata.size - 4 >= 32
    if delegates[address(arg1)].field_0 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return (delegates[address(arg1)].field_0 + balanceOf[address(arg1)])
}

function totalSupplyAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg1 > stor160:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor158.length:
        idx = stor158.length
        while 0 < idx:
            require idx / 2 < stor158.length
            mem[0] = 158
            if stor158[0.5 / idx] <= arg1:
                idx = idx
                continue 
            idx = idx / 2
            continue 
    if 0 == stor158.length:
        return totalSupply
    require 0 < stor159.length
    return stor159
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOfAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[0] = arg1
    if arg2 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg2 > stor160:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor157[address(arg1)].field_0:
        idx = stor157[mem[0]].field_0
        while 0 < idx:
            require idx / 2 < stor157[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 157)
            if stor157[address(arg1)][0.5 / idx].field_0 <= arg2:
                idx = idx
                continue 
            idx = idx / 2
            continue 
    if 0 == stor157[address(arg1)].field_0:
        return balanceOf[address(arg1)]
    require 0 < stor157[address(arg1)].field_256
    return stor157[address(arg1)][1].field_0
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        address(owner) = arg1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            address(owner) = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            address(owner) = arg1
            uint8(stor0.field_8) = 0
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function initialize() payable {
    if uint8(stor0.field_8):
        uint256(stor161) = msg.sender or Mask(96, 160, uint256(stor161))
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            uint256(stor161) = msg.sender or Mask(96, 160, uint256(stor161))
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            uint256(stor161) = msg.sender or Mask(96, 160, uint256(stor161))
            uint8(stor0.field_8) = 0
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function initialize(string arg1, string arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x65436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 274 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    decimals = arg3
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Permission denied'
    if not stor157[address(arg1)].field_0:
        if 0 < stor160:
            stor157[address(arg1)].field_0++
            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
            stor157[address(arg1)].field_256++
            stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
    else:
        require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
        if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 < stor160:
            stor157[address(arg1)].field_0++
            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
            stor157[address(arg1)].field_256++
            stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
    if not stor158.length:
        if 0 < stor160:
            stor158.length++
            stor158[stor158.length] = stor160
            stor159.length++
            stor159[stor159.length] = totalSupply
    else:
        require stor158.length - 1 < stor158.length
        if stor158[stor158.length] < stor160:
            stor158.length++
            stor158[stor158.length] = stor160
            stor159.length++
            stor159[stor159.length] = totalSupply
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Permission denied'
    if delegates[address(arg1)].field_128 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[address(arg1)] - delegates[address(arg1)].field_128 < arg2:
        revert with 0, 'not enough undelgated tokens'
    if not stor157[address(arg1)].field_0:
        if 0 < stor160:
            stor157[address(arg1)].field_0++
            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
            stor157[address(arg1)].field_256++
            stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
    else:
        require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
        if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 < stor160:
            stor157[address(arg1)].field_0++
            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
            stor157[address(arg1)].field_256++
            stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
    if not stor158.length:
        if 0 < stor160:
            stor158.length++
            stor158[stor158.length] = stor160
            stor159.length++
            stor159[stor159.length] = totalSupply
    else:
        require stor158.length - 1 < stor158.length
        if stor158[stor158.length] < stor160:
            stor158.length++
            stor158[stor158.length] = stor160
            stor159.length++
            stor159[stor159.length] = totalSupply
    if not arg1:
        revert with 0, 32, 33, 0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
    if uint128(arg2) > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
    balanceOf[address(arg1)] -= uint128(arg2)
    if uint128(arg2) > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= uint128(arg2)
    emit Transfer(uint128(arg2), arg1, 0);
}

function initialize(string arg1, string arg2, uint8 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x65436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 274 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 
                                32,
                                46,
                                0x65436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + 274 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    decimals = arg3
    if uint8(stor0.field_8):
        address(owner) = arg4
    else:
        uint8(stor0.field_8) = 0
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x65436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + 274 len 18]
        if uint8(stor0.field_8):
            address(owner) = arg4
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            address(owner) = arg4
            uint8(stor0.field_8) = 0
            uint8(stor0.field_8) = 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if delegates[address(msg.sender)].field_128 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[address(msg.sender)] - delegates[address(msg.sender)].field_128 < arg2:
        revert with 0, 'not enough undelgated tokens'
    if not stor157[address(msg.sender)].field_0:
        if 0 < stor160:
            stor157[address(msg.sender)].field_0++
            stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 = stor160
            stor157[address(msg.sender)].field_256++
            stor[stor157[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor157', 157)))].field_0 = balanceOf[address(msg.sender)]
    else:
        require stor157[address(msg.sender)].field_0 - 1 < stor157[address(msg.sender)].field_0
        if stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 < stor160:
            stor157[address(msg.sender)].field_0++
            stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 = stor160
            stor157[address(msg.sender)].field_256++
            stor[stor157[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor157', 157)))].field_0 = balanceOf[address(msg.sender)]
    if not stor157[address(arg1)].field_0:
        if 0 < stor160:
            stor157[address(arg1)].field_0++
            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
            stor157[address(arg1)].field_256++
            stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
    else:
        require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
        if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 < stor160:
            stor157[address(arg1)].field_0++
            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
            stor157[address(arg1)].field_256++
            stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
    if not msg.sender:
        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
    if not arg1:
        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
    if uint128(arg2) > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[230 len 26],
                    mem[282 len 6]
    balanceOf[address(msg.sender)] -= uint128(arg2)
    if uint128(arg2) + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = uint128(arg2) + balanceOf[arg1]
    emit Transfer(uint128(arg2), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if delegates[address(arg1)].field_128 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[address(arg1)] - delegates[address(arg1)].field_128 < arg3:
        revert with 0, 'not enough undelgated tokens'
    if not stor157[address(arg1)].field_0:
        if 0 < stor160:
            stor157[address(arg1)].field_0++
            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
            stor157[address(arg1)].field_256++
            stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
    else:
        require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
        if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 < stor160:
            stor157[address(arg1)].field_0++
            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
            stor157[address(arg1)].field_256++
            stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
    if not stor157[address(arg2)].field_0:
        if 0 < stor160:
            stor157[address(arg2)].field_0++
            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
            stor157[address(arg2)].field_256++
            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
    else:
        require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
        if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 < stor160:
            stor157[address(arg2)].field_0++
            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
            stor157[address(arg2)].field_256++
            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
    if not arg1:
        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
    if not arg2:
        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
    if uint128(arg3) > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[230 len 26],
                    mem[282 len 6]
    balanceOf[address(arg1)] -= uint128(arg3)
    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
    emit Transfer(uint128(arg3), arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 
                    32,
                    40,
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[328 len 24],
                    mem[376 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function undelgate(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > delegates[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    delegates[address(msg.sender)].field_0 = uint128(delegates[address(msg.sender)].field_0 - arg2)
    if arg2 > delegates[arg1].field_128:
        revert with 0, 'SafeMath: subtraction overflow'
    delegates[address(arg1)].field_128 = uint128(delegates[arg1].field_128 - arg2)
    if arg2 > delegates[address(arg1)][1][address(msg.sender)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    delegates[address(arg1)][1][address(msg.sender)].field_0 = uint128(delegates[address(arg1)][1][address(msg.sender)].field_0 - arg2)
    if delegates[address(arg1)].field_128 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[address(arg1)] - delegates[address(arg1)].field_128 < arg2:
        revert with 0, 'not enough undelgated tokens'
    if not stor157[address(arg1)].field_0:
        if 0 < stor160:
            stor157[address(arg1)].field_0++
            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
            stor157[address(arg1)].field_256++
            stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
    else:
        require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
        if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 < stor160:
            stor157[address(arg1)].field_0++
            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
            stor157[address(arg1)].field_256++
            stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
    if not stor157[address(msg.sender)].field_0:
        if 0 < stor160:
            stor157[address(msg.sender)].field_0++
            stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 = stor160
            stor157[address(msg.sender)].field_256++
            stor[stor157[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor157', 157)))].field_0 = balanceOf[address(msg.sender)]
    else:
        require stor157[address(msg.sender)].field_0 - 1 < stor157[address(msg.sender)].field_0
        if stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 < stor160:
            stor157[address(msg.sender)].field_0++
            stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 = stor160
            stor157[address(msg.sender)].field_256++
            stor[stor157[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor157', 157)))].field_0 = balanceOf[address(msg.sender)]
    if not arg1:
        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
    if not msg.sender:
        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
    if uint128(arg2) > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[422 len 26],
                    mem[474 len 6]
    balanceOf[address(arg1)] -= uint128(arg2)
    if uint128(arg2) + balanceOf[msg.sender] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = uint128(arg2) + balanceOf[msg.sender]
    emit Transfer(uint128(arg2), arg1, msg.sender);
    emit Undelegated(arg2, msg.sender, arg1);
    return 1
}

function delgate(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73556e61626c6520746f2064656c656761746520746f2064656c656761746f7220616464726573,
                    mem[203 len 25]
    if arg2 + delegates[address(msg.sender)].field_0 < delegates[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    delegates[address(msg.sender)].field_0 = uint128(arg2 + delegates[address(msg.sender)].field_0)
    if arg2 + delegates[arg1].field_128 < delegates[arg1].field_128:
        revert with 0, 'SafeMath: addition overflow'
    delegates[address(arg1)].field_128 = uint128(arg2 + delegates[arg1].field_128)
    if arg2 + delegates[address(arg1)][1][address(msg.sender)].field_0 < delegates[address(arg1)][1][address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    delegates[address(arg1)][1][address(msg.sender)].field_0 = uint128(arg2 + delegates[address(arg1)][1][address(msg.sender)].field_0)
    if delegates[address(msg.sender)].field_128 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[address(msg.sender)] - delegates[address(msg.sender)].field_128 < arg2:
        revert with 0, 'not enough undelgated tokens'
    if not stor157[address(msg.sender)].field_0:
        if 0 < stor160:
            stor157[address(msg.sender)].field_0++
            stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 = stor160
            stor157[address(msg.sender)].field_256++
            stor[stor157[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor157', 157)))].field_0 = balanceOf[address(msg.sender)]
    else:
        require stor157[address(msg.sender)].field_0 - 1 < stor157[address(msg.sender)].field_0
        if stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 < stor160:
            stor157[address(msg.sender)].field_0++
            stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 = stor160
            stor157[address(msg.sender)].field_256++
            stor[stor157[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor157', 157)))].field_0 = balanceOf[address(msg.sender)]
    if not stor157[address(arg1)].field_0:
        if 0 < stor160:
            stor157[address(arg1)].field_0++
            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
            stor157[address(arg1)].field_256++
            stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
    else:
        require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
        if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 < stor160:
            stor157[address(arg1)].field_0++
            stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
            stor157[address(arg1)].field_256++
            stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
    if not msg.sender:
        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[265 len 27]
    if not arg1:
        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[263 len 29]
    if uint128(arg2) > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[230 len 26],
                    mem[282 len 6]
    balanceOf[address(msg.sender)] -= uint128(arg2)
    if uint128(arg2) + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = uint128(arg2) + balanceOf[arg1]
    emit Transfer(uint128(arg2), msg.sender, arg1);
    emit Delegated(arg2, msg.sender, arg1);
    return 1
}

function transfer(address[] arg1, uint256[] arg2) payable {
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
    if arg1.length != arg2.length:
        revert with 0, 'Arrays lengths not equal'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _385 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _387 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = msg.sender
        mem[32] = 213
        _390 = mem[64]
        mem[64] = mem[64] + 64
        mem[_390] = 30
        mem[_390 + 32] = 'SafeMath: subtraction overflow'
        if delegates[address(msg.sender)].field_128 > balanceOf[address(msg.sender)]:
            _391 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _391 + 68] = mem[idx + _390 + 32]
                idx = idx + 32
                continue 
            mem[_391 + 68] = mem[_391 + 70 len 30]
            revert with memory
              from mem[64]
               len _391 + -mem[64] + 100
        if balanceOf[address(msg.sender)] - delegates[address(msg.sender)].field_128 < _387:
            revert with 0, 'not enough undelgated tokens'
        if not stor157[address(msg.sender)].field_0:
            if 0 >= stor160:
                mem[0] = address(_385)
                mem[32] = 104
                if not stor157[address(_385)].field_0:
                    if 0 >= stor160:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _455 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_455] = 38
                        mem[_455 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _531 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _531 + 68] = mem[idx + _455 + 32]
                                idx = idx + 32
                                continue 
                            mem[_531 + 100] = mem[_531 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _531 + -mem[64] + 132
                    else:
                        stor157[address(_385)].field_0++
                        stor157[address(_385)][stor157[address(_385)].field_0].field_0 = stor160
                        stor157[address(_385)].field_256++
                        mem[0] = sha3(address(_385), 157) + 1
                        stor[stor157[address(_385)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('var', '_385')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(_385)]
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _459 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_459] = 38
                        mem[_459 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _534 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _534 + 68] = mem[idx + _459 + 32]
                                idx = idx + 32
                                continue 
                            mem[_534 + 100] = mem[_534 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _534 + -mem[64] + 132
                else:
                    require stor157[address(_385)].field_0 - 1 < stor157[address(_385)].field_0
                    mem[0] = sha3(address(_385), 157)
                    if stor157[address(_385)][stor157[address(_385)].field_0].field_0 >= stor160:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _499 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_499] = 38
                        mem[_499 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _555 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _555 + 68] = mem[idx + _499 + 32]
                                idx = idx + 32
                                continue 
                            mem[_555 + 100] = mem[_555 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _555 + -mem[64] + 132
                    else:
                        stor157[address(_385)].field_0++
                        stor157[address(_385)][stor157[address(_385)].field_0].field_0 = stor160
                        stor157[address(_385)].field_256++
                        mem[0] = sha3(address(_385), 157) + 1
                        stor[stor157[address(_385)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('var', '_385')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(_385)]
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _503 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_503] = 38
                        mem[_503 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _558 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _558 + 68] = mem[idx + _503 + 32]
                                idx = idx + 32
                                continue 
                            mem[_558 + 100] = mem[_558 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _558 + -mem[64] + 132
            else:
                stor157[address(msg.sender)].field_0++
                stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 = stor160
                stor157[address(msg.sender)].field_256++
                stor[stor157[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor157', 157)))].field_0 = balanceOf[address(msg.sender)]
                mem[0] = address(_385)
                mem[32] = 104
                if not stor157[address(_385)].field_0:
                    if 0 >= stor160:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _467 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_467] = 38
                        mem[_467 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _537 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _537 + 68] = mem[idx + _467 + 32]
                                idx = idx + 32
                                continue 
                            mem[_537 + 100] = mem[_537 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _537 + -mem[64] + 132
                    else:
                        stor157[address(_385)].field_0++
                        stor157[address(_385)][stor157[address(_385)].field_0].field_0 = stor160
                        stor157[address(_385)].field_256++
                        mem[0] = sha3(address(_385), 157) + 1
                        stor[stor157[address(_385)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('var', '_385')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(_385)]
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _471 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_471] = 38
                        mem[_471 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _540 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _540 + 68] = mem[idx + _471 + 32]
                                idx = idx + 32
                                continue 
                            mem[_540 + 100] = mem[_540 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _540 + -mem[64] + 132
                else:
                    require stor157[address(_385)].field_0 - 1 < stor157[address(_385)].field_0
                    mem[0] = sha3(address(_385), 157)
                    if stor157[address(_385)][stor157[address(_385)].field_0].field_0 >= stor160:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _507 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_507] = 38
                        mem[_507 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _565 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _565 + 68] = mem[idx + _507 + 32]
                                idx = idx + 32
                                continue 
                            mem[_565 + 100] = mem[_565 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _565 + -mem[64] + 132
                    else:
                        stor157[address(_385)].field_0++
                        stor157[address(_385)][stor157[address(_385)].field_0].field_0 = stor160
                        stor157[address(_385)].field_256++
                        mem[0] = sha3(address(_385), 157) + 1
                        stor[stor157[address(_385)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('var', '_385')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(_385)]
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _511 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_511] = 38
                        mem[_511 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _568 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _568 + 68] = mem[idx + _511 + 32]
                                idx = idx + 32
                                continue 
                            mem[_568 + 100] = mem[_568 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _568 + -mem[64] + 132
        else:
            require stor157[address(msg.sender)].field_0 - 1 < stor157[address(msg.sender)].field_0
            if stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 >= stor160:
                mem[0] = address(_385)
                mem[32] = 104
                if not stor157[address(_385)].field_0:
                    if 0 >= stor160:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _479 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_479] = 38
                        mem[_479 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _543 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _543 + 68] = mem[idx + _479 + 32]
                                idx = idx + 32
                                continue 
                            mem[_543 + 100] = mem[_543 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _543 + -mem[64] + 132
                    else:
                        stor157[address(_385)].field_0++
                        stor157[address(_385)][stor157[address(_385)].field_0].field_0 = stor160
                        stor157[address(_385)].field_256++
                        mem[0] = sha3(address(_385), 157) + 1
                        stor[stor157[address(_385)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('var', '_385')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(_385)]
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _483 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_483] = 38
                        mem[_483 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _546 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _546 + 68] = mem[idx + _483 + 32]
                                idx = idx + 32
                                continue 
                            mem[_546 + 100] = mem[_546 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _546 + -mem[64] + 132
                else:
                    require stor157[address(_385)].field_0 - 1 < stor157[address(_385)].field_0
                    mem[0] = sha3(address(_385), 157)
                    if stor157[address(_385)][stor157[address(_385)].field_0].field_0 >= stor160:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _515 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_515] = 38
                        mem[_515 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _575 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _575 + 68] = mem[idx + _515 + 32]
                                idx = idx + 32
                                continue 
                            mem[_575 + 100] = mem[_575 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _575 + -mem[64] + 132
                    else:
                        stor157[address(_385)].field_0++
                        stor157[address(_385)][stor157[address(_385)].field_0].field_0 = stor160
                        stor157[address(_385)].field_256++
                        mem[0] = sha3(address(_385), 157) + 1
                        stor[stor157[address(_385)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('var', '_385')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(_385)]
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _519 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_519] = 38
                        mem[_519 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _578 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _578 + 68] = mem[idx + _519 + 32]
                                idx = idx + 32
                                continue 
                            mem[_578 + 100] = mem[_578 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _578 + -mem[64] + 132
            else:
                stor157[address(msg.sender)].field_0++
                stor157[address(msg.sender)][stor157[address(msg.sender)].field_0].field_0 = stor160
                stor157[address(msg.sender)].field_256++
                stor[stor157[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor157', 157)))].field_0 = balanceOf[address(msg.sender)]
                mem[0] = address(_385)
                mem[32] = 104
                if not stor157[address(_385)].field_0:
                    if 0 >= stor160:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _491 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_491] = 38
                        mem[_491 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _549 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _549 + 68] = mem[idx + _491 + 32]
                                idx = idx + 32
                                continue 
                            mem[_549 + 100] = mem[_549 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _549 + -mem[64] + 132
                    else:
                        stor157[address(_385)].field_0++
                        stor157[address(_385)][stor157[address(_385)].field_0].field_0 = stor160
                        stor157[address(_385)].field_256++
                        mem[0] = sha3(address(_385), 157) + 1
                        stor[stor157[address(_385)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('var', '_385')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(_385)]
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _495 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_495] = 38
                        mem[_495 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _552 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _552 + 68] = mem[idx + _495 + 32]
                                idx = idx + 32
                                continue 
                            mem[_552 + 100] = mem[_552 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _552 + -mem[64] + 132
                else:
                    require stor157[address(_385)].field_0 - 1 < stor157[address(_385)].field_0
                    mem[0] = sha3(address(_385), 157)
                    if stor157[address(_385)][stor157[address(_385)].field_0].field_0 >= stor160:
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _523 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_523] = 38
                        mem[_523 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _585 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _585 + 68] = mem[idx + _523 + 32]
                                idx = idx + 32
                                continue 
                            mem[_585 + 100] = mem[_585 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _585 + -mem[64] + 132
                    else:
                        stor157[address(_385)].field_0++
                        stor157[address(_385)][stor157[address(_385)].field_0].field_0 = stor160
                        stor157[address(_385)].field_256++
                        mem[0] = sha3(address(_385), 157) + 1
                        stor[stor157[address(_385)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('var', '_385')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(_385)]
                        if not msg.sender:
                            revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[mem[64] + 105 len 27]
                        if not address(_385):
                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 103 len 29]
                        _527 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_527] = 38
                        mem[_527 + 32 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        mem[32] = 104
                        if uint128(_387) > balanceOf[address(msg.sender)]:
                            _588 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 38
                            idx = 0
                            while idx < 38:
                                mem[idx + _588 + 68] = mem[idx + _527 + 32]
                                idx = idx + 32
                                continue 
                            mem[_588 + 100] = mem[_588 + 126 len 6]
                            revert with memory
                              from mem[64]
                               len _588 + -mem[64] + 132
        ('le', ('mask_shl', 128, 0, 0, ('var', '_387')), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 104))))
        balanceOf[address(msg.sender)] -= uint128(_387)
        if uint128(_387) + balanceOf[address(_385)] < balanceOf[address(_385)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = address(_385)
        mem[32] = 104
        balanceOf[address(_385)] += uint128(_387)
        mem[mem[64]] = uint128(_387)
        emit Transfer(uint128(_387), msg.sender, address(_385));
        idx = idx + 1
        continue 
    return 1
}

function undelgateWithSign(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if block.timestamp >= arg4:
        revert with 0, 'sign is expired'
    else:
        mem[ceil32(arg5.length) + 160] = this.address << 96
        mem[ceil32(arg5.length) + 180] = address(arg2)
        mem[ceil32(arg5.length) + 128] = 104
        if 65 == arg5.length:
            if mem[160] <= 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                if arg1:
                    revert with 0, 'This action is not verified'
                else:
                    if arg3 > delegates[address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        delegates[address(arg1)].field_0 = uint128(delegates[address(arg1)].field_0 - arg3)
                        if arg3 > delegates[arg2].field_128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            delegates[address(arg2)].field_128 = uint128(delegates[arg2].field_128 - arg3)
                            if arg3 > delegates[address(arg2)][1][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                delegates[address(arg2)][1][address(arg1)].field_0 = uint128(delegates[address(arg2)][1][address(arg1)].field_0 - arg3)
                                if delegates[address(arg2)].field_128 > balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if balanceOf[address(arg2)] - delegates[address(arg2)].field_128 < arg3:
                                        revert with 0, 'not enough undelgated tokens'
                                    else:
                                        if stor157[address(arg2)].field_0:
                                            require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                            if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                                if stor157[address(arg1)].field_0:
                                                    require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                                    if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                else:
                                                    if 0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                            else:
                                                stor157[address(arg2)].field_0++
                                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                stor157[address(arg2)].field_256++
                                                stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                if stor157[address(arg1)].field_0:
                                                    require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                                    if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                else:
                                                    if 0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                        else:
                                            if 0 >= stor160:
                                                if stor157[address(arg1)].field_0:
                                                    require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                                    if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                else:
                                                    if 0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                            else:
                                                stor157[address(arg2)].field_0++
                                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                stor157[address(arg2)].field_256++
                                                stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                if stor157[address(arg1)].field_0:
                                                    require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                                    if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                else:
                                                    if 0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
            else:
                if arg1:
                    revert with 0, 'This action is not verified'
                else:
                    if arg3 > delegates[address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        delegates[address(arg1)].field_0 = uint128(delegates[address(arg1)].field_0 - arg3)
                        if arg3 > delegates[arg2].field_128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            delegates[address(arg2)].field_128 = uint128(delegates[arg2].field_128 - arg3)
                            if arg3 > delegates[address(arg2)][1][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                delegates[address(arg2)][1][address(arg1)].field_0 = uint128(delegates[address(arg2)][1][address(arg1)].field_0 - arg3)
                                if delegates[address(arg2)].field_128 > balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if balanceOf[address(arg2)] - delegates[address(arg2)].field_128 < arg3:
                                        revert with 0, 'not enough undelgated tokens'
                                    else:
                                        if stor157[address(arg2)].field_0:
                                            require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                            if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                                if stor157[address(arg1)].field_0:
                                                    require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                                    if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                else:
                                                    if 0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                            else:
                                                stor157[address(arg2)].field_0++
                                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                stor157[address(arg2)].field_256++
                                                stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                if stor157[address(arg1)].field_0:
                                                    require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                                    if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                else:
                                                    if 0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                        else:
                                            if 0 >= stor160:
                                                if stor157[address(arg1)].field_0:
                                                    require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                                    if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                else:
                                                    if 0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                            else:
                                                stor157[address(arg2)].field_0++
                                                stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                stor157[address(arg2)].field_256++
                                                stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                if stor157[address(arg1)].field_0:
                                                    require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                                    if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                else:
                                                    if 0 >= stor160:
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg1)].field_0++
                                                        stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                        stor157[address(arg1)].field_256++
                                                        stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                        if not arg2:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 625 len 27]
                                                        else:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 623 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg2)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 590 len 26],
                                                                                mem[ceil32(arg5.length) + 642 len 6]
                                                                else:
                                                                    balanceOf[address(arg2)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                        emit Transfer(uint128(arg3), arg2, arg1);
                                                                        emit Undelegated(arg3, arg1, arg2);
                                                                        return 1
        else:
            if arg1:
                revert with 0, 'This action is not verified'
            else:
                if arg3 > delegates[address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    delegates[address(arg1)].field_0 = uint128(delegates[address(arg1)].field_0 - arg3)
                    if arg3 > delegates[arg2].field_128:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        delegates[address(arg2)].field_128 = uint128(delegates[arg2].field_128 - arg3)
                        if arg3 > delegates[address(arg2)][1][address(arg1)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            delegates[address(arg2)][1][address(arg1)].field_0 = uint128(delegates[address(arg2)][1][address(arg1)].field_0 - arg3)
                            if delegates[address(arg2)].field_128 > balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if balanceOf[address(arg2)] - delegates[address(arg2)].field_128 < arg3:
                                    revert with 0, 'not enough undelgated tokens'
                                else:
                                    if stor157[address(arg2)].field_0:
                                        require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                        if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                            if stor157[address(arg1)].field_0:
                                                require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                                if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                                else:
                                                    stor157[address(arg1)].field_0++
                                                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                    stor157[address(arg1)].field_256++
                                                    stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                            else:
                                                if 0 >= stor160:
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                                else:
                                                    stor157[address(arg1)].field_0++
                                                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                    stor157[address(arg1)].field_256++
                                                    stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                        else:
                                            stor157[address(arg2)].field_0++
                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                            stor157[address(arg2)].field_256++
                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                            if stor157[address(arg1)].field_0:
                                                require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                                if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                                else:
                                                    stor157[address(arg1)].field_0++
                                                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                    stor157[address(arg1)].field_256++
                                                    stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                            else:
                                                if 0 >= stor160:
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                                else:
                                                    stor157[address(arg1)].field_0++
                                                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                    stor157[address(arg1)].field_256++
                                                    stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                    else:
                                        if 0 >= stor160:
                                            if stor157[address(arg1)].field_0:
                                                require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                                if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                                else:
                                                    stor157[address(arg1)].field_0++
                                                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                    stor157[address(arg1)].field_256++
                                                    stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                            else:
                                                if 0 >= stor160:
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                                else:
                                                    stor157[address(arg1)].field_0++
                                                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                    stor157[address(arg1)].field_256++
                                                    stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                        else:
                                            stor157[address(arg2)].field_0++
                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                            stor157[address(arg2)].field_256++
                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                            if stor157[address(arg1)].field_0:
                                                require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                                if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                                else:
                                                    stor157[address(arg1)].field_0++
                                                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                    stor157[address(arg1)].field_256++
                                                    stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                            else:
                                                if 0 >= stor160:
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
                                                else:
                                                    stor157[address(arg1)].field_0++
                                                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                    stor157[address(arg1)].field_256++
                                                    stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                    if not arg2:
                                                        revert with 0, 
                                                                    32,
                                                                    37,
                                                                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                    mem[ceil32(arg5.length) + 625 len 27]
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        35,
                                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 623 len 29]
                                                        else:
                                                            if uint128(arg3) > balanceOf[address(arg2)]:
                                                                revert with 0, 
                                                                            32,
                                                                            38,
                                                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                            mem[ceil32(arg5.length) + 590 len 26],
                                                                            mem[ceil32(arg5.length) + 642 len 6]
                                                            else:
                                                                balanceOf[address(arg2)] -= uint128(arg3)
                                                                if uint128(arg3) + balanceOf[arg1] < balanceOf[arg1]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] = uint128(arg3) + balanceOf[arg1]
                                                                    emit Transfer(uint128(arg3), arg2, arg1);
                                                                    emit Undelegated(arg3, arg1, arg2);
                                                                    return 1
}

function delgateWithSign(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if block.timestamp >= arg4:
        revert with 0, 'sign is expired'
    else:
        mem[ceil32(arg5.length) + 160] = this.address << 96
        mem[ceil32(arg5.length) + 180] = address(arg2)
        mem[ceil32(arg5.length) + 128] = 104
        if 65 == arg5.length:
            if mem[160] <= 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                if arg1:
                    revert with 0, 'This action is not verified'
                else:
                    if arg1 == arg2:
                        revert with 0, 
                                    32,
                                    39,
                                    0x73556e61626c6520746f2064656c656761746520746f2064656c656761746f7220616464726573,
                                    mem[ceil32(arg5.length) + 371 len 25]
                    else:
                        if arg3 + delegates[address(arg1)].field_0 < delegates[address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            delegates[address(arg1)].field_0 = uint128(arg3 + delegates[address(arg1)].field_0)
                            if arg3 + delegates[arg2].field_128 < delegates[arg2].field_128:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                delegates[address(arg2)].field_128 = uint128(arg3 + delegates[arg2].field_128)
                                if arg3 + delegates[address(arg2)][1][address(arg1)].field_0 < delegates[address(arg2)][1][address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    delegates[address(arg2)][1][address(arg1)].field_0 = uint128(arg3 + delegates[address(arg2)][1][address(arg1)].field_0)
                                    if delegates[address(arg1)].field_128 > balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if balanceOf[address(arg1)] - delegates[address(arg1)].field_128 < arg3:
                                            revert with 0, 'not enough undelgated tokens'
                                        else:
                                            if stor157[address(arg1)].field_0:
                                                require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                                if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                    if stor157[address(arg2)].field_0:
                                                        require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                                        if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                    else:
                                                        if 0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                else:
                                                    stor157[address(arg1)].field_0++
                                                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                    stor157[address(arg1)].field_256++
                                                    stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                    if stor157[address(arg2)].field_0:
                                                        require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                                        if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                    else:
                                                        if 0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                            else:
                                                if 0 >= stor160:
                                                    if stor157[address(arg2)].field_0:
                                                        require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                                        if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                    else:
                                                        if 0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                else:
                                                    stor157[address(arg1)].field_0++
                                                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                    stor157[address(arg1)].field_256++
                                                    stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                    if stor157[address(arg2)].field_0:
                                                        require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                                        if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                    else:
                                                        if 0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
            else:
                if arg1:
                    revert with 0, 'This action is not verified'
                else:
                    if arg1 == arg2:
                        revert with 0, 
                                    32,
                                    39,
                                    0x73556e61626c6520746f2064656c656761746520746f2064656c656761746f7220616464726573,
                                    mem[ceil32(arg5.length) + 371 len 25]
                    else:
                        if arg3 + delegates[address(arg1)].field_0 < delegates[address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            delegates[address(arg1)].field_0 = uint128(arg3 + delegates[address(arg1)].field_0)
                            if arg3 + delegates[arg2].field_128 < delegates[arg2].field_128:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                delegates[address(arg2)].field_128 = uint128(arg3 + delegates[arg2].field_128)
                                if arg3 + delegates[address(arg2)][1][address(arg1)].field_0 < delegates[address(arg2)][1][address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    delegates[address(arg2)][1][address(arg1)].field_0 = uint128(arg3 + delegates[address(arg2)][1][address(arg1)].field_0)
                                    if delegates[address(arg1)].field_128 > balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if balanceOf[address(arg1)] - delegates[address(arg1)].field_128 < arg3:
                                            revert with 0, 'not enough undelgated tokens'
                                        else:
                                            if stor157[address(arg1)].field_0:
                                                require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                                if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                    if stor157[address(arg2)].field_0:
                                                        require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                                        if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                    else:
                                                        if 0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                else:
                                                    stor157[address(arg1)].field_0++
                                                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                    stor157[address(arg1)].field_256++
                                                    stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                    if stor157[address(arg2)].field_0:
                                                        require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                                        if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                    else:
                                                        if 0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                            else:
                                                if 0 >= stor160:
                                                    if stor157[address(arg2)].field_0:
                                                        require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                                        if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                    else:
                                                        if 0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                else:
                                                    stor157[address(arg1)].field_0++
                                                    stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                    stor157[address(arg1)].field_256++
                                                    stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                    if stor157[address(arg2)].field_0:
                                                        require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                                        if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                    else:
                                                        if 0 >= stor160:
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
                                                        else:
                                                            stor157[address(arg2)].field_0++
                                                            stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                            stor157[address(arg2)].field_256++
                                                            stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                            if not arg1:
                                                                revert with 0, 
                                                                            32,
                                                                            37,
                                                                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 433 len 27]
                                                            else:
                                                                if not arg2:
                                                                    revert with 0, 
                                                                                32,
                                                                                35,
                                                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                                mem[ceil32(arg5.length) + 431 len 29]
                                                                else:
                                                                    if uint128(arg3) > balanceOf[address(arg1)]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    38,
                                                                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                    mem[ceil32(arg5.length) + 398 len 26],
                                                                                    mem[ceil32(arg5.length) + 450 len 6]
                                                                    else:
                                                                        balanceOf[address(arg1)] -= uint128(arg3)
                                                                        if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                            emit Transfer(uint128(arg3), arg1, arg2);
                                                                            emit Delegated(arg3, arg1, arg2);
                                                                            return 1
        else:
            if arg1:
                revert with 0, 'This action is not verified'
            else:
                if arg1 == arg2:
                    revert with 0, 
                                32,
                                39,
                                0x73556e61626c6520746f2064656c656761746520746f2064656c656761746f7220616464726573,
                                mem[ceil32(arg5.length) + 371 len 25]
                else:
                    if arg3 + delegates[address(arg1)].field_0 < delegates[address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        delegates[address(arg1)].field_0 = uint128(arg3 + delegates[address(arg1)].field_0)
                        if arg3 + delegates[arg2].field_128 < delegates[arg2].field_128:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            delegates[address(arg2)].field_128 = uint128(arg3 + delegates[arg2].field_128)
                            if arg3 + delegates[address(arg2)][1][address(arg1)].field_0 < delegates[address(arg2)][1][address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                delegates[address(arg2)][1][address(arg1)].field_0 = uint128(arg3 + delegates[address(arg2)][1][address(arg1)].field_0)
                                if delegates[address(arg1)].field_128 > balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if balanceOf[address(arg1)] - delegates[address(arg1)].field_128 < arg3:
                                        revert with 0, 'not enough undelgated tokens'
                                    else:
                                        if stor157[address(arg1)].field_0:
                                            require stor157[address(arg1)].field_0 - 1 < stor157[address(arg1)].field_0
                                            if stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 >= stor160:
                                                if stor157[address(arg2)].field_0:
                                                    require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                                    if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg2)].field_0++
                                                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                        stor157[address(arg2)].field_256++
                                                        stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                                else:
                                                    if 0 >= stor160:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg2)].field_0++
                                                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                        stor157[address(arg2)].field_256++
                                                        stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                            else:
                                                stor157[address(arg1)].field_0++
                                                stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                stor157[address(arg1)].field_256++
                                                stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                if stor157[address(arg2)].field_0:
                                                    require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                                    if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg2)].field_0++
                                                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                        stor157[address(arg2)].field_256++
                                                        stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                                else:
                                                    if 0 >= stor160:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg2)].field_0++
                                                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                        stor157[address(arg2)].field_256++
                                                        stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                        else:
                                            if 0 >= stor160:
                                                if stor157[address(arg2)].field_0:
                                                    require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                                    if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg2)].field_0++
                                                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                        stor157[address(arg2)].field_256++
                                                        stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                                else:
                                                    if 0 >= stor160:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg2)].field_0++
                                                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                        stor157[address(arg2)].field_256++
                                                        stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                            else:
                                                stor157[address(arg1)].field_0++
                                                stor157[address(arg1)][stor157[address(arg1)].field_0].field_0 = stor160
                                                stor157[address(arg1)].field_256++
                                                stor[stor157[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg1)]
                                                if stor157[address(arg2)].field_0:
                                                    require stor157[address(arg2)].field_0 - 1 < stor157[address(arg2)].field_0
                                                    if stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 >= stor160:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg2)].field_0++
                                                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                        stor157[address(arg2)].field_256++
                                                        stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                                else:
                                                    if 0 >= stor160:
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
                                                    else:
                                                        stor157[address(arg2)].field_0++
                                                        stor157[address(arg2)][stor157[address(arg2)].field_0].field_0 = stor160
                                                        stor157[address(arg2)].field_256++
                                                        stor[stor157[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor157', 157)))].field_0 = balanceOf[address(arg2)]
                                                        if not arg1:
                                                            revert with 0, 
                                                                        32,
                                                                        37,
                                                                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                        mem[ceil32(arg5.length) + 433 len 27]
                                                        else:
                                                            if not arg2:
                                                                revert with 0, 
                                                                            32,
                                                                            35,
                                                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                            mem[ceil32(arg5.length) + 431 len 29]
                                                            else:
                                                                if uint128(arg3) > balanceOf[address(arg1)]:
                                                                    revert with 0, 
                                                                                32,
                                                                                38,
                                                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                                mem[ceil32(arg5.length) + 398 len 26],
                                                                                mem[ceil32(arg5.length) + 450 len 6]
                                                                else:
                                                                    balanceOf[address(arg1)] -= uint128(arg3)
                                                                    if uint128(arg3) + balanceOf[arg2] < balanceOf[arg2]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[address(arg2)] = uint128(arg3) + balanceOf[arg2]
                                                                        emit Transfer(uint128(arg3), arg1, arg2);
                                                                        emit Delegated(arg3, arg1, arg2);
                                                                        return 1
}



}
