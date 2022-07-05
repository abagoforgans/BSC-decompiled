contract main {




// =====================  Runtime code  =====================


#
#  - reduceFreezingTo(address arg1, uint256 arg2, uint64 arg3, uint64 arg4)
#  - freezeTo(address arg1, uint256 arg2, uint64 arg3)
#  - reducibleFreezeTo(address arg1, uint256 arg2, uint64 arg3)
#
const name = 'PubeCoin'

const token_symbol = 'PUBE'

const initial_supply = 10^17

const decimals = 8

const token_decimals = 8

const sub_3d7e82c9(?) = 100 * 10^6

const sub_462a520f(?) = 8

const token_name = 'PubeCoin'

const symbol = 'PUBE'


mapping of uint256 actualBalanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 160
address owner;
mapping of uint64 stor4;
mapping of uint256 stor5;
mapping of uint256 freezingBalanceOf;
mapping of uint64 stor7;
mapping of uint256 stor8;
mapping of uint256 reducibleFreezingBalanceOf;
uint8 stor14; offset 160

function mintingFinished() payable {
    return bool(uint8(stor3.field_168))
}

function initialized() payable {
    return bool(stor14)
}

function reducibleFreezingBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return reducibleFreezingBalanceOf[address(arg1)]
}

function actualBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return actualBalanceOf[address(arg1)]
}

function totalSupply() payable {
    return totalSupply
}

function paused() payable {
    return bool(uint8(stor3.field_160))
}

function owner() payable {
    return owner
}

function freezingBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return freezingBalanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() payable {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() payable {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return (actualBalanceOf[address(arg1)] + freezingBalanceOf[address(arg1)] + reducibleFreezingBalanceOf[address(arg1)])
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= actualBalanceOf[address(msg.sender)]
    require arg1 <= actualBalanceOf[address(msg.sender)]
    actualBalanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= actualBalanceOf[address(msg.sender)]
    require arg2 <= actualBalanceOf[address(msg.sender)]
    actualBalanceOf[address(msg.sender)] -= arg2
    require actualBalanceOf[address(arg1)] + arg2 >= actualBalanceOf[address(arg1)]
    actualBalanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function freezingCount(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[24 len 8] = 0
    mem[4 len 20] = arg1
    mem[0 len 16] = 0x1babf81da991baaf5c40ecc0dbe18 * 3600
    mem[32] = 4
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while uint64(idx):
        mem[0] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(idx)
        mem[32] = 4
        idx = stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(idx)]
        s = s + 1
        continue 
    return s
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not uint8(stor3.field_160)
    require arg2
    require arg3 <= actualBalanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= actualBalanceOf[address(arg1)]
    actualBalanceOf[address(arg1)] -= arg3
    require actualBalanceOf[address(arg2)] + arg3 >= actualBalanceOf[address(arg2)]
    actualBalanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getFreezing(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while idx < arg2 + 1:
        mem[0] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(s)
        mem[32] = 4
        if stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(s)]:
            idx = idx + 1
            s = stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(s)]
            continue 
        else:
            return 0
    return arg2 + 1 << 198, 
           stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or 64 * arg2 + 1 % 288230376151711744]
}

function reducibleFreezingCount(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    mem[152 len 8] = 0
    mem[132 len 20] = arg1
    mem[128 len 16] = 0x1babf81da991baaf5c40ecc0dbe18 * 3600
    mem[172 len 20] = arg2
    mem[165 len 7] = 0
    mem[160 len 5] = 623163958880
    mem[96] = 64
    mem[64] = 192
    mem[0] = sha3(0x1babf81da991baaf5c40ecc0dbe18 * 3600, uint64(arg1), 0, 623163958880, 0, arg2)
    mem[32] = 7
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while uint64(idx):
        mem[mem[64] + 32] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(idx)
        mem[mem[64] + 64] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg2
        _16 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        mem[0] = sha3(mem[_16 + 32 len mem[_16]])
        mem[32] = 7
        idx = stor7[mem[0]]
        s = s + 1
        continue 
    return s
}

