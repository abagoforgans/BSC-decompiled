contract main {




// =====================  Runtime code  =====================


#
#  - sub_377ec28b(?)
#
const version = 'v1.1.0', 0

const sub_ecd00261(?) = 0xfc425f2263d0df187444b70e47283d622c70181c5baebb1306a01edba1ce184c

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
address factoryAddress;
address tokenAddress;
uint256 dropAmount;
uint256 tokenDecimals;
uint8 stor5;
uint8 stor5; offset 8
uint8 stor5; offset 16
uint8 stor5; offset 24
uint256 stor5; offset 24
uint256 stor5; offset 16
uint256 stor5; offset 8
uint256 dropCount;
mapping of uint8 stor7;
mapping of uint8 stor8;
array of struct whitelist;
array of struct sub_09415449;
array of struct stor11;
address deployerAddress;

function dropAmount() payable {
    return dropAmount
}

function sub_09415449(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_09415449.length
    return sub_09415449[arg1].field_0
}

function sub_0ca7bab5(?) payable {
    return bool(uint8(stor5.field_8))
}

function isActive() payable {
    return bool(uint8(stor5.field_0))
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function sub_29df599a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[address(arg1)])
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function tokenDecimals() payable {
    return tokenDecimals
}

function isWhitelist() payable {
    return bool(uint8(stor5.field_16))
}

function whitelistAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < whitelist.length
    return whitelist[arg1].field_0
}

function dropCount() payable {
    return dropCount
}

function hasClaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function hasFee() payable {
    return bool(uint8(stor5.field_24))
}

function factory() payable {
    return factoryAddress
}

function deployer() payable {
    return deployerAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_952aafb6(?) payable {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'DOES_NOT_HAVE_PERMISSION'
    Mask(248, 0, stor5.field_8) = 1
}

function sub_dcfc685a(?) payable {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'DOES_NOT_HAVE_PERMISSION'
    Mask(248, 0, stor5.field_8) = 0
}

function setFactoryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'DOES_NOT_HAVE_PERMISSION'
    factoryAddress = arg1
}

function sub_60d02d2f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'DOES_NOT_HAVE_PERMISSION'
    Mask(232, 0, stor5.field_24) = Mask(232, 0, bool(arg1))
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[address(arg1)].field_0:
        return bool(roleAdmin[address(arg1)].field_0)
    return bool(roleAdmin[0xfc425f2263d0df187444b70e47283d622c70181c5baebb1306a01edba1ce184c][address(arg1)].field_0)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function claimLeft() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not dropAmount:
        revert with 'NH{q', 18
    return (ext_call.return_data[0] / dropAmount)
}

function sub_5aaca7e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(0xa39c843ccfdb3ede58a09efb5564e34c43099480)
    staticcall 0xa39c843ccfdb3ede58a09efb5564e34c43099480.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return (ext_call.return_data[0] / 10^9)
}

function getWhitelistAddresses() payable {
    mem[64] = (32 * whitelist.length) + 128
    mem[96] = whitelist.length
    if not whitelist.length:
        mem[(32 * whitelist.length) + 128] = 32
        mem[(32 * whitelist.length) + 160] = whitelist.length
        idx = 0
        s = 128
        t = (32 * whitelist.length) + 192
        while idx < whitelist.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * whitelist.length) + 128
           len (96 * whitelist.length) + 64
    mem[128] = address(whitelist.field_0)
    idx = 128
    s = 0
    while (32 * whitelist.length) + 96 > idx:
        mem[idx + 32] = whitelist[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * whitelist.length) + 128] = 32
    mem[(32 * whitelist.length) + 160] = whitelist.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < whitelist.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * whitelist.length) + -mem[64] + 192
}

function enableAirdrop() payable {
    if not roleAdmin[address(msg.sender)].field_0:
        if not roleAdmin[0xfc425f2263d0df187444b70e47283d622c70181c5baebb1306a01edba1ce184c][address(msg.sender)].field_0:
            revert with 0, 'DOES_NOT_HAVE_PERMISSION'
    if uint8(stor5.field_24):
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0xef517bf9 with:
                gas gas_remaining wei
               args 'deployer', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xa39c843ccfdb3ede58a09efb5564e34c43099480)
        staticcall 0xa39c843ccfdb3ede58a09efb5564e34c43099480.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] / 10^9 < ext_call.return_data[0]:
            revert with 0, 'YOU DO NOT HOLD ENOUGH AIR'
    uint8(stor5.field_0) = 1
}

