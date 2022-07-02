contract main {




// =====================  Runtime code  =====================


const decimals = 18

const BURNER_ROLE = 0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848

const PAUSE_ROLE = 0x139c2898040ef16910dc9f44dc697df79363da767d8bc92f2e310312b816e46d

const SNAPSHOT_ROLE = 0x5fdbd35e8da83ee755d5e62a539e5ed7f47126abede0b8b10f9ea43dc6eed07f

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6


mapping of struct roleAdmin;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor4;
array of struct stor5;
array of struct stor6;
array of uint256 stor7;
array of uint256 stor8;
uint256 stor9;
uint8 stor10;
mapping of uint8 stor11;

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function paused() payable {
    return bool(stor10)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function isFrozen(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[address(arg1)])
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
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
            if 0 > !bool(idx):
                revert with 0, 17
            if 0 > !(idx / 2):
                revert with 0, 17
            if idx / 2 > !0:
                revert with 0, 17
            if idx / 2 >= stor7.length:
                revert with 0, 50
            mem[0] = 7
            if stor7[0.5 / idx] > arg1:
                idx = idx / 2
                continue 
            if 1 > !(idx / 2):
                revert with 0, 17
            idx = idx
            continue 
    if 0 == stor7.length:
        return totalSupply
    if 0 >= stor8.length:
        revert with 0, 50
    return stor8
}

function freeze(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[address(msg.sender)].field_0:
        stor11[address(arg1)] = 1
        return 1
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function unfreeze(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[address(msg.sender)].field_0:
        stor11[address(arg1)] = 0
        return 1
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function balanceOfAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[0] = arg1
    if arg2 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg2 > stor9:
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor6[address(arg1)].field_0:
        idx = stor6[mem[0]].field_0
        while 0 < idx:
            if 0 > !bool(idx):
                revert with 0, 17
            if 0 > !(idx / 2):
                revert with 0, 17
            if idx / 2 > !0:
                revert with 0, 17
            if idx / 2 >= stor6[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 6)
            if stor6[address(arg1)][0.5 / idx].field_0 > arg2:
                idx = idx / 2
                continue 
            if 1 > !(idx / 2):
                revert with 0, 17
            idx = idx
            continue 
    if 0 == stor6[address(arg1)].field_0:
        return balanceOf[address(arg1)]
    if 0 >= stor6[address(arg1)].field_256:
        revert with 0, 50
    return stor6[address(arg1)][1].field_0
}

function createSnapshot() payable {
    if roleAdmin[0x5fdbd35e8da83ee755d5e62a539e5ed7f47126abede0b8b10f9ea43dc6eed07f][address(msg.sender)].field_0:
        stor9++
        emit Snapshot(stor9);
        return stor9
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x5fdbd35e8da83ee755d5e62a539e5ed7f47126abede0b8b10f9ea43dc6eed07f
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function pauseToken() payable {
    if roleAdmin[0x139c2898040ef16910dc9f44dc697df79363da767d8bc92f2e310312b816e46d][address(msg.sender)].field_0:
        if stor10:
            revert with 0, 'Pausable: paused'
        stor10 = 1
        emit Paused(msg.sender);
        return 1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x139c2898040ef16910dc9f44dc697df79363da767d8bc92f2e310312b816e46d
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function unpauseToken() payable {
    if roleAdmin[0x139c2898040ef16910dc9f44dc697df79363da767d8bc92f2e310312b816e46d][address(msg.sender)].field_0:
        if not stor10:
            revert with 0, 'Pausable: not paused'
        stor10 = 0
        emit Unpaused(msg.sender);
        return 1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x139c2898040ef16910dc9f44dc697df79363da767d8bc92f2e310312b816e46d
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x3c11d16cbaffd01df69ce1c404f6340ee057498f5f00246190ea54220576a848
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if not stor6[address(arg1)].field_0:
        if 0 < stor9:
            stor6[address(arg1)].field_0++
            stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
            stor6[address(arg1)].field_256++
            stor[stor6[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = balanceOf[address(arg1)]
    else:
        if stor6[address(arg1)].field_0 < 1:
            revert with 0, 17
        if stor6[address(arg1)].field_0 - 1 >= stor6[address(arg1)].field_0:
            revert with 0, 50
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
        if stor7.length < 1:
            revert with 0, 17
        if stor7.length - 1 >= stor7.length:
            revert with 0, 50
        if stor7[stor7.length] < stor9:
            stor7.length++
            stor7[stor7.length] = stor9
            stor8.length++
            stor8[stor8.length] = totalSupply
    if stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Pausable: token transfer while paused'
    if stor11[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Blockable: Token is frozen by admin'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if not stor6[address(arg1)].field_0:
        if 0 < stor9:
            stor6[address(arg1)].field_0++
            stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
            stor6[address(arg1)].field_256++
            stor[stor6[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = balanceOf[address(arg1)]
    else:
        if stor6[address(arg1)].field_0 < 1:
            revert with 0, 17
        if stor6[address(arg1)].field_0 - 1 >= stor6[address(arg1)].field_0:
            revert with 0, 50
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
        if stor7.length < 1:
            revert with 0, 17
        if stor7.length - 1 >= stor7.length:
            revert with 0, 50
        if stor7[stor7.length] < stor9:
            stor7.length++
            stor7[stor7.length] = stor9
            stor8.length++
            stor8[stor8.length] = totalSupply
    if stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Pausable: token transfer while paused'
    if stor11[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Blockable: Token is frozen by admin'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function name() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() payable {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not msg.sender:
        if not stor6[address(arg1)].field_0:
            if 0 < stor9:
                stor6[address(arg1)].field_0++
                stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
                stor6[address(arg1)].field_256++
                stor[stor6[address(arg1)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = balanceOf[address(arg1)]
        else:
            if stor6[address(arg1)].field_0 < 1:
                revert with 0, 17
            if stor6[address(arg1)].field_0 - 1 >= stor6[address(arg1)].field_0:
                revert with 0, 50
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
            if stor7.length < 1:
                revert with 0, 17
            if stor7.length - 1 >= stor7.length:
                revert with 0, 50
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
            if stor6[address(msg.sender)].field_0 < 1:
                revert with 0, 17
            if stor6[address(msg.sender)].field_0 - 1 >= stor6[address(msg.sender)].field_0:
                revert with 0, 50
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
                if stor6[address(arg1)].field_0 < 1:
                    revert with 0, 17
                if stor6[address(arg1)].field_0 - 1 >= stor6[address(arg1)].field_0:
                    revert with 0, 50
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
                if stor7.length < 1:
                    revert with 0, 17
                if stor7.length - 1 >= stor7.length:
                    revert with 0, 50
                if stor7[stor7.length] < stor9:
                    stor7.length++
                    stor7[stor7.length] = stor9
                    stor8.length++
                    stor8[stor8.length] = totalSupply
    if stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Pausable: token transfer while paused'
    if stor11[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Blockable: Token is frozen by admin'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not arg1:
        if not stor6[address(arg2)].field_0:
            if 0 < stor9:
                stor6[address(arg2)].field_0++
                stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 = stor9
                stor6[address(arg2)].field_256++
                stor[stor6[address(arg2)].field_256 + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor6', 6)))].field_0 = balanceOf[address(arg2)]
        else:
            if stor6[address(arg2)].field_0 < 1:
                revert with 0, 17
            if stor6[address(arg2)].field_0 - 1 >= stor6[address(arg2)].field_0:
                revert with 0, 50
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
            if stor7.length < 1:
                revert with 0, 17
            if stor7.length - 1 >= stor7.length:
                revert with 0, 50
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
            if stor6[address(arg1)].field_0 < 1:
                revert with 0, 17
            if stor6[address(arg1)].field_0 - 1 >= stor6[address(arg1)].field_0:
                revert with 0, 50
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
                if stor6[address(arg2)].field_0 < 1:
                    revert with 0, 17
                if stor6[address(arg2)].field_0 - 1 >= stor6[address(arg2)].field_0:
                    revert with 0, 50
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
                if stor7.length < 1:
                    revert with 0, 17
                if stor7.length - 1 >= stor7.length:
                    revert with 0, 50
                if stor7[stor7.length] < stor9:
                    stor7.length++
                    stor7[stor7.length] = stor9
                    stor8.length++
                    stor8[stor8.length] = totalSupply
    if stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Pausable: token transfer while paused'
    if stor11[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Blockable: Token is frozen by admin'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