function getReducibleFreezing(address arg1, address arg2, uint256 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    idx = 0
    s = 0
    while idx < arg3 + 1:
        mem[mem[64] + 32] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(s)
        mem[mem[64] + 64] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg2
        _20 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        mem[0] = sha3(mem[_20 + 32 len mem[_20]])
        mem[32] = 7
        if stor7[mem[0]]:
            idx = idx + 1
            s = stor7[mem[0]]
            continue 
        else:
            return 0
    _15 = mem[64]
    mem[mem[64] + 56 len 8] = 64 * arg3 + 1 % 288230376151711744
    mem[mem[64] + 36 len 20] = arg1
    mem[mem[64] + 32 len 16] = 0x1babf81da991baaf5c40ecc0dbe18 * 3600
    mem[mem[64] + 76 len 20] = arg2
    mem[mem[64] + 69 len 7] = 0
    mem[mem[64] + 64 len 5] = 623163958880
    _16 = mem[64]
    mem[mem[64]] = 64
    mem[64] = mem[64] + 96
    mem[0] = sha3(mem[_16 + 32 len mem[_16]])
    mem[_15 + 96] = 64 * arg3 + 1 % 288230376151711744
    mem[_15 + 128] = stor8[mem[0]]
    return arg3 + 1 << 198, stor8[mem[0]]
}

function releaseReducibleFreezingOnceFor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Access denied'
    if not stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][0][623163958880][0][arg2]:
        revert with 0, 'Freezing not found'
    if uint64(block.timestamp) <= stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][0][623163958880][0][arg2]:
        revert with 0, 'Premature release attempt'
    stor8[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][0][623163958880][0][arg2]][623163958880][0][arg2] = 0
    require actualBalanceOf[address(arg1)] + stor8[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][0][623163958880][0][arg2]][623163958880][0][arg2] >= actualBalanceOf[address(arg1)]
    actualBalanceOf[address(arg1)] += stor8[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][0][623163958880][0][arg2]][623163958880][0][arg2]
    require stor8[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][0][623163958880][0][arg2]][623163958880][0][arg2] <= reducibleFreezingBalanceOf[address(arg1)]
    reducibleFreezingBalanceOf[address(arg1)] -= stor8[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][0][623163958880][0][arg2]][623163958880][0][arg2]
    if not stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][0][623163958880][0][arg2]][623163958880][0][arg2]:
        stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][0][623163958880][0][arg2] = 0
    else:
        stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][0][623163958880][0][arg2] = stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][0][623163958880][0][arg2]][623163958880][0][arg2]
        stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][0][623163958880][0][arg2]][623163958880][0][arg2] = 0
    emit Released(stor8[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(arg1)][0][623163958880][0][arg2]][623163958880][0][arg2], arg1);
}

function releaseReducibleFreezingOnce(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][0][623163958880][0][arg1]:
        revert with 0, 'Freezing not found'
    if uint64(block.timestamp) <= stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][0][623163958880][0][arg1]:
        revert with 0, 'Premature release attempt'
    stor8[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][0][623163958880][0][arg1]][623163958880][0][arg1] = 0
    require actualBalanceOf[address(msg.sender)] + stor8[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][0][623163958880][0][arg1]][623163958880][0][arg1] >= actualBalanceOf[address(msg.sender)]
    actualBalanceOf[address(msg.sender)] += stor8[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][0][623163958880][0][arg1]][623163958880][0][arg1]
    require stor8[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][0][623163958880][0][arg1]][623163958880][0][arg1] <= reducibleFreezingBalanceOf[address(msg.sender)]
    reducibleFreezingBalanceOf[address(msg.sender)] -= stor8[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][0][623163958880][0][arg1]][623163958880][0][arg1]
    if not stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][0][623163958880][0][arg1]][623163958880][0][arg1]:
        stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][0][623163958880][0][arg1] = 0
    else:
        stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][0][623163958880][0][arg1] = stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][0][623163958880][0][arg1]][623163958880][0][arg1]
        stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][0][623163958880][0][arg1]][623163958880][0][arg1] = 0
    emit Released(stor8[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][stor7[0x1babf81da991baaf5c40ecc0dbe18 * 3600][uint64(msg.sender)][0][623163958880][0][arg1]][623163958880][0][arg1], msg.sender);
}

