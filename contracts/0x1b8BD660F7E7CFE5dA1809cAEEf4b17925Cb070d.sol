contract main {




// =====================  Runtime code  =====================


const sub_93dcc339(?) = 0xefcd6715d051761498ce1a7df97ab386fe8dff37ab8074da10a556736f1294f4

const sub_9439b21c(?) = 0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;

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

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function kill() payable {
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    staticcall 0x55d398326f99059ff775485246999027b3197955.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
    staticcall 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
    staticcall 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    call 0xe9e7cea3dedca5984780bafc599bd69add087d56.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    call 0x55d398326f99059ff775485246999027b3197955.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    staticcall 0x55d398326f99059ff775485246999027b3197955.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
    call 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
    staticcall 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
    call 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
    staticcall 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require not ext_call.return_data[0]
    require not ext_call.return_data[0]
    require not ext_call.return_data[0]
    require not ext_call.return_data[0]
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
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

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function renounceRole(bytes32 arg1, address arg2) payable {
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

function revokeRole(bytes32 arg1, address arg2) payable {
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

function withdrawAll() payable {
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    else:
        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
        staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
                staticcall 0x55d398326f99059ff775485246999027b3197955.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
                    staticcall 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
                        staticcall 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
                                revert with 0, 'Error 1'
                            else:
                                require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
                                call 0xe9e7cea3dedca5984780bafc599bd69add087d56.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
                                    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
                                            revert with 0, 'Error 1'
                                        else:
                                            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                                            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.transfer(address rg1, uint256 rg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                                                staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address rg1) with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
                                                        revert with 0, 'Error 1'
                                                    else:
                                                        require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
                                                        call 0x55d398326f99059ff775485246999027b3197955.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
                                                            staticcall 0x55d398326f99059ff775485246999027b3197955.balanceOf(address rg1) with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
                                                                    revert with 0, 'Error 1'
                                                                else:
                                                                    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
                                                                    call 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.transfer(address rg1, uint256 rg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
                                                                        staticcall 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.balanceOf(address rg1) with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
                                                                                revert with 0, 'Error 1'
                                                                            else:
                                                                                require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
                                                                                call 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.transfer(address rg1, uint256 rg2) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
                                                                                    staticcall 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.balanceOf(address rg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args this.address
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if ext_call.return_data[0]:
                                                                                            return not bool(ext_call.return_data[0])
                                                                                        else:
                                                                                            if ext_call.return_data[0]:
                                                                                                return not bool(ext_call.return_data[0])
                                                                                            else:
                                                                                                if ext_call.return_data[0]:
                                                                                                    return not bool(ext_call.return_data[0])
                                                                                                else:
                                                                                                    if ext_call.return_data[0]:
                                                                                                        return not bool(ext_call.return_data[0])
                                                                                                    else:
                                                                                                        return not bool(ext_call.return_data[0])
}

function sub_86d64159(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xefcd6715d051761498ce1a7df97ab386fe8dff37ab8074da10a556736f1294f4, 0) + 1
    if not roleAdmin[0xefcd6715d051761498ce1a7df97ab386fe8dff37ab8074da10a556736f1294f4][1][address(msg.sender)].field_0:
        revert with 0, 'Error 2'
    mem[96] = ('cd', 36).length
    mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[64] = (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] = ('cd', 100).length
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + (32 * ('cd', 100).length) + 192] = 0
    idx = 0
    s = cd[4]
    while idx < ('cd', 36).length:
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _174 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
        _178 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
            revert with 0, 'Error 5'
        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
            if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 'Error 6'
            require idx < ('cd', 36).length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if address(_174) == address(_174):
                require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                if s <= 0:
                    revert with 0, 'Error 7'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'Error 8'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'Error 8'
                if not s:
                    require ext_call.return_data[18 len 14]
                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    require 1000 * ext_call.return_data[18 len 14]
                    require idx < ('cd', 36).length
                    mem[(32 * idx) + 128] = 0 / 1000 * ext_call.return_data[18 len 14]
                    idx = idx + 1
                    s = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    continue 
                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / s != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
                if not mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s:
                    if not ext_call.return_data[18 len 14]:
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        require idx < ('cd', 36).length
                        mem[(32 * idx) + 128] = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        idx = idx + 1
                        s = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        continue 
                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
                    if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[18 len 14])
                    require idx < ('cd', 36).length
                    mem[(32 * idx) + 128] = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[18 len 14])
                    idx = idx + 1
                    s = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    continue 
                if ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s != ext_call.return_data[50 len 14]:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
                if not ext_call.return_data[18 len 14]:
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                    require idx < ('cd', 36).length
                    mem[(32 * idx) + 128] = ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                    continue 
                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
                if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[18 len 14])
                require idx < ('cd', 36).length
                mem[(32 * idx) + 128] = ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[18 len 14])
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                continue 
        else:
            if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 'Error 6'
            require idx < ('cd', 36).length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if address(_178) == address(_174):
                require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                if s <= 0:
                    revert with 0, 'Error 7'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'Error 8'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'Error 8'
                if not s:
                    require ext_call.return_data[18 len 14]
                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
                    if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    require 1000 * ext_call.return_data[18 len 14]
                    require idx < ('cd', 36).length
                    mem[(32 * idx) + 128] = 0 / 1000 * ext_call.return_data[18 len 14]
                    idx = idx + 1
                    s = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    continue 
                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / s != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
                if not mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s:
                    if not ext_call.return_data[18 len 14]:
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        require idx < ('cd', 36).length
                        mem[(32 * idx) + 128] = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        idx = idx + 1
                        s = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        continue 
                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
                    if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[18 len 14])
                    require idx < ('cd', 36).length
                    mem[(32 * idx) + 128] = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[18 len 14])
                    idx = idx + 1
                    s = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    continue 
                if ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s != ext_call.return_data[50 len 14]:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
                if not ext_call.return_data[18 len 14]:
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                    require idx < ('cd', 36).length
                    mem[(32 * idx) + 128] = ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                    continue 
                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
                if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[18 len 14])
                require idx < ('cd', 36).length
                mem[(32 * idx) + 128] = ext_call.return_data[50 len 14] * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[18 len 14])
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                continue 
        require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
        if s <= 0:
            revert with 0, 'Error 7'
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 'Error 8'
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 'Error 8'
        if not s:
            require ext_call.return_data[50 len 14]
            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
            if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            require 1000 * ext_call.return_data[50 len 14]
            require idx < ('cd', 36).length
            mem[(32 * idx) + 128] = 0 / 1000 * ext_call.return_data[50 len 14]
            idx = idx + 1
            s = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
            continue 
        if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / s != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
            revert with 0, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
        if not mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s:
            if not ext_call.return_data[50 len 14]:
                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                require idx < ('cd', 36).length
                mem[(32 * idx) + 128] = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                idx = idx + 1
                s = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                continue 
            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
            if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'SafeMath: addition overflow'
            require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[50 len 14])
            require idx < ('cd', 36).length
            mem[(32 * idx) + 128] = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[50 len 14])
            idx = idx + 1
            s = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            continue 
        if ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s != ext_call.return_data[18 len 14]:
            revert with 0, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
        if not ext_call.return_data[50 len 14]:
            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                revert with 0, 'SafeMath: addition overflow'
            require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
            require idx < ('cd', 36).length
            mem[(32 * idx) + 128] = ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
            continue 
        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
            revert with 0, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 293 len 31]
        if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
            revert with 0, 'SafeMath: addition overflow'
        require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[50 len 14])
        require idx < ('cd', 36).length
        mem[(32 * idx) + 128] = ext_call.return_data[18 len 14] * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * ext_call.return_data[50 len 14])
        idx = idx + 1
        s = Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
        continue 
    if s <= cd[4]:
        revert with 0, 'Error 3'
    idx = 0
    while idx < ('cd', 68).length:
        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 196] = this.address
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ('cd', 36).length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    require 0 < ('cd', 68).length
    require 0 < ('cd', 36).length
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 196] = address(('cd', 36)[0])
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 228] = cd[4]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(('cd', 36)[0]), cd[4]
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        require idx + 1 < ('cd', 68).length
        if idx >= ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            require idx < mem[96]
            _438 = mem[(32 * idx) + 128]
            require idx < ('cd', 132).length
            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                revert with 0, 'Error 5'
            if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
                if not address(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 0, 'Error 6'
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                    if not cd[((32 * idx) + cd[132] + 36)]:
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _438
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _438, this.address
                    else:
                        _458 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_458 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_458 + 36] = 0
                        mem[_458 + 68] = _438
                        mem[_458 + 100] = this.address
                        mem[_458 + 132] = 128
                        mem[_458 + 164] = mem[_458]
                        s = 0
                        while s < mem[_458]:
                            mem[s + _458 + 196] = mem[s + _458 + 32]
                            s = s + 32
                            continue 
                        if not mem[_458] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _438, address(this.address), 128, mem[_458 + 164 len mem[_458] + 32]
                        else:
                            mem[floor32(mem[_458]) + _458 + 196] = mem[floor32(mem[_458]) + _458 + -(mem[_458] % 32) + 228 len mem[_458] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _438, address(this.address), 128, mem[_458], mem[_458 + 196 len floor32(mem[_458]) + 32]
                else:
                    if not cd[((32 * idx) + cd[132] + 36)]:
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _438
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _438, 0, this.address
                    else:
                        _462 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_462 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_462 + 36] = _438
                        mem[_462 + 68] = 0
                        mem[_462 + 100] = this.address
                        mem[_462 + 132] = 128
                        mem[_462 + 164] = mem[_462]
                        s = 0
                        while s < mem[_462]:
                            mem[s + _462 + 196] = mem[s + _462 + 32]
                            s = s + 32
                            continue 
                        if not mem[_462] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _438, 0, address(this.address), 128, mem[_462 + 164 len mem[_462] + 32]
                        else:
                            mem[floor32(mem[_462]) + _462 + 196] = mem[floor32(mem[_462]) + _462 + -(mem[_462] % 32) + 228 len mem[_462] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _438, 0, address(this.address), 128, mem[_462], mem[_462 + 196 len floor32(mem[_462]) + 32]
            else:
                if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    revert with 0, 'Error 6'
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    if not cd[((32 * idx) + cd[132] + 36)]:
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _438
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _438, this.address
                    else:
                        _466 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_466 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_466 + 36] = 0
                        mem[_466 + 68] = _438
                        mem[_466 + 100] = this.address
                        mem[_466 + 132] = 128
                        mem[_466 + 164] = mem[_466]
                        s = 0
                        while s < mem[_466]:
                            mem[s + _466 + 196] = mem[s + _466 + 32]
                            s = s + 32
                            continue 
                        if not mem[_466] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_466] + _466 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_466]) + _466 + 196] = mem[floor32(mem[_466]) + _466 + -(mem[_466] % 32) + 228 len mem[_466] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_466]) + _466 + -mem[64] + 224]
                else:
                    if not cd[((32 * idx) + cd[132] + 36)]:
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _438
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = this.address
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _438, 0, this.address
                    else:
                        _470 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_470 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_470 + 36] = _438
                        mem[_470 + 68] = 0
                        mem[_470 + 100] = this.address
                        mem[_470 + 132] = 128
                        mem[_470 + 164] = mem[_470]
                        s = 0
                        while s < mem[_470]:
                            mem[s + _470 + 196] = mem[s + _470 + 32]
                            s = s + 32
                            continue 
                        if not mem[_470] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _438, 0, address(this.address), 128, mem[_470 + 164 len mem[_470] + 32]
                        else:
                            mem[floor32(mem[_470]) + _470 + 196] = mem[floor32(mem[_470]) + _470 + -(mem[_470] % 32) + 228 len mem[_470] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _438, 0, address(this.address), 128, mem[_470], mem[_470 + 196 len floor32(mem[_470]) + 32]
        else:
            require idx + 1 < ('cd', 36).length
            require idx < ('cd', 36).length
            require idx < mem[96]
            _440 = mem[(32 * idx) + 128]
            require idx < ('cd', 132).length
            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                revert with 0, 'Error 5'
            if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
                if not address(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 0, 'Error 6'
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                    if not cd[((32 * idx) + cd[132] + 36)]:
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _440
                        mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _440, address(cd[((32 * idx + 1) + cd[36] + 36)])
                    else:
                        _474 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_474 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_474 + 36] = 0
                        mem[_474 + 68] = _440
                        mem[_474 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_474 + 132] = 128
                        mem[_474 + 164] = mem[_474]
                        s = 0
                        while s < mem[_474]:
                            mem[s + _474 + 196] = mem[s + _474 + 32]
                            s = s + 32
                            continue 
                        if not mem[_474] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_474] + _474 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_474]) + _474 + 196] = mem[floor32(mem[_474]) + _474 + -(mem[_474] % 32) + 228 len mem[_474] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_474]) + _474 + -mem[64] + 224]
                else:
                    if not cd[((32 * idx) + cd[132] + 36)]:
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _440
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _440, 0, address(cd[((32 * idx + 1) + cd[36] + 36)])
                    else:
                        _478 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_478 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_478 + 36] = _440
                        mem[_478 + 68] = 0
                        mem[_478 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_478 + 132] = 128
                        mem[_478 + 164] = mem[_478]
                        s = 0
                        while s < mem[_478]:
                            mem[s + _478 + 196] = mem[s + _478 + 32]
                            s = s + 32
                            continue 
                        if not mem[_478] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_478] + _478 + -mem[64] + 192]
                        else:
                            mem[floor32(mem[_478]) + _478 + 196] = mem[floor32(mem[_478]) + _478 + -(mem[_478] % 32) + 228 len mem[_478] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len floor32(mem[_478]) + _478 + -mem[64] + 224]
            else:
                if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    revert with 0, 'Error 6'
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    if not cd[((32 * idx) + cd[132] + 36)]:
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _440
                        mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args 0, _440, address(cd[((32 * idx + 1) + cd[36] + 36)])
                    else:
                        _482 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_482 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_482 + 36] = 0
                        mem[_482 + 68] = _440
                        mem[_482 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_482 + 132] = 128
                        mem[_482 + 164] = mem[_482]
                        s = 0
                        while s < mem[_482]:
                            mem[s + _482 + 196] = mem[s + _482 + 32]
                            s = s + 32
                            continue 
                        if not mem[_482] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _440, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_482 + 164 len mem[_482] + 32]
                        else:
                            mem[floor32(mem[_482]) + _482 + 196] = mem[floor32(mem[_482]) + _482 + -(mem[_482] % 32) + 228 len mem[_482] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, _440, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_482], mem[_482 + 196 len floor32(mem[_482]) + 32]
                else:
                    if not cd[((32 * idx) + cd[132] + 36)]:
                        mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _440
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining wei
                            args _440, 0, address(cd[((32 * idx + 1) + cd[36] + 36)])
                    else:
                        _486 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        mem[_486 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_486 + 36] = _440
                        mem[_486 + 68] = 0
                        mem[_486 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[_486 + 132] = 128
                        mem[_486 + 164] = mem[_486]
                        s = 0
                        while s < mem[_486]:
                            mem[s + _486 + 196] = mem[s + _486 + 32]
                            s = s + 32
                            continue 
                        if not mem[_486] % 32:
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _440, 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_486 + 164 len mem[_486] + 32]
                        else:
                            mem[floor32(mem[_486]) + _486 + 196] = mem[floor32(mem[_486]) + _486 + -(mem[_486] % 32) + 228 len mem[_486] % 32]
                            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                            call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args _440, 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_486], mem[_486 + 196 len floor32(mem[_486]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 68).length:
        require idx < mem[96]
        _529 = mem[(32 * idx) + 128]
        require idx < ('cd', 68).length
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < _529:
            revert with 0, 'Error 4'
        idx = idx + 1
        continue 
}



}
