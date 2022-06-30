contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 decimals;
uint8 stor5; offset 168
uint8 stor5; offset 176
uint128 stor5; offset 168
address owner; offset 8
address sub_18551108Address;
mapping of uint8 stor7;
uint256 sub_dba61c58;
uint256 minimumTokensBeforeSwap;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint128 stor12; offset 160
address sub_a26bd13cAddress;
mapping of uint8 stor13;
uint256 stor14;
uint8 stor15; offset 160
uint8 sub_ede49a19; offset 168
uint8 sub_52c6dbc4; offset 176
uint8 sub_f19fffcb; offset 184
uint8 sub_30bd85c5; offset 192
uint64 stor15; offset 192
uint128 stor15; offset 184
uint128 stor15; offset 176
uint128 stor15; offset 168
address pinkAntiBotAddress;
uint256 maxSellPercentage;
uint256 sub_099b17ed;
uint256 launchTime;
uint256 snipersCaught;
mapping of uint8 stor20;
mapping of uint8 stor21;
mapping of uint256 sub_db38a41d;
mapping of uint8 stor23;

function isTradingEnabled() payable {
    return bool(uint8(stor5.field_168))
}

function sub_099b17ed(?) payable {
    return sub_099b17ed
}

function isSniper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor20[arg1])
}

function totalSupply() payable {
    return totalSupply
}

function sub_18551108(?) payable {
    return sub_18551108Address
}

function sub_2b750627(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor21[arg1])
}

function sub_30bd85c5(?) payable {
    return bool(sub_30bd85c5)
}

function decimals() payable {
    return decimals
}

function pinkAntiBot() payable {
    return pinkAntiBotAddress
}

function excludedFromDividends(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[arg1])
}

function sub_52c6dbc4(?) payable {
    return bool(sub_52c6dbc4)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7412dbb3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function launchTime() payable {
    return launchTime
}

function launched() payable {
    return bool(uint8(stor5.field_176))
}

function owner() payable {
    return owner
}

function excludedFromTax(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function sub_a26bd13c(?) payable {
    return sub_a26bd13cAddress
}

function maxSellPercentage() payable {
    return maxSellPercentage
}

function minimumTokensBeforeSwap() payable {
    return minimumTokensBeforeSwap
}

function sub_db38a41d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_db38a41d[arg1]
}

function sub_dba61c58(?) payable {
    return sub_dba61c58
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function isAdmins(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function snipersCaught() payable {
    return snipersCaught
}

function sub_e948474b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor23[arg1])
}

function sub_ede49a19(?) payable {
    return bool(sub_ede49a19)
}

function sub_f19fffcb(?) payable {
    return bool(sub_f19fffcb)
}

function _fallback() payable {
    revert
}

function launch() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    uint8(stor5.field_176) = 1
    launchTime = block.timestamp
}

function sub_abea3e7d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    maxSellPercentage = arg1
}

function setMaxHoldPercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    sub_099b17ed = arg1
}

function sub_d31acb28(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    minimumTokensBeforeSwap = arg1
    sub_dba61c58 = arg2
}

function sub_ac980258(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    stor12 = Mask(96, 0, bool(arg1))
}

function sub_36827499(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    Mask(72, 0, stor15.field_184) = Mask(72, 0, bool(arg1))
}

function sub_5543379a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    Mask(80, 0, stor15.field_176) = Mask(80, 0, bool(arg1))
}

function setTradingEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    Mask(88, 0, stor5.field_168) = Mask(88, 0, arg1)
}

function sub_c552f4c5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    Mask(88, 0, stor15.field_168) = Mask(88, 0, bool(arg1))
}

function sub_cd03425c(?) payable {
    if not totalSupply:
        return 0
    if totalSupply and sub_099b17ed > -1 / totalSupply:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    require totalSupply * sub_099b17ed / totalSupply == sub_099b17ed
    return (totalSupply * sub_099b17ed / 10000)
}

