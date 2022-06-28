contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - setMarketingTaxAddress(address arg1)
#  - distribute(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const decimals = 18


address owner;
mapping of uint256 allowance;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
address stor8;
address stor9;
address stor10;
uint256 totalSupply;
uint256 stor12;
uint256 stor13;
uint256 stor14;
array of struct stor15;
array of struct stor16;
uint256 burnedSupply;
uint256 sub_51b75416;
uint256 treasuryTax;
uint256 rewardsTax;
uint256 marketingTax;
uint256 teamTax;
uint256 sub_5e7b655c;
uint256 sub_7cf2027e;
uint256 stor25;

function totalSupply() {
    return totalSupply
}

function marketingTax() {
    return marketingTax
}

function sub_51b75416(?) {
    return sub_51b75416
}

function burnedSupply() {
    return burnedSupply
}

function sub_5e7b655c(?) {
    return sub_5e7b655c
}

function sub_7cf2027e(?) {
    return sub_7cf2027e
}

function pair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function owner() {
    return owner
}

function rewardsTax() {
    return rewardsTax
}

function teamTax() {
    return teamTax
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_de1c141a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[address(arg1)])
}

function treasuryTax() {
    return treasuryTax
}

function sub_f82f235f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[address(arg1)])
}

function sub_fbf18c6c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[address(arg1)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_de2aa57d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5e7b655c = arg1
    emit 0x6994931e: arg1
}

function sub_f6e60038(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7cf2027e = arg1
    emit 0xa49ae38f: arg1
}

function sub_845d0521(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = address(arg1)
    emit 0xe3adc953: stor8, address(arg1)
}

function disableTransferLimit() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor25 == totalSupply:
        revert with 0, 'Transfer limit already disabled'
    stor25 = totalSupply
    emit DisableTransferLimit(totalSupply);
}

function includeInTaxes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[address(arg1)]:
        stor5[address(arg1)] = 0
        emit 0x7bcf3731: arg1
}

function excludeFromTaxes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        stor5[address(arg1)] = 1
        emit 0x330d33df: arg1
}

function enableTransferLimit() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor25 != totalSupply:
        revert with 0, 'Transfer limit already enabled'
    stor25 = totalSupply / 500
    emit EnableTransferLimit((totalSupply / 500));
}

function totalTaxes() {
    if treasuryTax > !rewardsTax:
        revert with 0, 17
    if treasuryTax + rewardsTax > !marketingTax:
        revert with 0, 17
    if treasuryTax + rewardsTax + marketingTax > !teamTax:
        revert with 0, 17
    return (treasuryTax + rewardsTax + marketingTax + teamTax)
}

function removeDistributor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6[address(arg1)]:
        revert with 0, 'Address is not a distributor'
    stor6[address(arg1)] = 0
    emit 0x43dd2f8c: arg1
}

function addDistributor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6[address(arg1)]:
        revert with 0, 'Address is already a distributor'
    stor6[address(arg1)] = 1
    emit AddDistributor(arg1);
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTaxes(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg1 + arg2 + arg3 + arg4 > 12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total taxes should never be more than 12%.'
    treasuryTax = arg1
    rewardsTax = arg2
    marketingTax = arg3
    teamTax = arg4
    emit 0x423dd9be: arg1, arg2, arg3, arg4
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4[address(arg1)]:
        return stor2[address(arg1)]
    if stor13 < stor14:
        revert with 0, 17
    if totalSupply < stor12:
        revert with 0, 17
    if stor13 - stor14:
        if totalSupply - stor12:
            if not stor13 - stor14 / totalSupply - stor12:
                revert with 0, 18
            return (stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12)
    if not totalSupply:
        revert with 0, 18
    if not stor13 / totalSupply:
        revert with 0, 18
    return (stor3[address(arg1)] / stor13 / totalSupply)
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function extractFunds() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if treasuryTax > !marketingTax:
        revert with 0, 17
    if treasuryTax + marketingTax > !teamTax:
        revert with 0, 17
    if treasuryTax + marketingTax + teamTax:
        if eth.balance(this.address) and treasuryTax > -1 / eth.balance(this.address):
            revert with 0, 17
        if not treasuryTax + marketingTax + teamTax:
            revert with 0, 18
        if eth.balance(this.address) and marketingTax > -1 / eth.balance(this.address):
            revert with 0, 17
        if not treasuryTax + marketingTax + teamTax:
            revert with 0, 18
        if eth.balance(this.address) and teamTax > -1 / eth.balance(this.address):
            revert with 0, 17
        if not treasuryTax + marketingTax + teamTax:
            revert with 0, 18
        call stor8 with:
           value eth.balance(this.address) * treasuryTax / treasuryTax + marketingTax + teamTax wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor9 with:
           value eth.balance(this.address) * marketingTax / treasuryTax + marketingTax + teamTax wei
             gas 2300 * is_zero(value) wei
        call stor10 with:
           value eth.balance(this.address) * teamTax / treasuryTax + marketingTax + teamTax wei
             gas 2300 * is_zero(value) wei
        emit FundsExtract(eth.balance(this.address));
}

