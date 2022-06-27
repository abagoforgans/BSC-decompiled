contract main {




// =====================  Runtime code  =====================


const sub_7533e357(?) = 1

const sub_79bb7667(?) = 1

const sub_9e93089c(?) = 2

const BURNER_ROLE = sha3(Mask(88, 168, 'BURNER_ROLE') >> 168)

const GAME_ADMIN = sha3(336492626609784167942478)

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
address charactersAddress;
address gameAddress;
address sub_9462fa19Address;
mapping of uint256 userVars;
mapping of uint256 vars;
array of struct stor336492626609784167942478;
uint256 stor740E;
uint256 storC073;

function userVars(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return userVars[arg1][arg2]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function sub_9462fa19(?) payable {
    return sub_9462fa19Address
}

function game() payable {
    return gameAddress
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function characters() payable {
    return charactersAddress
}

function vars(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vars[arg1]
}

function _fallback() payable {
    revert
}

function sub_b828fcb2(?) payable {
    require calldata.size - 4 >= 64
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    userVars[address(arg1)][1] += arg2
}

function setVar(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    vars[arg1] = arg2
}

function sub_d47270de(?) payable {
    require calldata.size - 4 >= 64
    if arg2 > userVars[msg.sender][1]:
        revert with 0, 'Not enough soul'
    if arg2 > userVars[msg.sender][1]:
        revert with 0, 'SafeMath: subtraction overflow'
    userVars[msg.sender][1] -= arg2
    if arg2 + userVars[address(arg1)][1] < userVars[address(arg1)][1]:
        revert with 0, 'SafeMath: addition overflow'
    userVars[address(arg1)][1] += arg2
}

function sub_fa807578(?) payable {
    require calldata.size - 4 >= 64
    if not stor740E:
        revert with 0, 'Burning disabled'
    if arg2 > userVars[msg.sender][1]:
        revert with 0, 'Not enough soul'
    if arg2 > userVars[msg.sender][1]:
        revert with 0, 'SafeMath: subtraction overflow'
    userVars[msg.sender][1] -= arg2
    require ext_code.size(charactersAddress)
    call charactersAddress.0xe1b3b2d6 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x77416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x91416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_d5ac062b(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(charactersAddress)
    staticcall charactersAddress.0xe168ce02 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(gameAddress)
    staticcall gameAddress.VAR_HOURLY_MAX_POWER_AVERAGE() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(gameAddress)
    staticcall gameAddress.0xe71a136a with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(gameAddress)
    staticcall gameAddress.VAR_HOURLY_PAY_PER_FIGHT() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(gameAddress)
    staticcall gameAddress.0xe71a136a with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (7 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * storC073)
}

function sub_4389afa9(?) payable {
    require calldata.size - 4 >= 32
    if not stor740E:
        revert with 0, 'Burning disabled'
    if not roleAdmin['BURNER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'Not burner'
    require ext_code.size(charactersAddress)
    staticcall charactersAddress.0xe168ce02 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(gameAddress)
    staticcall gameAddress.VAR_HOURLY_MAX_POWER_AVERAGE() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(gameAddress)
    staticcall gameAddress.0xe71a136a with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(gameAddress)
    staticcall gameAddress.VAR_HOURLY_PAY_PER_FIGHT() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(gameAddress)
    staticcall gameAddress.0xe71a136a with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(gameAddress)
    call gameAddress.payContractTokenOnly(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tx.origin, 7 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * storC073
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[228 len 0] = None
    require ext_code.size(charactersAddress)
    staticcall charactersAddress.0xb46e6c17 with:
            gas gas_remaining wei
           args Array(len=1, data=mem[228])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if stor740E * ext_call.return_data[0] / ext_call.return_data[0] != stor740E:
            revert with 0, 'dSafeMath: multiplication overflo', mem[261 len 31]
        userVars[tx.origin][1] += stor740E * ext_call.return_data[0] / 10^18
    mem[228 len 0] = None
    require ext_code.size(charactersAddress)
    call charactersAddress.0x6129ca32 with:
         gas gas_remaining wei
        args '', mem[228]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fc198342(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = 1
        mem[32] = 105
        require ext_code.size(charactersAddress)
        staticcall charactersAddress.0xe168ce02 with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(gameAddress)
        staticcall gameAddress.VAR_HOURLY_MAX_POWER_AVERAGE() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(gameAddress)
        staticcall gameAddress.0xe71a136a with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(gameAddress)
        staticcall gameAddress.VAR_HOURLY_PAY_PER_FIGHT() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
        require ext_code.size(gameAddress)
        staticcall gameAddress.0xe71a136a with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        s = s + (7 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * storC073)
        continue 
    return (s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length)
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if not uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if not uint8(stor0.field_8):
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = msg.sender
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(msg.sender)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, msg.sender, msg.sender);
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        stor51[('name', 'stor4741', 336492626609784167942478)].field_0++
        stor51[('name', 'stor4741', 336492626609784167942478)][stor51[('name', 'stor4741', 336492626609784167942478)].field_0].field_0 = msg.sender
        stor51[('name', 'stor4741', 336492626609784167942478)][stor51[('name', 'stor4741', 336492626609784167942478)].field_0].field_160 = 0
        stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0 = stor51[('name', 'stor4741', 336492626609784167942478)].field_0
        emit RoleGranted(sha3(336492626609784167942478), msg.sender, msg.sender);
    charactersAddress = arg1
    sub_9462fa19Address = arg2
    gameAddress = arg3
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_2f10ba3c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _55 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 128]
        require ext_code.size(charactersAddress)
        staticcall charactersAddress.0x6352211e with:
                gas gas_remaining wei
               args _55
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            require idx < arg1.length
            _66 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 128]
            require ext_code.size(sub_9462fa19Address)
            staticcall sub_9462fa19Address.0xb8cae950 with:
                    gas gas_remaining wei
                   args _66
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != msg.sender:
                revert with 0, 'Not owner'
        idx = idx + 1
        continue 
    if not stor740E:
        revert with 0, 'Burning disabled'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = 1
        mem[32] = 105
        require ext_code.size(charactersAddress)
        staticcall charactersAddress.0xe168ce02 with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(gameAddress)
        staticcall gameAddress.VAR_HOURLY_MAX_POWER_AVERAGE() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(gameAddress)
        staticcall gameAddress.0xe71a136a with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(gameAddress)
        staticcall gameAddress.VAR_HOURLY_PAY_PER_FIGHT() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
        require ext_code.size(gameAddress)
        staticcall gameAddress.0xe71a136a with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        s = s + (7 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * storC073)
        continue 
    require ext_code.size(gameAddress)
    call gameAddress.payContractTokenOnly(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(charactersAddress)
    call charactersAddress.0xbef6ec26 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), arg2, stor740E
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ce3330f6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _101 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 128]
        require ext_code.size(charactersAddress)
        staticcall charactersAddress.0x6352211e with:
                gas gas_remaining wei
               args _101
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            require idx < arg1.length
            _112 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 128]
            require ext_code.size(sub_9462fa19Address)
            staticcall sub_9462fa19Address.0xb8cae950 with:
                    gas gas_remaining wei
                   args _112
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != msg.sender:
                revert with 0, 'Not owner'
        idx = idx + 1
        continue 
    if not stor740E:
        revert with 0, 'Burning disabled'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = 1
        mem[32] = 105
        require ext_code.size(charactersAddress)
        staticcall charactersAddress.0xe168ce02 with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(gameAddress)
        staticcall gameAddress.VAR_HOURLY_MAX_POWER_AVERAGE() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(gameAddress)
        staticcall gameAddress.0xe71a136a with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(gameAddress)
        staticcall gameAddress.VAR_HOURLY_PAY_PER_FIGHT() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
        require ext_code.size(gameAddress)
        staticcall gameAddress.0xe71a136a with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        s = s + (7 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * storC073)
        continue 
    require ext_code.size(gameAddress)
    call gameAddress.payContractTokenOnly(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128] = 0xb46e6c1700000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = 32
    mem[(32 * arg1.length) + 164] = arg1.length
    if not Mask(251, 0, arg1.length):
        require ext_code.size(charactersAddress)
        staticcall charactersAddress.0xb46e6c17 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[(32 * arg1.length) + 128] = 0x6129ca3200000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = 32
            mem[(32 * arg1.length) + 164] = arg1.length
            if not Mask(251, 0, arg1.length):
                require ext_code.size(charactersAddress)
                call charactersAddress.0x6129ca32 with:
                     gas gas_remaining wei
                    args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
            else:
                mem[(32 * arg1.length) + 196] = mem[128]
                s = 32
                while arg1.length < 32 * arg1.length:
                    mem[(34 * arg1.length) + 196] = mem[arg1.length + 128]
                    s = arg1.length + 32
                    continue 
                require ext_code.size(charactersAddress)
                call charactersAddress.0x6129ca32 with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + 132 len (96 * arg1.length) + 64]
        else:
            if stor740E * ext_call.return_data[0] / ext_call.return_data[0] != stor740E:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg1.length) + 229 len 31]
            userVars[msg.sender][1] += stor740E * ext_call.return_data[0] / 10^18
            mem[(32 * arg1.length) + 128] = 0x6129ca3200000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = 32
            mem[(32 * arg1.length) + 164] = arg1.length
            if Mask(251, 0, arg1.length):
                mem[(32 * arg1.length) + 196] = mem[128]
                mem[(32 * arg1.length) + 228 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
            require ext_code.size(charactersAddress)
            call charactersAddress.0x6129ca32 with:
                 gas gas_remaining wei
                args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
    else:
        mem[(32 * arg1.length) + 196] = mem[128]
        mem[(32 * arg1.length) + 228 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
        require ext_code.size(charactersAddress)
        staticcall charactersAddress.0xb46e6c17 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if stor740E * ext_call.return_data[0] / ext_call.return_data[0] != stor740E:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg1.length) + 229 len 31]
            userVars[msg.sender][1] += stor740E * ext_call.return_data[0] / 10^18
        mem[(32 * arg1.length) + 128] = 0x6129ca3200000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = 32
        mem[(32 * arg1.length) + 164] = arg1.length
        if Mask(251, 0, arg1.length):
            mem[(32 * arg1.length) + 196] = mem[128]
            mem[(32 * arg1.length) + 228 len floor32((32 * arg1.length) - 1)] = mem[160 len floor32((32 * arg1.length) - 1)]
        require ext_code.size(charactersAddress)
        call charactersAddress.0x6129ca32 with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=mem[(32 * arg1.length) + 196 len 32 * arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
