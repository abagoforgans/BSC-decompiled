contract main {




// =====================  Runtime code  =====================


const sub_93dcc339(?) = 0xefcd6715d051761498ce1a7df97ab386fe8dff37ab8074da10a556736f1294f4

const sub_9439b21c(?) = 0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51

const DEFAULT_ADMIN_ROLE = 0


array of struct roleAdmin;
mapping of uint8 stor1;
mapping of uint8 stor2;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function approvedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function sub_8bec73dc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function kill() payable {
    if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
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
    if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if 0 >= roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0:
        revert with 0, 'EnumerableSet: index out of bounds'
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    call 0xe9e7cea3dedca5984780bafc599bd69add087d56.0xa9059cbb with:
         gas gas_remaining wei
        args roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if 0 >= roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0:
        revert with 0, 'EnumerableSet: index out of bounds'
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xa9059cbb with:
         gas gas_remaining wei
        args roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if 0 >= roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0:
        revert with 0, 'EnumerableSet: index out of bounds'
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    call 0x55d398326f99059ff775485246999027b3197955.0xa9059cbb with:
         gas gas_remaining wei
        args roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    staticcall 0x55d398326f99059ff775485246999027b3197955.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if 0 >= roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0:
        revert with 0, 'EnumerableSet: index out of bounds'
    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
    call 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.0xa9059cbb with:
         gas gas_remaining wei
        args roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
    staticcall 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if 0 >= roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0:
        revert with 0, 'EnumerableSet: index out of bounds'
    require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
    call 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.0xa9059cbb with:
         gas gas_remaining wei
        args roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    require not ext_call.return_data[0]
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function approveTokens(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
    return 1
}

function sub_3c378422(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
    return 1
}

function sub_41d7dd53(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        idx = idx + 1
        continue 
    return 1
}

function sub_5eab8644(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        idx = idx + 1
        continue 
    return 1
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if 0 >= roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
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
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
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

function sub_a314af79(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xefcd6715d051761498ce1a7df97ab386fe8dff37ab8074da10a556736f1294f4, 0) + 1
    if not roleAdmin[0xefcd6715d051761498ce1a7df97ab386fe8dff37ab8074da10a556736f1294f4][1][address(msg.sender)].field_0:
        revert with 0, 'Error 2'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        require idx < ('cd', 100).length
        require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
        require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)])
        _81 = mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 32
        mem[_81] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
        mem[_81 + 32 len 32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]] = call.data[cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]]
        mem[_81 + (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 32] = 0
        _82 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
        s = 0
        t = _81 + 32
        u = mem[64] + 100
        while s < cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _82 + (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _159 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _160 = mem[_159]
        require mem[_159] <= test266151307()
        require _159 + return_data.size > _159 + mem[_159] + 31
        _161 = mem[_159 + mem[_159]]
        require mem[_159 + mem[_159]] <= test266151307()
        require (32 * mem[_159 + mem[_159]]) + 32 >= 0 and _159 + ceil32(return_data.size) + (32 * mem[_159 + mem[_159]]) + 32 <= test266151307()
        mem[64] = _159 + ceil32(return_data.size) + (32 * mem[_159 + mem[_159]]) + 32
        mem[_159 + ceil32(return_data.size)] = _161
        require return_data.size >= _160 + (32 * _161) + 32
        t = _159 + _160 + 32
        u = _159 + ceil32(return_data.size) + 32
        s = 0
        while s < _161:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        _235 = mem[64]
        mem[64] = mem[64] + 64
        mem[_235] = 30
        mem[_235 + 32] = 'SafeMath: subtraction overflow'
        if 1 <= _161:
            require _161 - 1 < _161
            require idx < ('cd', 68).length
            if mem[(32 * _161 - 1) + _159 + ceil32(return_data.size) + 32] < cd[((32 * idx) + cd[68] + 36)]:
                revert with 0, 'Error 3'
            idx = idx + 1
            continue 
        _239 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        s = 0
        while s < 30:
            mem[s + _239 + 68] = mem[s + _235 + 32]
            s = s + 32
            continue 
        mem[_239 + 98] = 0
        revert with memory
          from mem[64]
           len _239 + -mem[64] + 100
    require 0 < ('cd', 100).length
    require ('cd', 100)[0] < calldata.size + -cd[100] - 67
    require cd[(cd[100] + ('cd', 100)[0] + 36)] <= test266151307()
    require cd[100] + ('cd', 100)[0] + 68 <= calldata.size - (32 * cd[(cd[100] + ('cd', 100)[0] + 36)])
    require 0 < cd[(cd[100] + ('cd', 100)[0] + 36)]
    require cd[(cd[100] + ('cd', 100)[0] + 68)] == address(cd[(cd[100] + ('cd', 100)[0] + 68)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(cd[100] + ('cd', 100)[0] + 68)]))
    staticcall address(cd[(cd[100] + ('cd', 100)[0] + 68)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _85 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _87 = mem[_85]
    require 0 < ('cd', 36).length
    idx = 0
    s = 0
    t = ('cd', 36)[0]
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 68).length
        require idx < ('cd', 100).length
        require cd[(cd[100] + (32 * idx) + 36)] < calldata.size + -cd[100] - 67
        require cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)])
        _163 = mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 32
        mem[_163] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
        mem[_163 + 32 len 32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]] = call.data[cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]]
        mem[_163 + (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 32] = 0
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        if not stor1[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 'Error 6'
        s = 0
        while s < cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
            require s < mem[_163]
            mem[0] = mem[(32 * s) + _163 + 44 len 20]
            mem[32] = 2
            if bool(stor2[mem[0]]) != 1:
                revert with 0, 'Error 7'
            s = s + 1
            continue 
        require 0 < mem[_163]
        _228 = mem[_163 + 32]
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = t
        require ext_code.size(address(_228))
        call address(_228).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _240 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_240] == bool(mem[_240])
        _246 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = t
        mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64] + 68] = 160
        _250 = mem[_163]
        mem[mem[64] + 164] = mem[_163]
        s = 0
        t = _163 + 32
        u = mem[64] + 196
        while s < _250:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_246 + 100] = this.address
        mem[_246 + 132] = cd[132]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _246 + (32 * _250) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _273 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _274 = mem[_273]
        require mem[_273] <= test266151307()
        require _273 + return_data.size > _273 + mem[_273] + 31
        _275 = mem[_273 + mem[_273]]
        require mem[_273 + mem[_273]] <= test266151307()
        require (32 * mem[_273 + mem[_273]]) + 32 >= 0 and _273 + ceil32(return_data.size) + (32 * mem[_273 + mem[_273]]) + 32 <= test266151307()
        mem[64] = _273 + ceil32(return_data.size) + (32 * mem[_273 + mem[_273]]) + 32
        mem[_273 + ceil32(return_data.size)] = _275
        require return_data.size >= _274 + (32 * _275) + 32
        t = _273 + _274 + 32
        u = _273 + ceil32(return_data.size) + 32
        s = 0
        while s < _275:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        _289 = mem[64]
        mem[64] = mem[64] + 64
        mem[_289] = 30
        mem[_289 + 32] = 'SafeMath: subtraction overflow'
        if 1 <= _275:
            require _275 - 1 < _275
            idx = idx + 1
            s = mem[(32 * _275 - 1) + _273 + ceil32(return_data.size) + 32]
            t = mem[(32 * _275 - 1) + _273 + ceil32(return_data.size) + 32]
            continue 
        _290 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _290 + 68] = mem[idx + _289 + 32]
            idx = idx + 32
            continue 
        mem[_290 + 98] = 0
        revert with memory
          from mem[64]
           len _290 + -mem[64] + 100
    require 0 < ('cd', 36).length
    if s <= ('cd', 36)[0]:
        revert with 0, 'Error 4'
    require 0 < ('cd', 100).length
    require ('cd', 100)[0] < calldata.size + -cd[100] - 67
    require cd[(cd[100] + ('cd', 100)[0] + 36)] <= test266151307()
    require cd[100] + ('cd', 100)[0] + 68 <= calldata.size - (32 * cd[(cd[100] + ('cd', 100)[0] + 36)])
    require 0 < cd[(cd[100] + ('cd', 100)[0] + 36)]
    require cd[(cd[100] + ('cd', 100)[0] + 68)] == address(cd[(cd[100] + ('cd', 100)[0] + 68)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(cd[100] + ('cd', 100)[0] + 68)]))
    staticcall address(cd[(cd[100] + ('cd', 100)[0] + 68)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _179 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_179] <= _87:
        revert with 0, 'Error 5'
    if _87 > mem[_179]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (mem[_179] - _87)
}

