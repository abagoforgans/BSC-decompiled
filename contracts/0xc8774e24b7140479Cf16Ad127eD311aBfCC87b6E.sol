contract main {




// =====================  Runtime code  =====================


const getTime = block.timestamp


address owner;
address stor1;
uint256 unlockTime;
mapping of uint8 stor3;
uint8 stor4;
mapping of uint8 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals;
array of struct stor10;
array of struct stor11;

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1
    return bool(stor3[address(arg1)])
}

function paused() payable {
    return bool(stor4)
}

function getUnlockTime() payable {
    return unlockTime
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() payable {
    require msg.sender
    require stor3[address(msg.sender)]
    require stor4
    stor4 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor3[address(msg.sender)]
    require not stor4
    stor4 = 1
    emit Paused(msg.sender);
}

function renouncePauser() payable {
    require msg.sender
    require stor3[address(msg.sender)]
    stor3[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    require not stor3[address(arg1)]
    stor3[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function blackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[address(arg1)]:
        revert with 0, 'user is already blacklisted'
    stor5[address(arg1)] = 1
}

function removeFromBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        revert with 0, 'use is already whitelisted'
    stor5[address(arg1)] = 0
}

function unlock() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > -arg1 - 1:
        revert with 'NH{q', 17
    unlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
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

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor4
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    totalSupply += arg1
    if balanceOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require not stor4
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require not stor4
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    require not stor4
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require not stor4
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    require not stor4
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require not stor4
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require not stor4
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    require not stor4
    if not arg1:
        revert with 0, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function recoverTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != this.address
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeBEP20: low-level call failed'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
}

function name() payable {
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) > stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
}

function symbol() payable {
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor10.length):
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        if ceil32(stor10.length.field_1) > stor10.length.field_1:
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
}



}
