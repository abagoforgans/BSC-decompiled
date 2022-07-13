contract main {




// =====================  Runtime code  =====================


address owner;
address sub_23db0db6Address;
array of struct tiers;

function getTiersCount() payable {
    return tiers.length
}

function tiers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tiers.length
    return tiers[arg1].field_0, tiers[arg1].field_256, tiers[arg1].field_512
}

function sub_23db0db6(?) payable {
    return sub_23db0db6Address
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function getMultiplierAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < tiers.length:
        return tiers[arg1].field_512
    else:
        return 0
}

function sub_cbd9382a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Invalid address'
    sub_23db0db6Address = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setTierInfo(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 4:
        revert with 0, 'Invalid index'
    if arg2 <= 0:
        revert with 0, 'Invalid minPoint'
    if arg3 <= 0:
        revert with 0, 'Invalid multiplier'
    if arg1 >= tiers.length:
        revert with 0, 50
    tiers[arg1].field_256 = arg2
    tiers[arg1].field_512 = arg3
}

function getMultiplierAtTierId(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    while idx < tiers.length:
        mem[0] = 2
        _10 = mem[64]
        mem[64] = mem[64] + 96
        mem[_10] = tiers[idx].field_0
        mem[_10 + 32] = tiers[idx].field_256
        mem[_10 + 64] = tiers[idx].field_512
        if tiers[idx].field_0 == arg1:
            return tiers[idx].field_512
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function getTiers() payable {
    mem[64] = (32 * tiers.length) + 128
    mem[96] = tiers.length
    s = 128
    idx = 0
    while idx < tiers.length:
        mem[0] = 2
        _12 = mem[64]
        mem[64] = mem[64] + 96
        mem[_12] = tiers[idx].field_0
        mem[_12 + 32] = tiers[idx].field_256
        mem[_12 + 64] = tiers[idx].field_512
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _20 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_20 + 32]
        mem[t + 64] = mem[_20 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _13 + (96 * _14) + -mem[64] + 64
}

function getTier(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_23db0db6Address)
    staticcall sub_23db0db6Address.0x4ff531b6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < tiers.length:
        mem[0] = 2
        _13 = mem[64]
        mem[64] = mem[64] + 96
        mem[_13] = tiers[idx].field_0
        mem[_13 + 32] = tiers[idx].field_256
        mem[_13 + 64] = tiers[idx].field_512
        if ext_call.return_data[0] < tiers[idx].field_256:
            return idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return tiers.length
}

function getTierId(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_23db0db6Address)
    staticcall sub_23db0db6Address.0x4ff531b6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < tiers.length:
        mem[0] = 2
        _12 = mem[64]
        mem[64] = mem[64] + 96
        mem[_12] = tiers[idx].field_0
        mem[_12 + 32] = tiers[idx].field_256
        mem[_12 + 64] = tiers[idx].field_512
        if ext_call.return_data[0] >= tiers[idx].field_256:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not idx:
            return 0
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= tiers.length:
            revert with 0, 50
        return tiers[idx].field_0
    if not tiers.length:
        return 0
    if tiers.length < 1:
        revert with 0, 17
    if tiers.length - 1 >= tiers.length:
        revert with 0, 50
    return tiers[tiers.length].field_0
}

function getMultiplier(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_23db0db6Address)
    staticcall sub_23db0db6Address.0x4ff531b6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < tiers.length:
        mem[0] = 2
        _12 = mem[64]
        mem[64] = mem[64] + 96
        mem[_12] = tiers[idx].field_0
        mem[_12 + 32] = tiers[idx].field_256
        mem[_12 + 64] = tiers[idx].field_512
        if ext_call.return_data[0] >= tiers[idx].field_256:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not idx:
            return 0
        if idx < 1:
            revert with 0, 17
        if idx - 1 >= tiers.length:
            revert with 0, 50
        return tiers[idx].field_0
    if not tiers.length:
        return 0
    if tiers.length < 1:
        revert with 0, 17
    if tiers.length - 1 >= tiers.length:
        revert with 0, 50
    return tiers[tiers.length].field_0
}

function getTotalMultiplier() payable {
    idx = 0
    s = 0
    while idx < tiers.length:
        mem[0] = 2
        if s > !tiers[idx].field_512:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + tiers[idx].field_512
        continue 
    return (s * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length * tiers.length)
}



}
