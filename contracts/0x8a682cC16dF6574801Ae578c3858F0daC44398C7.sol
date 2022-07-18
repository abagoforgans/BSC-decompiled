contract main {




// =====================  Runtime code  =====================


#
#  - sub_11b9a770(?)
#
const VERSION = ''


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct stor6;
array of uint256 stor7;
array of uint256 stor8;
uint256 stor9;
address owner;
address votingContractAddress;
address stakingAddress;
uint256 currentSnapshotId;
uint8 stor14;
uint256 stor14; offset 8
uint256 burnPercentage;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function currentSnapshotId() payable {
    return currentSnapshotId
}

function votingContract() payable {
    return votingContractAddress
}

function stakingAddress() payable {
    return stakingAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function burnPercentage() payable {
    return burnPercentage
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function snapshot() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor9++
    emit Snapshot(stor9);
    currentSnapshotId = stor9
}

function sub_1b936246(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if votingContractAddress != msg.sender:
            revert with 0, 'Caller is not allowed'
    uint8(stor14.field_0) = arg1
    Mask(248, 0, stor14.field_8) = 0
    emit 0x7a3fe257: arg1
    return 1
}

function setVotingContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if votingContractAddress != msg.sender:
            revert with 0, 'Caller is not allowed'
    if not arg1:
        revert with 0, 'Cannot use zero address'
    votingContractAddress = arg1
    emit 0x264f54b8: arg1
    return 1
}

function setStakingAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if votingContractAddress != msg.sender:
            revert with 0, 'Caller is not allowed'
    if not arg1:
        revert with 0, 'Cannot use zero address'
    stakingAddress = arg1
    emit StakingAddressUpdated(arg1);
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function totalSupplyAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg1 > stor9:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor7.length:
        idx = stor7.length
        while 0 < idx:
            require idx / 2 < stor7.length
            mem[0] = 7
            if stor7[0.5 / idx] <= arg1:
                idx = idx
                continue 
            idx = idx / 2
            continue 
    if 0 == stor7.length:
        return totalSupply
    require 0 < stor8.length
    return stor8
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f, mem[187 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
    if arg2 > stor9:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor6[address(arg1)].field_0:
        idx = stor6[mem[0]].field_0
        while 0 < idx:
            require idx / 2 < stor6[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 6)
            if stor6[address(arg1)][0.5 / idx].field_0 <= arg2:
                idx = idx
                continue 
            idx = idx / 2
            continue 
    if 0 == stor6[address(arg1)].field_0:
        return balanceOf[address(arg1)]
    require 0 < stor6[address(arg1)].field_256
    return stor6[address(arg1)][1].field_0
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if not stor6[address(msg.sender)].field_0:
        if 0 < stor9:
            stor6[address(msg.sender)].field_0++
            stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = stor9
            stor6[address(msg.sender)].field_256++
            stor[stor6[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6)))].field_0 = balanceOf[address(msg.sender)]
    else:
        require stor6[address(msg.sender)].field_0 - 1 < stor6[address(msg.sender)].field_0
        if stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 < stor9:
            stor6[address(msg.sender)].field_0++
            stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = stor9
            stor6[address(msg.sender)].field_256++
            stor[stor6[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6)))].field_0 = balanceOf[address(msg.sender)]
    if not stor7.length:
        if 0 < stor9:
            stor7.length++
            stor7[stor7.length] = stor9
            stor8.length++
            stor8[stor8.length] = totalSupply
    else:
        require stor7.length - 1 < stor7.length
        if stor7[stor7.length] < stor9:
            stor7.length++
            stor7[stor7.length] = stor9
            stor8.length++
            stor8[stor8.length] = totalSupply
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c61, mem[190 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit 0x65ddf252: arg1, msg.sender, 0
    emit Burn(arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not msg.sender:
        if not stor6[address(arg1)].field_0:
            if 0 < stor9:
                stor6[address(arg1)].field_0++
                stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
                stor6[address(arg1)].field_256++
                stor[stor6[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = balanceOf[address(arg1)]
        else:
            require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_0
            if stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 < stor9:
                stor6[address(arg1)].field_0++
                stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
                stor6[address(arg1)].field_256++
                stor[stor6[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = balanceOf[address(arg1)]
        if not stor7.length:
            if 0 < stor9:
                stor7.length++
                stor7[stor7.length] = stor9
                stor8.length++
                stor8[stor8.length] = totalSupply
        else:
            require stor7.length - 1 < stor7.length
            if stor7[stor7.length] < stor9:
                stor7.length++
                stor7[stor7.length] = stor9
                stor8.length++
                stor8[stor8.length] = totalSupply
    else:
        if not stor6[address(msg.sender)].field_0:
            if 0 < stor9:
                stor6[address(msg.sender)].field_0++
                stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = stor9
                stor6[address(msg.sender)].field_256++
                stor[stor6[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6)))].field_0 = balanceOf[address(msg.sender)]
        else:
            require stor6[address(msg.sender)].field_0 - 1 < stor6[address(msg.sender)].field_0
            if stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 < stor9:
                stor6[address(msg.sender)].field_0++
                stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = stor9
                stor6[address(msg.sender)].field_256++
                stor[stor6[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6)))].field_0 = balanceOf[address(msg.sender)]
        if arg1:
            if not stor6[address(arg1)].field_0:
                if 0 < stor9:
                    stor6[address(arg1)].field_0++
                    stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
                    stor6[address(arg1)].field_256++
                    stor[stor6[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = balanceOf[address(arg1)]
            else:
                require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_0
                if stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 < stor9:
                    stor6[address(arg1)].field_0++
                    stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
                    stor6[address(arg1)].field_256++
                    stor[stor6[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = balanceOf[address(arg1)]
        else:
            if not stor7.length:
                if 0 < stor9:
                    stor7.length++
                    stor7[stor7.length] = stor9
                    stor8.length++
                    stor8[stor8.length] = totalSupply
            else:
                require stor7.length - 1 < stor7.length
                if stor7[stor7.length] < stor9:
                    stor7.length++
                    stor7[stor7.length] = stor9
                    stor8.length++
                    stor8[stor8.length] = totalSupply
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[186 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0x65ddf252: arg2, msg.sender, arg1
    return 1
}

function sub_2c0206ba(?) payable {
    require calldata.size - 4 >= 32
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xe042455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[202 len 26]
    if arg1 <= 0:
        revert with 0, 'Impossible to transfer 0'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not stakingAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not msg.sender:
        if not stor6[stor12].field_0:
            if 0 < stor9:
                stor6[stor12].field_0++
                stor6[stor12][stor6[stor12].field_0].field_0 = stor9
                stor6[stor12].field_256++
                stor[stor6[stor12].field_256 + ('array', 1, ('map', ('stor', ('name', 'stor12', 12)), ('name', 'stor6', 6)))].field_0 = balanceOf[stor12]
        else:
            require stor6[stor12].field_0 - 1 < stor6[stor12].field_0
            if stor6[stor12][stor6[stor12].field_0].field_0 < stor9:
                stor6[stor12].field_0++
                stor6[stor12][stor6[stor12].field_0].field_0 = stor9
                stor6[stor12].field_256++
                stor[stor6[stor12].field_256 + ('array', 1, ('map', ('stor', ('name', 'stor12', 12)), ('name', 'stor6', 6)))].field_0 = balanceOf[stor12]
        if not stor7.length:
            if 0 < stor9:
                stor7.length++
                stor7[stor7.length] = stor9
                stor8.length++
                stor8[stor8.length] = totalSupply
        else:
            require stor7.length - 1 < stor7.length
            if stor7[stor7.length] < stor9:
                stor7.length++
                stor7[stor7.length] = stor9
                stor8.length++
                stor8[stor8.length] = totalSupply
    else:
        if not stor6[address(msg.sender)].field_0:
            if 0 < stor9:
                stor6[address(msg.sender)].field_0++
                stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = stor9
                stor6[address(msg.sender)].field_256++
                stor[stor6[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6)))].field_0 = balanceOf[address(msg.sender)]
        else:
            require stor6[address(msg.sender)].field_0 - 1 < stor6[address(msg.sender)].field_0
            if stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 < stor9:
                stor6[address(msg.sender)].field_0++
                stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = stor9
                stor6[address(msg.sender)].field_256++
                stor[stor6[address(msg.sender)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6)))].field_0 = balanceOf[address(msg.sender)]
        if stakingAddress:
            if not stor6[stor12].field_0:
                if 0 < stor9:
                    stor6[stor12].field_0++
                    stor6[stor12][stor6[stor12].field_0].field_0 = stor9
                    stor6[stor12].field_256++
                    stor[stor6[stor12].field_256 + ('array', 1, ('map', ('stor', ('name', 'stor12', 12)), ('name', 'stor6', 6)))].field_0 = balanceOf[stor12]
            else:
                require stor6[stor12].field_0 - 1 < stor6[stor12].field_0
                if stor6[stor12][stor6[stor12].field_0].field_0 < stor9:
                    stor6[stor12].field_0++
                    stor6[stor12][stor6[stor12].field_0].field_0 = stor9
                    stor6[stor12].field_256++
                    stor[stor6[stor12].field_256 + ('array', 1, ('map', ('stor', ('name', 'stor12', 12)), ('name', 'stor6', 6)))].field_0 = balanceOf[stor12]
        else:
            if not stor7.length:
                if 0 < stor9:
                    stor7.length++
                    stor7[stor7.length] = stor9
                    stor8.length++
                    stor8[stor8.length] = totalSupply
            else:
                require stor7.length - 1 < stor7.length
                if stor7[stor7.length] < stor9:
                    stor7.length++
                    stor7[stor7.length] = stor9
                    stor8.length++
                    stor8[stor8.length] = totalSupply
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[186 len 6]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 + balanceOf[stor12] < balanceOf[stor12]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor12] += arg1
    emit 0x65ddf252: arg1, msg.sender, stakingAddress
    emit 0x65f882cd: arg1, balanceOf[stor12], msg.sender
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if not arg1:
        if not stor6[address(arg2)].field_0:
            if 0 < stor9:
                stor6[address(arg2)].field_0++
                stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 = stor9
                stor6[address(arg2)].field_256++
                stor[stor6[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor6', 6)))].field_0 = balanceOf[address(arg2)]
        else:
            require stor6[address(arg2)].field_0 - 1 < stor6[address(arg2)].field_0
            if stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 < stor9:
                stor6[address(arg2)].field_0++
                stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 = stor9
                stor6[address(arg2)].field_256++
                stor[stor6[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor6', 6)))].field_0 = balanceOf[address(arg2)]
        if not stor7.length:
            if 0 < stor9:
                stor7.length++
                stor7[stor7.length] = stor9
                stor8.length++
                stor8[stor8.length] = totalSupply
        else:
            require stor7.length - 1 < stor7.length
            if stor7[stor7.length] < stor9:
                stor7.length++
                stor7[stor7.length] = stor9
                stor8.length++
                stor8[stor8.length] = totalSupply
    else:
        if not stor6[address(arg1)].field_0:
            if 0 < stor9:
                stor6[address(arg1)].field_0++
                stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
                stor6[address(arg1)].field_256++
                stor[stor6[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = balanceOf[address(arg1)]
        else:
            require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_0
            if stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 < stor9:
                stor6[address(arg1)].field_0++
                stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
                stor6[address(arg1)].field_256++
                stor[stor6[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = balanceOf[address(arg1)]
        if arg2:
            if not stor6[address(arg2)].field_0:
                if 0 < stor9:
                    stor6[address(arg2)].field_0++
                    stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 = stor9
                    stor6[address(arg2)].field_256++
                    stor[stor6[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor6', 6)))].field_0 = balanceOf[address(arg2)]
            else:
                require stor6[address(arg2)].field_0 - 1 < stor6[address(arg2)].field_0
                if stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 < stor9:
                    stor6[address(arg2)].field_0++
                    stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 = stor9
                    stor6[address(arg2)].field_256++
                    stor[stor6[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor6', 6)))].field_0 = balanceOf[address(arg2)]
        else:
            if not stor7.length:
                if 0 < stor9:
                    stor7.length++
                    stor7[stor7.length] = stor9
                    stor8.length++
                    stor8[stor8.length] = totalSupply
            else:
                require stor7.length - 1 < stor7.length
                if stor7[stor7.length] < stor9:
                    stor7.length++
                    stor7[stor7.length] = stor9
                    stor8.length++
                    stor8[stor8.length] = totalSupply
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e74206578636565647320, mem[186 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit 0x65ddf252: arg3, arg1, arg2
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, 0x7745524332303a207472616e7366657220616d6f756e74206578636565647320, mem[280 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
