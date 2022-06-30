contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of address tradersCount;

function tradersCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(tradersCount[address(arg1)])
}

function hasOpenPosition(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(tokenById[address(arg1)][address(arg2)].field_1280)
}

function getTraderById(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(tradersCount[address(arg1)])
    return address(tradersCount[address(arg1)][arg2])
}

function getTokenById(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not tokenById[address(arg1)][address(arg2)].field_1280:
        revert with 0, 'sPosition doesn't not exists'
    require arg3 < tokenById[address(arg1)][address(arg2)].field_1536
    return stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenById', 3)))) + arg3].field_0, 
           tokenById[address(arg1)][address(arg2)][3][stor[('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'tokenById', 3)))) + arg3].field_0].field_0
}

function owner() payable {
    return owner
}

function getTokenListCount(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not tokenById[address(arg1)][address(arg2)].field_1280:
        revert with 0, 'sPosition doesn't not exists'
    return tokenById[address(arg1)][address(arg2)].field_1536
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addToPoolServicesList(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getPositionDetails(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if tokenById[address(arg1)][address(arg2)].field_1536:
        idx = 512
        s = 0
        while (32 * tokenById[address(arg1)][address(arg2)].field_1536) + 480 > idx:
            mem[idx + 32] = tokenById[address(arg1)][address(arg2)][s + 6].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return tokenById[address(arg1)][address(arg2)].field_0, 
           tokenById[address(arg1)][address(arg2)].field_256,
           tokenById[address(arg1)][address(arg2)].field_1024
}

function closePosition(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, 'Allowed for pool services only'
    if not tokenById[msg.sender][address(arg1)].field_1280:
        revert with 0, 'sPosition doesn't not exists'
    if not tokenById[address(msg.sender)][address(arg1)].field_1280:
        revert with 0, 'sPosition doesn't not exists'
    if var21002 >= var21001:
        tokenById[address(msg.sender)][address(arg1)].field_1280 = 0
        tokenById[address(msg.sender)][address(arg1)].field_0 = 0
        tokenById[address(msg.sender)][address(arg1)].field_256 = 0
        tokenById[address(msg.sender)][address(arg1)].field_1024 = 0
    if not tokenById[address(msg.sender)][address(arg1)].field_1280:
        revert with 0, 'sPosition doesn't not exists'
    require var27005 < tokenById[address(msg.sender)][address(arg1)].field_1536
    tokenById[address(msg.sender)][address(arg1)][2][address(var31002)].field_0 = 0
    tokenById[address(msg.sender)][address(arg1)][3][address(var31002)].field_0 = 0
    if not tokenById[address(msg.sender)][address(arg1)].field_1280:
        revert with 0, 'sPosition doesn't not exists'
    if var39002 >= var39001:
        tokenById[address(msg.sender)][address(arg1)].field_1280 = 0
        tokenById[address(msg.sender)][address(arg1)].field_0 = 0
        tokenById[address(msg.sender)][address(arg1)].field_256 = 0
        tokenById[address(msg.sender)][address(arg1)].field_1024 = 0
    if not tokenById[address(msg.sender)][address(arg1)].field_1280:
        revert with 0, 'sPosition doesn't not exists'
    require var45005 < tokenById[address(msg.sender)][address(arg1)].field_1536
    tokenById[address(msg.sender)][address(arg1)][2][address(var49002)].field_0 = 0
    tokenById[address(msg.sender)][address(arg1)][3][address(var49002)].field_0 = 0
    # nil
}

function swapAssets(address arg1, address arg2, uint256 arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if not stor1[msg.sender]:
        revert with 0, 'Allowed for pool services only'
    if not tokenById[msg.sender][address(arg1)].field_1280:
        revert with 0, 'sPosition doesn't not exists'
    if arg3 > tokenById[msg.sender][address(arg1)][3][address(arg2)].field_0:
        revert with 0, 'Insufficient funds'
    if arg3 > tokenById[address(msg.sender)][address(arg1)][3][address(arg2)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not tokenById[address(msg.sender)][address(arg1)].field_1280:
        revert with 0, 'sPosition doesn't not exists'
    if not tokenById[address(msg.sender)][address(arg1)][2][address(arg2)].field_0:
        tokenById[address(msg.sender)][address(arg1)][2][address(arg2)].field_0 = 1
        tokenById[address(msg.sender)][address(arg1)].field_1536++
        stor[tokenById[address(msg.sender)][address(arg1)].field_1536 + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'tokenById', 3))))].field_0 = arg2
    tokenById[address(msg.sender)][address(arg1)][3][address(arg2)].field_0 -= arg3
    if arg5 + tokenById[address(msg.sender)][address(arg1)][3][address(arg4)].field_0 < tokenById[address(msg.sender)][address(arg1)][3][address(arg4)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if not tokenById[address(msg.sender)][address(arg1)].field_1280:
        revert with 0, 'sPosition doesn't not exists'
    if not tokenById[address(msg.sender)][address(arg1)][2][address(arg4)].field_0:
        tokenById[address(msg.sender)][address(arg1)][2][address(arg4)].field_0 = 1
        tokenById[address(msg.sender)][address(arg1)].field_1536++
        stor[tokenById[address(msg.sender)][address(arg1)].field_1536 + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'tokenById', 3))))].field_0 = arg4
    tokenById[address(msg.sender)][address(arg1)][3][address(arg4)].field_0 += arg5
}

function openPosition(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if not stor1[msg.sender]:
        revert with 0, 'Allowed for pool services only'
    if tokenById[msg.sender][address(arg1)].field_1280:
        revert with 0, 'Position is already opened'
    if not tokenById[address(msg.sender)][address(arg1)].field_1288:
        uint256(tradersCount[address(msg.sender)])++
        address(tradersCount[address(msg.sender)][uint256(tradersCount[address(msg.sender)])]) = arg1
    mem[128] = arg4
    mem[160] = arg5
    mem[192] = 1
    mem[224] = 1
    mem[256] = 96
    tokenById[address(msg.sender)][address(arg1)].field_0 = arg3
    tokenById[address(msg.sender)][address(arg1)].field_256 = arg4
    tokenById[address(msg.sender)][address(arg1)].field_1024 = arg5
    tokenById[address(msg.sender)][address(arg1)].field_1280 = 1
    tokenById[address(msg.sender)][address(arg1)].field_1288 = 1
    tokenById[address(msg.sender)][address(arg1)].field_1536 = arg3
    if not arg3:
        idx = 0
        while tokenById[address(msg.sender)][address(arg1)].field_1536 > idx:
            tokenById[address(msg.sender)][address(arg1)][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3) + 128 > idx:
            tokenById[address(msg.sender)][address(arg1)][s + 6].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3) + 31) >> 5
        while tokenById[address(msg.sender)][address(arg1)].field_1536 > idx:
            tokenById[address(msg.sender)][address(arg1)][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    if not tokenById[address(msg.sender)][address(arg1)].field_1280:
        revert with 0, 'sPosition doesn't not exists'
    if not tokenById[address(msg.sender)][address(arg1)][2][address(arg2)].field_0:
        tokenById[address(msg.sender)][address(arg1)][2][address(arg2)].field_0 = 1
        tokenById[address(msg.sender)][address(arg1)].field_1536++
        stor[tokenById[address(msg.sender)][address(arg1)].field_1536 + ('array', 6, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'tokenById', 3))))].field_0 = arg2
    tokenById[address(msg.sender)][address(arg1)][3][address(arg2)].field_0 = arg4
}



}