function name() {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15.length):
                if 31 < uint255(stor15.length) * 0.5:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor15.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(uint255(stor15.length) * 0.5) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
        if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
            mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)], mem[(2 * ceil32(uint255(stor15.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor15.length) * 0.5)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15.length):
            if 31 < uint255(stor15.length) * 0.5:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while (uint255(stor15.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) > stor15.length.field_1:
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
}

function symbol() {
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor16.length):
                if 31 < uint255(stor16.length) * 0.5:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor16.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(uint255(stor16.length) * 0.5) + 192 len ceil32(uint255(stor16.length) * 0.5)] = mem[128 len ceil32(uint255(stor16.length) * 0.5)]
        if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
            mem[ceil32(uint255(stor16.length) * 0.5) + (uint255(stor16.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)], mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor16.length) * 0.5)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 0, 34
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor16.length):
            if 31 < uint255(stor16.length) * 0.5:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while (uint255(stor16.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function excludeFromRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor4[address(arg1)]:
        if stor13 < stor14:
            revert with 0, 17
        if totalSupply < stor12:
            revert with 0, 17
        if not stor13 - stor14:
            if not totalSupply:
                revert with 0, 18
            if stor4[address(arg1)]:
                if stor2[address(arg1)] and stor13 / totalSupply > -1 / stor2[address(arg1)]:
                    revert with 0, 17
                if stor12 > !stor2[address(arg1)]:
                    revert with 0, 17
                stor12 += stor2[address(arg1)]
                if stor14 > !(stor2[address(arg1)] * stor13 / totalSupply):
                    revert with 0, 17
                stor14 += stor2[address(arg1)] * stor13 / totalSupply
            else:
                if stor13 < stor14:
                    revert with 0, 17
                if totalSupply < stor12:
                    revert with 0, 17
                if not stor13 - stor14:
                    if not totalSupply:
                        revert with 0, 18
                    if not stor13 / totalSupply:
                        revert with 0, 18
                    if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                        revert with 0, 17
                    stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                    if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                        revert with 0, 17
                    stor12 += stor3[address(arg1)] / stor13 / totalSupply
                    if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply):
                        revert with 0, 17
                    stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
                else:
                    if totalSupply - stor12:
                        if not stor13 - stor14 / totalSupply - stor12:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                            revert with 0, 17
                        stor2[address(arg1)] = stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                        if stor12 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12):
                            revert with 0, 17
                        stor12 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                        if stor14 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply):
                            revert with 0, 17
                        stor14 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply
                    else:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                        if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                            revert with 0, 17
                        stor12 += stor3[address(arg1)] / stor13 / totalSupply
                        if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply):
                            revert with 0, 17
                        stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
        else:
            if totalSupply - stor12:
                if stor4[address(arg1)]:
                    if stor2[address(arg1)] and stor13 - stor14 / totalSupply - stor12 > -1 / stor2[address(arg1)]:
                        revert with 0, 17
                    if stor12 > !stor2[address(arg1)]:
                        revert with 0, 17
                    stor12 += stor2[address(arg1)]
                    if stor14 > !(stor2[address(arg1)] * stor13 - stor14 / totalSupply - stor12):
                        revert with 0, 17
                    stor14 += stor2[address(arg1)] * stor13 - stor14 / totalSupply - stor12
                else:
                    if stor13 < stor14:
                        revert with 0, 17
                    if totalSupply < stor12:
                        revert with 0, 17
                    if not stor13 - stor14:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 / totalSupply and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                        if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                            revert with 0, 17
                        stor12 += stor3[address(arg1)] / stor13 / totalSupply
                        if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12):
                            revert with 0, 17
                        stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12
                    else:
                        if totalSupply - stor12:
                            if not stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor2[address(arg1)] = stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                            if stor12 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12):
                                revert with 0, 17
                            stor12 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                            if stor14 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 - stor14 / totalSupply - stor12):
                                revert with 0, 17
                            stor14 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 - stor14 / totalSupply - stor12
                        else:
                            if not totalSupply:
                                revert with 0, 18
                            if not stor13 / totalSupply:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 / totalSupply and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                                revert with 0, 17
                            stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                            if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                                revert with 0, 17
                            stor12 += stor3[address(arg1)] / stor13 / totalSupply
                            if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12):
                                revert with 0, 17
                            stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12
            else:
                if not totalSupply:
                    revert with 0, 18
                if stor4[address(arg1)]:
                    if stor2[address(arg1)] and stor13 / totalSupply > -1 / stor2[address(arg1)]:
                        revert with 0, 17
                    if stor12 > !stor2[address(arg1)]:
                        revert with 0, 17
                    stor12 += stor2[address(arg1)]
                    if stor14 > !(stor2[address(arg1)] * stor13 / totalSupply):
                        revert with 0, 17
                    stor14 += stor2[address(arg1)] * stor13 / totalSupply
                else:
                    if stor13 < stor14:
                        revert with 0, 17
                    if totalSupply < stor12:
                        revert with 0, 17
                    if not stor13 - stor14:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                        if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                            revert with 0, 17
                        stor12 += stor3[address(arg1)] / stor13 / totalSupply
                        if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply):
                            revert with 0, 17
                        stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
                    else:
                        if totalSupply - stor12:
                            if not stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor2[address(arg1)] = stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                            if stor12 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12):
                                revert with 0, 17
                            stor12 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                            if stor14 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply):
                                revert with 0, 17
                            stor14 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply
                        else:
                            if not totalSupply:
                                revert with 0, 18
                            if not stor13 / totalSupply:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                                revert with 0, 17
                            stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                            if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                                revert with 0, 17
                            stor12 += stor3[address(arg1)] / stor13 / totalSupply
                            if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply):
                                revert with 0, 17
                            stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
        stor4[address(arg1)] = 1
        emit ExcludeFromRewards(arg1);
}

function addPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 1
    if not stor4[address(arg1)]:
        if stor13 < stor14:
            revert with 0, 17
        if totalSupply < stor12:
            revert with 0, 17
        if not stor13 - stor14:
            if not totalSupply:
                revert with 0, 18
            if stor4[address(arg1)]:
                if stor2[address(arg1)] and stor13 / totalSupply > -1 / stor2[address(arg1)]:
                    revert with 0, 17
                if stor12 > !stor2[address(arg1)]:
                    revert with 0, 17
                stor12 += stor2[address(arg1)]
                if stor14 > !(stor2[address(arg1)] * stor13 / totalSupply):
                    revert with 0, 17
                stor14 += stor2[address(arg1)] * stor13 / totalSupply
            else:
                if stor13 < stor14:
                    revert with 0, 17
                if totalSupply < stor12:
                    revert with 0, 17
                if not stor13 - stor14:
                    if not totalSupply:
                        revert with 0, 18
                    if not stor13 / totalSupply:
                        revert with 0, 18
                    if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                        revert with 0, 17
                    stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                    if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                        revert with 0, 17
                    stor12 += stor3[address(arg1)] / stor13 / totalSupply
                    if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply):
                        revert with 0, 17
                    stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
                else:
                    if totalSupply - stor12:
                        if not stor13 - stor14 / totalSupply - stor12:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                            revert with 0, 17
                        stor2[address(arg1)] = stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                        if stor12 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12):
                            revert with 0, 17
                        stor12 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                        if stor14 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply):
                            revert with 0, 17
                        stor14 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply
                    else:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                        if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                            revert with 0, 17
                        stor12 += stor3[address(arg1)] / stor13 / totalSupply
                        if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply):
                            revert with 0, 17
                        stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
        else:
            if totalSupply - stor12:
                if stor4[address(arg1)]:
                    if stor2[address(arg1)] and stor13 - stor14 / totalSupply - stor12 > -1 / stor2[address(arg1)]:
                        revert with 0, 17
                    if stor12 > !stor2[address(arg1)]:
                        revert with 0, 17
                    stor12 += stor2[address(arg1)]
                    if stor14 > !(stor2[address(arg1)] * stor13 - stor14 / totalSupply - stor12):
                        revert with 0, 17
                    stor14 += stor2[address(arg1)] * stor13 - stor14 / totalSupply - stor12
                else:
                    if stor13 < stor14:
                        revert with 0, 17
                    if totalSupply < stor12:
                        revert with 0, 17
                    if not stor13 - stor14:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 / totalSupply and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                        if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                            revert with 0, 17
                        stor12 += stor3[address(arg1)] / stor13 / totalSupply
                        if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12):
                            revert with 0, 17
                        stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12
                    else:
                        if totalSupply - stor12:
                            if not stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor2[address(arg1)] = stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                            if stor12 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12):
                                revert with 0, 17
                            stor12 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                            if stor14 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 - stor14 / totalSupply - stor12):
                                revert with 0, 17
                            stor14 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 - stor14 / totalSupply - stor12
                        else:
                            if not totalSupply:
                                revert with 0, 18
                            if not stor13 / totalSupply:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 / totalSupply and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                                revert with 0, 17
                            stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                            if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                                revert with 0, 17
                            stor12 += stor3[address(arg1)] / stor13 / totalSupply
                            if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12):
                                revert with 0, 17
                            stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12
            else:
                if not totalSupply:
                    revert with 0, 18
                if stor4[address(arg1)]:
                    if stor2[address(arg1)] and stor13 / totalSupply > -1 / stor2[address(arg1)]:
                        revert with 0, 17
                    if stor12 > !stor2[address(arg1)]:
                        revert with 0, 17
                    stor12 += stor2[address(arg1)]
                    if stor14 > !(stor2[address(arg1)] * stor13 / totalSupply):
                        revert with 0, 17
                    stor14 += stor2[address(arg1)] * stor13 / totalSupply
                else:
                    if stor13 < stor14:
                        revert with 0, 17
                    if totalSupply < stor12:
                        revert with 0, 17
                    if not stor13 - stor14:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                        if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                            revert with 0, 17
                        stor12 += stor3[address(arg1)] / stor13 / totalSupply
                        if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply):
                            revert with 0, 17
                        stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
                    else:
                        if totalSupply - stor12:
                            if not stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor2[address(arg1)] = stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                            if stor12 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12):
                                revert with 0, 17
                            stor12 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                            if stor14 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply):
                                revert with 0, 17
                            stor14 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply
                        else:
                            if not totalSupply:
                                revert with 0, 18
                            if not stor13 / totalSupply:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                                revert with 0, 17
                            stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                            if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                                revert with 0, 17
                            stor12 += stor3[address(arg1)] / stor13 / totalSupply
                            if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply):
                                revert with 0, 17
                            stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
        stor4[address(arg1)] = 1
        emit ExcludeFromRewards(arg1);
    emit 0x84f21453: arg1
}

function includeInRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4[address(arg1)]:
        if stor13 < stor14:
            revert with 0, 17
        if totalSupply < stor12:
            revert with 0, 17
        if not stor13 - stor14:
            if not totalSupply:
                revert with 0, 18
            if stor4[address(arg1)]:
                if stor2[address(arg1)] and stor13 / totalSupply > -1 / stor2[address(arg1)]:
                    revert with 0, 17
                stor3[address(arg1)] = stor2[address(arg1)] * stor13 / totalSupply
                if stor12 < stor2[address(arg1)]:
                    revert with 0, 17
                stor12 -= stor2[address(arg1)]
                if stor14 < stor2[address(arg1)] * stor13 / totalSupply:
                    revert with 0, 17
                stor14 += -1 * stor2[address(arg1)] * stor13 / totalSupply
            else:
                if stor13 < stor14:
                    revert with 0, 17
                if totalSupply < stor12:
                    revert with 0, 17
                if not stor13 - stor14:
                    if not totalSupply:
                        revert with 0, 18
                    if not stor13 / totalSupply:
                        revert with 0, 18
                    if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                        revert with 0, 17
                    stor3[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
                    if stor12 < stor3[address(arg1)] / stor13 / totalSupply:
                        revert with 0, 17
                    stor12 -= stor3[address(arg1)] / stor13 / totalSupply
                    if stor14 < stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
                else:
                    if totalSupply - stor12:
                        if not stor13 - stor14 / totalSupply - stor12:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                            revert with 0, 17
                        stor3[address(arg1)] = stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply
                        if stor12 < stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                            revert with 0, 17
                        stor12 -= stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                        if stor14 < stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply
                    else:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor3[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
                        if stor12 < stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor12 -= stor3[address(arg1)] / stor13 / totalSupply
                        if stor14 < stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
        else:
            if totalSupply - stor12:
                if stor4[address(arg1)]:
                    if stor2[address(arg1)] and stor13 - stor14 / totalSupply - stor12 > -1 / stor2[address(arg1)]:
                        revert with 0, 17
                    stor3[address(arg1)] = stor2[address(arg1)] * stor13 - stor14 / totalSupply - stor12
                    if stor12 < stor2[address(arg1)]:
                        revert with 0, 17
                    stor12 -= stor2[address(arg1)]
                    if stor14 < stor2[address(arg1)] * stor13 - stor14 / totalSupply - stor12:
                        revert with 0, 17
                    stor14 += -1 * stor2[address(arg1)] * stor13 - stor14 / totalSupply - stor12
                else:
                    if stor13 < stor14:
                        revert with 0, 17
                    if totalSupply < stor12:
                        revert with 0, 17
                    if not stor13 - stor14:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 / totalSupply and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor3[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12
                        if stor12 < stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor12 -= stor3[address(arg1)] / stor13 / totalSupply
                        if stor14 < stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12:
                            revert with 0, 17
                        stor14 += -1 * stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12
                    else:
                        if totalSupply - stor12:
                            if not stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor3[address(arg1)] = stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 - stor14 / totalSupply - stor12
                            if stor12 < stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor12 -= stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                            if stor14 < stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor14 += -1 * stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 - stor14 / totalSupply - stor12
                        else:
                            if not totalSupply:
                                revert with 0, 18
                            if not stor13 / totalSupply:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 / totalSupply and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                                revert with 0, 17
                            stor3[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12
                            if stor12 < stor3[address(arg1)] / stor13 / totalSupply:
                                revert with 0, 17
                            stor12 -= stor3[address(arg1)] / stor13 / totalSupply
                            if stor14 < stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor14 += -1 * stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12
            else:
                if not totalSupply:
                    revert with 0, 18
                if stor4[address(arg1)]:
                    if stor2[address(arg1)] and stor13 / totalSupply > -1 / stor2[address(arg1)]:
                        revert with 0, 17
                    stor3[address(arg1)] = stor2[address(arg1)] * stor13 / totalSupply
                    if stor12 < stor2[address(arg1)]:
                        revert with 0, 17
                    stor12 -= stor2[address(arg1)]
                    if stor14 < stor2[address(arg1)] * stor13 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * stor2[address(arg1)] * stor13 / totalSupply
                else:
                    if stor13 < stor14:
                        revert with 0, 17
                    if totalSupply < stor12:
                        revert with 0, 17
                    if not stor13 - stor14:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor3[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
                        if stor12 < stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor12 -= stor3[address(arg1)] / stor13 / totalSupply
                        if stor14 < stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
                    else:
                        if totalSupply - stor12:
                            if not stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor3[address(arg1)] = stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply
                            if stor12 < stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor12 -= stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                            if stor14 < stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply:
                                revert with 0, 17
                            stor14 += -1 * stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply
                        else:
                            if not totalSupply:
                                revert with 0, 18
                            if not stor13 / totalSupply:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                                revert with 0, 17
                            stor3[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
                            if stor12 < stor3[address(arg1)] / stor13 / totalSupply:
                                revert with 0, 17
                            stor12 -= stor3[address(arg1)] / stor13 / totalSupply
                            if stor14 < stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply:
                                revert with 0, 17
                            stor14 += -1 * stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
        stor4[address(arg1)] = 0
        emit IncludeInRewards(arg1);
}

function setTeamTaxAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4[stor10]:
        if stor13 < stor14:
            revert with 0, 17
        if totalSupply < stor12:
            revert with 0, 17
        if not stor13 - stor14:
            if not totalSupply:
                revert with 0, 18
            if stor4[stor10]:
                if stor2[stor10] and stor13 / totalSupply > -1 / stor2[stor10]:
                    revert with 0, 17
                stor3[stor10] = stor2[stor10] * stor13 / totalSupply
                if stor12 < stor2[stor10]:
                    revert with 0, 17
                stor12 -= stor2[stor10]
                if stor14 < stor2[stor10] * stor13 / totalSupply:
                    revert with 0, 17
                stor14 += -1 * stor2[stor10] * stor13 / totalSupply
            else:
                if stor13 < stor14:
                    revert with 0, 17
                if totalSupply < stor12:
                    revert with 0, 17
                if not stor13 - stor14:
                    if not totalSupply:
                        revert with 0, 18
                    if not stor13 / totalSupply:
                        revert with 0, 18
                    if stor3[stor10] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[stor10] / stor13 / totalSupply:
                        revert with 0, 17
                    stor3[stor10] = stor3[stor10] / stor13 / totalSupply * stor13 / totalSupply
                    if stor12 < stor3[stor10] / stor13 / totalSupply:
                        revert with 0, 17
                    stor12 -= stor3[stor10] / stor13 / totalSupply
                    if stor14 < stor3[stor10] / stor13 / totalSupply * stor13 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * stor3[stor10] / stor13 / totalSupply * stor13 / totalSupply
                else:
                    if totalSupply - stor12:
                        if not stor13 - stor14 / totalSupply - stor12:
                            revert with 0, 18
                        if stor3[stor10] / stor13 - stor14 / totalSupply - stor12 and stor13 / totalSupply > -1 / stor3[stor10] / stor13 - stor14 / totalSupply - stor12:
                            revert with 0, 17
                        stor3[stor10] = stor3[stor10] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply
                        if stor12 < stor3[stor10] / stor13 - stor14 / totalSupply - stor12:
                            revert with 0, 17
                        stor12 -= stor3[stor10] / stor13 - stor14 / totalSupply - stor12
                        if stor14 < stor3[stor10] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * stor3[stor10] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply
                    else:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[stor10] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[stor10] / stor13 / totalSupply:
                            revert with 0, 17
                        stor3[stor10] = stor3[stor10] / stor13 / totalSupply * stor13 / totalSupply
                        if stor12 < stor3[stor10] / stor13 / totalSupply:
                            revert with 0, 17
                        stor12 -= stor3[stor10] / stor13 / totalSupply
                        if stor14 < stor3[stor10] / stor13 / totalSupply * stor13 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * stor3[stor10] / stor13 / totalSupply * stor13 / totalSupply
        else:
            if totalSupply - stor12:
                if stor4[stor10]:
                    if stor2[stor10] and stor13 - stor14 / totalSupply - stor12 > -1 / stor2[stor10]:
                        revert with 0, 17
                    stor3[stor10] = stor2[stor10] * stor13 - stor14 / totalSupply - stor12
                    if stor12 < stor2[stor10]:
                        revert with 0, 17
                    stor12 -= stor2[stor10]
                    if stor14 < stor2[stor10] * stor13 - stor14 / totalSupply - stor12:
                        revert with 0, 17
                    stor14 += -1 * stor2[stor10] * stor13 - stor14 / totalSupply - stor12
                else:
                    if stor13 < stor14:
                        revert with 0, 17
                    if totalSupply < stor12:
                        revert with 0, 17
                    if not stor13 - stor14:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[stor10] / stor13 / totalSupply and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[stor10] / stor13 / totalSupply:
                            revert with 0, 17
                        stor3[stor10] = stor3[stor10] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12
                        if stor12 < stor3[stor10] / stor13 / totalSupply:
                            revert with 0, 17
                        stor12 -= stor3[stor10] / stor13 / totalSupply
                        if stor14 < stor3[stor10] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12:
                            revert with 0, 17
                        stor14 += -1 * stor3[stor10] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12
                    else:
                        if totalSupply - stor12:
                            if not stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 18
                            if stor3[stor10] / stor13 - stor14 / totalSupply - stor12 and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[stor10] / stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor3[stor10] = stor3[stor10] / stor13 - stor14 / totalSupply - stor12 * stor13 - stor14 / totalSupply - stor12
                            if stor12 < stor3[stor10] / stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor12 -= stor3[stor10] / stor13 - stor14 / totalSupply - stor12
                            if stor14 < stor3[stor10] / stor13 - stor14 / totalSupply - stor12 * stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor14 += -1 * stor3[stor10] / stor13 - stor14 / totalSupply - stor12 * stor13 - stor14 / totalSupply - stor12
                        else:
                            if not totalSupply:
                                revert with 0, 18
                            if not stor13 / totalSupply:
                                revert with 0, 18
                            if stor3[stor10] / stor13 / totalSupply and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[stor10] / stor13 / totalSupply:
                                revert with 0, 17
                            stor3[stor10] = stor3[stor10] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12
                            if stor12 < stor3[stor10] / stor13 / totalSupply:
                                revert with 0, 17
                            stor12 -= stor3[stor10] / stor13 / totalSupply
                            if stor14 < stor3[stor10] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor14 += -1 * stor3[stor10] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12
            else:
                if not totalSupply:
                    revert with 0, 18
                if stor4[stor10]:
                    if stor2[stor10] and stor13 / totalSupply > -1 / stor2[stor10]:
                        revert with 0, 17
                    stor3[stor10] = stor2[stor10] * stor13 / totalSupply
                    if stor12 < stor2[stor10]:
                        revert with 0, 17
                    stor12 -= stor2[stor10]
                    if stor14 < stor2[stor10] * stor13 / totalSupply:
                        revert with 0, 17
                    stor14 += -1 * stor2[stor10] * stor13 / totalSupply
                else:
                    if stor13 < stor14:
                        revert with 0, 17
                    if totalSupply < stor12:
                        revert with 0, 17
                    if not stor13 - stor14:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[stor10] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[stor10] / stor13 / totalSupply:
                            revert with 0, 17
                        stor3[stor10] = stor3[stor10] / stor13 / totalSupply * stor13 / totalSupply
                        if stor12 < stor3[stor10] / stor13 / totalSupply:
                            revert with 0, 17
                        stor12 -= stor3[stor10] / stor13 / totalSupply
                        if stor14 < stor3[stor10] / stor13 / totalSupply * stor13 / totalSupply:
                            revert with 0, 17
                        stor14 += -1 * stor3[stor10] / stor13 / totalSupply * stor13 / totalSupply
                    else:
                        if totalSupply - stor12:
                            if not stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 18
                            if stor3[stor10] / stor13 - stor14 / totalSupply - stor12 and stor13 / totalSupply > -1 / stor3[stor10] / stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor3[stor10] = stor3[stor10] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply
                            if stor12 < stor3[stor10] / stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor12 -= stor3[stor10] / stor13 - stor14 / totalSupply - stor12
                            if stor14 < stor3[stor10] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply:
                                revert with 0, 17
                            stor14 += -1 * stor3[stor10] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply
                        else:
                            if not totalSupply:
                                revert with 0, 18
                            if not stor13 / totalSupply:
                                revert with 0, 18
                            if stor3[stor10] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[stor10] / stor13 / totalSupply:
                                revert with 0, 17
                            stor3[stor10] = stor3[stor10] / stor13 / totalSupply * stor13 / totalSupply
                            if stor12 < stor3[stor10] / stor13 / totalSupply:
                                revert with 0, 17
                            stor12 -= stor3[stor10] / stor13 / totalSupply
                            if stor14 < stor3[stor10] / stor13 / totalSupply * stor13 / totalSupply:
                                revert with 0, 17
                            stor14 += -1 * stor3[stor10] / stor13 / totalSupply * stor13 / totalSupply
        stor4[stor10] = 0
        emit IncludeInRewards(stor10);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[stor10]:
        stor5[stor10] = 0
        emit 0x7bcf3731: stor10
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor4[address(arg1)]:
        if stor13 < stor14:
            revert with 0, 17
        if totalSupply < stor12:
            revert with 0, 17
        if not stor13 - stor14:
            if not totalSupply:
                revert with 0, 18
            if stor4[address(arg1)]:
                if stor2[address(arg1)] and stor13 / totalSupply > -1 / stor2[address(arg1)]:
                    revert with 0, 17
                if stor12 > !stor2[address(arg1)]:
                    revert with 0, 17
                stor12 += stor2[address(arg1)]
                if stor14 > !(stor2[address(arg1)] * stor13 / totalSupply):
                    revert with 0, 17
                stor14 += stor2[address(arg1)] * stor13 / totalSupply
            else:
                if stor13 < stor14:
                    revert with 0, 17
                if totalSupply < stor12:
                    revert with 0, 17
                if not stor13 - stor14:
                    if not totalSupply:
                        revert with 0, 18
                    if not stor13 / totalSupply:
                        revert with 0, 18
                    if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                        revert with 0, 17
                    stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                    if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                        revert with 0, 17
                    stor12 += stor3[address(arg1)] / stor13 / totalSupply
                    if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply):
                        revert with 0, 17
                    stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
                else:
                    if totalSupply - stor12:
                        if not stor13 - stor14 / totalSupply - stor12:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                            revert with 0, 17
                        stor2[address(arg1)] = stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                        if stor12 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12):
                            revert with 0, 17
                        stor12 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                        if stor14 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply):
                            revert with 0, 17
                        stor14 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply
                    else:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                        if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                            revert with 0, 17
                        stor12 += stor3[address(arg1)] / stor13 / totalSupply
                        if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply):
                            revert with 0, 17
                        stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
        else:
            if totalSupply - stor12:
                if stor4[address(arg1)]:
                    if stor2[address(arg1)] and stor13 - stor14 / totalSupply - stor12 > -1 / stor2[address(arg1)]:
                        revert with 0, 17
                    if stor12 > !stor2[address(arg1)]:
                        revert with 0, 17
                    stor12 += stor2[address(arg1)]
                    if stor14 > !(stor2[address(arg1)] * stor13 - stor14 / totalSupply - stor12):
                        revert with 0, 17
                    stor14 += stor2[address(arg1)] * stor13 - stor14 / totalSupply - stor12
                else:
                    if stor13 < stor14:
                        revert with 0, 17
                    if totalSupply < stor12:
                        revert with 0, 17
                    if not stor13 - stor14:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 / totalSupply and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                        if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                            revert with 0, 17
                        stor12 += stor3[address(arg1)] / stor13 / totalSupply
                        if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12):
                            revert with 0, 17
                        stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12
                    else:
                        if totalSupply - stor12:
                            if not stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor2[address(arg1)] = stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                            if stor12 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12):
                                revert with 0, 17
                            stor12 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                            if stor14 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 - stor14 / totalSupply - stor12):
                                revert with 0, 17
                            stor14 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 - stor14 / totalSupply - stor12
                        else:
                            if not totalSupply:
                                revert with 0, 18
                            if not stor13 / totalSupply:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 / totalSupply and stor13 - stor14 / totalSupply - stor12 > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                                revert with 0, 17
                            stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                            if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                                revert with 0, 17
                            stor12 += stor3[address(arg1)] / stor13 / totalSupply
                            if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12):
                                revert with 0, 17
                            stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 - stor14 / totalSupply - stor12
            else:
                if not totalSupply:
                    revert with 0, 18
                if stor4[address(arg1)]:
                    if stor2[address(arg1)] and stor13 / totalSupply > -1 / stor2[address(arg1)]:
                        revert with 0, 17
                    if stor12 > !stor2[address(arg1)]:
                        revert with 0, 17
                    stor12 += stor2[address(arg1)]
                    if stor14 > !(stor2[address(arg1)] * stor13 / totalSupply):
                        revert with 0, 17
                    stor14 += stor2[address(arg1)] * stor13 / totalSupply
                else:
                    if stor13 < stor14:
                        revert with 0, 17
                    if totalSupply < stor12:
                        revert with 0, 17
                    if not stor13 - stor14:
                        if not totalSupply:
                            revert with 0, 18
                        if not stor13 / totalSupply:
                            revert with 0, 18
                        if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                            revert with 0, 17
                        stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                        if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                            revert with 0, 17
                        stor12 += stor3[address(arg1)] / stor13 / totalSupply
                        if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply):
                            revert with 0, 17
                        stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
                    else:
                        if totalSupply - stor12:
                            if not stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12:
                                revert with 0, 17
                            stor2[address(arg1)] = stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                            if stor12 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12):
                                revert with 0, 17
                            stor12 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12
                            if stor14 > !(stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply):
                                revert with 0, 17
                            stor14 += stor3[address(arg1)] / stor13 - stor14 / totalSupply - stor12 * stor13 / totalSupply
                        else:
                            if not totalSupply:
                                revert with 0, 18
                            if not stor13 / totalSupply:
                                revert with 0, 18
                            if stor3[address(arg1)] / stor13 / totalSupply and stor13 / totalSupply > -1 / stor3[address(arg1)] / stor13 / totalSupply:
                                revert with 0, 17
                            stor2[address(arg1)] = stor3[address(arg1)] / stor13 / totalSupply
                            if stor12 > !(stor3[address(arg1)] / stor13 / totalSupply):
                                revert with 0, 17
                            stor12 += stor3[address(arg1)] / stor13 / totalSupply
                            if stor14 > !(stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply):
                                revert with 0, 17
                            stor14 += stor3[address(arg1)] / stor13 / totalSupply * stor13 / totalSupply
        stor4[address(arg1)] = 1
        emit ExcludeFromRewards(arg1);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        stor5[address(arg1)] = 1
        emit 0x330d33df: arg1
    stor10 = arg1
    emit TeamTaxAddressChange(stor10, arg1);
}



}