function disableAirdrop() payable {
    if not roleAdmin[address(msg.sender)].field_0:
        if not roleAdmin[0xfc425f2263d0df187444b70e47283d622c70181c5baebb1306a01edba1ce184c][address(msg.sender)].field_0:
            revert with 0, 'DOES_NOT_HAVE_PERMISSION'
    if uint8(stor5.field_24):
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0xef517bf9 with:
                gas gas_remaining wei
               args 'deployer', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xa39c843ccfdb3ede58a09efb5564e34c43099480)
        staticcall 0xa39c843ccfdb3ede58a09efb5564e34c43099480.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] / 10^9 < ext_call.return_data[0]:
            revert with 0, 'YOU DO NOT HOLD ENOUGH AIR'
    uint8(stor5.field_0) = 0
}

function sub_c1369061(?) payable {
    mem[64] = (32 * sub_09415449.length) + 128
    mem[96] = sub_09415449.length
    if not sub_09415449.length:
        mem[(32 * sub_09415449.length) + 128] = 32
        mem[(32 * sub_09415449.length) + 160] = sub_09415449.length
        idx = 0
        s = 128
        t = (32 * sub_09415449.length) + 192
        while idx < sub_09415449.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_09415449.length) + 128
           len (96 * sub_09415449.length) + 64
    mem[128] = address(sub_09415449.field_0)
    idx = 128
    s = 0
    while (32 * sub_09415449.length) + 96 > idx:
        mem[idx + 32] = sub_09415449[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_09415449.length) + 128] = 32
    mem[(32 * sub_09415449.length) + 160] = sub_09415449.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_09415449.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_09415449.length) + -mem[64] + 192
}

function enableWhitelist() payable {
    if not roleAdmin[address(msg.sender)].field_0:
        if not roleAdmin[0xfc425f2263d0df187444b70e47283d622c70181c5baebb1306a01edba1ce184c][address(msg.sender)].field_0:
            revert with 0, 'DOES_NOT_HAVE_PERMISSION'
    if uint8(stor5.field_24):
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0xef517bf9 with:
                gas gas_remaining wei
               args 'deployer', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xa39c843ccfdb3ede58a09efb5564e34c43099480)
        staticcall 0xa39c843ccfdb3ede58a09efb5564e34c43099480.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] / 10^9 < ext_call.return_data[0]:
            revert with 0, 'YOU DO NOT HOLD ENOUGH AIR'
    Mask(240, 0, stor5.field_16) = 1
}

function disableWhitelist() payable {
    if not roleAdmin[address(msg.sender)].field_0:
        if not roleAdmin[0xfc425f2263d0df187444b70e47283d622c70181c5baebb1306a01edba1ce184c][address(msg.sender)].field_0:
            revert with 0, 'DOES_NOT_HAVE_PERMISSION'
    if uint8(stor5.field_24):
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0xef517bf9 with:
                gas gas_remaining wei
               args 'deployer', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xa39c843ccfdb3ede58a09efb5564e34c43099480)
        staticcall 0xa39c843ccfdb3ede58a09efb5564e34c43099480.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] / 10^9 < ext_call.return_data[0]:
            revert with 0, 'YOU DO NOT HOLD ENOUGH AIR'
    Mask(240, 0, stor5.field_16) = 0
}

function sub_1d5fbcc1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0xef517bf9 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xa39c843ccfdb3ede58a09efb5564e34c43099480)
    staticcall 0xa39c843ccfdb3ede58a09efb5564e34c43099480.0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0] / 10^9 >= ext_call.return_data[0]
}

function setDropAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        if not roleAdmin[0xfc425f2263d0df187444b70e47283d622c70181c5baebb1306a01edba1ce184c][address(msg.sender)].field_0:
            revert with 0, 'DOES_NOT_HAVE_PERMISSION'
    if uint8(stor5.field_24):
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0xef517bf9 with:
                gas gas_remaining wei
               args 'deployer', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xa39c843ccfdb3ede58a09efb5564e34c43099480)
        staticcall 0xa39c843ccfdb3ede58a09efb5564e34c43099480.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] / 10^9 < ext_call.return_data[0]:
            revert with 0, 'YOU DO NOT HOLD ENOUGH AIR'
    dropAmount = arg1
}

