contract main {




// =====================  Runtime code  =====================


const sub_93dcc339(?) = 0xefcd6715d051761498ce1a7df97ab386fe8dff37ab8074da10a556736f1294f4

const sub_9439b21c(?) = 0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
mapping of address sub_0571c164;
mapping of address sub_eb4b3e88;
address storB65C;

function sub_0571c164(?) {
    require calldata.size - 4 >= 32
    return sub_0571c164[arg1]
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function sub_eb4b3e88(?) {
    require calldata.size - 4 >= 32
    return sub_eb4b3e88[arg1]
}

function kill() {
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function withdrawBnb() {
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function grantRole(bytes32 arg1, address arg2) {
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

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x8f416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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

function sub_fbdf909f(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        sub_0571c164[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        idx = idx + 1
        continue 
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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

function sub_dd0b91d0(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 140 len 20] == 0xa07c5b74c9b40447a954e1466938b865b6bbea36:
            mem[0] = 0xa07c5b74c9b40447a954e1466938b865b6bbea36
            mem[32] = 2
            storB65C = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        else:
            require idx < arg1.length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].underlying() with:
                    gas gas_remaining wei
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            sub_eb4b3e88[mem[(32 * idx) + 140 len 20]] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
}

function liquidate(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not roleAdmin[0xefcd6715d051761498ce1a7df97ab386fe8dff37ab8074da10a556736f1294f4][1][address(msg.sender)].field_0:
        revert with 0, 'Error 2'
    if arg2 != 0xa07c5b74c9b40447a954e1466938b865b6bbea36:
        require ext_code.size(sub_eb4b3e88[address(arg2)])
        staticcall sub_eb4b3e88[address(arg2)].0x70a08231 with:
                gas gas_remaining wei
               args sub_0571c164[address(arg2)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 >= ext_call.return_data[0]:
            revert with 0, 'Error 4'
        require ext_code.size(sub_eb4b3e88[address(arg2)])
        call sub_eb4b3e88[address(arg2)].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(sub_0571c164[address(arg2)])
    staticcall sub_0571c164[address(arg2)].token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0571c164[address(arg2)])
    if address(ext_call.return_data[0]) == sub_eb4b3e88[address(arg2)]:
        call sub_0571c164[address(arg2)].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args arg3, 0, address(this.address), 128, 96, address(arg1), address(arg2), arg3
    else:
        call sub_0571c164[address(arg2)].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, arg3, address(this.address), 128, 96, address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    if address(cd[(arg4 + 68)]) != 0xa07c5b74c9b40447a954e1466938b865b6bbea36:
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), cd[(arg4 + 100)], address(cd[(arg4 + 68)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).redeem(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
             gas gas_remaining wei
            args cd[(arg4 + 100)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).liquidateBorrow(address rg1, address rg2) with:
           value cd[(arg4 + 100)] wei
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), address(cd[(arg4 + 68)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).redeem(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xd0e30db0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not cd[(arg4 + 100)]:
        require ext_code.size(sub_eb4b3e88[address(cd[(arg4 + 68)])])
        call sub_eb4b3e88[address(cd[(arg4 + 68)])].0xa9059cbb with:
             gas gas_remaining wei
            args sub_0571c164[address(cd[(arg4 + 68)])], 1
    else:
        if 1000 * cd[(arg4 + 100)] / cd[(arg4 + 100)] != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (1000 * cd[(arg4 + 100)] / 998) + 1 < 1000 * cd[(arg4 + 100)] / 998:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(sub_eb4b3e88[address(cd[(arg4 + 68)])])
        call sub_eb4b3e88[address(cd[(arg4 + 68)])].0xa9059cbb with:
             gas gas_remaining wei
            args sub_0571c164[address(cd[(arg4 + 68)])], (1000 * cd[(arg4 + 100)] / 998) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 >= roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0:
        revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[262 len 30]
    require ext_code.size(sub_eb4b3e88[address(cd[(arg4 + 68)])])
    staticcall sub_eb4b3e88[address(cd[(arg4 + 68)])].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_eb4b3e88[address(cd[(arg4 + 68)])])
    call sub_eb4b3e88[address(cd[(arg4 + 68)])].0xa9059cbb with:
         gas gas_remaining wei
        args roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