function withdrawAll() payable {
    if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
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
                            if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
                                revert with 0, 'Error 1'
                            else:
                                if 0 >= roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0:
                                    revert with 0, 'EnumerableSet: index out of bounds'
                                else:
                                    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
                                    call 0xe9e7cea3dedca5984780bafc599bd69add087d56.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
                                        staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require not ext_call.return_data[0]
                                            if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
                                                revert with 0, 'Error 1'
                                            else:
                                                if 0 >= roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0:
                                                    revert with 0, 'EnumerableSet: index out of bounds'
                                                else:
                                                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                                                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0, ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                                                        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require not ext_call.return_data[0]
                                                            if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
                                                                revert with 0, 'Error 1'
                                                            else:
                                                                if 0 >= roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0:
                                                                    revert with 0, 'EnumerableSet: index out of bounds'
                                                                else:
                                                                    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
                                                                    call 0x55d398326f99059ff775485246999027b3197955.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0, ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                        require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
                                                                        staticcall 0x55d398326f99059ff775485246999027b3197955.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require not ext_call.return_data[0]
                                                                            if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
                                                                                revert with 0, 'Error 1'
                                                                            else:
                                                                                if 0 >= roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0:
                                                                                    revert with 0, 'EnumerableSet: index out of bounds'
                                                                                else:
                                                                                    require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
                                                                                    call 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.0xa9059cbb with:
                                                                                         gas gas_remaining wei
                                                                                        args roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0, ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                        require ext_code.size(0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d)
                                                                                        staticcall 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d.0x70a08231 with:
                                                                                                gas gas_remaining wei
                                                                                               args this.address
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require not ext_call.return_data[0]
                                                                                            if not roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51][1][address(msg.sender)].field_0:
                                                                                                revert with 0, 'Error 1'
                                                                                            else:
                                                                                                if 0 >= roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0:
                                                                                                    revert with 0, 'EnumerableSet: index out of bounds'
                                                                                                else:
                                                                                                    require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
                                                                                                    call 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.0xa9059cbb with:
                                                                                                         gas gas_remaining wei
                                                                                                        args roleAdmin[0xfe584330bd99de8c28a105b575699f679779afc03783d79ef602ba8632a96e51].field_0, ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                        require ext_code.size(0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3)
                                                                                                        staticcall 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3.0x70a08231 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args this.address
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require not ext_call.return_data[0]
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



}