function sub_46854af7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        if not roleAdmin[0xfc425f2263d0df187444b70e47283d622c70181c5baebb1306a01edba1ce184c][address(msg.sender)].field_0:
            revert with 0, 'DOES_NOT_HAVE_PERMISSION'
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_d472483f(?) payable {
    if not roleAdmin[address(msg.sender)].field_0:
        if not roleAdmin[0xfc425f2263d0df187444b70e47283d622c70181c5baebb1306a01edba1ce184c][address(msg.sender)].field_0:
            revert with 0, 'DOES_NOT_HAVE_PERMISSION'
    if uint8(stor5.field_24):
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0xef517bf9 with:
                gas gas_remaining wei
               args 'deployer', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xa39c843ccfdb3ede58a09efb5564e34c43099480)
        staticcall 0xa39c843ccfdb3ede58a09efb5564e34c43099480.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] / 10^9 < ext_call.return_data[0]:
            revert with 0, 'YOU DO NOT HOLD ENOUGH AIR'
    idx = 0
    while idx < whitelist.length:
        mem[0] = whitelist[idx].field_0
        mem[32] = 8
        stor8[stor9[idx].field_0] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    whitelist.length = 0
    idx = 0
    while whitelist.length > idx:
        whitelist[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function withdrawToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'DOES_NOT_HAVE_PERMISSION'
    if not tokenDecimals:
        if arg1 and 1 > -1 / arg1:
            revert with 'NH{q', 17
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
    else:
        if bool(bool(tokenDecimals < 78)) or bool(bool(tokenDecimals < 32)):
            if 10^tokenDecimals > -1:
                revert with 'NH{q', 17
            if arg1 and 10^tokenDecimals > -1 / arg1:
                revert with 'NH{q', 17
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 * 10^tokenDecimals
        else:
            s = 10
            t = 1
            idx = tokenDecimals
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
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 * t * s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function tokenAmountLeft() payable {
    if not tokenDecimals:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        return ext_call.return_data[0]
    if bool(bool(tokenDecimals < 78)) or bool(bool(tokenDecimals < 32)):
        if 10^tokenDecimals > -1:
            revert with 'NH{q', 17
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not 10^tokenDecimals:
            revert with 'NH{q', 18
        return (ext_call.return_data[0] / 10^tokenDecimals)
    s = 10
    t = 1
    idx = tokenDecimals
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
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not t * s:
        revert with 'NH{q', 18
    return (ext_call.return_data[0] / t * s)
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function getAirdrop() payable {
    if not uint8(stor5.field_0):
        revert with 0, 'AIRDROP IS NOT ACTIVATED'
    if uint8(stor5.field_8):
        revert with 0, 'AIRDROP IS BLOCKED'
    if deployerAddress != msg.sender:
        if stor7[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY ONE AIRDROP CLAIM IS AUTHORIZED'
    if not uint8(stor5.field_24):
        if uint8(stor5.field_16):
            if bool(stor8[address(msg.sender)]) != 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ONLY WHITELISTED ADDRESSES ARE AUTHORIZED'
    else:
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0xef517bf9 with:
                gas gas_remaining wei
               args 'claimer', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0xa39c843ccfdb3ede58a09efb5564e34c43099480)
        staticcall 0xa39c843ccfdb3ede58a09efb5564e34c43099480.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] / 10^9 < ext_call.return_data[0]:
            revert with 0, 'YOU DO NOT HOLD ENOUGH AIR'
        if uint8(stor5.field_16):
            if bool(stor8[address(msg.sender)]) != 1:
                revert with 0, 'ONLY WHITELISTED ADDRESSES ARE AUTHORIZED'
    stor7[address(msg.sender)] = 1
    if dropCount > -2:
        revert with 'NH{q', 17
    dropCount++
    sub_09415449.length++
    sub_09415449[sub_09415449.length].field_0 = msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, dropAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addWhitelistUsers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not roleAdmin[address(msg.sender)].field_0:
        if not roleAdmin[0xfc425f2263d0df187444b70e47283d622c70181c5baebb1306a01edba1ce184c][address(msg.sender)].field_0:
            revert with 0, 'DOES_NOT_HAVE_PERMISSION'
    if arg1.length >= 1000:
        revert with 0, 'WHITELIST MAX SIZE 1000'
    if uint8(stor5.field_24):
        mem[floor32(arg1.length) + 97] = 8
        mem[floor32(arg1.length) + 129] = 'deployer'
        mem[floor32(arg1.length) + 165] = 32
        mem[floor32(arg1.length) + 197] = 8
        mem[floor32(arg1.length) + 229] = 'deployer'
        mem[floor32(arg1.length) + 237] = 0
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.0xef517bf9 with:
                gas gas_remaining wei
               args 'deployer', 0
        mem[floor32(arg1.length) + 161] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[floor32(arg1.length) + ceil32(return_data.size) + 165] = msg.sender
        require ext_code.size(0xa39c843ccfdb3ede58a09efb5564e34c43099480)
        staticcall 0xa39c843ccfdb3ede58a09efb5564e34c43099480.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[floor32(arg1.length) + ceil32(return_data.size) + 161] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] / 10^9 < ext_call.return_data[0]:
            revert with 0, 'YOU DO NOT HOLD ENOUGH AIR'
    whitelist.length = 0
    idx = 0
    while whitelist.length > idx:
        whitelist[idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = 1
        if idx >= arg1.length:
            revert with 'NH{q', 50
        whitelist.length++
        mem[0] = 9
        whitelist[whitelist.length].field_0 = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_173268e1(?) payable {
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

function sub_7233f2be(?) payable {
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



}
