contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals;
array of struct stor5;
array of struct stor6;
uint256 burnToken;
uint8 stor8;
address stor8;
address sub_56bcbf97Address; offset 8
address investorWalletAddress;
address sub_8cad55e5Address;
address marketingWalletAddress;
address charityWalletAddress;
address advisorWalletAddress;

function sub_14fc1a3c(?) payable {
    return bool(uint8(stor8.field_0))
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function advisorWallet() payable {
    return advisorWalletAddress
}

function sub_56bcbf97(?) payable {
    return sub_56bcbf97Address
}

function investorWallet() payable {
    return investorWalletAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function marketingWallet() payable {
    return marketingWalletAddress
}

function charityWallet() payable {
    return charityWalletAddress
}

function getOwner() payable {
    return owner
}

function sub_8cad55e5(?) payable {
    return sub_8cad55e5Address
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

function burnToken() payable {
    return burnToken
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

function setCharityAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    charityWalletAddress = arg1
    return 1
}

function setAdvisorAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    advisorWalletAddress = arg1
    return 1
}

function sub_9391cbe6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_56bcbf97Address = address(arg1)
    return 1
}

function sub_e81217a5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8cad55e5Address = address(arg1)
    return 1
}

function sub_42602f1e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    investorWalletAddress = address(arg1)
    return 1
}

function setMarketingAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingWalletAddress = arg1
    return 1
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
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'BEP20: mint to the zero address'
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if balanceOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
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
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: burn from the zero address'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x6f42455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    if balanceOf[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if arg1 > -burnToken - 1:
        revert with 'NH{q', 17
    burnToken += arg1
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
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

