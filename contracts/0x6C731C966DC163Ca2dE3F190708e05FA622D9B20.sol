contract main {




// =====================  Runtime code  =====================


#
#  - operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5)
#  - initialize(address[] arg1)
#
const decimals = 18

const granularity = 1

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


mapping of uint256 balanceOf;
uint256 totalSupply;
array of struct stor53;
array of struct stor54;
array of struct stor55;
mapping of uint8 stor56;
mapping of uint8 stor57;
mapping of uint8 stor58;
mapping of uint256 allowance;
uint8 paused;
mapping of struct roleAdmin;
array of struct roleMember;

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function paused() payable {
    return bool(paused)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= roleMember[arg1].field_0:
        revert with 'NH{q', 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleMember[arg1].field_0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function getOwner() payable {
    if roleMember[0].field_0 <= 0:
        return 0
    if 0 >= roleMember[0].field_0:
        revert with 'NH{q', 50
    return roleMember[0].field_0
}

function isOperatorFor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        return True
    if stor56[address(arg1)]:
        if not stor58[address(arg2)][address(arg1)]:
            return not bool(stor58[address(arg2)][address(arg1)])
    return bool(stor57[address(arg2)][address(arg1)])
}

function revokeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: revoking self as operator'
    if not stor56[address(arg1)]:
        stor57[address(msg.sender)][address(arg1)] = 0
    else:
        stor58[address(msg.sender)][address(arg1)] = 1
    emit RevokedOperator(arg1, msg.sender);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x5a05180f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function authorizeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: authorizing self as operator'
    if not stor56[address(arg1)]:
        stor57[address(msg.sender)][address(arg1)] = 1
    else:
        stor58[address(msg.sender)][address(arg1)] = 0
    emit AuthorizedOperator(arg1, msg.sender);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function defaultOperators() payable {
    mem[64] = (32 * stor55.length) + 128
    mem[96] = stor55.length
    if not stor55.length:
        mem[(32 * stor55.length) + 128] = 32
        mem[(32 * stor55.length) + 160] = stor55.length
        idx = 0
        s = 128
        t = (32 * stor55.length) + 192
        while idx < stor55.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor55.length) + 128
           len (96 * stor55.length) + 64
    mem[128] = address(stor55.field_0)
    idx = 128
    s = 0
    while (32 * stor55.length) + 96 > idx:
        mem[idx + 32] = stor55[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor55.length) + 128] = 32
    mem[(32 * stor55.length) + 160] = stor55.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor55.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor55.length) + -mem[64] + 192
}

function pause() payable {
    if roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
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
    revert with 0, 'Strings: hex length insufficient'
}