function releaseOnce() payable {
    if not stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]:
        revert with 0, 'Freezing not found'
    if uint64(block.timestamp) <= stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]:
        revert with 0, 'Premature release attempt'
    stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]] = 0
    require actualBalanceOf[address(msg.sender)] + stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]] >= actualBalanceOf[address(msg.sender)]
    actualBalanceOf[address(msg.sender)] += stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]]
    require stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]] <= freezingBalanceOf[address(msg.sender)]
    freezingBalanceOf[address(msg.sender)] -= stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]]
    if not stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]]:
        stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64] = 0
    else:
        stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64] = stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]]
        stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]] = 0
    emit Released(stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]], msg.sender);
}

function releaseOnceFor(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Access denied'
    if not stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]:
        revert with 0, 'Freezing not found'
    if uint64(block.timestamp) <= stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]:
        revert with 0, 'Premature release attempt'
    stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]] = 0
    require actualBalanceOf[address(arg1)] + stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]] >= actualBalanceOf[address(arg1)]
    actualBalanceOf[address(arg1)] += stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]]
    require stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]] <= freezingBalanceOf[address(arg1)]
    freezingBalanceOf[address(arg1)] -= stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]]
    if not stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]]:
        stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64] = 0
    else:
        stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64] = stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]]
        stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]] = 0
    emit Released(stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]], arg1);
}

function releaseAll() payable {
    idx = 0
    s = 0
    while idx < 1:
        mem[0] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or uint64(s)
        mem[32] = 4
        if stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or uint64(s)]:
            idx = idx + 1
            s = stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or uint64(s)]
            continue 
        else:
            return 0
    if not var40002:
        return var40003
    idx = not not var40002
    s = var40001
    t = var40002
    t = var40003
    while idx:
        if not stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]:
            revert with 0, 'Freezing not found'
        if uint64(block.timestamp) <= stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]:
            revert with 0, 'Premature release attempt'
        stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]] = 0
        require actualBalanceOf[address(msg.sender)] + stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]] >= actualBalanceOf[address(msg.sender)]
        actualBalanceOf[address(msg.sender)] += stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]]
        require stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]] <= freezingBalanceOf[address(msg.sender)]
        freezingBalanceOf[address(msg.sender)] -= stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]]
        if not stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]]:
            stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64] = 0
        else:
            stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64] = stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]]
            stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]] = 0
        mem[96] = stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]]
        emit Released(stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64]], msg.sender);
        idx = 0
        u = 0
        while idx < 1:
            mem[0] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or uint64(u)
            mem[32] = 4
            if stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or uint64(u)]:
                idx = idx + 1
                u = stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or uint64(u)]
                continue 
            return (t + s)
        mem[0] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or 64
        mem[32] = 5
        idx = not not 64
        s = stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or 64]
        t = 64
        t = t + s
        continue 
    return t
}

function releaseAllFor(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Access denied'
    idx = 0
    s = 0
    while idx < 1:
        mem[0] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(s)
        mem[32] = 4
        if stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(s)]:
            idx = idx + 1
            s = stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(s)]
            continue 
        else:
            return 0
    if not var42002:
        return var42003
    idx = not not var42002
    s = var42001
    t = var42002
    t = var42003
    while idx:
        if not stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]:
            revert with 0, 'Freezing not found'
        if uint64(block.timestamp) <= stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]:
            revert with 0, 'Premature release attempt'
        stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]] = 0
        require actualBalanceOf[address(arg1)] + stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]] >= actualBalanceOf[address(arg1)]
        actualBalanceOf[address(arg1)] += stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]]
        require stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]] <= freezingBalanceOf[address(arg1)]
        freezingBalanceOf[address(arg1)] -= stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]]
        if not stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]]:
            stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64] = 0
        else:
            stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64] = stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]]
            stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]] = 0
        mem[96] = stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]]
        emit Released(stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64]], arg1);
        idx = 0
        u = 0
        while idx < 1:
            mem[0] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(u)
            mem[32] = 4
            if stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(u)]:
                idx = idx + 1
                u = stor4[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(u)]
                continue 
            return (t + s)
        mem[0] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or 64
        mem[32] = 5
        idx = not not 64
        s = stor5[0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or 64]
        t = 64
        t = t + s
        continue 
    return t
}