function symbol() payable {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function sub_f0a2ce88(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor8.field_0):
        revert with 0, 'Token Already Distributed'
    if not totalSupply:
        if not owner:
            revert with 0, 'BEP20: transfer from the zero address'
        if not sub_56bcbf97Address:
            revert with 0, 'BEP20: transfer to the zero address'
        if 0 > balanceOf[stor0]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[230 len 26] >> 48, 0
        if balanceOf[stor0] < 0:
            revert with 'NH{q', 17
        if balanceOf[address(stor8.field_0)] > -1:
            revert with 'NH{q', 17
        if balanceOf[address(stor8.field_0)] < balanceOf[address(stor8.field_0)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, owner, sub_56bcbf97Address);
    else:
        if totalSupply and 50 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if 50 * totalSupply / totalSupply != 50:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not owner:
            revert with 0, 'BEP20: transfer from the zero address'
        if not sub_56bcbf97Address:
            revert with 0, 'BEP20: transfer to the zero address'
        if 50 * totalSupply / 100 > balanceOf[stor0]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[230 len 26] >> 48, 0
        if balanceOf[stor0] < 50 * totalSupply / 100:
            revert with 'NH{q', 17
        balanceOf[stor0] -= 50 * totalSupply / 100
        if balanceOf[address(stor8.field_0)] > -(50 * totalSupply / 100) - 1:
            revert with 'NH{q', 17
        if balanceOf[address(stor8.field_0)] + (50 * totalSupply / 100) < balanceOf[address(stor8.field_0)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(stor8.field_0)] += 50 * totalSupply / 100
        emit Transfer((50 * totalSupply / 100), owner, sub_56bcbf97Address);
    if not totalSupply:
        if not owner:
            revert with 0, 'BEP20: transfer from the zero address'
        if not investorWalletAddress:
            revert with 0, 'BEP20: transfer to the zero address'
        if 0 > balanceOf[stor0]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
        if balanceOf[stor0] < 0:
            revert with 'NH{q', 17
        if balanceOf[stor9] > -1:
            revert with 'NH{q', 17
        if balanceOf[stor9] < balanceOf[stor9]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, owner, investorWalletAddress);
    else:
        if totalSupply and 20 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if 20 * totalSupply / totalSupply != 20:
            revert with 0, 'SafeMath: multiplication overflow'
        if not owner:
            revert with 0, 'BEP20: transfer from the zero address'
        if not investorWalletAddress:
            revert with 0, 'BEP20: transfer to the zero address'
        if 20 * totalSupply / 100 > balanceOf[stor0]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
        if balanceOf[stor0] < 20 * totalSupply / 100:
            revert with 'NH{q', 17
        balanceOf[stor0] -= 20 * totalSupply / 100
        if balanceOf[stor9] > -(20 * totalSupply / 100) - 1:
            revert with 'NH{q', 17
        if balanceOf[stor9] + (20 * totalSupply / 100) < balanceOf[stor9]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor9] += 20 * totalSupply / 100
        emit Transfer((20 * totalSupply / 100), owner, investorWalletAddress);
    if not totalSupply:
        if not owner:
            revert with 0, 'BEP20: transfer from the zero address'
        if not sub_8cad55e5Address:
            revert with 0, 'BEP20: transfer to the zero address'
        if 0 > balanceOf[stor0]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
        if balanceOf[stor0] < 0:
            revert with 'NH{q', 17
        if balanceOf[stor10] > -1:
            revert with 'NH{q', 17
        if balanceOf[stor10] < balanceOf[stor10]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, owner, sub_8cad55e5Address);
    else:
        if totalSupply and 10 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if 10 * totalSupply / totalSupply != 10:
            revert with 0, 'SafeMath: multiplication overflow'
        if not owner:
            revert with 0, 'BEP20: transfer from the zero address'
        if not sub_8cad55e5Address:
            revert with 0, 'BEP20: transfer to the zero address'
        if 10 * totalSupply / 100 > balanceOf[stor0]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[550 len 26] >> 48, 0
        if balanceOf[stor0] < 10 * totalSupply / 100:
            revert with 'NH{q', 17
        balanceOf[stor0] -= 10 * totalSupply / 100
        if balanceOf[stor10] > -(10 * totalSupply / 100) - 1:
            revert with 'NH{q', 17
        if balanceOf[stor10] + (10 * totalSupply / 100) < balanceOf[stor10]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor10] += 10 * totalSupply / 100
        emit Transfer((10 * totalSupply / 100), owner, sub_8cad55e5Address);
    if not totalSupply:
        if not owner:
            revert with 0, 'BEP20: transfer from the zero address'
        if not marketingWalletAddress:
            revert with 0, 'BEP20: transfer to the zero address'
        if 0 > balanceOf[stor0]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[710 len 26] >> 48, 0
        if balanceOf[stor0] < 0:
            revert with 'NH{q', 17
        if balanceOf[stor11] > -1:
            revert with 'NH{q', 17
        if balanceOf[stor11] < balanceOf[stor11]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, owner, marketingWalletAddress);
    else:
        if totalSupply and 3 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if 3 * totalSupply / totalSupply != 3:
            revert with 0, 'SafeMath: multiplication overflow'
        if not owner:
            revert with 0, 'BEP20: transfer from the zero address'
        if not marketingWalletAddress:
            revert with 0, 'BEP20: transfer to the zero address'
        if 3 * totalSupply / 100 > balanceOf[stor0]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[710 len 26] >> 48, 0
        if balanceOf[stor0] < 3 * totalSupply / 100:
            revert with 'NH{q', 17
        balanceOf[stor0] -= 3 * totalSupply / 100
        if balanceOf[stor11] > -(3 * totalSupply / 100) - 1:
            revert with 'NH{q', 17
        if balanceOf[stor11] + (3 * totalSupply / 100) < balanceOf[stor11]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor11] += 3 * totalSupply / 100
        emit Transfer((3 * totalSupply / 100), owner, marketingWalletAddress);
    if not totalSupply:
        if not owner:
            revert with 0, 'BEP20: transfer from the zero address'
        if not charityWalletAddress:
            revert with 0, 'BEP20: transfer to the zero address'
        if 0 > balanceOf[stor0]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[870 len 26] >> 48, 0
        if balanceOf[stor0] < 0:
            revert with 'NH{q', 17
        if balanceOf[stor12] > -1:
            revert with 'NH{q', 17
        if balanceOf[stor12] < balanceOf[stor12]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, owner, charityWalletAddress);
    else:
        if totalSupply and 7 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if 7 * totalSupply / totalSupply != 7:
            revert with 0, 'SafeMath: multiplication overflow'
        if not owner:
            revert with 0, 'BEP20: transfer from the zero address'
        if not charityWalletAddress:
            revert with 0, 'BEP20: transfer to the zero address'
        if 7 * totalSupply / 100 > balanceOf[stor0]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[870 len 26] >> 48, 0
        if balanceOf[stor0] < 7 * totalSupply / 100:
            revert with 'NH{q', 17
        balanceOf[stor0] -= 7 * totalSupply / 100
        if balanceOf[stor12] > -(7 * totalSupply / 100) - 1:
            revert with 'NH{q', 17
        if balanceOf[stor12] + (7 * totalSupply / 100) < balanceOf[stor12]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor12] += 7 * totalSupply / 100
        emit Transfer((7 * totalSupply / 100), owner, charityWalletAddress);
    if not totalSupply:
        if not owner:
            revert with 0, 'BEP20: transfer from the zero address'
        if not advisorWalletAddress:
            revert with 0, 'BEP20: transfer to the zero address'
        if 0 > balanceOf[stor0]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[1030 len 26] >> 48, 0
        if balanceOf[stor0] < 0:
            revert with 'NH{q', 17
        if balanceOf[stor13] > -1:
            revert with 'NH{q', 17
        if balanceOf[stor13] < balanceOf[stor13]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, owner, advisorWalletAddress);
    else:
        if totalSupply and 10 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if 10 * totalSupply / totalSupply != 10:
            revert with 0, 'SafeMath: multiplication overflow'
        if not owner:
            revert with 0, 'BEP20: transfer from the zero address'
        if not advisorWalletAddress:
            revert with 0, 'BEP20: transfer to the zero address'
        if 10 * totalSupply / 100 > balanceOf[stor0]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[1030 len 26] >> 48, 0
        if balanceOf[stor0] < 10 * totalSupply / 100:
            revert with 'NH{q', 17
        balanceOf[stor0] -= 10 * totalSupply / 100
        if balanceOf[stor13] > -(10 * totalSupply / 100) - 1:
            revert with 'NH{q', 17
        if balanceOf[stor13] + (10 * totalSupply / 100) < balanceOf[stor13]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor13] += 10 * totalSupply / 100
        emit Transfer((10 * totalSupply / 100), owner, advisorWalletAddress);
    return 1
}



}
