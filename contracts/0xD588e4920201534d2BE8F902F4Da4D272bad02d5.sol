contract main {




// =====================  Runtime code  =====================


const sub_93dcc339(?) = sha3(Mask(144, 112, 'UNSAFE_TRADER_ROLE') >> 112)

const sub_9439b21c(?) = sha3(Mask(144, 112, 'SAFE_INVESTOR_ROLE') >> 112)

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
    if not roleAdmin['SAFE_INVESTOR_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if not roleAdmin['SAFE_INVESTOR_ROLE'][1][address(msg.sender)].field_0:
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
    if not roleAdmin['SAFE_INVESTOR_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if 0 >= roleAdmin['SAFE_INVESTOR_ROLE'].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    call 0xe9e7cea3dedca5984780bafc599bd69add087d56.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args roleAdmin['SAFE_INVESTOR_ROLE'].field_0, ext_call.return_data[0]
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
    if not roleAdmin['SAFE_INVESTOR_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if 0 >= roleAdmin['SAFE_INVESTOR_ROLE'].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args roleAdmin['SAFE_INVESTOR_ROLE'].field_0, ext_call.return_data[0]
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
    if not roleAdmin['SAFE_INVESTOR_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if 0 >= roleAdmin['SAFE_INVESTOR_ROLE'].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    call 0x55d398326f99059ff775485246999027b3197955.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args roleAdmin['SAFE_INVESTOR_ROLE'].field_0, ext_call.return_data[0]
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
    if not roleAdmin['SAFE_INVESTOR_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if 0 >= roleAdmin['SAFE_INVESTOR_ROLE'].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
    call 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args roleAdmin['SAFE_INVESTOR_ROLE'].field_0, ext_call.return_data[0]
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
    if not roleAdmin['SAFE_INVESTOR_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if 0 >= roleAdmin['SAFE_INVESTOR_ROLE'].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
    call 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args roleAdmin['SAFE_INVESTOR_ROLE'].field_0, ext_call.return_data[0]
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

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x54416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin['SAFE_INVESTOR_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if 0 >= roleAdmin['SAFE_INVESTOR_ROLE'].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args roleAdmin['SAFE_INVESTOR_ROLE'].field_0, arg2
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x53416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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
    if not roleAdmin['SAFE_INVESTOR_ROLE'][1][address(msg.sender)].field_0:
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
                            if not roleAdmin['SAFE_INVESTOR_ROLE'][1][address(msg.sender)].field_0:
                                revert with 0, 'Error 1'
                            else:
                                if 0 >= roleAdmin['SAFE_INVESTOR_ROLE'].field_0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                34,
                                                0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                                mem[198 len 30]
                                else:
                                    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
                                    call 0xe9e7cea3dedca5984780bafc599bd69add087d56.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args roleAdmin['SAFE_INVESTOR_ROLE'].field_0, ext_call.return_data[0]
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
                                            if not roleAdmin['SAFE_INVESTOR_ROLE'][1][address(msg.sender)].field_0:
                                                revert with 0, 'Error 1'
                                            else:
                                                if 0 >= roleAdmin['SAFE_INVESTOR_ROLE'].field_0:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                34,
                                                                0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                                                mem[198 len 30]
                                                else:
                                                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                                                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args roleAdmin['SAFE_INVESTOR_ROLE'].field_0, ext_call.return_data[0]
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
                                                            if not roleAdmin['SAFE_INVESTOR_ROLE'][1][address(msg.sender)].field_0:
                                                                revert with 0, 'Error 1'
                                                            else:
                                                                if 0 >= roleAdmin['SAFE_INVESTOR_ROLE'].field_0:
                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                32,
                                                                                34,
                                                                                0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                                                                mem[198 len 30]
                                                                else:
                                                                    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
                                                                    call 0x55d398326f99059ff775485246999027b3197955.transfer(address rg1, uint256 rg2) with:
                                                                         gas gas_remaining wei
                                                                        args roleAdmin['SAFE_INVESTOR_ROLE'].field_0, ext_call.return_data[0]
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
                                                                            if not roleAdmin['SAFE_INVESTOR_ROLE'][1][address(msg.sender)].field_0:
                                                                                revert with 0, 'Error 1'
                                                                            else:
                                                                                if 0 >= roleAdmin['SAFE_INVESTOR_ROLE'].field_0:
                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                32,
                                                                                                34,
                                                                                                0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                                                                                mem[198 len 30]
                                                                                else:
                                                                                    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
                                                                                    call 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.transfer(address rg1, uint256 rg2) with:
                                                                                         gas gas_remaining wei
                                                                                        args roleAdmin['SAFE_INVESTOR_ROLE'].field_0, ext_call.return_data[0]
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
                                                                                            if not roleAdmin['SAFE_INVESTOR_ROLE'][1][address(msg.sender)].field_0:
                                                                                                revert with 0, 'Error 1'
                                                                                            else:
                                                                                                if 0 >= roleAdmin['SAFE_INVESTOR_ROLE'].field_0:
                                                                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                32,
                                                                                                                34,
                                                                                                                0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                                                                                                                mem[198 len 30]
                                                                                                else:
                                                                                                    require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
                                                                                                    call 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.transfer(address rg1, uint256 rg2) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args roleAdmin['SAFE_INVESTOR_ROLE'].field_0, ext_call.return_data[0]
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

function sub_8b758761(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(sha3('UNSAFE_TRADER_ROLE'), 0) + 1
    if not roleAdmin['UNSAFE_TRADER_ROLE'][1][address(msg.sender)].field_0:
        revert with 0, 'Error 2'
    mem[96] = ('cd', 36).length
    mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = 0
    idx = 0
    s = cd[4]
    while idx < ('cd', 36).length:
        require idx < mem[(32 * ('cd', 36).length) + 128]
        _199 = mem[(32 * idx) + (32 * ('cd', 36).length) + 160]
        require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
        _203 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] == mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
            revert with 0, 
                        32,
                        37,
                        0x74556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345,
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 265 len 27]
        if mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20] < mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
            if not mem[(32 * idx) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require idx < ('cd', 36).length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if address(_199) == address(_199):
                if s <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 271 len 21]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x65556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 268 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x65556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 268 len 24]
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * s)
                    require idx < ('cd', 36).length
                    mem[(32 * idx) + 128] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * s)
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    continue 
                require ext_call.return_data[50 len 14]
                if 997 * s * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * ext_call.return_data[18 len 14]) + (997 * s)
                require idx < ('cd', 36).length
                mem[(32 * idx) + 128] = 997 * s * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * s)
                idx = idx + 1
                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                continue 
        else:
            if not mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 172 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            require idx < ('cd', 36).length
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if address(_203) == address(_199):
                if s <= 0:
                    revert with 0, 
                                32,
                                43,
                                0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 271 len 21]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x65556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 268 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 
                                32,
                                40,
                                0x65556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 268 len 24]
                if 997 * s / 997 != s:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * s)
                    require idx < ('cd', 36).length
                    mem[(32 * idx) + 128] = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * s)
                    idx = idx + 1
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                    continue 
                require ext_call.return_data[50 len 14]
                if 997 * s * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * s:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * ext_call.return_data[18 len 14]) + (997 * s) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * ext_call.return_data[18 len 14]) + (997 * s)
                require idx < ('cd', 36).length
                mem[(32 * idx) + 128] = 997 * s * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * s)
                idx = idx + 1
                s = 997 * s * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * s)
                continue 
        if s <= 0:
            revert with 0, 
                        32,
                        43,
                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 271 len 21]
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0, 
                        32,
                        40,
                        0x65556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 268 len 24]
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0, 
                        32,
                        40,
                        0x65556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 268 len 24]
        if 997 * s / 997 != s:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[18 len 14]:
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * ext_call.return_data[50 len 14]) + (997 * s) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            require (1000 * ext_call.return_data[50 len 14]) + (997 * s)
            require idx < ('cd', 36).length
            mem[(32 * idx) + 128] = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * s)
            idx = idx + 1
            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
            continue 
        require ext_call.return_data[18 len 14]
        if 997 * s * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * s:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if (1000 * ext_call.return_data[50 len 14]) + (997 * s) < 1000 * ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-add-overflow'
        require (1000 * ext_call.return_data[50 len 14]) + (997 * s)
        require idx < ('cd', 36).length
        mem[(32 * idx) + 128] = 997 * s * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * s)
        idx = idx + 1
        s = 997 * s * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * s)
        continue 
    if s <= cd[4]:
        revert with 0, 'Error 3'
    idx = 0
    while idx < ('cd', 68).length - 1:
        require idx < ('cd', 68).length
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 164] = this.address
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    require 0 < ('cd', 68).length
    require 0 < ('cd', 36).length
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 164] = address(('cd', 36)[0])
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 196] = cd[4]
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(('cd', 36)[0]), cd[4]
    mem[(32 * ('cd', 68).length) + (32 * ('cd', 36).length) + 160] = ext_call.return_data[0]
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
            _470 = mem[(32 * idx) + 128]
            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                revert with 0, 32, 37, 0x74556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
                if not address(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                    _488 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_488 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_488 + 36] = 0
                    mem[_488 + 68] = _470
                    mem[_488 + 100] = this.address
                    mem[_488 + 132] = 128
                    mem[_488 + 164] = mem[_488]
                    s = 0
                    while s < mem[_488]:
                        mem[s + _488 + 196] = mem[s + _488 + 32]
                        s = s + 32
                        continue 
                    if not mem[_488] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_488] + _488 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_488]) + _488 + 196] = mem[floor32(mem[_488]) + _488 + -(mem[_488] % 32) + 228 len mem[_488] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_488]) + _488 + -mem[64] + 224]
                else:
                    _490 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_490 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_490 + 36] = _470
                    mem[_490 + 68] = 0
                    mem[_490 + 100] = this.address
                    mem[_490 + 132] = 128
                    mem[_490 + 164] = mem[_490]
                    s = 0
                    while s < mem[_490]:
                        mem[s + _490 + 196] = mem[s + _490 + 32]
                        s = s + 32
                        continue 
                    if not mem[_490] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_490] + _490 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_490]) + _490 + 196] = mem[floor32(mem[_490]) + _490 + -(mem[_490] % 32) + 228 len mem[_490] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_490]) + _490 + -mem[64] + 224]
            else:
                if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    _492 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_492 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_492 + 36] = 0
                    mem[_492 + 68] = _470
                    mem[_492 + 100] = this.address
                    mem[_492 + 132] = 128
                    mem[_492 + 164] = mem[_492]
                    s = 0
                    while s < mem[_492]:
                        mem[s + _492 + 196] = mem[s + _492 + 32]
                        s = s + 32
                        continue 
                    if not mem[_492] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_492] + _492 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_492]) + _492 + 196] = mem[floor32(mem[_492]) + _492 + -(mem[_492] % 32) + 228 len mem[_492] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_492]) + _492 + -mem[64] + 224]
                else:
                    _494 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_494 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_494 + 36] = _470
                    mem[_494 + 68] = 0
                    mem[_494 + 100] = this.address
                    mem[_494 + 132] = 128
                    mem[_494 + 164] = mem[_494]
                    s = 0
                    while s < mem[_494]:
                        mem[s + _494 + 196] = mem[s + _494 + 32]
                        s = s + 32
                        continue 
                    if not mem[_494] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _470, 0, address(this.address), 128, mem[_494 + 164 len mem[_494] + 32]
                    else:
                        mem[floor32(mem[_494]) + _494 + 196] = mem[floor32(mem[_494]) + _494 + -(mem[_494] % 32) + 228 len mem[_494] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _470, 0, address(this.address), 128, mem[_494], mem[_494 + 196 len floor32(mem[_494]) + 32]
        else:
            require idx + 1 < ('cd', 36).length
            require idx < ('cd', 36).length
            require idx < mem[96]
            _472 = mem[(32 * idx) + 128]
            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                revert with 0, 32, 37, 0x74556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 105 len 27]
            if address(cd[((32 * idx) + cd[68] + 36)]) < address(cd[((32 * idx + 1) + cd[68] + 36)]):
                if not address(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx) + cd[68] + 36)]):
                    _496 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_496 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_496 + 36] = 0
                    mem[_496 + 68] = _472
                    mem[_496 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_496 + 132] = 128
                    mem[_496 + 164] = mem[_496]
                    s = 0
                    while s < mem[_496]:
                        mem[s + _496 + 196] = mem[s + _496 + 32]
                        s = s + 32
                        continue 
                    if not mem[_496] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _472, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_496 + 164 len mem[_496] + 32]
                    else:
                        mem[floor32(mem[_496]) + _496 + 196] = mem[floor32(mem[_496]) + _496 + -(mem[_496] % 32) + 228 len mem[_496] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _472, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_496], mem[_496 + 196 len floor32(mem[_496]) + 32]
                else:
                    _498 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_498 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_498 + 36] = _472
                    mem[_498 + 68] = 0
                    mem[_498 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_498 + 132] = 128
                    mem[_498 + 164] = mem[_498]
                    s = 0
                    while s < mem[_498]:
                        mem[s + _498 + 196] = mem[s + _498 + 32]
                        s = s + 32
                        continue 
                    if not mem[_498] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_498] + _498 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_498]) + _498 + 196] = mem[floor32(mem[_498]) + _498 + -(mem[_498] % 32) + 228 len mem[_498] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_498]) + _498 + -mem[64] + 224]
            else:
                if not address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * idx + 1) + cd[68] + 36)]):
                    _500 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_500 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_500 + 36] = 0
                    mem[_500 + 68] = _472
                    mem[_500 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_500 + 132] = 128
                    mem[_500 + 164] = mem[_500]
                    s = 0
                    while s < mem[_500]:
                        mem[s + _500 + 196] = mem[s + _500 + 32]
                        s = s + 32
                        continue 
                    if not mem[_500] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_500] + _500 + -mem[64] + 192]
                    else:
                        mem[floor32(mem[_500]) + _500 + 196] = mem[floor32(mem[_500]) + _500 + -(mem[_500] % 32) + 228 len mem[_500] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len floor32(mem[_500]) + _500 + -mem[64] + 224]
                else:
                    _502 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    mem[_502 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_502 + 36] = _472
                    mem[_502 + 68] = 0
                    mem[_502 + 100] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                    mem[_502 + 132] = 128
                    mem[_502 + 164] = mem[_502]
                    s = 0
                    while s < mem[_502]:
                        mem[s + _502 + 196] = mem[s + _502 + 32]
                        s = s + 32
                        continue 
                    if not mem[_502] % 32:
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _472, 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_502 + 164 len mem[_502] + 32]
                    else:
                        mem[floor32(mem[_502]) + _502 + 196] = mem[floor32(mem[_502]) + _502 + -(mem[_502] % 32) + 228 len mem[_502] % 32]
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _472, 0, address(cd[((32 * idx + 1) + cd[36] + 36)]), 128, mem[_502], mem[_502 + 196 len floor32(mem[_502]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 68).length - 1:
        require idx < mem[96]
        _545 = mem[(32 * idx) + 128]
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
        if ext_call.return_data[0] < _545:
            revert with 0, 'Error 4'
        idx = idx + 1
        continue 
}



}
