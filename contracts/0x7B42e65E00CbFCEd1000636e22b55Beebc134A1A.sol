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
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    staticcall 0x55d398326f99059ff775485246999027b3197955.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
    staticcall 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
    staticcall 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    call 0xe9e7cea3dedca5984780bafc599bd69add087d56.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    call 0x55d398326f99059ff775485246999027b3197955.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    staticcall 0x55d398326f99059ff775485246999027b3197955.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
    call 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
    staticcall 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not roleAdmin[0x77584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
    call 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
    staticcall 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.0x70a08231 with:
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

function withdraw(address arg1, uint256 arg2) payable {
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
        staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
                staticcall 0x55d398326f99059ff775485246999027b3197955.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
                    staticcall 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
                        staticcall 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.0x70a08231 with:
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
                                call 0xe9e7cea3dedca5984780bafc599bd69add087d56.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
                                    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
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
                                            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                                                staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
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
                                                        call 0x55d398326f99059ff775485246999027b3197955.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
                                                            staticcall 0x55d398326f99059ff775485246999027b3197955.0x70a08231 with:
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
                                                                    call 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
                                                                        staticcall 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.0x70a08231 with:
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
                                                                                call 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.0xa9059cbb with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
                                                                                    staticcall 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.0x70a08231 with:
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
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] = ('cd', 100).length
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        s = cd[4]
        while idx < ('cd', 36).length:
            require idx < mem[(32 * ('cd', 36).length) + 128]
            _354 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
            _360 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 'Error 5'
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 'Error 6'
                require idx < ('cd', 36).length
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(_354) == address(_354):
                    require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                    if s <= 0:
                        revert with 0, 'Error 7'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Error 8'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Error 8'
                    if not s:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        idx = idx + 1
                        s = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        continue 
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / s != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                    if not mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                            idx = idx + 1
                            s = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                            continue 
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                        if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        idx = idx + 1
                        s = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        continue 
                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        continue 
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                    if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
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
                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(_360) == address(_354):
                    require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                    if s <= 0:
                        revert with 0, 'Error 7'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Error 8'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Error 8'
                    if not s:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        idx = idx + 1
                        s = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        continue 
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / s != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                    if not mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                            idx = idx + 1
                            s = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                            continue 
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                        if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        idx = idx + 1
                        s = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        continue 
                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        continue 
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                    if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    continue 
            require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
            if s <= 0:
                revert with 0, 'Error 7'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'Error 8'
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'Error 8'
            if not s:
                require Mask(112, 0, ext_call.return_data[32])
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: addition overflow'
                require 1000 * Mask(112, 0, ext_call.return_data[32])
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                idx = idx + 1
                s = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                continue 
            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / s != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
            if not mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s:
                if not Mask(112, 0, ext_call.return_data[32]):
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                    idx = idx + 1
                    s = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                    continue 
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: addition overflow'
                require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                idx = idx + 1
                s = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                continue 
            if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
            if not Mask(112, 0, ext_call.return_data[32]):
                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                continue 
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
            if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: addition overflow'
            require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
            mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            continue 
        if s <= cd[4]:
            revert with 0, 'Error 3'
        require ('cd', 68).length <= test266151307()
        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 224] = ('cd', 68).length
        mem[64] = (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256
        if not ('cd', 68).length:
            idx = 0
            while idx < ('cd', 68).length:
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 260] = this.address
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 224]
                mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256] = ext_call.return_data[0]
                idx = idx + 1
                continue 
            require 0 < ('cd', 68).length
            require 0 < ('cd', 36).length
            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 260] = address(('cd', 36)[0])
            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 292] = cd[4]
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 36)[0]), cd[4]
            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                require idx + 1 < ('cd', 68).length
                if idx >= ('cd', 36).length - 1:
                    require idx < ('cd', 36).length
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                    _1095 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224]
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
                                mem[mem[64] + 36] = _1095
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1095, this.address
                            else:
                                _1172 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1172 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1172 + 36] = 0
                                mem[_1172 + 68] = _1095
                                mem[_1172 + 100] = this.address
                                mem[_1172 + 132] = 128
                                mem[_1172 + 164] = mem[_1172]
                                s = 0
                                while s < mem[_1172]:
                                    mem[s + _1172 + 196] = mem[s + _1172 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1172] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1172] + _1172 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1172]) + _1172 + 196] = mem[floor32(mem[_1172]) + _1172 + -(mem[_1172] % 32) + 228 len mem[_1172] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1172]) + _1172 + -mem[64] + 224]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1095
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1095, 0, this.address
                            else:
                                _1176 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1176 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1176 + 36] = _1095
                                mem[_1176 + 68] = 0
                                mem[_1176 + 100] = this.address
                                mem[_1176 + 132] = 128
                                mem[_1176 + 164] = mem[_1176]
                                s = 0
                                while s < mem[_1176]:
                                    mem[s + _1176 + 196] = mem[s + _1176 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1176] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1095, 0, address(this.address), 128, mem[_1176 + 164 len mem[_1176] + 32]
                                else:
                                    mem[floor32(mem[_1176]) + _1176 + 196] = mem[floor32(mem[_1176]) + _1176 + -(mem[_1176] % 32) + 228 len mem[_1176] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1095, 0, address(this.address), 128, mem[_1176], mem[_1176 + 196 len floor32(mem[_1176]) + 32]
                    else:
                        if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            revert with 0, 'Error 6'
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1095
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1095, this.address
                            else:
                                _1180 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1180 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1180 + 36] = 0
                                mem[_1180 + 68] = _1095
                                mem[_1180 + 100] = this.address
                                mem[_1180 + 132] = 128
                                mem[_1180 + 164] = mem[_1180]
                                s = 0
                                while s < mem[_1180]:
                                    mem[s + _1180 + 196] = mem[s + _1180 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1180] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1095, address(this.address), 128, mem[_1180 + 164 len mem[_1180] + 32]
                                else:
                                    mem[floor32(mem[_1180]) + _1180 + 196] = mem[floor32(mem[_1180]) + _1180 + -(mem[_1180] % 32) + 228 len mem[_1180] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1095, address(this.address), 128, mem[_1180], mem[_1180 + 196 len floor32(mem[_1180]) + 32]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1095
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1095, 0, this.address
                            else:
                                _1184 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1184 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1184 + 36] = _1095
                                mem[_1184 + 68] = 0
                                mem[_1184 + 100] = this.address
                                mem[_1184 + 132] = 128
                                mem[_1184 + 164] = mem[_1184]
                                s = 0
                                while s < mem[_1184]:
                                    mem[s + _1184 + 196] = mem[s + _1184 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1184] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1184] + _1184 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1184]) + _1184 + 196] = mem[floor32(mem[_1184]) + _1184 + -(mem[_1184] % 32) + 228 len mem[_1184] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1184]) + _1184 + -mem[64] + 224]
                else:
                    require idx + 1 < ('cd', 36).length
                    require idx < ('cd', 36).length
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                    _1103 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224]
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
                                mem[mem[64] + 36] = _1103
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1103, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1236 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1236 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1236 + 36] = 0
                                mem[_1236 + 68] = _1103
                                mem[_1236 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1236 + 132] = 128
                                mem[_1236 + 164] = mem[_1236]
                                s = 0
                                while s < mem[_1236]:
                                    mem[s + _1236 + 196] = mem[s + _1236 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1236] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1103, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1236 + 164 len mem[_1236] + 32]
                                else:
                                    mem[floor32(mem[_1236]) + _1236 + 196] = mem[floor32(mem[_1236]) + _1236 + -(mem[_1236] % 32) + 228 len mem[_1236] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1103, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1236], mem[_1236 + 196 len floor32(mem[_1236]) + 32]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1103
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1103, 0, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1240 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1240 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1240 + 36] = _1103
                                mem[_1240 + 68] = 0
                                mem[_1240 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1240 + 132] = 128
                                mem[_1240 + 164] = mem[_1240]
                                s = 0
                                while s < mem[_1240]:
                                    mem[s + _1240 + 196] = mem[s + _1240 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1240] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1103, 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1240 + 164 len mem[_1240] + 32]
                                else:
                                    mem[floor32(mem[_1240]) + _1240 + 196] = mem[floor32(mem[_1240]) + _1240 + -(mem[_1240] % 32) + 228 len mem[_1240] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1103, 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1240], mem[_1240 + 196 len floor32(mem[_1240]) + 32]
                    else:
                        if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            revert with 0, 'Error 6'
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1103
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1103, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1244 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1244 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1244 + 36] = 0
                                mem[_1244 + 68] = _1103
                                mem[_1244 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1244 + 132] = 128
                                mem[_1244 + 164] = mem[_1244]
                                s = 0
                                while s < mem[_1244]:
                                    mem[s + _1244 + 196] = mem[s + _1244 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1244] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1103, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1244 + 164 len mem[_1244] + 32]
                                else:
                                    mem[floor32(mem[_1244]) + _1244 + 196] = mem[floor32(mem[_1244]) + _1244 + -(mem[_1244] % 32) + 228 len mem[_1244] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1103, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1244], mem[_1244 + 196 len floor32(mem[_1244]) + 32]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1103
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1103, 0, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1248 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1248 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1248 + 36] = _1103
                                mem[_1248 + 68] = 0
                                mem[_1248 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1248 + 132] = 128
                                mem[_1248 + 164] = mem[_1248]
                                s = 0
                                while s < mem[_1248]:
                                    mem[s + _1248 + 196] = mem[s + _1248 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1248] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1248] + _1248 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1248]) + _1248 + 196] = mem[floor32(mem[_1248]) + _1248 + -(mem[_1248] % 32) + 228 len mem[_1248] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1248]) + _1248 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            idx = 0
            while idx < ('cd', 68).length:
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 224]
                _1462 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256]
                require idx < ('cd', 68).length
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < _1462:
                    revert with 0, 'Error 4'
                idx = idx + 1
                continue 
        else:
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
            idx = 0
            while idx < ('cd', 68).length:
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 260] = this.address
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 224]
                mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256] = ext_call.return_data[0]
                idx = idx + 1
                continue 
            require 0 < ('cd', 68).length
            require 0 < ('cd', 36).length
            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 260] = address(('cd', 36)[0])
            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 292] = cd[4]
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 36)[0]), cd[4]
            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                require idx + 1 < ('cd', 68).length
                if idx >= ('cd', 36).length - 1:
                    require idx < ('cd', 36).length
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                    _1097 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224]
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
                                mem[mem[64] + 36] = _1097
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1097, this.address
                            else:
                                _1188 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1188 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1188 + 36] = 0
                                mem[_1188 + 68] = _1097
                                mem[_1188 + 100] = this.address
                                mem[_1188 + 132] = 128
                                mem[_1188 + 164] = mem[_1188]
                                s = 0
                                while s < mem[_1188]:
                                    mem[s + _1188 + 196] = mem[s + _1188 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1188] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1188] + _1188 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1188]) + _1188 + 196] = mem[floor32(mem[_1188]) + _1188 + -(mem[_1188] % 32) + 228 len mem[_1188] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1188]) + _1188 + -mem[64] + 224]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1097
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1097, 0, this.address
                            else:
                                _1192 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1192 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1192 + 36] = _1097
                                mem[_1192 + 68] = 0
                                mem[_1192 + 100] = this.address
                                mem[_1192 + 132] = 128
                                mem[_1192 + 164] = mem[_1192]
                                s = 0
                                while s < mem[_1192]:
                                    mem[s + _1192 + 196] = mem[s + _1192 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1192] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1097, 0, address(this.address), 128, mem[_1192 + 164 len mem[_1192] + 32]
                                else:
                                    mem[floor32(mem[_1192]) + _1192 + 196] = mem[floor32(mem[_1192]) + _1192 + -(mem[_1192] % 32) + 228 len mem[_1192] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1097, 0, address(this.address), 128, mem[_1192], mem[_1192 + 196 len floor32(mem[_1192]) + 32]
                    else:
                        if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            revert with 0, 'Error 6'
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1097
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1097, this.address
                            else:
                                _1196 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1196 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1196 + 36] = 0
                                mem[_1196 + 68] = _1097
                                mem[_1196 + 100] = this.address
                                mem[_1196 + 132] = 128
                                mem[_1196 + 164] = mem[_1196]
                                s = 0
                                while s < mem[_1196]:
                                    mem[s + _1196 + 196] = mem[s + _1196 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1196] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1097, address(this.address), 128, mem[_1196 + 164 len mem[_1196] + 32]
                                else:
                                    mem[floor32(mem[_1196]) + _1196 + 196] = mem[floor32(mem[_1196]) + _1196 + -(mem[_1196] % 32) + 228 len mem[_1196] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1097, address(this.address), 128, mem[_1196], mem[_1196 + 196 len floor32(mem[_1196]) + 32]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1097
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1097, 0, this.address
                            else:
                                _1200 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1200 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1200 + 36] = _1097
                                mem[_1200 + 68] = 0
                                mem[_1200 + 100] = this.address
                                mem[_1200 + 132] = 128
                                mem[_1200 + 164] = mem[_1200]
                                s = 0
                                while s < mem[_1200]:
                                    mem[s + _1200 + 196] = mem[s + _1200 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1200] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1200] + _1200 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1200]) + _1200 + 196] = mem[floor32(mem[_1200]) + _1200 + -(mem[_1200] % 32) + 228 len mem[_1200] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1200]) + _1200 + -mem[64] + 224]
                else:
                    require idx + 1 < ('cd', 36).length
                    require idx < ('cd', 36).length
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                    _1105 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224]
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
                                mem[mem[64] + 36] = _1105
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1105, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1252 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1252 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1252 + 36] = 0
                                mem[_1252 + 68] = _1105
                                mem[_1252 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1252 + 132] = 128
                                mem[_1252 + 164] = mem[_1252]
                                s = 0
                                while s < mem[_1252]:
                                    mem[s + _1252 + 196] = mem[s + _1252 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1252] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1105, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1252 + 164 len mem[_1252] + 32]
                                else:
                                    mem[floor32(mem[_1252]) + _1252 + 196] = mem[floor32(mem[_1252]) + _1252 + -(mem[_1252] % 32) + 228 len mem[_1252] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1105, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1252], mem[_1252 + 196 len floor32(mem[_1252]) + 32]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1105
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1105, 0, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1256 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1256 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1256 + 36] = _1105
                                mem[_1256 + 68] = 0
                                mem[_1256 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1256 + 132] = 128
                                mem[_1256 + 164] = mem[_1256]
                                s = 0
                                while s < mem[_1256]:
                                    mem[s + _1256 + 196] = mem[s + _1256 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1256] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1256] + _1256 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1256]) + _1256 + 196] = mem[floor32(mem[_1256]) + _1256 + -(mem[_1256] % 32) + 228 len mem[_1256] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1256]) + _1256 + -mem[64] + 224]
                    else:
                        if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            revert with 0, 'Error 6'
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1105
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1105, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1260 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1260 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1260 + 36] = 0
                                mem[_1260 + 68] = _1105
                                mem[_1260 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1260 + 132] = 128
                                mem[_1260 + 164] = mem[_1260]
                                s = 0
                                while s < mem[_1260]:
                                    mem[s + _1260 + 196] = mem[s + _1260 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1260] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1105, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1260 + 164 len mem[_1260] + 32]
                                else:
                                    mem[floor32(mem[_1260]) + _1260 + 196] = mem[floor32(mem[_1260]) + _1260 + -(mem[_1260] % 32) + 228 len mem[_1260] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1105, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1260], mem[_1260 + 196 len floor32(mem[_1260]) + 32]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1105
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1105, 0, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1264 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1264 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1264 + 36] = _1105
                                mem[_1264 + 68] = 0
                                mem[_1264 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1264 + 132] = 128
                                mem[_1264 + 164] = mem[_1264]
                                s = 0
                                while s < mem[_1264]:
                                    mem[s + _1264 + 196] = mem[s + _1264 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1264] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1105, 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1264 + 164 len mem[_1264] + 32]
                                else:
                                    mem[floor32(mem[_1264]) + _1264 + 196] = mem[floor32(mem[_1264]) + _1264 + -(mem[_1264] % 32) + 228 len mem[_1264] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1105, 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1264], mem[_1264 + 196 len floor32(mem[_1264]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            idx = 0
            while idx < ('cd', 68).length:
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 224]
                _1479 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256]
                require idx < ('cd', 68).length
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < _1479:
                    revert with 0, 'Error 4'
                idx = idx + 1
                continue 
    else:
        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        s = cd[4]
        while idx < ('cd', 36).length:
            require idx < mem[(32 * ('cd', 36).length) + 128]
            _356 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
            require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
            _363 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 'Error 5'
            if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                    revert with 0, 'Error 6'
                require idx < ('cd', 36).length
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(_356) == address(_356):
                    require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                    if s <= 0:
                        revert with 0, 'Error 7'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Error 8'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Error 8'
                    if not s:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        idx = idx + 1
                        s = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        continue 
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / s != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                    if not mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                            idx = idx + 1
                            s = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                            continue 
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                        if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        idx = idx + 1
                        s = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        continue 
                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        continue 
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                    if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
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
                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if address(_363) == address(_356):
                    require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
                    if s <= 0:
                        revert with 0, 'Error 7'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'Error 8'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'Error 8'
                    if not s:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        idx = idx + 1
                        s = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                        continue 
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / s != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                    if not mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                            mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                            idx = idx + 1
                            s = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                            continue 
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                        if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        idx = idx + 1
                        s = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        continue 
                    if Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        idx = idx + 1
                        s = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                        continue 
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                    if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                    continue 
            require idx < mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160]
            if s <= 0:
                revert with 0, 'Error 7'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'Error 8'
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'Error 8'
            if not s:
                require Mask(112, 0, ext_call.return_data[32])
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: addition overflow'
                require 1000 * Mask(112, 0, ext_call.return_data[32])
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                idx = idx + 1
                s = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                continue 
            if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / s != mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
            if not mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s:
                if not Mask(112, 0, ext_call.return_data[32]):
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                    mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                    idx = idx + 1
                    s = 0 / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                    continue 
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
                if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: addition overflow'
                require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                idx = idx + 1
                s = 0 / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                continue 
            if Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
            if not Mask(112, 0, ext_call.return_data[32]):
                if mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s
                continue 
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 325 len 31]
            if (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: addition overflow'
            require (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
            mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224] = Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s / (mem[(32 * idx) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192] * s) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            continue 
        if s <= cd[4]:
            revert with 0, 'Error 3'
        require ('cd', 68).length <= test266151307()
        mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 224] = ('cd', 68).length
        mem[64] = (32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256
        if not ('cd', 68).length:
            idx = 0
            while idx < ('cd', 68).length:
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 260] = this.address
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 224]
                mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256] = ext_call.return_data[0]
                idx = idx + 1
                continue 
            require 0 < ('cd', 68).length
            require 0 < ('cd', 36).length
            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 260] = address(('cd', 36)[0])
            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 292] = cd[4]
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 36)[0]), cd[4]
            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                require idx + 1 < ('cd', 68).length
                if idx >= ('cd', 36).length - 1:
                    require idx < ('cd', 36).length
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                    _1099 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224]
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
                                mem[mem[64] + 36] = _1099
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1099, this.address
                            else:
                                _1204 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1204 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1204 + 36] = 0
                                mem[_1204 + 68] = _1099
                                mem[_1204 + 100] = this.address
                                mem[_1204 + 132] = 128
                                mem[_1204 + 164] = mem[_1204]
                                s = 0
                                while s < mem[_1204]:
                                    mem[s + _1204 + 196] = mem[s + _1204 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1204] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1099, address(this.address), 128, mem[_1204 + 164 len mem[_1204] + 32]
                                else:
                                    mem[floor32(mem[_1204]) + _1204 + 196] = mem[floor32(mem[_1204]) + _1204 + -(mem[_1204] % 32) + 228 len mem[_1204] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1099, address(this.address), 128, mem[_1204], mem[_1204 + 196 len floor32(mem[_1204]) + 32]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1099
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1099, 0, this.address
                            else:
                                _1208 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1208 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1208 + 36] = _1099
                                mem[_1208 + 68] = 0
                                mem[_1208 + 100] = this.address
                                mem[_1208 + 132] = 128
                                mem[_1208 + 164] = mem[_1208]
                                s = 0
                                while s < mem[_1208]:
                                    mem[s + _1208 + 196] = mem[s + _1208 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1208] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1208] + _1208 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1208]) + _1208 + 196] = mem[floor32(mem[_1208]) + _1208 + -(mem[_1208] % 32) + 228 len mem[_1208] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1208]) + _1208 + -mem[64] + 224]
                    else:
                        if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            revert with 0, 'Error 6'
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1099
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1099, this.address
                            else:
                                _1212 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1212 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1212 + 36] = 0
                                mem[_1212 + 68] = _1099
                                mem[_1212 + 100] = this.address
                                mem[_1212 + 132] = 128
                                mem[_1212 + 164] = mem[_1212]
                                s = 0
                                while s < mem[_1212]:
                                    mem[s + _1212 + 196] = mem[s + _1212 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1212] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1099, address(this.address), 128, mem[_1212 + 164 len mem[_1212] + 32]
                                else:
                                    mem[floor32(mem[_1212]) + _1212 + 196] = mem[floor32(mem[_1212]) + _1212 + -(mem[_1212] % 32) + 228 len mem[_1212] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1099, address(this.address), 128, mem[_1212], mem[_1212 + 196 len floor32(mem[_1212]) + 32]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1099
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1099, 0, this.address
                            else:
                                _1216 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1216 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1216 + 36] = _1099
                                mem[_1216 + 68] = 0
                                mem[_1216 + 100] = this.address
                                mem[_1216 + 132] = 128
                                mem[_1216 + 164] = mem[_1216]
                                s = 0
                                while s < mem[_1216]:
                                    mem[s + _1216 + 196] = mem[s + _1216 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1216] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1216] + _1216 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1216]) + _1216 + 196] = mem[floor32(mem[_1216]) + _1216 + -(mem[_1216] % 32) + 228 len mem[_1216] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1216]) + _1216 + -mem[64] + 224]
                else:
                    require idx + 1 < ('cd', 36).length
                    require idx < ('cd', 36).length
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                    _1107 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224]
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
                                mem[mem[64] + 36] = _1107
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1107, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1268 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1268 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1268 + 36] = 0
                                mem[_1268 + 68] = _1107
                                mem[_1268 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1268 + 132] = 128
                                mem[_1268 + 164] = mem[_1268]
                                s = 0
                                while s < mem[_1268]:
                                    mem[s + _1268 + 196] = mem[s + _1268 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1268] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1268] + _1268 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1268]) + _1268 + 196] = mem[floor32(mem[_1268]) + _1268 + -(mem[_1268] % 32) + 228 len mem[_1268] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1268]) + _1268 + -mem[64] + 224]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1107
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1107, 0, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1272 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1272 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1272 + 36] = _1107
                                mem[_1272 + 68] = 0
                                mem[_1272 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1272 + 132] = 128
                                mem[_1272 + 164] = mem[_1272]
                                s = 0
                                while s < mem[_1272]:
                                    mem[s + _1272 + 196] = mem[s + _1272 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1272] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1107, 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1272 + 164 len mem[_1272] + 32]
                                else:
                                    mem[floor32(mem[_1272]) + _1272 + 196] = mem[floor32(mem[_1272]) + _1272 + -(mem[_1272] % 32) + 228 len mem[_1272] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1107, 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1272], mem[_1272 + 196 len floor32(mem[_1272]) + 32]
                    else:
                        if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            revert with 0, 'Error 6'
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1107
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1107, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1276 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1276 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1276 + 36] = 0
                                mem[_1276 + 68] = _1107
                                mem[_1276 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1276 + 132] = 128
                                mem[_1276 + 164] = mem[_1276]
                                s = 0
                                while s < mem[_1276]:
                                    mem[s + _1276 + 196] = mem[s + _1276 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1276] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1276] + _1276 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1276]) + _1276 + 196] = mem[floor32(mem[_1276]) + _1276 + -(mem[_1276] % 32) + 228 len mem[_1276] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1276]) + _1276 + -mem[64] + 224]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1107
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1107, 0, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1280 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1280 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1280 + 36] = _1107
                                mem[_1280 + 68] = 0
                                mem[_1280 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1280 + 132] = 128
                                mem[_1280 + 164] = mem[_1280]
                                s = 0
                                while s < mem[_1280]:
                                    mem[s + _1280 + 196] = mem[s + _1280 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1280] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1280] + _1280 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1280]) + _1280 + 196] = mem[floor32(mem[_1280]) + _1280 + -(mem[_1280] % 32) + 228 len mem[_1280] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1280]) + _1280 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            idx = 0
            while idx < ('cd', 68).length:
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 224]
                _1496 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256]
                require idx < ('cd', 68).length
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < _1496:
                    revert with 0, 'Error 4'
                idx = idx + 1
                continue 
        else:
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
            idx = 0
            while idx < ('cd', 68).length:
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 260] = this.address
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 224]
                mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256] = ext_call.return_data[0]
                idx = idx + 1
                continue 
            require 0 < ('cd', 68).length
            require 0 < ('cd', 36).length
            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 260] = address(('cd', 36)[0])
            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 292] = cd[4]
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(('cd', 36)[0]), cd[4]
            mem[(32 * ('cd', 100).length) + (64 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            while idx < ('cd', 36).length:
                require idx < ('cd', 68).length
                require idx + 1 < ('cd', 68).length
                if idx >= ('cd', 36).length - 1:
                    require idx < ('cd', 36).length
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                    _1101 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224]
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
                                mem[mem[64] + 36] = _1101
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1101, this.address
                            else:
                                _1220 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1220 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1220 + 36] = 0
                                mem[_1220 + 68] = _1101
                                mem[_1220 + 100] = this.address
                                mem[_1220 + 132] = 128
                                mem[_1220 + 164] = mem[_1220]
                                s = 0
                                while s < mem[_1220]:
                                    mem[s + _1220 + 196] = mem[s + _1220 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1220] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1220] + _1220 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1220]) + _1220 + 196] = mem[floor32(mem[_1220]) + _1220 + -(mem[_1220] % 32) + 228 len mem[_1220] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1220]) + _1220 + -mem[64] + 224]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1101
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1101, 0, this.address
                            else:
                                _1224 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1224 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1224 + 36] = _1101
                                mem[_1224 + 68] = 0
                                mem[_1224 + 100] = this.address
                                mem[_1224 + 132] = 128
                                mem[_1224 + 164] = mem[_1224]
                                s = 0
                                while s < mem[_1224]:
                                    mem[s + _1224 + 196] = mem[s + _1224 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1224] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1224] + _1224 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1224]) + _1224 + 196] = mem[floor32(mem[_1224]) + _1224 + -(mem[_1224] % 32) + 228 len mem[_1224] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1224]) + _1224 + -mem[64] + 224]
                    else:
                        if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            revert with 0, 'Error 6'
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1101
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1101, this.address
                            else:
                                _1228 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1228 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1228 + 36] = 0
                                mem[_1228 + 68] = _1101
                                mem[_1228 + 100] = this.address
                                mem[_1228 + 132] = 128
                                mem[_1228 + 164] = mem[_1228]
                                s = 0
                                while s < mem[_1228]:
                                    mem[s + _1228 + 196] = mem[s + _1228 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1228] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1228] + _1228 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1228]) + _1228 + 196] = mem[floor32(mem[_1228]) + _1228 + -(mem[_1228] % 32) + 228 len mem[_1228] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1228]) + _1228 + -mem[64] + 224]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1101
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1101, 0, this.address
                            else:
                                _1232 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1232 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1232 + 36] = _1101
                                mem[_1232 + 68] = 0
                                mem[_1232 + 100] = this.address
                                mem[_1232 + 132] = 128
                                mem[_1232 + 164] = mem[_1232]
                                s = 0
                                while s < mem[_1232]:
                                    mem[s + _1232 + 196] = mem[s + _1232 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1232] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1101, 0, address(this.address), 128, mem[_1232 + 164 len mem[_1232] + 32]
                                else:
                                    mem[floor32(mem[_1232]) + _1232 + 196] = mem[floor32(mem[_1232]) + _1232 + -(mem[_1232] % 32) + 228 len mem[_1232] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1101, 0, address(this.address), 128, mem[_1232], mem[_1232 + 196 len floor32(mem[_1232]) + 32]
                else:
                    require idx + 1 < ('cd', 36).length
                    require idx < ('cd', 36).length
                    require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 192]
                    _1109 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 224]
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
                                mem[mem[64] + 36] = _1109
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1109, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1284 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1284 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1284 + 36] = 0
                                mem[_1284 + 68] = _1109
                                mem[_1284 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1284 + 132] = 128
                                mem[_1284 + 164] = mem[_1284]
                                s = 0
                                while s < mem[_1284]:
                                    mem[s + _1284 + 196] = mem[s + _1284 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1284] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_1284] + _1284 + -mem[64] + 192]
                                else:
                                    mem[floor32(mem[_1284]) + _1284 + 196] = mem[floor32(mem[_1284]) + _1284 + -(mem[_1284] % 32) + 228 len mem[_1284] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len floor32(mem[_1284]) + _1284 + -mem[64] + 224]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1109
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1109, 0, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1288 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1288 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1288 + 36] = _1109
                                mem[_1288 + 68] = 0
                                mem[_1288 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1288 + 132] = 128
                                mem[_1288 + 164] = mem[_1288]
                                s = 0
                                while s < mem[_1288]:
                                    mem[s + _1288 + 196] = mem[s + _1288 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1288] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1109, 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1288 + 164 len mem[_1288] + 32]
                                else:
                                    mem[floor32(mem[_1288]) + _1288 + 196] = mem[floor32(mem[_1288]) + _1288 + -(mem[_1288] % 32) + 228 len mem[_1288] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1109, 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1288], mem[_1288 + 196 len floor32(mem[_1288]) + 32]
                    else:
                        if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            revert with 0, 'Error 6'
                        if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = _1109
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, _1109, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1292 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1292 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1292 + 36] = 0
                                mem[_1292 + 68] = _1109
                                mem[_1292 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1292 + 132] = 128
                                mem[_1292 + 164] = mem[_1292]
                                s = 0
                                while s < mem[_1292]:
                                    mem[s + _1292 + 196] = mem[s + _1292 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1292] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1109, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1292 + 164 len mem[_1292] + 32]
                                else:
                                    mem[floor32(mem[_1292]) + _1292 + 196] = mem[floor32(mem[_1292]) + _1292 + -(mem[_1292] % 32) + 228 len mem[_1292] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, _1109, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1292], mem[_1292 + 196 len floor32(mem[_1292]) + 32]
                        else:
                            if not cd[((32 * idx) + cd[132] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1109
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args _1109, 0, address(cd[((32 * idx + 1) + cd[36] + 36)])
                            else:
                                _1296 = mem[64]
                                mem[mem[64]] = 0
                                mem[64] = mem[64] + 32
                                mem[_1296 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1296 + 36] = _1109
                                mem[_1296 + 68] = 0
                                mem[_1296 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                                mem[_1296 + 132] = 128
                                mem[_1296 + 164] = mem[_1296]
                                s = 0
                                while s < mem[_1296]:
                                    mem[s + _1296 + 196] = mem[s + _1296 + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_1296] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1109, 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1296 + 164 len mem[_1296] + 32]
                                else:
                                    mem[floor32(mem[_1296]) + _1296 + 196] = mem[floor32(mem[_1296]) + _1296 + -(mem[_1296] % 32) + 228 len mem[_1296] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                                    call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args _1109, 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_1296], mem[_1296 + 196 len floor32(mem[_1296]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
            idx = 0
            while idx < ('cd', 68).length:
                require idx < mem[(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 224]
                _1513 = mem[(32 * idx) + (32 * ('cd', 100).length) + (32 * ('cd', 68).length) + (64 * ('cd', 36).length) + 256]
                require idx < ('cd', 68).length
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < _1513:
                    revert with 0, 'Error 4'
                idx = idx + 1
                continue 
}



}
