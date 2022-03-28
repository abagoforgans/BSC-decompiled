contract main {




// =====================  Runtime code  =====================


const sub_93dcc339(?) = 0xefcd6715d051761498ce1a7df97ab386fe8dff37ab8074da10a556736f1294f4

const sub_9439b21c(?) = 0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727

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
    if not roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if not roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727][1][address(msg.sender)].field_0:
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
    if 0 >= roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727].field_0:
        revert with 0, 'EnumerableSet: index out of bounds'
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    call 0xe9e7cea3dedca5984780bafc599bd69add087d56.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727].field_0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
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
    require not ext_call.return_data[0]
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727].field_0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address rg1) with:
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
    require not ext_call.return_data[0]
    if ext_call.return_data[0]:
    if ext_call.return_data[0]:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_200036c7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    stor2[address(arg1)] = 0
    return 1
}

function sub_42c2bb1f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    stor1[address(arg1)] = 0
    return 1
}

function sub_b501edfe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    stor1[address(arg1)] = 1
    return 1
}

function approveToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    stor2[address(arg1)] = 1
    return 1
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

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727][1][address(msg.sender)].field_0:
        revert with 0, 'Error 1'
    if 0 >= roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727].field_0, arg2
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

function sub_3d753a95(?) payable {
    if not roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727][1][address(msg.sender)].field_0:
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
    if 0 >= roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727].field_0:
        revert with 0, 'EnumerableSet: index out of bounds'
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    call 0xe9e7cea3dedca5984780bafc599bd69add087d56.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727].field_0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
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
    require not ext_call.return_data[0]
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args roleAdmin[0xfeabb53357e7011388fd7ebd9d9513e8c2d9c6317e4d195a8965083096517727].field_0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address rg1) with:
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
    require not ext_call.return_data[0]
    return not bool(ext_call.return_data[0])
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
        _80 = mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 32
        mem[_80] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
        mem[_80 + 32 len 32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]] = call.data[cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]]
        mem[_80 + (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 32] = 0
        _81 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
        s = 0
        t = _80 + 32
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
               args mem[mem[64] + 4 len _81 + (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _140 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _142 = mem[_140]
        require mem[_140] <= test266151307()
        require _140 + return_data.size > _140 + mem[_140] + 31
        _144 = mem[_140 + mem[_140]]
        require mem[_140 + mem[_140]] <= test266151307()
        require (32 * mem[_140 + mem[_140]]) + 32 >= 0 and _140 + ceil32(return_data.size) + (32 * mem[_140 + mem[_140]]) + 32 <= test266151307()
        mem[64] = _140 + ceil32(return_data.size) + (32 * mem[_140 + mem[_140]]) + 32
        mem[_140 + ceil32(return_data.size)] = _144
        require return_data.size >= _142 + (32 * _144) + 32
        t = _140 + _142 + 32
        u = _140 + ceil32(return_data.size) + 32
        s = 0
        while s < _144:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        _209 = mem[64]
        mem[64] = mem[64] + 64
        mem[_209] = 30
        mem[_209 + 32] = 'SafeMath: subtraction overflow'
        if 1 <= _144:
            require _144 - 1 < _144
            require idx < ('cd', 68).length
            if mem[(32 * _144 - 1) + _140 + ceil32(return_data.size) + 32] < cd[((32 * idx) + cd[68] + 36)]:
                revert with 0, 'Error 3'
            idx = idx + 1
            continue 
        _213 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _213 + 68] = mem[idx + _209 + 32]
            idx = idx + 32
            continue 
        mem[_213 + 98] = 0
        revert with memory
          from mem[64]
           len _213 + -mem[64] + 100
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
        _151 = mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 32
        mem[_151] = cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]
        mem[_151 + 32 len 32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]] = call.data[cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]]
        mem[_151 + (32 * cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]) + 32] = 0
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        if not stor1[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 'Error 5'
        s = 0
        while s < cd[(cd[100] + cd[(cd[100] + (32 * idx) + 36)] + 36)]:
            require s < mem[_151]
            mem[0] = mem[(32 * s) + _151 + 44 len 20]
            mem[32] = 2
            if bool(stor2[mem[0]]) != 1:
                revert with 0, 'Error 6'
            s = s + 1
            continue 
        require 0 < mem[_151]
        _202 = mem[_151 + 32]
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = t
        require ext_code.size(address(_202))
        call address(_202).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _214 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_214] == bool(mem[_214])
        _220 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = t
        mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64] + 68] = 160
        _223 = mem[_151]
        mem[mem[64] + 164] = mem[_151]
        s = 0
        t = _151 + 32
        u = mem[64] + 196
        while s < _223:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_220 + 100] = this.address
        mem[_220 + 132] = cd[132]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _220 + (32 * _223) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _247 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _248 = mem[_247]
        require mem[_247] <= test266151307()
        require _247 + return_data.size > _247 + mem[_247] + 31
        _249 = mem[_247 + mem[_247]]
        require mem[_247 + mem[_247]] <= test266151307()
        require (32 * mem[_247 + mem[_247]]) + 32 >= 0 and _247 + ceil32(return_data.size) + (32 * mem[_247 + mem[_247]]) + 32 <= test266151307()
        mem[64] = _247 + ceil32(return_data.size) + (32 * mem[_247 + mem[_247]]) + 32
        mem[_247 + ceil32(return_data.size)] = _249
        require return_data.size >= _248 + (32 * _249) + 32
        t = _247 + _248 + 32
        u = _247 + ceil32(return_data.size) + 32
        s = 0
        while s < _249:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        _263 = mem[64]
        mem[64] = mem[64] + 64
        mem[_263] = 30
        mem[_263 + 32] = 'SafeMath: subtraction overflow'
        if 1 <= _249:
            require _249 - 1 < _249
            idx = idx + 1
            s = mem[(32 * _249 - 1) + _247 + ceil32(return_data.size) + 32]
            t = mem[(32 * _249 - 1) + _247 + ceil32(return_data.size) + 32]
            continue 
        _264 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _264 + 68] = mem[idx + _263 + 32]
            idx = idx + 32
            continue 
        mem[_264 + 98] = 0
        revert with memory
          from mem[64]
           len _264 + -mem[64] + 100
    require 0 < ('cd', 36).length
    if s <= ('cd', 36)[0]:
        revert with 0, 'Error 4'
    require 0 < ('cd', 36).length
    if ('cd', 36)[0] > s:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (s - ('cd', 36)[0])
}



}