function unpause() payable {
    if roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a
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
    revert with 0, 'Strings: hex length insufficient'
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
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 'NH{q', 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
            roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: transfer to the zero address'
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args msg.sender, 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
             gas gas_remaining wei
            args msg.sender, msg.sender, address(arg1), arg2, 192, 224, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if paused:
        revert with 0, 'Pausable: paused'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'ERC777: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
              arg2,
              96,
              128,
              0,
              0,
              msg.sender,
              msg.sender,
              arg1,
    emit Transfer(arg2, msg.sender, arg1);
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
             gas gas_remaining wei
            args msg.sender, msg.sender, address(arg1), arg2, 192, 224, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
        if roleMember[arg1][1][address(arg2)].field_0:
            if roleMember[arg1][1][address(arg2)].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
                if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                    revert with 'NH{q', 50
                if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                    revert with 'NH{q', 50
                roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
                roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
            if not roleMember[arg1].field_0:
                revert with 'NH{q', 49
            roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
            roleMember[arg1].field_0--
            roleMember[arg1][1][address(arg2)].field_0 = 0
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: transfer to the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC777: transfer from the zero address'
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args address(arg1), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), address(arg2), arg3, 192, 224, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if paused:
        revert with 0, 'Pausable: paused'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'ERC777: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
              arg3,
              96,
              128,
              0,
              0,
              msg.sender,
              arg1,
              arg2,
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'ERC777: transfer amount exceeds allowance'
    if not arg1:
        revert with 0, 'ERC777: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC777: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args address(arg2), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), address(arg2), arg3, 192, 224, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function name() payable {
    if bool(stor53.length):
        if bool(stor53.length) == stor53.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor53.length):
            if bool(stor53.length) == stor53.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor53.length.field_1:
                if 31 < stor53.length.field_1:
                    mem[128] = uint256(stor53.field_0)
                    idx = 128
                    s = 0
                    while stor53.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor53[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor53.length.field_1), data=mem[128 len ceil32(stor53.length.field_1)])
                mem[128] = 256 * stor53.length.field_8
        else:
            if bool(stor53.length) == stor53.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor53.length.field_1:
                if 31 < stor53.length.field_1:
                    mem[128] = uint256(stor53.field_0)
                    idx = 128
                    s = 0
                    while stor53.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor53[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor53.length.field_1), data=mem[128 len ceil32(stor53.length.field_1)])
                mem[128] = 256 * stor53.length.field_8
        mem[ceil32(stor53.length.field_1) + 192 len ceil32(stor53.length.field_1)] = mem[128 len ceil32(stor53.length.field_1)]
        if ceil32(stor53.length.field_1) > stor53.length.field_1:
            mem[ceil32(stor53.length.field_1) + stor53.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor53.length.field_1), data=mem[128 len ceil32(stor53.length.field_1)], mem[(2 * ceil32(stor53.length.field_1)) + 192 len 2 * ceil32(stor53.length.field_1)]), 
    if bool(stor53.length) == stor53.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor53.length):
        if bool(stor53.length) == stor53.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor53.length.field_1:
            if 31 < stor53.length.field_1:
                mem[128] = uint256(stor53.field_0)
                idx = 128
                s = 0
                while stor53.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor53[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor53.length % 128, data=mem[128 len ceil32(stor53.length.field_1)])
            mem[128] = 256 * stor53.length.field_8
    else:
        if bool(stor53.length) == stor53.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor53.length.field_1:
            if 31 < stor53.length.field_1:
                mem[128] = uint256(stor53.field_0)
                idx = 128
                s = 0
                while stor53.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor53[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor53.length % 128, data=mem[128 len ceil32(stor53.length.field_1)])
            mem[128] = 256 * stor53.length.field_8
    mem[ceil32(stor53.length.field_1) + 192 len ceil32(stor53.length.field_1)] = mem[128 len ceil32(stor53.length.field_1)]
    if ceil32(stor53.length.field_1) > stor53.length.field_1:
        mem[ceil32(stor53.length.field_1) + stor53.length.field_1 + 192] = 0
    return Array(len=stor53.length % 128, data=mem[128 len ceil32(stor53.length.field_1)], mem[(2 * ceil32(stor53.length.field_1)) + 192 len 2 * ceil32(stor53.length.field_1)]), 
}

