contract main {




// =====================  Runtime code  =====================


#
#  - sub_a9fe829b(?)
#
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals;
array of struct stor5;
array of struct stor6;
address pairAddress;
address adminAddress;
uint256 taxPercentage;

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function getTaxPercentage() payable {
    return taxPercentage
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return owner
}

function getPairAddress() payable {
    return pairAddress
}

function owner() payable {
    return owner
}

function getAdminAddress() payable {
    return adminAddress
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTaxPercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    taxPercentage = arg1
}

function setPairAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pairAddress = arg1
}

function setAdminAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
}

function sub_ce19a52b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function name() payable {
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6.length):
            if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6.length):
                if 31 < uint255(stor6.length) * 0.5:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor6.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(uint255(stor6.length) * 0.5) + 192 len ceil32(uint255(stor6.length) * 0.5)] = mem[128 len ceil32(uint255(stor6.length) * 0.5)]
        if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
            mem[(uint255(stor6.length) * 0.5) + ceil32(uint255(stor6.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 0, 34
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6.length):
            if 31 < uint255(stor6.length) * 0.5:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while (uint255(stor6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor6.length.field_1 + ceil32(stor6.length.field_1) + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function symbol() payable {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if pairAddress == msg.sender:
        if taxPercentage <= 0:
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not arg2:
                if balanceOf[stor8] > -1:
                    revert with 0, 17
                if balanceOf[stor8] < balanceOf[stor8]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < 0:
                    revert with 0, 17
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(0, msg.sender, adminAddress);
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < 0:
                    revert with 0, 17
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg2 and taxPercentage > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * taxPercentage / arg2 != taxPercentage:
                    revert with 0, 'SafeMath: multiplication overflow'
                if balanceOf[stor8] > !(arg2 * taxPercentage / 1000):
                    revert with 0, 17
                if balanceOf[stor8] + (arg2 * taxPercentage / 1000) < balanceOf[stor8]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor8] += arg2 * taxPercentage / 1000
                if arg2 * taxPercentage / 1000 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < arg2 * taxPercentage / 1000:
                    revert with 0, 17
                if balanceOf[address(arg1)] > !(arg2 - (arg2 * taxPercentage / 1000)):
                    revert with 0, 17
                if balanceOf[address(arg1)] + arg2 - (arg2 * taxPercentage / 1000) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercentage / 1000)
                emit Transfer((arg2 * taxPercentage / 1000), msg.sender, adminAddress);
                if arg2 * taxPercentage / 1000 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < arg2 * taxPercentage / 1000:
                    revert with 0, 17
                emit Transfer((arg2 - (arg2 * taxPercentage / 1000)), msg.sender, arg1);
    else:
        if pairAddress != arg1:
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if taxPercentage <= 0:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not arg2:
                    if balanceOf[stor8] > -1:
                        revert with 0, 17
                    if balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < 0:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(0, msg.sender, adminAddress);
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < 0:
                        revert with 0, 17
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 and taxPercentage > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if arg2 * taxPercentage / arg2 != taxPercentage:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if balanceOf[stor8] > !(arg2 * taxPercentage / 1000):
                        revert with 0, 17
                    if balanceOf[stor8] + (arg2 * taxPercentage / 1000) < balanceOf[stor8]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor8] += arg2 * taxPercentage / 1000
                    if arg2 * taxPercentage / 1000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < arg2 * taxPercentage / 1000:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * taxPercentage / 1000)):
                        revert with 0, 17
                    if balanceOf[address(arg1)] + arg2 - (arg2 * taxPercentage / 1000) < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * taxPercentage / 1000)
                    emit Transfer((arg2 * taxPercentage / 1000), msg.sender, adminAddress);
                    if arg2 * taxPercentage / 1000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg2 < arg2 * taxPercentage / 1000:
                        revert with 0, 17
                    emit Transfer((arg2 - (arg2 * taxPercentage / 1000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if pairAddress == arg1:
        if taxPercentage <= 0:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
        else:
            if not arg3:
                if balanceOf[stor8] > -1:
                    revert with 0, 17
                if balanceOf[stor8] < balanceOf[stor8]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg3 < 0:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(0, arg1, adminAddress);
                if 0 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg3 < 0:
                    revert with 0, 17
                emit Transfer(arg3, arg1, arg2);
            else:
                if arg3 and taxPercentage > -1 / arg3:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if arg3 * taxPercentage / arg3 != taxPercentage:
                    revert with 0, 'SafeMath: multiplication overflow'
                if balanceOf[stor8] > !(arg3 * taxPercentage / 1000):
                    revert with 0, 17
                if balanceOf[stor8] + (arg3 * taxPercentage / 1000) < balanceOf[stor8]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor8] += arg3 * taxPercentage / 1000
                if arg3 * taxPercentage / 1000 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg3 < arg3 * taxPercentage / 1000:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(arg3 - (arg3 * taxPercentage / 1000)):
                    revert with 0, 17
                if balanceOf[address(arg2)] + arg3 - (arg3 * taxPercentage / 1000) < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxPercentage / 1000)
                emit Transfer((arg3 * taxPercentage / 1000), arg1, adminAddress);
                if arg3 * taxPercentage / 1000 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg3 < arg3 * taxPercentage / 1000:
                    revert with 0, 17
                emit Transfer((arg3 - (arg3 * taxPercentage / 1000)), arg1, arg2);
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
    else:
        if pairAddress != arg2:
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
        else:
            if taxPercentage <= 0:
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
            else:
                if not arg3:
                    if balanceOf[stor8] > -1:
                        revert with 0, 17
                    if balanceOf[stor8] < balanceOf[stor8]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg3 < 0:
                        revert with 0, 17
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(0, arg1, adminAddress);
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg3 < 0:
                        revert with 0, 17
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if arg3 and taxPercentage > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if arg3 * taxPercentage / arg3 != taxPercentage:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if balanceOf[stor8] > !(arg3 * taxPercentage / 1000):
                        revert with 0, 17
                    if balanceOf[stor8] + (arg3 * taxPercentage / 1000) < balanceOf[stor8]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor8] += arg3 * taxPercentage / 1000
                    if arg3 * taxPercentage / 1000 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg3 < arg3 * taxPercentage / 1000:
                        revert with 0, 17
                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * taxPercentage / 1000)):
                        revert with 0, 17
                    if balanceOf[address(arg2)] + arg3 - (arg3 * taxPercentage / 1000) < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * taxPercentage / 1000)
                    emit Transfer((arg3 * taxPercentage / 1000), arg1, adminAddress);
                    if arg3 * taxPercentage / 1000 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg3 < arg3 * taxPercentage / 1000:
                        revert with 0, 17
                    emit Transfer((arg3 - (arg3 * taxPercentage / 1000)), arg1, arg2);
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
    ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 2)))))
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
