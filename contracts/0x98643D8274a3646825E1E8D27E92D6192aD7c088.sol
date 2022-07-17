contract main {




// =====================  Runtime code  =====================


const sub_0181609d(?) = 0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679

const sub_dc224863(?) = 0x8b8c0776df2c2176edf6f82391c35ea4891146d7a976ee36fd07f1a6fb4ead4c

const sub_f288a2e2(?) = 0xf66846415d2bf9eabda9e84793ff9c0ea96d87f50fc41e66aa16469c6a442f05

const EXECUTOR_ROLE = 0xd8aa0f3194971a2a116679f7c2090f6939c8d4e01a2a8d7e41d55e5351469e63

const GUARDIAN_ROLE = 0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041

const GOVERN_ROLE = 0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e

const PROPOSER_ROLE = 0xb09aa5aeb3702cfd50b6b62bc4532604938f21248a27a1d5ca736082b6819cc1

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;

function isGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][1][address(arg1)].field_0)
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_7476d691(?) payable {
    require calldata.size - 4 >= 32
    return bool(roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][1][address(arg1)].field_0)
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

function isGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(arg1)].field_0)
}

function _fallback() payable {
    revert
}

function createRole(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x655065726d697373696f6e733a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[215 len 13]
    emit RoleAdminChanged(arg1, roleAdmin[arg1].field_512, arg2);
    roleAdmin[arg1].field_512 = arg2
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
                    0x72416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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

function sub_d3a6b486(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x655065726d697373696f6e733a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[215 len 13]
    if not roleAdmin[roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][1][address(arg1)].field_0:
        roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679].field_0++
        roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679].field_0].field_0 = arg1
        roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679].field_0].field_160 = 0
        roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][1][address(arg1)].field_0 = roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679].field_0
        emit RoleGranted(0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679, arg1, msg.sender);
}

function grantGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x655065726d697373696f6e733a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[215 len 13]
    if not roleAdmin[roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(arg1)].field_0:
        roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e].field_0++
        roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e].field_0].field_0 = arg1
        roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e].field_0].field_160 = 0
        roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(arg1)].field_0 = roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e].field_0
        emit RoleGranted(0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e, arg1, msg.sender);
}

function grantGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x655065726d697373696f6e733a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[215 len 13]
    if not roleAdmin[roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][1][address(arg1)].field_0:
        roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041].field_0++
        roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041].field_0].field_0 = arg1
        roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041].field_0].field_160 = 0
        roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][1][address(arg1)].field_0 = roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041].field_0
        emit RoleGranted(0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041, arg1, msg.sender);
}

function sub_e9ceff73(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x655065726d697373696f6e733a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[215 len 13]
    if not roleAdmin[roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][1][address(arg1)].field_0:
        require roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679].field_0 - 1 < roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679].field_0
        require roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][1][address(arg1)].field_0 - 1 < roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679].field_0
        roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][1][address(arg1)].field_0].field_0 = roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679].field_0].field_0
        roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][1][roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679].field_0].field_0].field_0 = roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][1][address(arg1)].field_0
        require roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679].field_0
        roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679].field_0].field_0 = 0
        roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679].field_0--
        roleAdmin[0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679][1][address(arg1)].field_0 = 0
        emit RoleRevoked(0x5509b758bd894aecc755df8a7191208337b2f880f7351f0862567701db9e8679, arg1, msg.sender);
}

function revokeGuardian(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x655065726d697373696f6e733a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[215 len 13]
    if not roleAdmin[roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][1][address(arg1)].field_0:
        require roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041].field_0 - 1 < roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041].field_0
        require roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][1][address(arg1)].field_0 - 1 < roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041].field_0
        roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][1][address(arg1)].field_0].field_0 = roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041].field_0].field_0
        roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][1][roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041].field_0].field_0].field_0 = roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][1][address(arg1)].field_0
        require roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041].field_0
        roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041].field_0].field_0 = 0
        roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041].field_0--
        roleAdmin[0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041][1][address(arg1)].field_0 = 0
        emit RoleRevoked(0x55435dd261a4b9b3364963f7738a7a662ad9c84396d64be3365284bb7f0a5041, arg1, msg.sender);
}

function revokeGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x655065726d697373696f6e733a3a6f6e6c79476f7665726e6f723a2043616c6c6572206973206e6f74206120676f7665726e6f,
                    mem[215 len 13]
    if not roleAdmin[roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(arg1)].field_0:
        require roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e].field_0 - 1 < roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e].field_0
        require roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(arg1)].field_0 - 1 < roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e].field_0
        roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(arg1)].field_0].field_0 = roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e].field_0].field_0
        roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e].field_0].field_0].field_0 = roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(arg1)].field_0
        require roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e].field_0
        roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e].field_0].field_0 = 0
        roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e].field_0--
        roleAdmin[0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e][1][address(arg1)].field_0 = 0
        emit RoleRevoked(0x899bd46557473cb80307a9dabc297131ced39608330a2d29b2d52b660c03923e, arg1, msg.sender);
}



}