function symbol() payable {
    if bool(stor54.length):
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor54.length):
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
        if ceil32(stor54.length.field_1) > stor54.length.field_1:
            mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length.field_1), data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor54.length):
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function burn(uint256 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 'ERC777: burn from the zero address'
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args msg.sender, 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 261] = 192
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 325] = arg2.length
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 357 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 293] = ceil32(arg2.length) + 224
        if ceil32(arg2.length) <= arg2.length:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, arg1, 192, ceil32(arg2.length) + 224, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, 0
        else:
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ceil32(arg2.length) + 357] = 0
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ceil32(arg2.length) + 389 len 0] = None
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, 0, arg1, 192, ceil32(arg2.length) + 224, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 389 len -arg2.length + ceil32(arg2.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if paused:
        revert with 0, 'Pausable: paused'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'ERC777: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    if ceil32(arg2.length) <= arg2.length:
        emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                    arg1,
                    96,
                    ceil32(arg2.length) + 128,
                    arg2.length,
                    Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256,
                    0,
                    msg.sender,
                    msg.sender,
    else:
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ceil32(arg2.length) + 257] = 0
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + ceil32(arg2.length) + 289 len 0] = None
        emit Burned(arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 0) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 289 len -arg2.length + ceil32(arg2.length)]), ceil32(arg2.length) + 128, msg.sender, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function operatorBurn(address arg1, uint256 arg2, bytes arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307() or ceil32(ceil32(arg4.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != msg.sender:
        if not stor56[address(msg.sender)]:
            if not stor57[address(arg1)][address(msg.sender)]:
                revert with 0, 'ERC777: caller is not an operator for holder'
        else:
            if stor58[address(arg1)][address(msg.sender)]:
                if not stor57[address(arg1)][address(msg.sender)]:
                    revert with 0, 'ERC777: caller is not an operator for holder'
    if not arg1:
        revert with 0, 'ERC777: burn from the zero address'
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args address(arg1), 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 230] = 192
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 294] = arg3.length
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 326 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
        if ceil32(arg3.length) <= arg3.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 262] = ceil32(arg3.length) + 224
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 326] = arg4.length
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 0, arg2, 192, ceil32(arg3.length) + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
        else:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg3.length + 326] = 0
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 262] = ceil32(arg3.length) + 224
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 326] = arg4.length
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 358 len ceil32(arg4.length)] = arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + arg4.length + 358] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), 0, arg2, 192, ceil32(arg3.length) + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg3.length + 358 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if paused:
        revert with 0, 'Pausable: paused'
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'ERC777: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    if ceil32(arg3.length) <= arg3.length:
        emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]), ceil32(arg3.length) + 128, msg.sender, arg1);
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 226] = arg4.length
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 258 len ceil32(arg4.length)] = arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) > arg4.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + arg4.length + 258] = 0
        emit Burned(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg3.length + 258 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 128, msg.sender, arg1);
    emit Transfer(arg2, arg1, 0);
}

function send(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 'ERC777: send from the zero address'
    if not arg1:
        revert with 0, 'ERC777: send to the zero address'
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args msg.sender, 0x29ddb589b1fb5fc7cf394961c1adf5f8c6454761adf795e67fe149f658abe895
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 261] = 192
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 325] = arg3.length
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 357 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 0) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 293] = ceil32(arg3.length) + 224
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 357] = 0
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 389 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        if ceil32(arg3.length) <= arg3.length:
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, address(arg1), arg2, 192, ceil32(arg3.length) + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 0) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, 0
        else:
            call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 0) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 389 len -arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 224
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if paused:
        revert with 0, 'Pausable: paused'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'ERC777: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    if ceil32(arg3.length) <= arg3.length:
        emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
                  arg2,
                  96,
                  ceil32(arg3.length) + 128,
                  arg3.length,
                  Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 0) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256,
                  0,
                  msg.sender,
                  msg.sender,
                  arg1,
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 257] = 0
        mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 289 len 0] = None
        emit Sent(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 0) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg3.length + 289 len -arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 128, msg.sender, msg.sender, arg1);
    emit Transfer(arg2, msg.sender, arg1);
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if ext_code.size(arg1) > 0:
            revert with 0, 'ERC777: token recipient contract has no implementer for ERC777TokensRecipient'
    else:
        if ceil32(arg3.length) <= arg3.length:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, address(arg1), arg2, 192, ceil32(arg3.length) + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 0) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, 0
        else:
            mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 357] = 0
            mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + ceil32(arg3.length) + 389 len 0] = None
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, msg.sender, address(arg1), arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, 0) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + arg3.length + 389 len -arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 224
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function mint(address arg1, uint256 arg2, bytes arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307() or ceil32(ceil32(arg4.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130 len 42] = call.data[calldata.size len 42]
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 131 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 226 len 66] = call.data[calldata.size len 66]
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 227 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 354] = 'AccessControl: account '
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 377 len 64] = 0, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 131 len 63]
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 419] = ' is missing role '
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 436 len 96] = 0, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 227 len 95]
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 502] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 506] = 32
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 538] = mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322]
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 570 len ceil32(mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322])] = mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 354 len ceil32(mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322])]
        if ceil32(mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322]) > mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322]:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322] + 570] = 0
        revert with 0, 
                    32,
                    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322],
                    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 570 len ceil32(mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322])]
    if not arg1:
        revert with 0, 'ERC777: mint to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if ext_code.size(arg1) > 0:
            revert with 0, 'ERC777: token recipient contract has no implementer for ERC777TokensRecipient'
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 230] = 192
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 294] = arg3.length
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 326 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
        if ceil32(arg3.length) <= arg3.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 262] = ceil32(arg3.length) + 224
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 326] = arg4.length
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, 0, address(arg1), arg2, 192, ceil32(arg3.length) + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
        else:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg3.length + 326] = 0
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 262] = ceil32(arg3.length) + 224
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 326] = arg4.length
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 358 len ceil32(arg4.length)] = arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + arg4.length + 358] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, 0, address(arg1), arg2, 192, ceil32(arg3.length) + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg3.length + 358 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if ceil32(arg3.length) <= arg3.length:
        emit Minted(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]), ceil32(arg3.length) + 128, msg.sender, arg1);
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 226] = arg4.length
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 258 len ceil32(arg4.length)] = arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) > arg4.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + arg4.length + 258] = 0
        emit Minted(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg3.length + 258 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 128, msg.sender, arg1);
    emit Transfer(arg2, 0, arg1);
}

