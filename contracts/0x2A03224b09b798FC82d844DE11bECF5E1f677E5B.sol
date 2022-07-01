contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
mapping of struct grantStartTime;
uint256 totalVestingCount;
uint8 stor4;
uint256 stor5;
address stor6;
address stor7;
uint256 vestingStartTime;
uint16 vestingPeriod;
uint256 sub_84ba9bc9;
mapping of uint256 balanceOf;
mapping of uint8 stor12;
mapping of uint8 stor13;

function isVestingEnabled() {
    return bool(stor4)
}

function getGrantStartTime(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return grantStartTime[address(arg1)].field_0
}

function getGrantDaysClaimed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return grantStartTime[address(arg1)].field_528
}

function getGrantAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return grantStartTime[address(arg1)].field_256
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function vestingPeriod() {
    return vestingPeriod
}

function sub_84ba9bc9(?) {
    return sub_84ba9bc9
}

function owner() {
    return owner
}

function sub_90683e8c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor12[address(arg1)])
}

function sub_926210cc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return grantStartTime[address(arg1)].field_768
}

function totalVestingCount() {
    return totalVestingCount
}

function vestingStartTime() {
    return vestingStartTime
}

function getGrantVestingDuration(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return grantStartTime[address(arg1)].field_512
}

function token() {
    return tokenAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_8d6c9920(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vestingStartTime = arg1
    return 1
}

function sub_31864916(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = uint8(bool(arg1))
    return 1
}

function sub_c75214f5(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vestingPeriod = uint16(arg1)
    return 1
}

function updateTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
    require arg1
    tokenAddress = arg1
    return 1
}

function sub_80070c55(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if grantStartTime[address(arg1)].field_256 < grantStartTime[address(arg1)].field_768:
        revert with 0, 17
    return (grantStartTime[address(arg1)].field_256 - grantStartTime[address(arg1)].field_768)
}

function blackList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor12[address(arg1)]:
        revert with 0, 'User already blacklisted'
    stor12[address(arg1)] = 1
    emit BlackList(arg1);
}

function removeFromBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor12[address(arg1)]:
        revert with 0, 'User is not blacklisted'
    stor12[address(arg1)] = 0
    emit RemoveFromBlacklist(arg1);
}

