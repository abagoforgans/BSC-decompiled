contract main {




// =====================  Runtime code  =====================


#
#  - includeToWhiteList(address[] arg1)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 _totalSupply;
array of struct stor6;
array of struct stor7;
uint256 _decimals;
address sub_0b074305Address;
uint256 maxWalletLimit;
uint256 sub_0f288915;
mapping of uint8 stor12;

function sub_0b074305(?) payable {
    return sub_0b074305Address
}

function sub_0f288915(?) payable {
    return sub_0f288915
}

function totalSupply() payable {
    return _totalSupply
}

function _isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function decimals() payable {
    return _decimals
}

function _decimals() payable {
    return _decimals
}

function _totalSupply() payable {
    return _totalSupply
}

function isOpen() payable {
    return bool(uint8(stor0.field_160))
}

function maxWalletLimit() payable {
    return maxWalletLimit
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

function stopTrade() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = 0
}

function openTrade() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_b38406f2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0f288915 = arg1
    emit 0x7b458587: arg1, block.timestamp
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaxWalletLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxWalletLimit = arg1
    emit 0x50e1fb16: arg1, block.timestamp
}

function blacklistAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = uint8(arg2)
    emit 0x7c8803d5: address(arg1), arg2, block.timestamp
}

function sub_5d8f2987(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = uint8(bool(arg2))
    emit 0x7b0efe35: address(arg1), bool(arg2), block.timestamp
}

function sub_7654050d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0b074305Address = address(arg1)
    stor4[address(arg1)] = 1
    emit 0x9766c159: address(arg1), block.timestamp
    emit 0x7b0efe35: address(arg1), 1, block.timestamp
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > balanceOf[address(stor0.field_0)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if balanceOf[address(stor0.field_0)] < arg1:
        revert with 'NH{q', 17
    balanceOf[address(stor0.field_0)] -= arg1
    if arg1 > _totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if _totalSupply < arg1:
        revert with 'NH{q', 17
    _totalSupply -= arg1
    emit Transfer(arg1, owner, 0);
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if balanceOf[address(stor0.field_0)] > -arg1 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(stor0.field_0)] + arg1 < balanceOf[address(stor0.field_0)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(stor0.field_0)] += arg1
    if _totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    if _totalSupply + arg1 < _totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    _totalSupply += arg1
    emit Transfer(arg1, 0, owner);
}

function name() payable {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function _name() payable {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function symbol() payable {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function _symbol() payable {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor0.field_160):
        if not stor1[address(msg.sender)]:
            if not stor1[address(arg1)]:
                revert with 0, 'Not Open'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'balance too low'
    if stor12[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor12[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    if owner != msg.sender:
        if not sub_0b074305Address:
            revert with 0, 'Pool Pair Address not yet updated'
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args sub_0b074305Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > balanceOf[stor9]:
        if balanceOf[stor9] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] < balanceOf[stor9]:
            revert with 'NH{q', 17
        if balanceOf[address(stor0.field_0)] < ext_call.return_data[0] - balanceOf[stor9]:
            revert with 0, 'No sufficient supply'
        if balanceOf[stor9] > -ext_call.return_data[0] + balanceOf[stor9] - 1:
            revert with 'NH{q', 17
        if ext_call.return_data[0] < balanceOf[stor9]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor9] = ext_call.return_data[0]
        if ext_call.return_data[0] - balanceOf[stor9] > balanceOf[address(stor0.field_0)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if balanceOf[address(stor0.field_0)] < ext_call.return_data[0] - balanceOf[stor9]:
            revert with 'NH{q', 17
        balanceOf[address(stor0.field_0)] = balanceOf[address(stor0.field_0)] - ext_call.return_data[0] + balanceOf[stor9]
        emit Transfer((ext_call.return_data[0] - balanceOf[stor9]), owner, sub_0b074305Address);
    else:
        if balanceOf[stor9] > ext_call.return_data[0]:
            if ext_call.return_data[0] > balanceOf[stor9]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if balanceOf[stor9] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if balanceOf[stor9] < balanceOf[stor9] - ext_call.return_data[0]:
                revert with 0, 'No sufficient supply'
            if balanceOf[stor9] > -balanceOf[stor9] + ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            if (2 * balanceOf[stor9]) - ext_call.return_data[0] < balanceOf[stor9]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor9] = (2 * balanceOf[stor9]) - ext_call.return_data[0]
            if balanceOf[stor9] - ext_call.return_data[0] > balanceOf[address(this.address)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if balanceOf[address(this.address)] < balanceOf[stor9] - ext_call.return_data[0]:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[stor9] + ext_call.return_data[0]
            emit Transfer((balanceOf[stor9] - ext_call.return_data[0]), sub_0b074305Address, owner);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor0.field_160):
        if not stor1[address(arg1)]:
            if not stor1[address(arg2)]:
                revert with 0, 'Not Open'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'balance too low'
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'allowance too low'
    if stor12[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor12[address(arg2)]:
        revert with 0, 'Blacklisted address'
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if arg1 != owner:
        if not sub_0b074305Address:
            revert with 0, 'Pool Pair Address not yet updated'
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args sub_0b074305Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > balanceOf[stor9]:
        if balanceOf[stor9] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] < balanceOf[stor9]:
            revert with 'NH{q', 17
        if balanceOf[address(stor0.field_0)] < ext_call.return_data[0] - balanceOf[stor9]:
            revert with 0, 'No sufficient supply'
        if balanceOf[stor9] > -ext_call.return_data[0] + balanceOf[stor9] - 1:
            revert with 'NH{q', 17
        if ext_call.return_data[0] < balanceOf[stor9]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor9] = ext_call.return_data[0]
        if ext_call.return_data[0] - balanceOf[stor9] > balanceOf[address(stor0.field_0)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if balanceOf[address(stor0.field_0)] < ext_call.return_data[0] - balanceOf[stor9]:
            revert with 'NH{q', 17
        balanceOf[address(stor0.field_0)] = balanceOf[address(stor0.field_0)] - ext_call.return_data[0] + balanceOf[stor9]
        emit Transfer((ext_call.return_data[0] - balanceOf[stor9]), owner, sub_0b074305Address);
    else:
        if balanceOf[stor9] > ext_call.return_data[0]:
            if ext_call.return_data[0] > balanceOf[stor9]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if balanceOf[stor9] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if balanceOf[stor9] < balanceOf[stor9] - ext_call.return_data[0]:
                revert with 0, 'No sufficient supply'
            if balanceOf[stor9] > -balanceOf[stor9] + ext_call.return_data[0] - 1:
                revert with 'NH{q', 17
            if (2 * balanceOf[stor9]) - ext_call.return_data[0] < balanceOf[stor9]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor9] = (2 * balanceOf[stor9]) - ext_call.return_data[0]
            if balanceOf[stor9] - ext_call.return_data[0] > balanceOf[address(this.address)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if balanceOf[address(this.address)] < balanceOf[stor9] - ext_call.return_data[0]:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] = balanceOf[address(this.address)] - balanceOf[stor9] + ext_call.return_data[0]
            emit Transfer((balanceOf[stor9] - ext_call.return_data[0]), sub_0b074305Address, owner);
    return 1
}



}
