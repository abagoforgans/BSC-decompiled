contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 totalSupply;
array of struct stor7;
array of struct stor8;
uint8 decimals;
address owner; offset 8
address sub_d466c295Address;
mapping of uint8 stor11;
uint256 sub_9987e9b7;
uint256 devRate;
uint256 sub_2998a92b;
address devAddr;
address sub_fca50830Address;
mapping of uint8 stor17;
address sub_3e23ee43Address;

function totalSupply() payable {
    return totalSupply
}

function sub_2998a92b(?) payable {
    return sub_2998a92b
}

function decimals() payable {
    return decimals
}

function sub_3dc5e75b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function sub_3e23ee43(?) payable {
    return sub_3e23ee43Address
}

function blackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_9987e9b7(?) payable {
    return sub_9987e9b7
}

function devRate() payable {
    return devRate
}

function isCoinFactoryAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor17[address(arg1)])
}

function sub_d459e072(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function sub_d466c295(?) payable {
    return sub_d466c295Address
}

function devAddr() payable {
    return devAddr
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function isPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function sub_ea187eff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function sub_fca50830(?) payable {
    return sub_fca50830Address
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

function setBlackList(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = uint8(arg2)
}

function setRate(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devRate = arg1
    sub_2998a92b = arg2
}

function setAddr(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddr = arg1
    sub_fca50830Address = arg2
}

function setPair(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 1
    if arg2:
        if not sub_d466c295Address:
            sub_d466c295Address = arg1
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

function addCoinFactoryAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor17[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor17[address(arg1)] = 1
}

function setStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor17[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CoinFactoryAdminRole: caller does not have the CoinFactoryAdminRole role'
    sub_9987e9b7 = arg1
}

function setCallAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor17[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CoinFactoryAdminRole: caller does not have the CoinFactoryAdminRole role'
    sub_3e23ee43Address = arg1
}

function removeCoinFactoryAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor17[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor17[address(arg1)] = 0
}

function issue(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_67038d52(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == bool(arg3)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor17[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CoinFactoryAdminRole: caller does not have the CoinFactoryAdminRole role'
    if not arg2:
        stor2[address(arg1)] = uint8(bool(arg3))
    else:
        if arg2 == 1:
            stor3[address(arg1)] = uint8(bool(arg3))
        else:
            if arg2 == 2:
                stor4[address(arg1)] = uint8(bool(arg3))
}

function sub_4d2e6d0d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor17[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CoinFactoryAdminRole: caller does not have the CoinFactoryAdminRole role'
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
}

function sub_77d26149(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] == bool(cd[68])
    if not msg.sender:
        revert with 0, 'Roles: account is the zero address'
    if not stor17[address(msg.sender)]:
        revert with 0, 'CoinFactoryAdminRole: caller does not have the CoinFactoryAdminRole role'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if not msg.sender:
            revert with 0, 'Roles: account is the zero address'
        mem[0] = msg.sender
        mem[32] = 17
        if not stor17[address(msg.sender)]:
            revert with 0, 'CoinFactoryAdminRole: caller does not have the CoinFactoryAdminRole role'
        if not cd[36]:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            stor2[address(mem[(32 * idx) + 128])] = uint8(bool(cd[68]))
        else:
            if cd[36] == 1:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 3
                stor3[address(mem[(32 * idx) + 128])] = uint8(bool(cd[68]))
            else:
                if cd[36] == 2:
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 4
                    stor4[address(mem[(32 * idx) + 128])] = uint8(bool(cd[68]))
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if stor5[address(msg.sender)]:
        revert with 0, 'ERC20: is black List !'
    if stor5[address(msg.sender)]:
        revert with 0, 'ERC20: is black List !'
    if stor5[address(arg1)]:
        revert with 0, 'ERC20: is black List !'
    if stor2[address(msg.sender)]:
        if balanceOf[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if stor3[address(arg1)]:
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor11[address(msg.sender)]:
                if block.timestamp < sub_9987e9b7:
                    revert with 0, 'not start exchange'
                if not stor4[address(arg1)]:
                    if sub_9987e9b7 > -301:
                        revert with 'NH{q', 17
                    require block.timestamp >= sub_9987e9b7 + 300
            else:
                if stor11[address(arg1)]:
                    if block.timestamp < sub_9987e9b7:
                        revert with 0, 'not start exchange'
                    if not stor4[address(msg.sender)]:
                        if sub_9987e9b7 > -301:
                            revert with 'NH{q', 17
                        require block.timestamp >= sub_9987e9b7 + 300
            if devRate > -sub_2998a92b - 1:
                revert with 'NH{q', 17
            if 100 < devRate + sub_2998a92b:
                revert with 'NH{q', 17
            if arg2 and -devRate + -sub_2998a92b + 100 > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 and devRate > -1 / arg2:
                revert with 'NH{q', 17
            if balanceOf[stor15] > -(arg2 * devRate / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor15] += arg2 * devRate / 100
            if arg2 and sub_2998a92b > -1 / arg2:
                revert with 'NH{q', 17
            if balanceOf[stor16] > -(arg2 * sub_2998a92b / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor16] += arg2 * sub_2998a92b / 100
            if balanceOf[address(msg.sender)] < arg2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -((100 * arg2) - (devRate * arg2) - (sub_2998a92b * arg2) / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += (100 * arg2) - (devRate * arg2) - (sub_2998a92b * arg2) / 100
            emit Transfer(((100 * arg2) - (devRate * arg2) - (sub_2998a92b * arg2) / 100), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if stor5[address(msg.sender)]:
        revert with 0, 'ERC20: is black List !'
    if stor5[address(arg1)]:
        revert with 0, 'ERC20: is black List !'
    if stor5[address(arg2)]:
        revert with 0, 'ERC20: is black List !'
    if stor2[address(arg1)]:
        if balanceOf[address(arg1)] < arg3:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] > -arg3 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if stor3[address(arg2)]:
            if balanceOf[address(arg1)] < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -arg3 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if stor11[address(arg1)]:
                if block.timestamp < sub_9987e9b7:
                    revert with 0, 'not start exchange'
                if not stor4[address(arg2)]:
                    if sub_9987e9b7 > -301:
                        revert with 'NH{q', 17
                    require block.timestamp >= sub_9987e9b7 + 300
            else:
                if stor11[address(arg2)]:
                    if block.timestamp < sub_9987e9b7:
                        revert with 0, 'not start exchange'
                    if not stor4[address(arg1)]:
                        if sub_9987e9b7 > -301:
                            revert with 'NH{q', 17
                        require block.timestamp >= sub_9987e9b7 + 300
            if devRate > -sub_2998a92b - 1:
                revert with 'NH{q', 17
            if 100 < devRate + sub_2998a92b:
                revert with 'NH{q', 17
            if arg3 and -devRate + -sub_2998a92b + 100 > -1 / arg3:
                revert with 'NH{q', 17
            if arg3 and devRate > -1 / arg3:
                revert with 'NH{q', 17
            if balanceOf[stor15] > -(arg3 * devRate / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor15] += arg3 * devRate / 100
            if arg3 and sub_2998a92b > -1 / arg3:
                revert with 'NH{q', 17
            if balanceOf[stor16] > -(arg3 * sub_2998a92b / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[stor16] += arg3 * sub_2998a92b / 100
            if balanceOf[address(arg1)] < arg3:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] > -((100 * arg3) - (devRate * arg3) - (sub_2998a92b * arg3) / 100) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] += (100 * arg3) - (devRate * arg3) - (sub_2998a92b * arg3) / 100
            emit Transfer(((100 * arg3) - (devRate * arg3) - (sub_2998a92b * arg3) / 100), arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function name() payable {
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

function symbol() payable {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function sub_271fb91c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not sub_3e23ee43Address:
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + arg1.length + 128] = 0
    delegate sub_3e23ee43Address with:
       funct (Mask(32, -(8 * ceil32(arg1.length) + -arg1.length + 4) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 4) + 256)
         gas gas_remaining wei
        args mem[ceil32(arg1.length) + 132 len arg1.length - 4]
    if not return_data.size:
        mem[ceil32(arg1.length) + 160] = 'fc_99 '
        mem[ceil32(arg1.length) + 166 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if delegate.return_code:
        mem[ceil32(arg1.length) + arg1.length + 166] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + arg1.length + 170] = 32
        mem[ceil32(arg1.length) + arg1.length + 202] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + arg1.length + 234 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
            mem[ceil32(arg1.length) + arg1.length + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 234] = 0
        if ceil32(arg1.length) <= arg1.length:
            revert with memory
              from ceil32(arg1.length) + arg1.length + 166
               len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 68
        revert with 0, 
                    32,
                    mem[ceil32(arg1.length) + arg1.length + 202 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 32]
    mem[ceil32(arg1.length) + 128] = return_data.size
    mem[ceil32(arg1.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 161] = 'fc_99 '
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 167 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + return_data.size + 160 len ceil32(return_data.size) - return_data.size]
    if delegate.return_code:
    mem[ceil32(arg1.length) + ceil32(return_data.size) + return_data.size + 167] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(return_data.size) + return_data.size + 171] = 32
    mem[ceil32(arg1.length) + ceil32(return_data.size) + return_data.size + 203] = mem[ceil32(arg1.length) + ceil32(return_data.size) + 129]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + return_data.size + 235 len ceil32(mem[ceil32(arg1.length) + ceil32(return_data.size) + 129])] = mem[ceil32(arg1.length) + ceil32(return_data.size) + 161 len ceil32(mem[ceil32(arg1.length) + ceil32(return_data.size) + 129])]
    if ceil32(mem[ceil32(arg1.length) + ceil32(return_data.size) + 129]) <= mem[ceil32(arg1.length) + ceil32(return_data.size) + 129]:
        revert with 0, 
                    32,
                    mem[ceil32(arg1.length) + ceil32(return_data.size) + 129],
                    mem[ceil32(arg1.length) + ceil32(return_data.size) + return_data.size + 235 len ceil32(mem[ceil32(arg1.length) + ceil32(return_data.size) + 129])]
    mem[ceil32(arg1.length) + ceil32(return_data.size) + return_data.size + mem[ceil32(arg1.length) + ceil32(return_data.size) + 129] + 235] = 0
    revert with 0, 
                32,
                mem[ceil32(arg1.length) + ceil32(return_data.size) + return_data.size + 203 len ceil32(mem[ceil32(arg1.length) + ceil32(return_data.size) + 129]) + 32]
}

function sub_ee900f9d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg2.length) + 128 > test266151307() or ceil32(arg2.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not msg.sender:
        revert with 0, 'Roles: account is the zero address'
    if not stor17[address(msg.sender)]:
        revert with 0, 'CoinFactoryAdminRole: caller does not have the CoinFactoryAdminRole role'
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 128] = 0
    delegate address(arg1) with:
       funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if not return_data.size:
        mem[ceil32(arg2.length) + 160] = 'fc_99 '
        mem[ceil32(arg2.length) + 166 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if delegate.return_code:
        mem[ceil32(arg2.length) + arg2.length + 166] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + arg2.length + 170] = 32
        mem[ceil32(arg2.length) + arg2.length + 202] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + arg2.length + 234 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
            mem[ceil32(arg2.length) + arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 234] = 0
        if ceil32(arg2.length) <= arg2.length:
            revert with memory
              from ceil32(arg2.length) + arg2.length + 166
               len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 68
        revert with 0, 
                    32,
                    mem[ceil32(arg2.length) + arg2.length + 202 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 32]
    mem[ceil32(arg2.length) + 128] = return_data.size
    mem[ceil32(arg2.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 161] = 'fc_99 '
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 167 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg2.length) + return_data.size + 160 len ceil32(return_data.size) - return_data.size]
    if delegate.return_code:
    mem[ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + 167] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + 171] = 32
    mem[ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + 203] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 129]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + 235 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 129])] = mem[ceil32(arg2.length) + ceil32(return_data.size) + 161 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 129])]
    if ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 129]) <= mem[ceil32(arg2.length) + ceil32(return_data.size) + 129]:
        revert with 0, 
                    32,
                    mem[ceil32(arg2.length) + ceil32(return_data.size) + 129],
                    mem[ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + 235 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 129])]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + mem[ceil32(arg2.length) + ceil32(return_data.size) + 129] + 235] = 0
    revert with 0, 
                32,
                mem[ceil32(arg2.length) + ceil32(return_data.size) + return_data.size + 203 len ceil32(mem[ceil32(arg2.length) + ceil32(return_data.size) + 129]) + 32]
}



}
