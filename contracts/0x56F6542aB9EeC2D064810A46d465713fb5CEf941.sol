contract main {




// =====================  Runtime code  =====================


#
#  - lock(address arg1, uint256 arg2)
#  - sub_d1820482(?)
#
const DEFAULT_ADMIN_ROLE = 0

const LOCKER_ROLE = 0xaf9a8bb3cbd6b84fbccefa71ff73e26e798553c6914585a84886212a46a90279

const CLAIMER_ROLE = 0x11a8cb5a02bd6c42679835e867ef2118ba78f088f8300511420c6603c21d9c78


mapping of struct roleAdmin;
mapping of uint256 allocation;
mapping of uint256 claimed;
array of address recipients;
address tokenAddress;
array of uint256 endsAt;

function endsAt() payable {
    if endsAt.length < 1:
        revert with 'NH{q', 17
    if endsAt.length - 1 >= endsAt.length:
        revert with 'NH{q', 50
    return endsAt[endsAt.length]
}

function sub_22eabb8e(?) payable {
    return recipients.length
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function sub_2c4dc91f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= endsAt.length:
        revert with 'NH{q', 50
    return endsAt[arg1]
}

function sub_6ed17b0b(?) payable {
    if 0 >= endsAt.length:
        revert with 'NH{q', 50
    return endsAt
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function allocation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not allocation[address(arg1)]:
        revert with 0, arg1
    return allocation[address(arg1)]
}

function sub_bed3f4f1(?) payable {
    return endsAt.length
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not allocation[address(arg1)]:
        revert with 0, arg1
    return claimed[address(arg1)]
}

function recipients(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= recipients.length:
        revert with 'NH{q', 50
    return recipients[arg1]
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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
}

function sub_c9037f4e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not endsAt.length:
        revert with 'NH{q', 18
    if var46001 >= endsAt.length:
        return var46003
    if var48002 >= endsAt.length:
        revert with 'NH{q', 50
    if not var52001:
        return var52004
    if var64003 > -(allocation[address(arg1)] / endsAt.length) - 1:
        revert with 'NH{q', 17
    if var74001 == -1:
        revert with 'NH{q', 17
    if var80001 >= endsAt.length:
        return var80003
    if var82002 >= endsAt.length:
        revert with 'NH{q', 50
    # nil
}

function locked() payable {
    idx = 0
    s = 0
    while idx < recipients.length:
        mem[0] = recipients[idx]
        mem[32] = 1
        if allocation[stor3[idx]] < claimed[stor3[idx]]:
            revert with 'NH{q', 17
        if s > -allocation[stor3[idx]] + claimed[stor3[idx]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + allocation[stor3[idx]] - claimed[stor3[idx]]
        continue 
    return (s * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length * recipients.length)
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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

function revoke(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not allocation[address(arg1)]:
        revert with 0, arg1
    if roleAdmin[0xaf9a8bb3cbd6b84fbccefa71ff73e26e798553c6914585a84886212a46a90279][address(msg.sender)].field_0:
        idx = 0
        while idx < recipients.length:
            mem[0] = 3
            if recipients[idx] != arg1:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if recipients.length < 1:
                revert with 'NH{q', 17
            if recipients.length - 1 >= recipients.length:
                revert with 'NH{q', 50
            if idx >= recipients.length:
                revert with 'NH{q', 50
            recipients[idx] = recipients[recipients.length]
            allocation[address(arg1)] = 0
            claimed[address(arg1)] = 0
            if not recipients.length:
                revert with 'NH{q', 49
            recipients[recipients.length] = 0
            recipients.length--
            emit Revoke(arg1);
        revert with 0, arg1
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
    s = 0xaf9a8bb3cbd6b84fbccefa71ff73e26e798553c6914585a84886212a46a90279
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

function claim() payable {
    if not allocation[address(msg.sender)]:
        revert with 0, msg.sender
    mem[100] = msg.sender
    mem[132] = block.timestamp
    staticcall this.address.0xc9037f4e with:
            gas gas_remaining wei
           args msg.sender, block.timestamp
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < claimed[address(msg.sender)]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - claimed[address(msg.sender)] > 0:
        if claimed[address(msg.sender)] > -ext_call.return_data[0] + claimed[address(msg.sender)] - 1:
            revert with 'NH{q', 17
        claimed[address(msg.sender)] = ext_call.return_data[0]
        emit Claim((ext_call.return_data[0] - claimed[address(msg.sender)]), msg.sender);
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - claimed[address(msg.sender)]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - claimed[address(msg.sender)], 0
        mem[ceil32(return_data.size) + 328] = 0
        call tokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - claimed[address(msg.sender)], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - claimed[address(msg.sender)], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), Mask(224, 32, block.timestamp) >> 32 == bool(uint32(msg.sender), Mask(224, 32, block.timestamp) >> 32)
                if not uint32(msg.sender), Mask(224, 32, block.timestamp) >> 32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_9d2fa43c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0x11a8cb5a02bd6c42679835e867ef2118ba78f088f8300511420c6603c21d9c78, 0)
    if roleAdmin[0x11a8cb5a02bd6c42679835e867ef2118ba78f088f8300511420c6603c21d9c78][address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if not allocation[address(cd[((32 * idx) + cd[4] + 36)])]:
                revert with 0, address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 2
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = block.timestamp
            staticcall this.address.0xc9037f4e with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)]), block.timestamp
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _93 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _94 = mem[_93]
            require mem[_93] == mem[_93]
            if mem[_93] < claimed[address(cd[((32 * idx) + cd[4] + 36)])]:
                revert with 'NH{q', 17
            if mem[_93] - claimed[address(cd[((32 * idx) + cd[4] + 36)])] > 0:
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 2
                if claimed[address(cd[((32 * idx) + cd[4] + 36)])] > -_94 + claimed[address(cd[((32 * idx) + cd[4] + 36)])] - 1:
                    revert with 'NH{q', 17
                claimed[address(cd[((32 * idx) + cd[4] + 36)])] = _94
                emit Claim((_94 - claimed[address(cd[((32 * idx) + cd[4] + 36)])]), address(cd[((32 * idx) + cd[4] + 36)]));
                _99 = mem[64]
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 68] = _94 - claimed[address(cd[((32 * idx) + cd[4] + 36)])]
                _100 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_100 + 32] = mem[_100 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[64] = _99 + 164
                mem[_99 + 100] = 32
                mem[_99 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(tokenAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _106 = mem[_100]
                s = 0
                while s < _106:
                    mem[_99 + s + 164] = mem[_100 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_106) > _106:
                    mem[_99 + _106 + 164] = 0
                call tokenAddress.mem[_99 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_99 + 168 len _106 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96] > 0:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_99 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_99 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[_99 + idx + 232] = mem[_99 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_99 + 232]
                    if mem[96] > 0:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _99 + ceil32(return_data.size) + 165
                    mem[_99 + 164] = return_data.size
                    mem[_99 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_99 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_99 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[_99 + ceil32(return_data.size) + idx + 233] = mem[_99 + idx + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_99 + ceil32(return_data.size) + 233]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_99 + 196] == bool(mem[_99 + 196])
                        if not mem[_99 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
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
        s = 0x11a8cb5a02bd6c42679835e867ef2118ba78f088f8300511420c6603c21d9c78
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



}