function sub_11b99e96(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_bc07b779(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor5 = 1
    return 1
}

function recoverERC20(address arg1, uint256 arg2) {
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

function sub_725570b6(?) {
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if stor12[msg.sender]:
        revert with 0, 'Address is backlisted'
    if stor13[msg.sender]:
        revert with 0, 'Already migrated before'
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Address does not have required token'
    if ext_call.return_data[0] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    if balanceOf[msg.sender] > !(10^9 * ext_call.return_data[0]):
        revert with 0, 17
    balanceOf[msg.sender] += 10^9 * ext_call.return_data[0]
    if grantStartTime[address(msg.sender)].field_256:
        revert with 0, 'Grant already exists, must revoke first.'
    if vestingPeriod > 9125:
        revert with 0, 'Duration greater than 25 years'
    if not vestingPeriod:
        revert with 0, 18
    if 10^9 * ext_call.return_data[0] / vestingPeriod <= 0:
        revert with 0, 'amountVestedPerDay > 0'
    grantStartTime[address(msg.sender)].field_0 = vestingStartTime
    grantStartTime[address(msg.sender)].field_256 = 10^9 * ext_call.return_data[0]
    grantStartTime[address(msg.sender)].field_512 = vestingPeriod
    grantStartTime[address(msg.sender)].field_528 = 0
    grantStartTime[address(msg.sender)].field_768 = 0
    grantStartTime[address(msg.sender)].field_768 = 0
    grantStartTime[address(msg.sender)].field_1024 = msg.sender
    emit GrantAdded(msg.sender);
    if sub_84ba9bc9 > !(10^9 * ext_call.return_data[0]):
        revert with 0, 17
    sub_84ba9bc9 += 10^9 * ext_call.return_data[0]
    stor13[msg.sender] = 1
    emit Migrated(msg.sender, 10^9 * ext_call.return_data[0]);
    stor5 = 1
    return 1
}

function sub_2a386d05(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == uint16(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Arrays must be equal in length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        if grantStartTime[mem[(32 * idx) + 140 len 20]].field_256:
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            if not grantStartTime[mem[(32 * idx) + 140 len 20]].field_256:
                revert with 0, 'Grant not exists, cannot update.'
            if grantStartTime[address(mem[(32 * idx) + 128])].field_768:
                revert with 0, 'Grant already claimed at least once, cannot update.'
            if uint16(cd[68]) > 9125:
                revert with 0, 'Duration greater than 25 years'
            if not uint16(cd[68]):
                revert with 0, 18
            if grantStartTime[address(mem[(32 * idx) + 128])].field_256 / uint16(cd[68]) <= 0:
                revert with 0, 'amountVestedPerDay > 0'
            if grantStartTime[address(mem[(32 * idx) + 128])].field_256 > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 17
            grantStartTime[address(mem[(32 * idx) + 128])].field_256 += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            grantStartTime[address(mem[(32 * idx) + 128])].field_0 = cd[100]
            grantStartTime[address(mem[(32 * idx) + 128])].field_512 = uint16(cd[68])
            emit 0x7f877502: mem[(32 * idx) + 140 len 20]
        else:
            _204 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _208 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            if grantStartTime[mem[(32 * idx) + 140 len 20]].field_256:
                revert with 0, 'Grant already exists, must revoke first.'
            if uint16(cd[68]) > 9125:
                revert with 0, 'Duration greater than 25 years'
            if not uint16(cd[68]):
                revert with 0, 18
            if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] / uint16(cd[68]) <= 0:
                revert with 0, 'amountVestedPerDay > 0'
            _224 = mem[64]
            mem[64] = mem[64] + 192
            mem[_224] = cd[100]
            mem[_224 + 32] = _208
            mem[_224 + 64] = uint16(cd[68])
            mem[_224 + 96] = 0
            mem[_224 + 128] = 0
            mem[_224 + 160] = address(_204)
            grantStartTime[address(_204)].field_0 = cd[100]
            grantStartTime[address(_204)].field_256 = _208
            grantStartTime[address(_204)].field_512 = uint16(cd[68])
            grantStartTime[address(_204)].field_528 = 0
            grantStartTime[address(_204)].field_768 = 0
            grantStartTime[address(_204)].field_768 = 0
            grantStartTime[address(_204)].field_1024 = address(_204)
            emit GrantAdded(address(_204));
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        if balanceOf[address(msg.sender)] > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 11
        balanceOf[msg.sender] = balanceOf[address(msg.sender)] + mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        if sub_84ba9bc9 > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 17
        sub_84ba9bc9 += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor5 = 1
    return 1
}

function claimVestedTokens() {
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if not stor4:
        revert with 0, 'Vested is disabled'
    if grantStartTime[address(msg.sender)].field_256 <= grantStartTime[address(msg.sender)].field_768:
        revert with 0, 'Grant fully claimed'
    if block.timestamp < grantStartTime[address(msg.sender)].field_0:
        revert with 0, 'Vested is 0'
    if grantStartTime[address(msg.sender)].field_0 < 24 * 3600:
        revert with 0, 17
    if block.timestamp < grantStartTime[address(msg.sender)].field_0 - (24 * 3600):
        revert with 0, 17
    if block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600 >= grantStartTime[address(msg.sender)].field_512:
        if grantStartTime[address(msg.sender)].field_256 < grantStartTime[address(msg.sender)].field_768:
            revert with 0, 17
        if not grantStartTime[address(msg.sender)].field_256 - grantStartTime[address(msg.sender)].field_768:
            revert with 0, 'Vested is 0'
        if grantStartTime[msg.sender].field_528 > !grantStartTime[address(msg.sender)].field_512:
            revert with 0, 17
        grantStartTime[msg.sender].field_528 = uint16(grantStartTime[msg.sender].field_528 + grantStartTime[address(msg.sender)].field_512)
        if grantStartTime[msg.sender].field_768 > !(grantStartTime[address(msg.sender)].field_256 - grantStartTime[address(msg.sender)].field_768):
            revert with 0, 17
        grantStartTime[msg.sender].field_768 = grantStartTime[msg.sender].field_768 + grantStartTime[address(msg.sender)].field_256 - grantStartTime[address(msg.sender)].field_768
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args grantStartTime[msg.sender].field_1024, grantStartTime[address(msg.sender)].field_256 - grantStartTime[address(msg.sender)].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Not enough tokens'
        emit GrantTokensClaimed((grantStartTime[address(msg.sender)].field_256 - grantStartTime[address(msg.sender)].field_768), grantStartTime[msg.sender].field_1024);
        if sub_84ba9bc9 < grantStartTime[address(msg.sender)].field_256 - grantStartTime[address(msg.sender)].field_768:
            revert with 0, 17
        sub_84ba9bc9 = sub_84ba9bc9 - grantStartTime[address(msg.sender)].field_256 + grantStartTime[address(msg.sender)].field_768
    else:
        if block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600 < grantStartTime[address(msg.sender)].field_528:
            revert with 0, 17
        if not grantStartTime[address(msg.sender)].field_512:
            revert with 0, 18
        if uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) and grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512 > -1 / uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528):
            revert with 0, 17
        if not uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) * grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512:
            revert with 0, 'Vested is 0'
        if grantStartTime[msg.sender].field_528 > !uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528):
            revert with 0, 17
        grantStartTime[msg.sender].field_528 = uint16(grantStartTime[msg.sender].field_528 + uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528))
        if grantStartTime[msg.sender].field_768 > !(uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) * grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512):
            revert with 0, 17
        grantStartTime[msg.sender].field_768 += uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) * grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args grantStartTime[msg.sender].field_1024, uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) * grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Not enough tokens'
        emit GrantTokensClaimed((uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) * grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512), grantStartTime[msg.sender].field_1024);
        if sub_84ba9bc9 < uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) * grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512:
            revert with 0, 17
        sub_84ba9bc9 += -1 * uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) * grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512
    stor5 = 1
    return 1
}

