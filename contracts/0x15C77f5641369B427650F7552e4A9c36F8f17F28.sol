contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address wearableAddress;
mapping of uint256 wearableTypeMintCap;
mapping of uint256 wearableTypeMintCount;
mapping of uint256 wearableTypeAccProb;
mapping of uint8 stor5;
array of struct wearableTypeProb;

function paused() payable {
    return bool(stor0)
}

function wearableTypeMintCount(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    return wearableTypeMintCount[arg1]
}

function wearableTypeClaimed(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor5[arg1][arg2])
}

function owner() payable {
    return owner
}

function wearableTypeAccProb(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    return wearableTypeAccProb[arg1]
}

function wearable() payable {
    return wearableAddress
}

function wearableTypeMintCap(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    return wearableTypeMintCap[arg1]
}

function wearableTypeProb(uint32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < wearableTypeProb[arg1].field_0
    return wearableTypeProb[arg1][arg2].field_0, wearableTypeProb[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function setWearableTypeMintCap(uint32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    wearableTypeMintCap[arg1 << 224] = arg2
}

function addWearableProb(uint32 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    wearableTypeAccProb[arg1 << 224] += arg3
    wearableTypeProb[arg1 << 224].field_0++
    wearableTypeProb[arg1 << 224][wearableTypeProb[arg1 << 224].field_0].field_0 = arg2
    wearableTypeProb[arg1 << 224][wearableTypeProb[arg1 << 224].field_0].field_256 = arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateWearableProb(uint32 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require arg2 < wearableTypeProb[arg1 << 224].field_0
    if arg3 + wearableTypeAccProb[arg1 << 224] < wearableTypeAccProb[arg1 << 224]:
        revert with 0, 'SafeMath: addition overflow'
    if wearableTypeProb[arg1 << 224][arg2].field_256 > arg3 + wearableTypeAccProb[arg1 << 224]:
        revert with 0, 'SafeMath: subtraction overflow'
    wearableTypeAccProb[arg1 << 224] = arg3 + wearableTypeAccProb[arg1 << 224] - wearableTypeProb[arg1 << 224][arg2].field_256
    require arg2 < wearableTypeProb[arg1 << 224].field_0
    wearableTypeProb[arg1 << 224][arg2].field_256 = arg3
}

function removeWearable(uint32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require arg2 < wearableTypeProb[arg1 << 224].field_0
    if wearableTypeProb[arg1 << 224][arg2].field_256 > wearableTypeAccProb[arg1 << 224]:
        revert with 0, 'SafeMath: subtraction overflow'
    wearableTypeAccProb[arg1 << 224] -= wearableTypeProb[arg1 << 224][arg2].field_256
    require wearableTypeProb[arg1 << 224].field_0 < wearableTypeProb[arg1 << 224].field_0
    require arg2 < wearableTypeProb[arg1 << 224].field_0
    wearableTypeProb[arg1 << 224][arg2].field_0 = wearableTypeProb[arg1 << 224][wearableTypeProb[arg1 << 224].field_0].field_0
    wearableTypeProb[arg1 << 224][arg2].field_256 = wearableTypeProb[arg1 << 224][wearableTypeProb[arg1 << 224].field_0].field_256
    require wearableTypeProb[arg1 << 224].field_0
    wearableTypeProb[arg1 << 224][wearableTypeProb[arg1 << 224].field_0 - 1].field_0 = 0
    wearableTypeProb[arg1 << 224][wearableTypeProb[arg1 << 224].field_0 - 1].field_256 = 0
    wearableTypeProb[arg1 << 224].field_0--
}

function claim(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor5[address(msg.sender)][arg1 << 224]:
        revert with 0, 'already claimed'
    if wearableTypeMintCount[arg1 << 224] >= wearableTypeMintCap[arg1 << 224]:
        revert with 0, 'cap reached'
    stor5[address(msg.sender)][arg1 << 224] = 1
    wearableTypeMintCount[arg1 << 224]++
    if not wearableTypeAccProb[arg1 << 224]:
        revert with 0, 'wrong probability'
    mem[128] = address(msg.sender)
    mem[148] = arg1 << 224
    mem[152] = block.hash(block.number - 1)
    mem[184] = wearableTypeAccProb[arg1 << 224]
    mem[216] = block.number
    mem[248] = block.timestamp
    mem[280] = block.difficulty
    mem[96] = 184
    mem[312] = 24
    mem[344] = 'SafeMath: modulo by zero'
    mem[0] = arg1
    mem[32] = 6
    mem[64] = (32 * wearableTypeProb[arg1 << 224].field_0) + 408
    mem[376] = wearableTypeProb[arg1 << 224].field_0
    s = 408
    idx = 0
    while idx < wearableTypeProb[arg1 << 224].field_0:
        mem[0] = sha3(arg1 << 224, 6)
        _44 = mem[64]
        mem[64] = mem[64] + 64
        mem[_44] = wearableTypeProb[arg1 << 224][idx].field_0
        mem[_44 + 32] = wearableTypeProb[arg1 << 224][idx].field_256
        mem[s] = _44
        s = s + 32
        idx = idx + 1
        continue 
    if mem[376] <= 0:
        revert with 0, 'wearbles not found'
    idx = 0
    s = 0
    while idx < mem[376]:
        require idx < mem[376]
        if sha3(msg.sender, arg1, block.hash(block.number - 1), wearableTypeAccProb[arg1 << 224], block.number, block.timestamp, block.difficulty) % wearableTypeAccProb[arg1 << 224] >= s + mem[mem[(32 * idx) + 408] + 32]:
            idx = idx + 1
            s = s + mem[mem[(32 * idx) + 408] + 32]
            continue 
        require idx < mem[376]
        require ext_code.size(wearableAddress)
        call wearableAddress.0x731133e9 with:
             gas gas_remaining wei
            args msg.sender, mem[mem[(32 * idx) + 408]], 1, 128, 0, mem[mem[64] + 164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return memory
          from mem[(32 * idx) + 408]
           len 32
    revert with 0, 'something wrong'
}



}