function reducibleReleaseAll(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < 1:
        mem[mem[64] + 32] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or uint64(s)
        mem[mem[64] + 64] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg1
        _13 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        mem[0] = sha3(mem[_13 + 32 len mem[_13]])
        mem[32] = 7
        if stor7[mem[0]]:
            idx = idx + 1
            s = stor7[mem[0]]
            continue 
        else:
            return 0
    mem[mem[64] + 56 len 8] = 64
    mem[mem[64] + 32 len 24] = Mask(192, 0, msg.sender)
    mem[mem[64] + 32 len 16] = 0x1babf81da991baaf5c40ecc0dbe18 * 3600
    mem[mem[64] + 76 len 20] = arg1
    mem[mem[64] + 69 len 7] = 0
    mem[mem[64] + 64 len 5] = 623163958880
    _9 = mem[64]
    mem[mem[64]] = 64
    mem[64] = mem[64] + 96
    mem[0] = sha3(mem[_9 + 32 len mem[_9]])
    mem[32] = 8
    if not var43002:
        return var43003
    idx = not not var43002
    s = var43001
    t = var43002
    t = var43003
    while idx:
        _214 = mem[64]
        mem[mem[64] + 32] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64
        mem[mem[64] + 64] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg1
        _215 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _217 = sha3(mem[_215 + 32 len mem[_215]])
        mem[0] = sha3(mem[_215 + 32 len mem[_215]])
        if not stor7[mem[0]]:
            revert with 0, 'Freezing not found'
        if uint64(block.timestamp) <= stor7[mem[0]]:
            revert with 0, 'Premature release attempt'
        mem[_214 + 128] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor7[mem[0]]
        mem[_214 + 160] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg1
        mem[_214 + 96] = 64
        mem[64] = _214 + 192
        _226 = sha3(0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor7[mem[0]], 0x9117776660000000000000000000000000000000000000000000000000000000 or arg1)
        mem[0] = sha3(0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor7[mem[0]], 0x9117776660000000000000000000000000000000000000000000000000000000 or arg1)
        stor8[_226] = 0
        require actualBalanceOf[address(msg.sender)] + stor8[_226] >= actualBalanceOf[address(msg.sender)]
        actualBalanceOf[address(msg.sender)] += stor8[_226]
        require stor8[_226] <= reducibleFreezingBalanceOf[address(msg.sender)]
        reducibleFreezingBalanceOf[address(msg.sender)] -= stor8[_226]
        if not stor7[mem[0]]:
            mem[0] = _217
            mem[32] = 7
            stor7[_217] = 0
            mem[_214 + 192] = stor8[_226]
            emit Released(stor8[_226], msg.sender);
            idx = 0
            u = 0
            while idx < 1:
                mem[mem[64] + 32] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or uint64(u)
                mem[mem[64] + 64] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg1
                _268 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                mem[0] = sha3(mem[_268 + 32 len mem[_268]])
                mem[32] = 7
                if stor7[mem[0]]:
                    idx = idx + 1
                    u = stor7[mem[0]]
                    continue 
                return (t + s)
            mem[mem[64] + 32] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or 64
            mem[mem[64] + 64] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg1
            _264 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            mem[0] = sha3(mem[_264 + 32 len mem[_264]])
        else:
            stor7[_217] = stor7[mem[0]]
            mem[0] = _226
            mem[32] = 7
            stor7[_226] = 0
            mem[_214 + 192] = stor8[_226]
            emit Released(stor8[_226], msg.sender);
            idx = 0
            u = 0
            while idx < 1:
                mem[mem[64] + 32] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or uint64(u)
                mem[mem[64] + 64] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg1
                _260 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                mem[0] = sha3(mem[_260 + 32 len mem[_260]])
                mem[32] = 7
                if stor7[mem[0]]:
                    idx = idx + 1
                    u = stor7[mem[0]]
                    continue 
                return (t + s)
            mem[mem[64] + 32] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or 64
            mem[mem[64] + 64] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg1
            _256 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            mem[0] = sha3(mem[_256 + 32 len mem[_256]])
        mem[32] = 8
        idx = not not 64
        s = stor8[mem[0]]
        t = 64
        t = t + s
        continue 
    return t
}