function sub_e396706f(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307() or ceil32(ceil32(arg4.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == bool(arg5)
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130 len 42] = call.data[calldata.size len 42]
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 131 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 226 len 66] = call.data[calldata.size len 66]
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 227 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 354] = 'AccessControl: account '
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 377 len 64] = 0, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 131 len 63]
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 419] = ' is missing role '
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 436 len 96] = 0, mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 227 len 95]
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 502] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 506] = 32
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 538] = mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322]
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 570 len ceil32(mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322])] = mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 354 len ceil32(mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322])]
        if ceil32(mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322]) > mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322]:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322] + 570] = 0
        revert with 0, 
                    32,
                    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322],
                    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 570 len ceil32(mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 322])]
    if not address(arg1):
        revert with 0, 'ERC777: mint to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args address(arg1), 0xb281fc8c12954d22544db45de3159a39272895b169a852b314f9cc762e44c53b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if arg5:
            if ext_code.size(address(arg1)) > 0:
                revert with 0, 'ERC777: token recipient contract has no implementer for ERC777TokensRecipient'
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 230] = 192
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 294] = arg3.length
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 326 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
        if ceil32(arg3.length) <= arg3.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 262] = ceil32(arg3.length) + 224
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 326] = arg4.length
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, 0, address(arg1), arg2, 192, ceil32(arg3.length) + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
        else:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg3.length + 326] = 0
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 262] = ceil32(arg3.length) + 224
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 326] = arg4.length
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 358 len ceil32(arg4.length)] = arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
            if ceil32(arg4.length) > arg4.length:
                mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + arg4.length + 358] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                 gas gas_remaining wei
                args msg.sender, 0, address(arg1), arg2, 192, ceil32(arg3.length) + 224, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg3.length + 358 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if ceil32(arg3.length) <= arg3.length:
        emit Minted(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, arg4.length, arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]), ceil32(arg3.length) + 128, msg.sender, address(arg1));
    else:
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 226] = arg4.length
        mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + 258 len ceil32(arg4.length)] = arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) > arg4.length:
            mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ceil32(arg3.length) + arg4.length + 258] = 0
        emit Minted(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + arg3.length + 258 len ceil32(arg4.length) - arg3.length + ceil32(arg3.length)]), ceil32(arg3.length) + 128, msg.sender, address(arg1));
    emit Transfer(arg2, 0, address(arg1));
}



}
