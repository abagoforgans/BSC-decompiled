contract main {




// =====================  Runtime code  =====================


const name = 'pinboxlock'

const decimals = 18

const symbol = 'pbxl'


mapping of uint256 balanceOf;
uint256 totalSupply;
address owner;
address adminAddress;
mapping of uint256 allowance;
uint8 stor9;
uint8 stor9; offset 8
uint256 stor9; offset 8
mapping of uint8 stor11;
mapping of uint256 lockVolume;
array of uint256 note;

function totalSupply() {
    return totalSupply
}

function lockVolumeAddress(address arg1) {
    return lockVolume[address(arg1)]
}

function note() {
    return note[0 len note.length]
}

function noTokenLocked() {
    return bool(uint8(stor9.field_8))
}

function transferEnabled() {
    return bool(uint8(stor9.field_0))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function LockTransferAddress(address arg1) {
    return bool(stor11[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function unlockAllTokens() {
    require msg.sender == owner
    Mask(248, 0, stor9.field_8) = 1
}

function enableTransfer(bool arg1) {
    require msg.sender == owner
    uint8(stor9.field_0) = uint8(arg1)
}

function sub_e8ba56d7(?) {
    require msg.sender == owner
    note[] = Array(len=arg1.length, data=arg1[all])
}

function addressLockTransfer(address arg1, bool arg2) {
    require msg.sender == owner
    require arg1
    stor11[address(arg1)] = uint8(arg2)
    emit AddressLockTransfer(arg2, arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != owner
    require arg1 != adminAddress
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addTokenLock(address arg1, uint256 arg2) {
    require msg.sender
    if owner != msg.sender:
        require msg.sender == adminAddress
    require arg1
    require arg2 >= 0
    lockVolume[address(arg1)] = arg2
    emit AddTokenLock(arg2, arg1);
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    emit Mint(arg1, msg.sender);
    emit Transfer(arg1, 0, msg.sender);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function setAdmin(address arg1) {
    require msg.sender == owner
    require adminAddress != arg1
    require owner != arg1
    adminAddress = arg1
    allowance[address(msg.sender)][stor3] = 0
    emit Approval(0, msg.sender, adminAddress);
    require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = 1000000000 * 10^18
    emit Approval(1000000000 * 10^18, msg.sender, arg1);
}

function addressburn(address arg1, uint256 arg2) {
    require msg.sender == owner
    if arg2 <= 0:
        revert with 0, 'Invalid token values'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'Not enough tokens'
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit AddressBurn(address(arg1), arg2);
    emit Transfer(arg2, arg1, 0);
}

function addTokenLockDate(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender
    if owner != msg.sender:
        require msg.sender == adminAddress
    require arg1
    require arg2 > 0
    require arg3 > block.timestamp
    if arg3 > stor10[address(arg1)].field_0:
        stor10[address(arg1)].field_0 = arg3
    stor10[address(arg1)].field_256++
    stor[(2 * stor10[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0 = arg2
    stor[(2 * stor10[address(arg1)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_256 = arg3
    emit AddTokenLockDate(arg3, arg2, arg1);
}

function getMinLockedAmount(address arg1) {
    if stor10[address(arg1)].field_0 < block.timestamp:
        return 0
    s = 0
    t = 0
    t = 0
    idx = 0
    while idx < stor10[address(arg1)].field_256:
        mem[0] = sha3(address(arg1), 10) + 1
        if stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_256 <= block.timestamp:
            s = s
            t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_256
            t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0
            idx = idx + 1
            continue 
        require s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0 >= s
        s = s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0
        t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_256
        t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0
        idx = idx + 1
        continue 
    return s
}

function canTransferIfLocked(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(arg1)]
    if stor10[address(arg1)].field_0 < block.timestamp:
        return balanceOf[address(arg1)] - arg2 >= lockVolume[address(arg1)]
    s = 0
    t = 0
    t = 0
    idx = 0
    while idx < stor10[address(arg1)].field_256:
        mem[0] = sha3(address(arg1), 10) + 1
        if stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_256 <= block.timestamp:
            s = s
            t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_256
            t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0
            idx = idx + 1
            continue 
        require s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0 >= s
        s = s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0
        t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_256
        t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0
        idx = idx + 1
        continue 
    return balanceOf[address(arg1)] - arg2 >= s + lockVolume[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    require arg2 != owner
    require arg1
    if arg1 != owner:
        if arg1 != adminAddress:
            require uint8(stor9.field_0)
            if not uint8(stor9.field_8):
                require not stor11[address(arg1)]
                require arg3 <= balanceOf[address(arg1)]
                if stor10[address(arg1)].field_0 < block.timestamp:
                    require balanceOf[address(arg1)] - arg3 >= lockVolume[address(arg1)]
                else:
                    s = 0
                    t = 0
                    t = 0
                    idx = 0
                    while idx < stor10[address(arg1)].field_256:
                        mem[0] = sha3(address(arg1), 10) + 1
                        if stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_256 <= block.timestamp:
                            s = s
                            t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_256
                            t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0
                            idx = idx + 1
                            continue 
                        require s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0 >= s
                        s = s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0
                        t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_256
                        t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0
                        idx = idx + 1
                        continue 
                    require balanceOf[address(arg1)] - arg3 >= s + lockVolume[address(arg1)]
                require arg3 <= balanceOf[address(arg1)]
                if stor10[address(arg1)].field_0 < block.timestamp:
                    require balanceOf[address(arg1)] - arg3 >= lockVolume[address(arg1)]
                else:
                    s = 0
                    t = 0
                    t = 0
                    idx = 0
                    while idx < stor10[address(arg1)].field_256:
                        mem[0] = sha3(address(arg1), 10) + 1
                        if stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_256 <= block.timestamp:
                            s = s
                            t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_256
                            t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0
                            idx = idx + 1
                            continue 
                        require s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0 >= s
                        s = s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0
                        t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_256
                        t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10)))].field_0
                        idx = idx + 1
                        continue 
                    require balanceOf[address(arg1)] - arg3 >= s + lockVolume[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require arg1 != owner
    require msg.sender
    if owner != msg.sender:
        if adminAddress != msg.sender:
            require uint8(stor9.field_0)
            if not uint8(stor9.field_8):
                require not stor11[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
                if stor10[address(msg.sender)].field_0 < block.timestamp:
                    require balanceOf[address(msg.sender)] - arg2 >= lockVolume[address(msg.sender)]
                else:
                    s = 0
                    t = 0
                    t = 0
                    idx = 0
                    while idx < stor10[address(msg.sender)].field_256:
                        mem[0] = sha3(address(msg.sender), 10) + 1
                        if stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10)))].field_256 <= block.timestamp:
                            s = s
                            t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10)))].field_256
                            t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10)))].field_0
                            idx = idx + 1
                            continue 
                        require s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10)))].field_0 >= s
                        s = s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10)))].field_0
                        t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10)))].field_256
                        t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10)))].field_0
                        idx = idx + 1
                        continue 
                    require balanceOf[address(msg.sender)] - arg2 >= s + lockVolume[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
                if stor10[address(msg.sender)].field_0 < block.timestamp:
                    require balanceOf[address(msg.sender)] - arg2 >= lockVolume[address(msg.sender)]
                else:
                    s = 0
                    t = 0
                    t = 0
                    idx = 0
                    while idx < stor10[address(msg.sender)].field_256:
                        mem[0] = sha3(address(msg.sender), 10) + 1
                        if stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10)))].field_256 <= block.timestamp:
                            s = s
                            t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10)))].field_256
                            t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10)))].field_0
                            idx = idx + 1
                            continue 
                        require s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10)))].field_0 >= s
                        s = s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10)))].field_0
                        t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10)))].field_256
                        t = stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10)))].field_0
                        idx = idx + 1
                        continue 
                    require balanceOf[address(msg.sender)] - arg2 >= s + lockVolume[address(msg.sender)]
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