function reducibleReleaseAllFor(address arg1, address arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Access denied'
    idx = 0
    s = 0
    while idx < 1:
        mem[mem[64] + 32] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(s)
        mem[mem[64] + 64] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg2
        _15 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        mem[0] = sha3(mem[_15 + 32 len mem[_15]])
        mem[32] = 7
        if stor7[mem[0]]:
            idx = idx + 1
            s = stor7[mem[0]]
            continue 
        else:
            return 0
    mem[mem[64] + 56 len 8] = 64
    mem[mem[64] + 36 len 20] = arg1
    mem[mem[64] + 32 len 16] = 0x1babf81da991baaf5c40ecc0dbe18 * 3600
    mem[mem[64] + 76 len 20] = arg2
    mem[mem[64] + 69 len 7] = 0
    mem[mem[64] + 64 len 5] = 623163958880
    _11 = mem[64]
    mem[mem[64]] = 64
    mem[64] = mem[64] + 96
    mem[0] = sha3(mem[_11 + 32 len mem[_11]])
    mem[32] = 8
    if not var44002:
        return var44003
    idx = not not var44002
    s = var44001
    t = var44002
    t = var44003
    while idx:
        _216 = mem[64]
        mem[mem[64] + 32] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64
        mem[mem[64] + 64] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg2
        _217 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _219 = sha3(mem[_217 + 32 len mem[_217]])
        mem[0] = sha3(mem[_217 + 32 len mem[_217]])
        if not stor7[mem[0]]:
            revert with 0, 'Freezing not found'
        if uint64(block.timestamp) <= stor7[mem[0]]:
            revert with 0, 'Premature release attempt'
        mem[_216 + 128] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor7[mem[0]]
        mem[_216 + 160] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg2
        mem[_216 + 96] = 64
        mem[64] = _216 + 192
        _228 = sha3(0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor7[mem[0]], 0x9117776660000000000000000000000000000000000000000000000000000000 or arg2)
        mem[0] = sha3(0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or msg.sender << 64 or stor7[mem[0]], 0x9117776660000000000000000000000000000000000000000000000000000000 or arg2)
        stor8[_228] = 0
        require actualBalanceOf[address(msg.sender)] + stor8[_228] >= actualBalanceOf[address(msg.sender)]
        actualBalanceOf[address(msg.sender)] += stor8[_228]
        require stor8[_228] <= reducibleFreezingBalanceOf[address(msg.sender)]
        reducibleFreezingBalanceOf[address(msg.sender)] -= stor8[_228]
        if not stor7[mem[0]]:
            mem[0] = _219
            mem[32] = 7
            stor7[_219] = 0
            mem[_216 + 192] = stor8[_228]
            emit Released(stor8[_228], msg.sender);
            idx = 0
            u = 0
            while idx < 1:
                mem[mem[64] + 32] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(u)
                mem[mem[64] + 64] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg2
                _270 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                mem[0] = sha3(mem[_270 + 32 len mem[_270]])
                mem[32] = 7
                if stor7[mem[0]]:
                    idx = idx + 1
                    u = stor7[mem[0]]
                    continue 
                return (t + s)
            mem[mem[64] + 32] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or 64
            mem[mem[64] + 64] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg2
            _266 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            mem[0] = sha3(mem[_266 + 32 len mem[_266]])
        else:
            stor7[_219] = stor7[mem[0]]
            mem[0] = _228
            mem[32] = 7
            stor7[_228] = 0
            mem[_216 + 192] = stor8[_228]
            emit Released(stor8[_228], msg.sender);
            idx = 0
            u = 0
            while idx < 1:
                mem[mem[64] + 32] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or uint64(u)
                mem[mem[64] + 64] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg2
                _262 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                mem[0] = sha3(mem[_262 + 32 len mem[_262]])
                mem[32] = 7
                if stor7[mem[0]]:
                    idx = idx + 1
                    u = stor7[mem[0]]
                    continue 
                return (t + s)
            mem[mem[64] + 32] = 0x1babf81da991baaf5c40ecc0dbe1800000000000000000000000000000000 * 3600 or address(arg1) << 64 or 64
            mem[mem[64] + 64] = 0x9117776660000000000000000000000000000000000000000000000000000000 or arg2
            _258 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            mem[0] = sha3(mem[_258 + 32 len mem[_258]])
        mem[32] = 8
        idx = not not 64
        s = stor8[mem[0]]
        t = 64
        t = t + s
        continue 
    return t
}



}