function buyTax() payable {
    require ext_code.size(sub_18551108Address)
    staticcall sub_18551108Address.getBuyTax() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sellTax() payable {
    require ext_code.size(sub_18551108Address)
    staticcall sub_18551108Address.getSellTax() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setAdmin(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    stor11[address(arg1)] = uint8(arg2)
}

function sub_5d90bbaf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    stor20[address(arg1)] = uint8(bool(arg2))
}

function sub_5d9d7d43(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    stor21[address(arg1)] = uint8(bool(arg2))
}

function maxSellAmount() payable {
    if not totalSupply:
        return 0
    if totalSupply and maxSellPercentage > -1 / totalSupply:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    require totalSupply * maxSellPercentage / totalSupply == maxSellPercentage
    return (totalSupply * maxSellPercentage / 10000)
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    if not arg1:
        revert with 0, 'cannot be zero address'
    owner = arg1
}

function setExcludedFromTax(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    stor10[address(arg1)] = uint8(arg2)
}

function sub_28be9038(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    stor7[address(arg1)] = uint8(bool(arg2))
    stor13[address(arg1)] = uint8(bool(arg2))
}

function sub_e53be8d1(?) payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_89d53c01(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    if not uint8(stor15.field_160):
        revert with 0, 'pink anti bot is not configured'
    uint64(stor15.field_192) = uint64(bool(arg1))
}

function sendTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor11[msg.sender]:
        revert with 0, 'must be admin'
    require ext_code.size(sub_18551108Address)
    call sub_18551108Address.sendToken(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8dfbe582(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    require ext_code.size(sub_a26bd13cAddress)
    call sub_a26bd13cAddress.process(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_442ef7d2(?) payable {
    if not uint8(stor5.field_176):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called once token is launched'
    if not stor11[msg.sender]:
        revert with 0, 'must be admin'
    require ext_code.size(sub_18551108Address)
    call sub_18551108Address.distribute() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b16c1d14(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    stor14 = arg3
    require ext_code.size(sub_a26bd13cAddress)
    call sub_a26bd13cAddress.setDistributionCriteria(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not uint8(stor5.field_168):
        if owner != msg.sender:
            if owner != msg.sender:
                revert with 0, 'trading not enabled'
    else:
        if not uint8(stor5.field_176):
            if owner != msg.sender:
                if owner != msg.sender:
                    revert with 0, 'trading not enabled'
    if not arg1:
        revert with 0, 'cannot approve the 0 address'
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_52468d2b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    if this.address == address(arg1):
        revert with 0, 'this address cannot be excluded'
    if sub_18551108Address == address(arg1):
        revert with 0, 'this address cannot be excluded'
    if sub_a26bd13cAddress == address(arg1):
        revert with 0, 'this address cannot be excluded'
    if stor7[address(arg1)]:
        revert with 0, 'this address cannot be excluded'
    stor23[address(arg1)] = uint8(bool(arg2))
}

function sub_07a1cfbd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'can only be called by the contract owner'
    require ext_code.size(sub_18551108Address)
    call sub_18551108Address.0x7a1cfbd with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6508c57e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'can only be called by the contract owner'
    require ext_code.size(sub_18551108Address)
    call sub_18551108Address.0x6508c57e with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f1f5cd91(?) payable {
    if not uint8(stor5.field_176):
        return 0
    if block.timestamp < launchTime:
        revert with 0, 17
    if block.timestamp - launchTime >= 100:
        return 0
    require block.timestamp - launchTime <= 100
    if 100 < block.timestamp - launchTime:
        revert with 0, 17
    if not -block.timestamp + launchTime + 100:
        return 0
    if -block.timestamp + launchTime + 100 and 100 > -1 / -block.timestamp + launchTime + 100:
        revert with 0, 17
    if not -block.timestamp + launchTime + 100:
        revert with 0, 18
    require (-100 * block.timestamp) + (100 * launchTime) + 10000 / -block.timestamp + launchTime + 100 == 100
    return ((-100 * block.timestamp) + (100 * launchTime) + 10000)
}

function sub_28e39bf1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'can only be called by the contract owner'
    require ext_code.size(sub_18551108Address)
    call sub_18551108Address.0x583dd79d with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all]), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not uint8(stor5.field_168):
        if owner != msg.sender:
            if owner != msg.sender:
                revert with 0, 'trading not enabled'
    else:
        if not uint8(stor5.field_176):
            if owner != msg.sender:
                if owner != msg.sender:
                    revert with 0, 'trading not enabled'
    if not arg1:
        revert with 0, 'cannot approve the 0 address'
    require arg2 <= allowance[msg.sender][address(arg1)]
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not uint8(stor5.field_168):
        if owner != msg.sender:
            if owner != msg.sender:
                revert with 0, 'trading not enabled'
    else:
        if not uint8(stor5.field_176):
            if owner != msg.sender:
                if owner != msg.sender:
                    revert with 0, 'trading not enabled'
    if not arg1:
        revert with 0, 'cannot approve the 0 address'
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    require allowance[msg.sender][address(arg1)] + arg2 >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transferTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function setIsDividendExempt(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can only be called by the contract owner'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this address cannot receive shares'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this address cannot receive shares'
    if sub_18551108Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this address cannot receive shares'
    if stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this address cannot receive shares'
    if arg1 == sub_a26bd13cAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this address cannot receive shares'
    stor13[address(arg1)] = uint8(arg2)
    require ext_code.size(sub_a26bd13cAddress)
    if not arg2:
        call sub_a26bd13cAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call sub_a26bd13cAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function name() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}



}