function revokeTokenGrant(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if grantStartTime[address(arg1)].field_256 <= grantStartTime[address(arg1)].field_768:
        revert with 0, 'Grant fully claimed'
    if block.timestamp < grantStartTime[address(arg1)].field_0:
        if grantStartTime[address(arg1)].field_256 < grantStartTime[address(arg1)].field_768:
            revert with 0, 17
        if grantStartTime[address(arg1)].field_256 - grantStartTime[address(arg1)].field_768 < 0:
            revert with 0, 17
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, grantStartTime[address(arg1)].field_256 - grantStartTime[address(arg1)].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[0]
        grantStartTime[address(arg1)].field_0 = 0
        grantStartTime[address(arg1)].field_256 = 0
        grantStartTime[address(arg1)].field_512 = 0
        grantStartTime[address(arg1)].field_768 = 0
        grantStartTime[address(arg1)].field_1024 = 0
        emit GrantRevoked(address(arg1), 0, grantStartTime[address(arg1)].field_256 - grantStartTime[address(arg1)].field_768);
    else:
        if grantStartTime[address(arg1)].field_0 < 24 * 3600:
            revert with 0, 17
        if block.timestamp < grantStartTime[address(arg1)].field_0 - (24 * 3600):
            revert with 0, 17
        if block.timestamp + -grantStartTime[address(arg1)].field_0 + (24 * 3600) / 24 * 3600 >= grantStartTime[address(arg1)].field_512:
            if grantStartTime[address(arg1)].field_256 < grantStartTime[address(arg1)].field_768:
                revert with 0, 17
            if grantStartTime[address(arg1)].field_256 < grantStartTime[address(arg1)].field_768:
                revert with 0, 17
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), grantStartTime[address(arg1)].field_256 - grantStartTime[address(arg1)].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            grantStartTime[address(arg1)].field_0 = 0
            grantStartTime[address(arg1)].field_256 = 0
            grantStartTime[address(arg1)].field_512 = 0
            grantStartTime[address(arg1)].field_768 = 0
            grantStartTime[address(arg1)].field_1024 = 0
            emit GrantRevoked(address(arg1), grantStartTime[address(arg1)].field_256 - grantStartTime[address(arg1)].field_768, 0);
        else:
            if block.timestamp + -grantStartTime[address(arg1)].field_0 + (24 * 3600) / 24 * 3600 < grantStartTime[address(arg1)].field_528:
                revert with 0, 17
            if not grantStartTime[address(arg1)].field_512:
                revert with 0, 18
            if uint16((block.timestamp + -grantStartTime[address(arg1)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(arg1)].field_528) and grantStartTime[address(arg1)].field_256 / grantStartTime[address(arg1)].field_512 > -1 / uint16((block.timestamp + -grantStartTime[address(arg1)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(arg1)].field_528):
                revert with 0, 17
            if grantStartTime[address(arg1)].field_256 < grantStartTime[address(arg1)].field_768:
                revert with 0, 17
            if grantStartTime[address(arg1)].field_256 - grantStartTime[address(arg1)].field_768 < uint16((block.timestamp + -grantStartTime[address(arg1)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(arg1)].field_528) * grantStartTime[address(arg1)].field_256 / grantStartTime[address(arg1)].field_512:
                revert with 0, 17
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, grantStartTime[address(arg1)].field_256 - grantStartTime[address(arg1)].field_768 - (uint16((block.timestamp + -grantStartTime[address(arg1)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(arg1)].field_528) * grantStartTime[address(arg1)].field_256 / grantStartTime[address(arg1)].field_512)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), uint16((block.timestamp + -grantStartTime[address(arg1)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(arg1)].field_528) * grantStartTime[address(arg1)].field_256 / grantStartTime[address(arg1)].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            grantStartTime[address(arg1)].field_0 = 0
            grantStartTime[address(arg1)].field_256 = 0
            grantStartTime[address(arg1)].field_512 = 0
            grantStartTime[address(arg1)].field_768 = 0
            grantStartTime[address(arg1)].field_1024 = 0
            emit GrantRevoked(address(arg1), uint16((block.timestamp + -grantStartTime[address(arg1)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(arg1)].field_528) * grantStartTime[address(arg1)].field_256 / grantStartTime[address(arg1)].field_512, grantStartTime[address(arg1)].field_256 - grantStartTime[address(arg1)].field_768 - (uint16((block.timestamp + -grantStartTime[address(arg1)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(arg1)].field_528) * grantStartTime[address(arg1)].field_256 / grantStartTime[address(arg1)].field_512));
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x84ba9bc9(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x537df3b6(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x26dc7189(?????) > uint32(call.func_hash) >> 224:
                    if isVestingEnabled() == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(stor4)
                    if getGrantStartTime(address arg1) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return grantStartTime[address(cd[4])].field_0
                    if uint32(call.func_hash) >> 224 != unknown_0x11b99e96(?????):
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args address(cd[4])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0x26dc7189(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return grantStartTime[address(cd[4])].field_528
                if uint32(call.func_hash) >> 224 != unknown_0x2a386d05(?????):
                    if unknown_0x31864916(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == bool(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor4 = uint8(bool(cd[4]))
                        return 1
                    if unknown_0x4838d165(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if stor12[address(cd[4])]:
                            revert with 0, 'User already blacklisted'
                        stor12[address(cd[4])] = 1
                        emit BlackList(address(cd[4]));
                require not msg.value
                require calldata.size - 4 >= 128
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                s = 160
                idx = cd[4] + 36
                while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
                mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                idx = cd[36] + 36
                s = ceil32(32 * ('cd', 4).length) + 161
                while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                require cd[68] == uint16(cd[68])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if stor5 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor5 = 2
                if ('cd', 4).length != ('cd', 36).length:
                    revert with 0, 'Arrays must be equal in length'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[128]:
                        revert with 0, 50
                    if idx >= mem[128]:
                        revert with 0, 50
                    if grantStartTime[mem[(32 * idx) + 172 len 20]].field_256:
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        if not grantStartTime[mem[(32 * idx) + 172 len 20]].field_256:
                            revert with 0, 'Grant not exists, cannot update.'
                        if grantStartTime[address(mem[(32 * idx) + 160])].field_768:
                            revert with 0, 'Grant already claimed at least once, cannot update.'
                        if uint16(cd[68]) > 9125:
                            revert with 0, 'Duration greater than 25 years'
                        if not uint16(cd[68]):
                            revert with 0, 18
                        if grantStartTime[address(mem[(32 * idx) + 160])].field_256 / uint16(cd[68]) <= 0:
                            revert with 0, 'amountVestedPerDay > 0'
                        if grantStartTime[address(mem[(32 * idx) + 160])].field_256 > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]:
                            revert with 0, 17
                        grantStartTime[address(mem[(32 * idx) + 160])].field_256 += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                        grantStartTime[address(mem[(32 * idx) + 160])].field_0 = cd[100]
                        grantStartTime[address(mem[(32 * idx) + 160])].field_512 = uint16(cd[68])
                        emit 0x7f877502: mem[(32 * idx) + 172 len 20]
                    else:
                        _409 = mem[(32 * idx) + 160]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                            revert with 0, 50
                        _413 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                        mem[0] = mem[(32 * idx) + 172 len 20]
                        mem[32] = 2
                        if grantStartTime[mem[(32 * idx) + 172 len 20]].field_256:
                            revert with 0, 'Grant already exists, must revoke first.'
                        if uint16(cd[68]) > 9125:
                            revert with 0, 'Duration greater than 25 years'
                        if not uint16(cd[68]):
                            revert with 0, 18
                        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161] / uint16(cd[68]) <= 0:
                            revert with 0, 'amountVestedPerDay > 0'
                        _429 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_429] = cd[100]
                        mem[_429 + 32] = _413
                        mem[_429 + 64] = uint16(cd[68])
                        mem[_429 + 96] = 0
                        mem[_429 + 128] = 0
                        mem[_429 + 160] = address(_409)
                        grantStartTime[address(_409)].field_0 = cd[100]
                        grantStartTime[address(_409)].field_256 = _413
                        grantStartTime[address(_409)].field_512 = uint16(cd[68])
                        grantStartTime[address(_409)].field_528 = 0
                        grantStartTime[address(_409)].field_768 = 0
                        grantStartTime[address(_409)].field_768 = 0
                        grantStartTime[address(_409)].field_1024 = address(_409)
                        emit GrantAdded(address(_409));
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    if balanceOf[address(msg.sender)] > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 11
                    balanceOf[msg.sender] = balanceOf[address(msg.sender)] + mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    if sub_84ba9bc9 > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]:
                        revert with 0, 17
                    sub_84ba9bc9 += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor5 = 1
            else:
                if unknown_0x715018a6(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x537df3b6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not stor12[address(cd[4])]:
                            revert with 0, 'User is not blacklisted'
                        stor12[address(cd[4])] = 0
                        emit RemoveFromBlacklist(address(cd[4]));
                    if uint32(call.func_hash) >> 224 != unknown_0x6691461a(?????):
                        if unknown_0x6d72c24e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return grantStartTime[address(cd[4])].field_256
                        if uint32(call.func_hash) >> 224 != unknown_0x70a08231(?????):
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return balanceOf[address(cd[4])]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor7 = address(cd[4])
                    require address(cd[4])
                    tokenAddress = address(cd[4])
                else:
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        owner = 0
                        emit OwnershipTransferred(owner, 0);
                    if uint32(call.func_hash) >> 224 != unknown_0x725570b6(?????):
                        if unknown_0x7313ee5a(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return vestingPeriod
                        if uint32(call.func_hash) >> 224 != unknown_0x80070c55(?????):
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if grantStartTime[address(cd[4])].field_256 < grantStartTime[address(cd[4])].field_768:
                            revert with 0, 17
                        return (grantStartTime[address(cd[4])].field_256 - grantStartTime[address(cd[4])].field_768)
                    require not msg.value
                    if stor5 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor5 = 2
                    if stor12[msg.sender]:
                        revert with 0, 'Address is backlisted'
                    if stor13[msg.sender]:
                        revert with 0, 'Already migrated before'
                    require ext_code.size(stor6)
                    staticcall stor6.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'Address does not have required token'
                    if ext_call.return_data[0] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                        revert with 0, 17
                    if balanceOf[msg.sender] > !(10^9 * ext_call.return_data[0]):
                        revert with 0, 17
                    balanceOf[msg.sender] += 10^9 * ext_call.return_data[0]
                    if grantStartTime[address(msg.sender)].field_256:
                        revert with 0, 'Grant already exists, must revoke first.'
                    if vestingPeriod > 9125:
                        revert with 0, 'Duration greater than 25 years'
                    if not vestingPeriod:
                        revert with 0, 18
                    if 10^9 * ext_call.return_data[0] / vestingPeriod <= 0:
                        revert with 0, 'amountVestedPerDay > 0'
                    grantStartTime[address(msg.sender)].field_0 = vestingStartTime
                    grantStartTime[address(msg.sender)].field_256 = 10^9 * ext_call.return_data[0]
                    grantStartTime[address(msg.sender)].field_512 = vestingPeriod
                    grantStartTime[address(msg.sender)].field_528 = 0
                    grantStartTime[address(msg.sender)].field_768 = 0
                    grantStartTime[address(msg.sender)].field_768 = 0
                    grantStartTime[address(msg.sender)].field_1024 = msg.sender
                    emit GrantAdded(msg.sender);
                    if sub_84ba9bc9 > !(10^9 * ext_call.return_data[0]):
                        revert with 0, 17
                    sub_84ba9bc9 += 10^9 * ext_call.return_data[0]
                    stor13[msg.sender] = 1
                    emit Migrated(msg.sender, 10^9 * ext_call.return_data[0]);
                    stor5 = 1
            return 1
        if unknown_0xa8660a78(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0x90683e8c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor12[address(cd[4])])
                if uint32(call.func_hash) >> 224 != unknown_0x926210cc(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x99d508c0(?????):
                    require not msg.value
                    return totalVestingCount
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return grantStartTime[address(cd[4])].field_768
            if unknown_0x84ba9bc9(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_84ba9bc9
            if uint32(call.func_hash) >> 224 != unknown_0x8980f11f(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x8d6c9920(?????):
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                vestingStartTime = cd[4]
                return 1
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args owner, cd[36]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0xd4adad6a(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xd4adad6a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return grantStartTime[address(cd[4])].field_512
                if uint32(call.func_hash) >> 224 != unknown_0xe74f3fbb(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xfc0c546a(?????):
                        require not msg.value
                        return tokenAddress
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
                require not msg.value
                if stor5 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor5 = 2
                if not stor4:
                    revert with 0, 'Vested is disabled'
                if grantStartTime[address(msg.sender)].field_256 <= grantStartTime[address(msg.sender)].field_768:
                    revert with 0, 'Grant fully claimed'
                if block.timestamp < grantStartTime[address(msg.sender)].field_0:
                    revert with 0, 'Vested is 0'
                if grantStartTime[address(msg.sender)].field_0 < 24 * 3600:
                    revert with 0, 17
                if block.timestamp < grantStartTime[address(msg.sender)].field_0 - (24 * 3600):
                    revert with 0, 17
                if block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600 >= grantStartTime[address(msg.sender)].field_512:
                    if grantStartTime[address(msg.sender)].field_256 < grantStartTime[address(msg.sender)].field_768:
                        revert with 0, 17
                    if not grantStartTime[address(msg.sender)].field_256 - grantStartTime[address(msg.sender)].field_768:
                        revert with 0, 'Vested is 0'
                    if grantStartTime[msg.sender].field_528 > !grantStartTime[address(msg.sender)].field_512:
                        revert with 0, 17
                    grantStartTime[msg.sender].field_528 = uint16(grantStartTime[msg.sender].field_528 + grantStartTime[address(msg.sender)].field_512)
                    if grantStartTime[msg.sender].field_768 > !(grantStartTime[address(msg.sender)].field_256 - grantStartTime[address(msg.sender)].field_768):
                        revert with 0, 17
                    grantStartTime[msg.sender].field_768 = grantStartTime[msg.sender].field_768 + grantStartTime[address(msg.sender)].field_256 - grantStartTime[address(msg.sender)].field_768
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args grantStartTime[msg.sender].field_1024, grantStartTime[address(msg.sender)].field_256 - grantStartTime[address(msg.sender)].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Not enough tokens'
                    emit GrantTokensClaimed((grantStartTime[address(msg.sender)].field_256 - grantStartTime[address(msg.sender)].field_768), grantStartTime[msg.sender].field_1024);
                    if sub_84ba9bc9 < grantStartTime[address(msg.sender)].field_256 - grantStartTime[address(msg.sender)].field_768:
                        revert with 0, 17
                    sub_84ba9bc9 = sub_84ba9bc9 - grantStartTime[address(msg.sender)].field_256 + grantStartTime[address(msg.sender)].field_768
                else:
                    if block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600 < grantStartTime[address(msg.sender)].field_528:
                        revert with 0, 17
                    if not grantStartTime[address(msg.sender)].field_512:
                        revert with 0, 18
                    if uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) and grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512 > -1 / uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528):
                        revert with 0, 17
                    if not uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) * grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512:
                        revert with 0, 'Vested is 0'
                    if grantStartTime[msg.sender].field_528 > !uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528):
                        revert with 0, 17
                    grantStartTime[msg.sender].field_528 = uint16(grantStartTime[msg.sender].field_528 + uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528))
                    if grantStartTime[msg.sender].field_768 > !(uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) * grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512):
                        revert with 0, 17
                    grantStartTime[msg.sender].field_768 += uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) * grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args grantStartTime[msg.sender].field_1024, uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) * grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'Not enough tokens'
                    emit GrantTokensClaimed((uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) * grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512), grantStartTime[msg.sender].field_1024);
                    if sub_84ba9bc9 < uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) * grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512:
                        revert with 0, 17
                    sub_84ba9bc9 += -1 * uint16((block.timestamp + -grantStartTime[address(msg.sender)].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(msg.sender)].field_528) * grantStartTime[address(msg.sender)].field_256 / grantStartTime[address(msg.sender)].field_512
                stor5 = 1
                return 1
            if unknown_0xa8660a78(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return vestingStartTime
            if unknown_0xbc07b779(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if stor5 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor5 = 2
                call owner with:
                   value cd[4] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor5 = 1
                return 1
            if unknown_0xc75214f5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == uint16(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                vestingPeriod = uint16(cd[4])
                return 1
            if unknown_0xccb365b9(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if grantStartTime[address(cd[4])].field_256 <= grantStartTime[address(cd[4])].field_768:
                    revert with 0, 'Grant fully claimed'
                if block.timestamp < grantStartTime[address(cd[4])].field_0:
                    if grantStartTime[address(cd[4])].field_256 < grantStartTime[address(cd[4])].field_768:
                        revert with 0, 17
                    if grantStartTime[address(cd[4])].field_256 - grantStartTime[address(cd[4])].field_768 < 0:
                        revert with 0, 17
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args owner, grantStartTime[address(cd[4])].field_256 - grantStartTime[address(cd[4])].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    grantStartTime[address(cd[4])].field_0 = 0
                    grantStartTime[address(cd[4])].field_256 = 0
                    grantStartTime[address(cd[4])].field_512 = 0
                    grantStartTime[address(cd[4])].field_768 = 0
                    grantStartTime[address(cd[4])].field_1024 = 0
                    emit GrantRevoked(address(cd[4]), 0, grantStartTime[address(cd[4])].field_256 - grantStartTime[address(cd[4])].field_768);
                else:
                    if grantStartTime[address(cd[4])].field_0 < 24 * 3600:
                        revert with 0, 17
                    if block.timestamp < grantStartTime[address(cd[4])].field_0 - (24 * 3600):
                        revert with 0, 17
                    if block.timestamp + -grantStartTime[address(cd[4])].field_0 + (24 * 3600) / 24 * 3600 >= grantStartTime[address(cd[4])].field_512:
                        if grantStartTime[address(cd[4])].field_256 < grantStartTime[address(cd[4])].field_768:
                            revert with 0, 17
                        if grantStartTime[address(cd[4])].field_256 < grantStartTime[address(cd[4])].field_768:
                            revert with 0, 17
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[4]), grantStartTime[address(cd[4])].field_256 - grantStartTime[address(cd[4])].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_call.return_data[0]
                        grantStartTime[address(cd[4])].field_0 = 0
                        grantStartTime[address(cd[4])].field_256 = 0
                        grantStartTime[address(cd[4])].field_512 = 0
                        grantStartTime[address(cd[4])].field_768 = 0
                        grantStartTime[address(cd[4])].field_1024 = 0
                        emit GrantRevoked(address(cd[4]), grantStartTime[address(cd[4])].field_256 - grantStartTime[address(cd[4])].field_768, 0);
                    else:
                        if block.timestamp + -grantStartTime[address(cd[4])].field_0 + (24 * 3600) / 24 * 3600 < grantStartTime[address(cd[4])].field_528:
                            revert with 0, 17
                        if not grantStartTime[address(cd[4])].field_512:
                            revert with 0, 18
                        if uint16((block.timestamp + -grantStartTime[address(cd[4])].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(cd[4])].field_528) and grantStartTime[address(cd[4])].field_256 / grantStartTime[address(cd[4])].field_512 > -1 / uint16((block.timestamp + -grantStartTime[address(cd[4])].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(cd[4])].field_528):
                            revert with 0, 17
                        if grantStartTime[address(cd[4])].field_256 < grantStartTime[address(cd[4])].field_768:
                            revert with 0, 17
                        if grantStartTime[address(cd[4])].field_256 - grantStartTime[address(cd[4])].field_768 < uint16((block.timestamp + -grantStartTime[address(cd[4])].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(cd[4])].field_528) * grantStartTime[address(cd[4])].field_256 / grantStartTime[address(cd[4])].field_512:
                            revert with 0, 17
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, grantStartTime[address(cd[4])].field_256 - grantStartTime[address(cd[4])].field_768 - (uint16((block.timestamp + -grantStartTime[address(cd[4])].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(cd[4])].field_528) * grantStartTime[address(cd[4])].field_256 / grantStartTime[address(cd[4])].field_512)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_call.return_data[0]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[4]), uint16((block.timestamp + -grantStartTime[address(cd[4])].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(cd[4])].field_528) * grantStartTime[address(cd[4])].field_256 / grantStartTime[address(cd[4])].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_call.return_data[0]
                        grantStartTime[address(cd[4])].field_0 = 0
                        grantStartTime[address(cd[4])].field_256 = 0
                        grantStartTime[address(cd[4])].field_512 = 0
                        grantStartTime[address(cd[4])].field_768 = 0
                        grantStartTime[address(cd[4])].field_1024 = 0
                        emit GrantRevoked(address(cd[4]), uint16((block.timestamp + -grantStartTime[address(cd[4])].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(cd[4])].field_528) * grantStartTime[address(cd[4])].field_256 / grantStartTime[address(cd[4])].field_512, grantStartTime[address(cd[4])].field_256 - grantStartTime[address(cd[4])].field_768 - (uint16((block.timestamp + -grantStartTime[address(cd[4])].field_0 + (24 * 3600) / 24 * 3600) - grantStartTime[address(cd[4])].field_528) * grantStartTime[address(cd[4])].field_256 / grantStartTime[address(cd[4])].field_512));
}



}
