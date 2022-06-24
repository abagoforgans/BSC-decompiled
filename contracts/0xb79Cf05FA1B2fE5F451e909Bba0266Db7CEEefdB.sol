contract main {




// =====================  Runtime code  =====================


#
#  - claimAll(address arg1)
#  - claim(address arg1, uint256 arg2)
#  - getClaims(address arg1)
#
address owner;
array of struct stor1;
array of struct claims;
uint8 isPaused;
uint256 totalTokens;
mapping of uint256 allocation;
mapping of uint256 stor6;
mapping of uint256 sub_381c61ed;
array of uint256 sub_710cad22;
uint256 stor9;
address tokenAddress;

function sub_381c61ed(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_381c61ed[arg1][arg2]
}

function sub_710cad22(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_710cad22.length
    return sub_710cad22[arg1]
}

function totalTokens() payable {
    return totalTokens
}

function owner() payable {
    return owner
}

function claims(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < claims.length
    return claims[arg1].field_0, claims[arg1].field_256
}

function isPaused() payable {
    return bool(isPaused)
}

function allocation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return allocation[arg1]
}

function token() payable {
    return tokenAddress
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

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function pauseClaiming(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isPaused = uint8(arg1)
    emit ClaimingPaused(arg1);
}

function sub_f7a270f8(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_710cad22.length:
        mem[0] = 8
        if sub_710cad22[idx] == arg1:
            return 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function setClaimTime(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= claims.length:
        revert with 0, 'Claimer: Index out of bounds'
    claims[arg1].field_0 = arg2
    emit ClaimTimeChanged(claims[arg1].field_256, arg2, arg1);
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

function isClaimed(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_381c61ed[address(arg1)][arg2]:
        return bool(sub_381c61ed[address(arg1)][arg2])
    idx = 0
    while idx < sub_710cad22.length:
        mem[0] = 8
        if sub_710cad22[idx] == arg2:
            return 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function releaseClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= claims.length:
        revert with 0, 'Claimer: Index out of bounds'
    if claims[arg1].field_0 <= block.timestamp:
        revert with 0, 'Claimer: Claim already released'
    claims[arg1].field_0 = block.timestamp
    emit ClaimReleased(claims[arg1].field_256, block.timestamp, arg1);
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_408e5df6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not sub_381c61ed[address(arg1)][arg2]:
        idx = 0
        while idx < sub_710cad22.length:
            mem[0] = 8
            if sub_710cad22[idx] == arg2:
                return 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg2 >= claims.length:
            revert with 0, 50
        if claims[arg2].field_0 != 0:
            if claims[arg2].field_0 >= 1618877169:
                return (block.timestamp > claims[arg2].field_0)
        return 0
    else:
        return 0
}

function sub_3e5aa960(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    idx = 0
    while idx < sub_710cad22.length:
        mem[0] = 8
        if sub_710cad22[idx] != arg2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_710cad22.length:
            revert with 0, 50
        if sub_710cad22[idx] >= claims.length:
            revert with 0, 50
        if allocation[address(arg1)] and claims[stor8[idx]].field_256 > -1 / allocation[address(arg1)]:
            revert with 0, 17
        return (allocation[address(arg1)] * claims[stor8[idx]].field_256 / 100000)
    return sub_381c61ed[address(arg1)][arg2]
}

function setAllocation(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= allocation[address(arg1)]:
        if allocation[address(arg1)] < arg2:
            revert with 0, 17
        if totalTokens < allocation[address(arg1)] - arg2:
            revert with 0, 17
        totalTokens = totalTokens - allocation[address(arg1)] + arg2
    else:
        if arg2 < allocation[address(arg1)]:
            revert with 0, 17
        if totalTokens > !(arg2 - allocation[address(arg1)]):
            revert with 0, 17
        totalTokens = totalTokens + arg2 - allocation[address(arg1)]
    allocation[address(arg1)] = arg2
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address):
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_dbb3a1b8(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if cd[((32 * idx) + cd[4] + 36)] >= claims.length:
            revert with 0, 'Claimer: Index out of bounds'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_710cad22.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_710cad22.length > idx:
            sub_710cad22[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            sub_710cad22[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_710cad22.length > idx:
            sub_710cad22[idx] = 0
            idx = idx + 1
            continue 
}

function sub_8bf14c0b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < claims.length:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 7)
        if not sub_381c61ed[address(arg1)][idx]:
            s = 0
            while s < sub_710cad22.length:
                mem[0] = 8
                if sub_710cad22[s] != idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= claims.length:
                revert with 0, 50
            mem[0] = 2
            if claims[idx].field_0 != 0:
                if claims[idx].field_0 >= 1618877169:
                    if block.timestamp > claims[idx].field_0:
                        mem[32] = 5
                        if idx >= claims.length:
                            revert with 0, 50
                        mem[0] = 2
                        if allocation[address(arg1)] and claims[idx].field_256 > -1 / allocation[address(arg1)]:
                            revert with 0, 17
                        if 0 > !(allocation[address(arg1)] * claims[idx].field_256 / 100000):
                            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function sub_38d44611(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Claimer: Arguments length mismatch'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        if not allocation[address(cd[((32 * idx) + cd[4] + 36)])]:
            allocation[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
            if totalTokens > !cd[((32 * idx) + cd[36] + 36)]:
                revert with 0, 17
            totalTokens += cd[((32 * idx) + cd[36] + 36)]
        else:
            mem[96] = cd[((32 * idx) + cd[36] + 36)]
            mem[128] = allocation[address(cd[((32 * idx) + cd[4] + 36)])]
            emit 0x271c5628: cd[((32 * idx) + cd[36] + 36)], allocation[address(cd[((32 * idx) + cd[4] + 36)])], address(cd[((32 * idx) + cd[4] + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_91af47c6(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < sub_710cad22.length:
        if sub_710cad22[idx] >= claims.length:
            revert with 0, 50
        mem[0] = 2
        if arg1 and claims[stor8[idx]].field_256 > -1 / arg1:
            revert with 0, 17
        if s > !(arg1 * claims[stor8[idx]].field_256 / 100000):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (arg1 * claims[stor8[idx]].field_256 / 100000)
        continue 
    return (s * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length)
}

function id() payable {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function getTotalClaimed() payable {
    idx = 0
    s = 0
    while idx < sub_710cad22.length:
        if sub_710cad22[idx] >= claims.length:
            revert with 0, 50
        mem[0] = 2
        if totalTokens and claims[stor8[idx]].field_256 > -1 / totalTokens:
            revert with 0, 17
        if s > !(totalTokens * claims[stor8[idx]].field_256 / 100000):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (totalTokens * claims[stor8[idx]].field_256 / 100000)
        continue 
    if stor9 > !(s * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length):
        revert with 0, 17
    return (stor9 + (s * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length))
}

function sub_9228b244(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < sub_710cad22.length:
        if sub_710cad22[idx] >= claims.length:
            revert with 0, 50
        mem[0] = 2
        if allocation[address(arg1)] and claims[stor8[idx]].field_256 > -1 / allocation[address(arg1)]:
            revert with 0, 17
        if s > !(allocation[address(arg1)] * claims[stor8[idx]].field_256 / 100000):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (allocation[address(arg1)] * claims[stor8[idx]].field_256 / 100000)
        continue 
    if stor6[address(arg1)] > !(s * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length):
        revert with 0, 17
    return (stor6[address(arg1)] + (s * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length))
}

function getTotalRemainingAmount() payable {
    idx = 0
    s = 0
    while idx < sub_710cad22.length:
        if sub_710cad22[idx] >= claims.length:
            revert with 0, 50
        mem[0] = 2
        if totalTokens and claims[stor8[idx]].field_256 > -1 / totalTokens:
            revert with 0, 17
        if s > !(totalTokens * claims[stor8[idx]].field_256 / 100000):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (totalTokens * claims[stor8[idx]].field_256 / 100000)
        continue 
    if stor9 > !(s * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length):
        revert with 0, 17
    if totalTokens < stor9 + (s * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length):
        revert with 0, 17
    return (totalTokens - stor9 - (s * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length * sub_710cad22.length))
}



}
