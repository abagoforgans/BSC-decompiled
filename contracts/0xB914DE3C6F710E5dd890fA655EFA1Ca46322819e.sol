contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of struct stor1;
address sub_2cc70671Address;
uint256 sub_5efccc17;
array of uint256 ids;
array of uint256 amounts;
uint256 totalRedeem;

function totalRedeem() payable {
    return totalRedeem
}

function sub_2cc70671(?) payable {
    return sub_2cc70671Address
}

function amounts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < amounts.length
    return amounts[arg1]
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function sub_5efccc17(?) payable {
    return sub_5efccc17
}

function owner() payable {
    return owner
}

function ids(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < ids.length
    return ids[arg1]
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

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
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

function redeem() payable {
    if msg.sender != tx.origin:
        revert with 0, 'JigsawRedeem: onlyEOA'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    idx = 0
    s = 0
    t = 228
    while idx < ids.length:
        mem[t] = ids[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(32 * ids.length) + 228] = amounts.length
    idx = 0
    s = 0
    t = (32 * ids.length) + 260
    while idx < amounts.length:
        mem[t] = amounts[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(sub_2cc70671Address)
    call sub_2cc70671Address.burnBatch(address arg1, uint256[] arg2, uint256[] arg3) with:
         gas gas_remaining wei
        args msg.sender, Array(len=ids.length, data=mem[228 len (32 * ids.length) + (32 * amounts.length) + 32]), (32 * ids.length) + 128
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_2cc70671Address)
    call sub_2cc70671Address.mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, sub_5efccc17, (32 * ids.length) + 128, Array(len=2, data='0x')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if totalRedeem > -2:
        revert with 'NH{q', 17
    totalRedeem++
    emit 0x99bb213b: msg.sender, totalRedeem
}

function name() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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



}
