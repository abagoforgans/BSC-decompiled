contract main {




// =====================  Runtime code  =====================


#
#  - sub_35ead9d7(?)
#  - sub_643c1625(?)
#  - sub_73468029(?)
#  - claim(uint48 arg1)
#  - initialize()
#  - sub_84d1b79b(?)
#  - sub_9967a2ab(?)
#
const _decimals = 18

const sub_a61b93cc(?) = 0xe1123c69cc12368838cca6d46b7505bec842d9e85a26aff07e23aa57ad59dac6

const sub_e5b196db(?) = 10^18

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor202;
array of struct stor203;
mapping of struct stor204;
mapping of struct sub_6fb00103;
mapping of uint8 stor206;
mapping of uint64 sub_e9dbfb8b;
array of uint256 stor84248286654983926165770214238757669174068465587261332296095693525597909361678;
array of struct stor102340800598314581700703180646365154776141900691267670427260941026834335867918;
array of uint256 stor115005560358646040575156257131690394697593305264072107119076614277699834422286;

function sub_248628b0(?) {
    require calldata.size - 4 >= 32
    return bool(stor206[arg1])
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_6fb00103(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2 % 281474976710656
    return sub_6fb00103[address(arg1)][arg2 << 208].field_0, 
           sub_6fb00103[address(arg1)][arg2 << 208].field_256,
           sub_6fb00103[address(arg1)][arg2 << 208].field_512
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function sub_e9dbfb8b(?) {
    require calldata.size - 4 >= 32
    return sub_e9dbfb8b[arg1]
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function getSlots(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor204[address(arg1)].field_0:
        return stor204[address(arg1)].field_0
    require ext_code.size(0x5deed8b0395a51068b64efb88b154452cbd3cc8c)
    staticcall 0x5deed8b0395a51068b64efb88b154452cbd3cc8c.0x39301427 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[26 len 6]
}

function sub_8b1fd7ff(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 281474976710656
    stor206[stor205[address(msg.sender)][arg1 << 208].field_256] = 0
    stor206[stor205[address(msg.sender)][arg1 << 208].field_512] = 0
    sub_6fb00103[address(msg.sender)][arg1 << 208].field_0 = 0
    sub_6fb00103[address(msg.sender)][arg1 << 208].field_256 = 0
    sub_6fb00103[address(msg.sender)][arg1 << 208].field_512 = 0
    sub_e9dbfb8b[stor205[address(msg.sender)][arg1 << 208].field_256] = 0
    sub_e9dbfb8b[stor205[address(msg.sender)][arg1 << 208].field_512] = 0
}

function sub_3ba19990(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor204[address(arg1)].field_0:
        return stor204[address(arg1)].field_0
    require ext_code.size(0x5deed8b0395a51068b64efb88b154452cbd3cc8c)
    staticcall 0x5deed8b0395a51068b64efb88b154452cbd3cc8c.0x39301427 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor204[address(arg1)].field_0 = ext_call.return_data[26 len 6]
    return ext_call.return_data[26 len 6]
}

function sub_fb85cfe7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require roleAdmin[0][address(msg.sender)].field_0
    if not roleAdmin[0xe1123c69cc12368838cca6d46b7505bec842d9e85a26aff07e23aa57ad59dac6][address(arg1)].field_0:
        roleAdmin[0xe1123c69cc12368838cca6d46b7505bec842d9e85a26aff07e23aa57ad59dac6][address(arg1)].field_0 = 1
        emit RoleGranted(0xe1123c69cc12368838cca6d46b7505bec842d9e85a26aff07e23aa57ad59dac6, address(arg1), msg.sender);
    if not roleMember[0xe1123c69cc12368838cca6d46b7505bec842d9e85a26aff07e23aa57ad59dac6][1][address(arg1)].field_0:
        roleMember[0xe1123c69cc12368838cca6d46b7505bec842d9e85a26aff07e23aa57ad59dac6].field_0++
        roleMember[0xe1123c69cc12368838cca6d46b7505bec842d9e85a26aff07e23aa57ad59dac6][roleMember[0xe1123c69cc12368838cca6d46b7505bec842d9e85a26aff07e23aa57ad59dac6].field_0].field_0 = address(arg1)
        roleMember[0xe1123c69cc12368838cca6d46b7505bec842d9e85a26aff07e23aa57ad59dac6][roleMember[0xe1123c69cc12368838cca6d46b7505bec842d9e85a26aff07e23aa57ad59dac6].field_0].field_160 = 0
        roleMember[0xe1123c69cc12368838cca6d46b7505bec842d9e85a26aff07e23aa57ad59dac6][1][address(arg1)].field_0 = roleMember[0xe1123c69cc12368838cca6d46b7505bec842d9e85a26aff07e23aa57ad59dac6].field_0
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function sub_5a098948(?) {
    require ext_code.size(0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce)
    staticcall 0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 1500 * 10^18
    require ext_code.size(0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce)
    staticcall 0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 1500 * 10^18
    if stor204[msg.sender].field_0 >= 60:
        revert with 0, 'You reach max slots'
    if not stor204[msg.sender].field_0:
        stor204[msg.sender].field_0 = 7
        stor204[msg.sender].field_8 = 0
    else:
        if 1 > -stor204[msg.sender].field_0 + test266151307():
            revert with 0, 17
        stor204[msg.sender].field_0 = stor204[msg.sender].field_0 + 1 % 281474976710656
    require ext_code.size(0xbc89aa98ad94e6798ec822d0814d934ccd0c0ce)
    call 0x0bc89aa98ad94e6798ec822d0814d934ccd0c0ce.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, 1500 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function parseInt(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        if uint8(mem[idx + 128]) >> 248 < 48:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if uint8(mem[idx + 128]) >> 248 > 57:
            if idx >= arg1.length:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s and 10 > -1 / s:
            revert with 0, 17
        if idx >= arg1.length:
            revert with 0, 50
        if uint8(mem[idx + 128]) >> 248 < 48:
            revert with 0, 17
        if 10 * s > !((uint8(mem[idx + 128]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = (10 * s) + (uint8(mem[idx + 128]) >> 248) - 48
        continue 
    return s
}

function slice(bytes arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not arg3:
        return ''
    mem[ceil32(ceil32(arg1.length)) + (arg3 % 32) + (32 * not arg3 % 32) + 97 len ceil32(arg3)] = mem[(arg3 % 32) + (32 * not arg3 % 32) + arg2 + 96 len ceil32(arg3)]
    mem[ceil32(ceil32(arg1.length)) + 97] = arg3
    mem[64] = floor32(ceil32(ceil32(arg1.length)) + (arg3 % 32) + (32 * not arg3 % 32) + ceil32(arg3) + 128)
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg3 % 32) + (32 * not arg3 % 32) + ceil32(arg3) + 128)] = 32
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg3 % 32) + (32 * not arg3 % 32) + ceil32(arg3) + 128) + 32] = arg3
    mem[floor32(ceil32(ceil32(arg1.length)) + (arg3 % 32) + (32 * not arg3 % 32) + ceil32(arg3) + 128) + 64 len ceil32(arg3)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(arg3)]
    if ceil32(arg3) > arg3:
        mem[floor32(ceil32(ceil32(arg1.length)) + (arg3 % 32) + (32 * not arg3 % 32) + ceil32(arg3) + 128) + arg3 + 64] = 0
    return Array(len=arg3, data=mem[floor32(ceil32(ceil32(arg1.length)) + (arg3 % 32) + (32 * not arg3 % 32) + ceil32(arg3) + 128) + 64 len ceil32(arg3)]), 
}

function sub_d778e944(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1 % 281474976710656
    require msg.value >= 125 * 10^13
    if sub_6fb00103[msg.sender][arg1 << 208].field_0:
        revert with 0, '0x1'
    if stor204[address(msg.sender)].field_0:
        if stor204[address(msg.sender)].field_0 <= arg1 % 281474976710656:
            revert with 0, '0x3'
    else:
        require ext_code.size(0x5deed8b0395a51068b64efb88b154452cbd3cc8c)
        staticcall 0x5deed8b0395a51068b64efb88b154452cbd3cc8c.0x39301427 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor204[address(msg.sender)].field_0 = ext_call.return_data[26 len 6]
        if ext_call.return_data[26 len 6] <= arg1 % 281474976710656:
            revert with 0, '0x3'
    require not stor206[arg2]
    require not stor206[arg3]
    call 0xb8ce421729232ecd5dfc7bd0adfe1f4dad9d9cce with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'FSN'
    require ext_code.size(0x95f6ae731d5f6485c62d899538dae40a00da5972)
    staticcall 0x95f6ae731d5f6485c62d899538dae40a00da5972.0x9230dc95 with:
            gas gas_remaining wei
           args arg2, arg3, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_6fb00103[msg.sender][arg1 << 208].field_0 = block.timestamp % 281474976710656
    sub_6fb00103[msg.sender][arg1 << 208].field_256 = arg2
    sub_6fb00103[msg.sender][arg1 << 208].field_512 = arg3
    stor206[arg2] = 1
    stor206[arg3] = 1
}

function sub_df55bd92(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length < 12:
        revert with 0, 17
    mem[ceil32(ceil32(arg1.length)) + 99] = mem[arg1.length + 86]
    idx = 0
    s = 0
    while idx < 2:
        if idx >= 2:
            revert with 0, 50
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + ceil32(ceil32(arg1.length)) + 129]) >> 248 < 48:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if uint8(mem[idx + ceil32(ceil32(arg1.length)) + 129]) >> 248 > 57:
            if idx >= 2:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s and 10 > -1 / s:
            revert with 0, 17
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + ceil32(ceil32(arg1.length)) + 129]) >> 248 < 48:
            revert with 0, 17
        if 10 * s > !((uint8(mem[idx + ceil32(ceil32(arg1.length)) + 129]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = (10 * s) + (uint8(mem[idx + ceil32(ceil32(arg1.length)) + 129]) >> 248) - 48
        continue 
    return s
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function sub_69c424ed(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor204[address(arg1)].field_0:
        idx = 0
        while idx % 281474976710656 < stor204[address(arg1)].field_0:
            mem[0] = idx % 281474976710656
            mem[32] = sha3(address(arg1), 205)
            if arg2 == sub_6fb00103[address(arg1)][idx << 208].field_256:
                if sub_6fb00103[address(arg1)][idx << 208].field_0:
                    return (idx % 281474976710656)
            else:
                if arg2 == sub_6fb00103[address(arg1)][idx << 208].field_512:
                    mem[0] = idx % 281474976710656
                    mem[32] = sha3(address(arg1), 205)
                    if sub_6fb00103[address(arg1)][idx << 208].field_0:
                        return (idx % 281474976710656)
            if idx % 281474976710656 == test266151307():
                revert with 0, 17
            idx = (idx % 281474976710656) + 1
            continue 
    else:
        require ext_code.size(0x5deed8b0395a51068b64efb88b154452cbd3cc8c)
        staticcall 0x5deed8b0395a51068b64efb88b154452cbd3cc8c.0x39301427 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx % 281474976710656 < ext_call.return_data[26 len 6]:
            mem[0] = idx % 281474976710656
            mem[32] = sha3(address(arg1), 205)
            if arg2 == sub_6fb00103[address(arg1)][idx << 208].field_256:
                if sub_6fb00103[address(arg1)][idx << 208].field_0:
                    return (idx % 281474976710656)
            else:
                if arg2 == sub_6fb00103[address(arg1)][idx << 208].field_512:
                    mem[0] = idx % 281474976710656
                    mem[32] = sha3(address(arg1), 205)
                    if sub_6fb00103[address(arg1)][idx << 208].field_0:
                        return (idx % 281474976710656)
            if idx % 281474976710656 == test266151307():
                revert with 0, 17
            idx = (idx % 281474976710656) + 1
            continue 
    return 99999999
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function initData() {
    stor202.length++
    stor202[stor202.length].field_0 = 0
    stor202[stor202.length].field_256 = 4993
    stor202[stor202.length].field_512 = 1
    stor202[stor202.length].field_520 = 0
    stor202[stor202.length].field_512 = 1
    stor202[stor202.length].field_520 = 0
    stor202[stor202.length].field_768 = 0
    stor202.length++
    storFE42[stor202.length] = 4994
    storBA42[stor202.length] = 8139
    storE242[stor202.length].field_0 = 2
    storE242[stor202.length].field_0 = 2
    storE242[stor202.length].field_48 = 1
    stor202.length++
    storFE42[stor202.length] = 8140
    storBA42[stor202.length] = 9611
    storE242[stor202.length].field_0 = 3
    storE242[stor202.length].field_0 = 3
    storE242[stor202.length].field_48 = 2
    stor202.length++
    storFE42[stor202.length] = 9612
    storBA42[stor202.length] = 9953
    storE242[stor202.length].field_0 = 4
    storE242[stor202.length].field_0 = 4
    storE242[stor202.length].field_48 = 3
    stor202.length++
    storFE42[stor202.length] = 9954
    storBA42[stor202.length] = 9984
    storE242[stor202.length].field_0 = 5
    storE242[stor202.length].field_0 = 5
    storE242[stor202.length].field_48 = 4
    stor202.length++
    storFE42[stor202.length] = 9985
    storBA42[stor202.length] = 9999
    storE242[stor202.length].field_0 = 6
    storE242[stor202.length].field_0 = 6
    storE242[stor202.length].field_48 = 5
    stor203.length++
    stor203[stor203.length].field_0 = 0
    stor203[stor203.length].field_256 = 49
    if stor203[stor203.length].field_512:
        if stor203[stor203.length].field_512 == uint255(stor203[stor203.length].field_512) * 0.5 < 32:
            revert with 0, 34
        stor203[stor203.length].field_512 = 0
        stor203[stor203.length].field_513 = 9
        stor203[stor203.length].field_520 = 0x43484152414354455200000000000000000000000000000000000000000000
        idx = 0
        while (uint255(stor203[stor203.length].field_512) * 0.5) + 31 / 32 > idx:
            stor[idx + sha3((4 * stor203.length) + ('name', 'stor203', 203) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor203[stor203.length].field_512 == stor203[stor203.length].field_513 < 32:
            revert with 0, 34
        stor203[stor203.length].field_512 = 0
        stor203[stor203.length].field_513 = 9
        stor203[stor203.length].field_520 = 0x43484152414354455200000000000000000000000000000000000000000000
        idx = 0
        while stor203[stor203.length].field_513 + 31 / 32 > idx:
            stor[idx + sha3((4 * stor203.length) + ('name', 'stor203', 203) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    stor203[stor203.length].field_768 = 0
    stor203[stor203.length].field_1024 = 0
    stor203.length++
    stor203[stor203.length].field_0 = 50
    stor203[stor203.length].field_256 = 99
    if stor203[stor203.length].field_512:
        if stor203[stor203.length].field_512 == uint255(stor203[stor203.length].field_512) * 0.5 < 32:
            revert with 0, 34
        stor203[stor203.length].field_512 = 0
        stor203[stor203.length].field_513 = 6
        stor203[stor203.length].field_520 = 0x574541504f4e00000000000000000000000000000000000000000000000000
        idx = 0
        while (uint255(stor203[stor203.length].field_512) * 0.5) + 31 / 32 > idx:
            stor[idx + sha3((4 * stor203.length) + ('name', 'stor203', 203) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor203[stor203.length].field_512 == stor203[stor203.length].field_513 < 32:
            revert with 0, 34
        stor203[stor203.length].field_512 = 0
        stor203[stor203.length].field_513 = 6
        stor203[stor203.length].field_520 = 0x574541504f4e00000000000000000000000000000000000000000000000000
        idx = 0
        while stor203[stor203.length].field_513 + 31 / 32 > idx:
            stor[idx + sha3((4 * stor203.length) + ('name', 'stor203', 203) + 2)].field_0 = 0
            idx = idx + 1
            continue 
    stor203[stor203.length].field_768 = 1
}

function sub_61331002(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    if arg1.length < 12:
        revert with 0, 'Gen length is not correctly'
    if arg1.length < 2:
        revert with 0, 17
    mem[64] = floor32(ceil32(ceil32(arg1.length)) + 322)
    if arg1.length < 4:
        revert with 0, 17
    mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 2] = mem[arg1.length + 94 len ceil32(ceil32(arg1.length)) + -arg1.length + 3], 96, 96, 96, 96, 96, 2, Mask(16, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, mem[ceil32(ceil32(arg1.length)) + 291 len arg1.length + -ceil32(ceil32(arg1.length)) - 165]
    mem[64] = floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65)
    if arg1.length < 8:
        revert with 0, 17
    mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 4] = mem[arg1.length + 92 len ceil32(ceil32(arg1.length)) + -arg1.length + 5], 96, 96, 96, 96, 96, 2, Mask(16, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, mem[ceil32(ceil32(arg1.length)) + 291 len floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291], 2, mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 32 len arg1.length + -floor32(ceil32(ceil32(arg1.length)) + 322) + 92]
    mem[64] = floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67)
    if arg1.length < 12:
        revert with 0, 17
    mem[floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 2] = mem[arg1.length + 86 len ceil32(ceil32(arg1.length)) + -arg1.length + 11], 96, 96, 96, 96, 96, 2, Mask(16, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, mem[ceil32(ceil32(arg1.length)) + 291 len floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291], 2, mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 32 len floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + -floor32(ceil32(ceil32(arg1.length)) + 322) - 32], 4, mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32 len arg1.length + -floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 86]
    mem[64] = floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65)
    if arg1.length < 14:
        revert with 0, 17
    return 32, 160, 
           224,
           288,
           352,
           416,
           2,
           Mask(-(8 * ceil32(ceil32(arg1.length)) + -floor32(ceil32(ceil32(arg1.length)) + 322) + 321) + -(8 * floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291) + 256, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> -(8 * ceil32(ceil32(arg1.length)) + -floor32(ceil32(ceil32(arg1.length)) + 322) + 321) + -(8 * floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291) + -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 496,
           0,
           2,
           mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 32 len 2],
           0,
           4,
           mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32 len 4],
           0,
           2,
           Mask(16, -8 * arg1.length + -floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 84, mem[arg1.length + 84 len ceil32(ceil32(arg1.length)) + -arg1.length + 13], 96, 96, 96, 96, 96, 2, Mask(16, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 96) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, mem[ceil32(ceil32(arg1.length)) + 291 len floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291], 2, mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 32 len floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + -floor32(ceil32(ceil32(arg1.length)) + 322) - 32], 4, mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32 len floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + -floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) - 32], 2) >> -8 * arg1.length + -floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 84,
           0,
           2,
           mem[floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 32 len 2],
           0
}

function sub_3032e334(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require roleAdmin[0xe1123c69cc12368838cca6d46b7505bec842d9e85a26aff07e23aa57ad59dac6][address(msg.sender)].field_0
    if stor204[address(arg1)].field_0:
        idx = 0
        while idx % 281474976710656 < stor204[address(arg1)].field_0:
            mem[0] = idx % 281474976710656
            mem[32] = sha3(address(arg1), 205)
            if arg2 != sub_6fb00103[address(arg1)][idx << 208].field_256:
                if arg2 != sub_6fb00103[address(arg1)][idx << 208].field_512:
                    if idx % 281474976710656 == test266151307():
                        revert with 0, 17
                    idx = (idx % 281474976710656) + 1
                    continue 
            if not sub_6fb00103[address(arg1)][idx << 208].field_0:
                if idx % 281474976710656 == test266151307():
                    revert with 0, 17
                idx = (idx % 281474976710656) + 1
                continue 
            if idx % 281474976710656 != 99999999:
                if stor204[address(arg1)].field_0:
                    idx = 0
                    while idx % 281474976710656 < stor204[address(arg1)].field_0:
                        mem[0] = idx % 281474976710656
                        mem[32] = sha3(address(arg1), 205)
                        if arg2 != sub_6fb00103[address(arg1)][idx << 208].field_256:
                            if arg2 != sub_6fb00103[address(arg1)][idx << 208].field_512:
                                if idx % 281474976710656 == test266151307():
                                    revert with 0, 17
                                idx = (idx % 281474976710656) + 1
                                continue 
                        if not sub_6fb00103[address(arg1)][idx << 208].field_0:
                            if idx % 281474976710656 == test266151307():
                                revert with 0, 17
                            idx = (idx % 281474976710656) + 1
                            continue 
                        stor206[stor205[address(arg1)][idx << 208].field_256] = 0
                        stor206[stor205[address(arg1)][idx << 208].field_512] = 0
                        sub_6fb00103[address(arg1)][idx << 208].field_0 = 0
                        sub_6fb00103[address(arg1)][idx << 208].field_256 = 0
                        sub_6fb00103[address(arg1)][idx << 208].field_512 = 0
                        sub_e9dbfb8b[stor205[address(arg1)][idx << 208].field_256] = 0
                        sub_e9dbfb8b[stor205[address(arg1)][idx << 208].field_512] = 0
                else:
                    require ext_code.size(0x5deed8b0395a51068b64efb88b154452cbd3cc8c)
                    staticcall 0x5deed8b0395a51068b64efb88b154452cbd3cc8c.0x39301427 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx % 281474976710656 < ext_call.return_data[26 len 6]:
                        mem[0] = idx % 281474976710656
                        mem[32] = sha3(address(arg1), 205)
                        if arg2 != sub_6fb00103[address(arg1)][idx << 208].field_256:
                            if arg2 != sub_6fb00103[address(arg1)][idx << 208].field_512:
                                if idx % 281474976710656 == test266151307():
                                    revert with 0, 17
                                idx = (idx % 281474976710656) + 1
                                continue 
                        if not sub_6fb00103[address(arg1)][idx << 208].field_0:
                            if idx % 281474976710656 == test266151307():
                                revert with 0, 17
                            idx = (idx % 281474976710656) + 1
                            continue 
                        stor206[stor205[address(arg1)][idx << 208].field_256] = 0
                        stor206[stor205[address(arg1)][idx << 208].field_512] = 0
                        sub_6fb00103[address(arg1)][idx << 208].field_0 = 0
                        sub_6fb00103[address(arg1)][idx << 208].field_256 = 0
                        sub_6fb00103[address(arg1)][idx << 208].field_512 = 0
                        sub_e9dbfb8b[stor205[address(arg1)][idx << 208].field_256] = 0
                        sub_e9dbfb8b[stor205[address(arg1)][idx << 208].field_512] = 0
                stor206[stor205[address(arg1)][99999999].field_256] = 0
                stor206[stor205[address(arg1)][99999999].field_512] = 0
                sub_6fb00103[address(arg1)][99999999].field_0 = 0
                sub_6fb00103[address(arg1)][99999999].field_256 = 0
                sub_6fb00103[address(arg1)][99999999].field_512 = 0
                sub_e9dbfb8b[stor205[address(arg1)][99999999].field_256] = 0
                sub_e9dbfb8b[stor205[address(arg1)][99999999].field_512] = 0
    else:
        require ext_code.size(0x5deed8b0395a51068b64efb88b154452cbd3cc8c)
        staticcall 0x5deed8b0395a51068b64efb88b154452cbd3cc8c.0x39301427 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx % 281474976710656 < ext_call.return_data[26 len 6]:
            mem[0] = idx % 281474976710656
            mem[32] = sha3(address(arg1), 205)
            if arg2 != sub_6fb00103[address(arg1)][idx << 208].field_256:
                if arg2 != sub_6fb00103[address(arg1)][idx << 208].field_512:
                    if idx % 281474976710656 == test266151307():
                        revert with 0, 17
                    idx = (idx % 281474976710656) + 1
                    continue 
            if not sub_6fb00103[address(arg1)][idx << 208].field_0:
                if idx % 281474976710656 == test266151307():
                    revert with 0, 17
                idx = (idx % 281474976710656) + 1
                continue 
            if idx % 281474976710656 != 99999999:
                if stor204[address(arg1)].field_0:
                    idx = 0
                    while idx % 281474976710656 < stor204[address(arg1)].field_0:
                        mem[0] = idx % 281474976710656
                        mem[32] = sha3(address(arg1), 205)
                        if arg2 != sub_6fb00103[address(arg1)][idx << 208].field_256:
                            if arg2 != sub_6fb00103[address(arg1)][idx << 208].field_512:
                                if idx % 281474976710656 == test266151307():
                                    revert with 0, 17
                                idx = (idx % 281474976710656) + 1
                                continue 
                        if not sub_6fb00103[address(arg1)][idx << 208].field_0:
                            if idx % 281474976710656 == test266151307():
                                revert with 0, 17
                            idx = (idx % 281474976710656) + 1
                            continue 
                        stor206[stor205[address(arg1)][idx << 208].field_256] = 0
                        stor206[stor205[address(arg1)][idx << 208].field_512] = 0
                        sub_6fb00103[address(arg1)][idx << 208].field_0 = 0
                        sub_6fb00103[address(arg1)][idx << 208].field_256 = 0
                        sub_6fb00103[address(arg1)][idx << 208].field_512 = 0
                        sub_e9dbfb8b[stor205[address(arg1)][idx << 208].field_256] = 0
                        sub_e9dbfb8b[stor205[address(arg1)][idx << 208].field_512] = 0
                else:
                    require ext_code.size(0x5deed8b0395a51068b64efb88b154452cbd3cc8c)
                    staticcall 0x5deed8b0395a51068b64efb88b154452cbd3cc8c.0x39301427 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    while idx % 281474976710656 < ext_call.return_data[26 len 6]:
                        mem[0] = idx % 281474976710656
                        mem[32] = sha3(address(arg1), 205)
                        if arg2 != sub_6fb00103[address(arg1)][idx << 208].field_256:
                            if arg2 != sub_6fb00103[address(arg1)][idx << 208].field_512:
                                if idx % 281474976710656 == test266151307():
                                    revert with 0, 17
                                idx = (idx % 281474976710656) + 1
                                continue 
                        if not sub_6fb00103[address(arg1)][idx << 208].field_0:
                            if idx % 281474976710656 == test266151307():
                                revert with 0, 17
                            idx = (idx % 281474976710656) + 1
                            continue 
                        stor206[stor205[address(arg1)][idx << 208].field_256] = 0
                        stor206[stor205[address(arg1)][idx << 208].field_512] = 0
                        sub_6fb00103[address(arg1)][idx << 208].field_0 = 0
                        sub_6fb00103[address(arg1)][idx << 208].field_256 = 0
                        sub_6fb00103[address(arg1)][idx << 208].field_512 = 0
                        sub_e9dbfb8b[stor205[address(arg1)][idx << 208].field_256] = 0
                        sub_e9dbfb8b[stor205[address(arg1)][idx << 208].field_512] = 0
                stor206[stor205[address(arg1)][99999999].field_256] = 0
                stor206[stor205[address(arg1)][99999999].field_512] = 0
                sub_6fb00103[address(arg1)][99999999].field_0 = 0
                sub_6fb00103[address(arg1)][99999999].field_256 = 0
                sub_6fb00103[address(arg1)][99999999].field_512 = 0
                sub_e9dbfb8b[stor205[address(arg1)][99999999].field_256] = 0
                sub_e9dbfb8b[stor205[address(arg1)][99999999].field_512] = 0
}

function sub_3fe03bea(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    if arg1.length < 12:
        revert with 0, 'Gen length is not correctly'
    if arg1.length < 2:
        revert with 0, 17
    mem[ceil32(ceil32(arg1.length)) + 259] = mem[arg1.length + 96 len ceil32(ceil32(arg1.length)) + -arg1.length + 1], Mask(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31, -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256, 0) >> -(8 * arg1.length + -ceil32(ceil32(arg1.length)) + 31) + 256
    mem[64] = floor32(ceil32(ceil32(arg1.length)) + 322)
    if arg1.length < 4:
        revert with 0, 17
    mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 2] = mem[arg1.length + 94 len ceil32(ceil32(arg1.length)) + -arg1.length + 3], 0, 0, 0, 0, 0, 2, 0, mem[ceil32(ceil32(arg1.length)) + 291 len arg1.length + -ceil32(ceil32(arg1.length)) - 165]
    mem[floor32(ceil32(ceil32(arg1.length)) + 322)] = 2
    mem[64] = floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65)
    if arg1.length < 8:
        revert with 0, 17
    mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 4] = mem[arg1.length + 92 len ceil32(ceil32(arg1.length)) + -arg1.length + 5], 0, 0, 0, 0, 0, 2, 0, mem[ceil32(ceil32(arg1.length)) + 291 len floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291], 2, mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 32 len arg1.length + -floor32(ceil32(ceil32(arg1.length)) + 322) + 92]
    mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65)] = 4
    mem[64] = floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67)
    if arg1.length < 12:
        revert with 0, 17
    mem[floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 2] = mem[arg1.length + 86 len ceil32(ceil32(arg1.length)) + -arg1.length + 11], 0, 0, 0, 0, 0, 2, 0, mem[ceil32(ceil32(arg1.length)) + 291 len floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291], 2, mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 32 len floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + -floor32(ceil32(ceil32(arg1.length)) + 322) - 32], 4, mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32 len arg1.length + -floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 86]
    mem[floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67)] = 2
    mem[64] = floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65)
    if arg1.length < 14:
        revert with 0, 17
    mem[floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 2] = mem[arg1.length + 84 len ceil32(ceil32(arg1.length)) + -arg1.length + 13], 0, 0, 0, 0, 0, 2, 0, mem[ceil32(ceil32(arg1.length)) + 291 len floor32(ceil32(ceil32(arg1.length)) + 322) + -ceil32(ceil32(arg1.length)) - 291], 2, mem[floor32(ceil32(ceil32(arg1.length)) + 322) + 32 len floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + -floor32(ceil32(ceil32(arg1.length)) + 322) - 32], 4, mem[floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32 len floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + -floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) - 32], 2, mem[floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 32 len arg1.length + -floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 84]
    mem[floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65)] = 2
    idx = 0
    s = 0
    while idx < 2:
        if idx >= 2:
            revert with 0, 50
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + ceil32(ceil32(arg1.length)) + 289]) >> 248 < 48:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if uint8(mem[idx + ceil32(ceil32(arg1.length)) + 289]) >> 248 > 57:
            if idx >= 2:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s and 10 > -1 / s:
            revert with 0, 17
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + ceil32(ceil32(arg1.length)) + 289]) >> 248 < 48:
            revert with 0, 17
        if 10 * s > !((uint8(mem[idx + ceil32(ceil32(arg1.length)) + 289]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = (10 * s) + (uint8(mem[idx + ceil32(ceil32(arg1.length)) + 289]) >> 248) - 48
        continue 
    mem[floor32(floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 65)] = s
    idx = 0
    t = 0
    while idx < 2:
        if idx >= 2:
            revert with 0, 50
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + floor32(ceil32(ceil32(arg1.length)) + 322) + 32]) >> 248 < 48:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if uint8(mem[idx + floor32(ceil32(ceil32(arg1.length)) + 322) + 32]) >> 248 > 57:
            if idx >= 2:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if t and 10 > -1 / t:
            revert with 0, 17
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + floor32(ceil32(ceil32(arg1.length)) + 322) + 32]) >> 248 < 48:
            revert with 0, 17
        if 10 * t > !((uint8(mem[idx + floor32(ceil32(ceil32(arg1.length)) + 322) + 32]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = (10 * t) + (uint8(mem[idx + floor32(ceil32(ceil32(arg1.length)) + 322) + 32]) >> 248) - 48
        continue 
    mem[floor32(floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 65) + 32] = t
    idx = 0
    u = 0
    while idx < 4:
        if idx >= 4:
            revert with 0, 50
        if idx >= 4:
            revert with 0, 50
        if uint8(mem[idx + floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32]) >> 248 < 48:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = u
            continue 
        if uint8(mem[idx + floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32]) >> 248 > 57:
            if idx >= 4:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = u
            continue 
        if u and 10 > -1 / u:
            revert with 0, 17
        if idx >= 4:
            revert with 0, 50
        if uint8(mem[idx + floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32]) >> 248 < 48:
            revert with 0, 17
        if 10 * u > !((uint8(mem[idx + floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = (10 * u) + (uint8(mem[idx + floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 32]) >> 248) - 48
        continue 
    mem[floor32(floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 65) + 64] = u
    idx = 0
    v = 0
    while idx < 2:
        if idx >= 2:
            revert with 0, 50
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 32]) >> 248 < 48:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            v = v
            continue 
        if uint8(mem[idx + floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 32]) >> 248 > 57:
            if idx >= 2:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            v = v
            continue 
        if v and 10 > -1 / v:
            revert with 0, 17
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 32]) >> 248 < 48:
            revert with 0, 17
        if 10 * v > !((uint8(mem[idx + floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 32]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        v = (10 * v) + (uint8(mem[idx + floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 32]) >> 248) - 48
        continue 
    mem[floor32(floor32(floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 65) + 65) + 96] = v
    idx = 0
    w = 0
    while idx < 2:
        if idx >= 2:
            revert with 0, 50
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 32]) >> 248 < 48:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            w = w
            continue 
        if uint8(mem[idx + floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 32]) >> 248 > 57:
            if idx >= 2:
                revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            w = w
            continue 
        if w and 10 > -1 / w:
            revert with 0, 17
        if idx >= 2:
            revert with 0, 50
        if uint8(mem[idx + floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 32]) >> 248 < 48:
            revert with 0, 17
        if 10 * w > !((uint8(mem[idx + floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 32]) >> 248) - 48):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        w = (10 * w) + (uint8(mem[idx + floor32(floor32(floor32(ceil32(ceil32(arg1.length)) + 322) + 65) + 67) + 32]) >> 248) - 48
        continue 
    return s, t, u, v, w
}



}
