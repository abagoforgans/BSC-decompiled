contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
address stor2;
address stor3;
array of address stor4;
mapping of uint256 sub_15f1dcf9;
uint256 totalSent;

function sub_15f1dcf9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_15f1dcf9[arg1]
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function totalSent() {
    return totalSent
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function destroySmartContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[address(msg.sender)].field_0:
        selfdestruct(arg1)
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
    else:
        if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == Mask(32, 224, cd[4])
            if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                return True
            return (Mask(32, 224, cd[4]) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
        if unknown_0x15f1dcf9(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            return sub_15f1dcf9[cd[4]]
        if unknown_0x248a9ca3(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            return roleAdmin[cd[4]].field_256
        if unknown_0x2f2ff15d(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[36] == address(cd[36])
            if roleAdmin[roleAdmin[cd[4]].field_256][address(msg.sender)].field_0:
                if not roleAdmin[cd[4]][address(cd[36])].field_0:
                    roleAdmin[cd[4]][address(cd[36])].field_0 = 1
                    emit RoleGranted(cd[4], address(cd[36]), msg.sender);
            mem[160 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[256 len 66] = call.data[calldata.size len 66]
            idx = 65
            s = roleAdmin[cd[4]].field_256
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if roleAdmin[cd[4]].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
        if unknown_0x36568abe(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[36] == address(cd[36])
            if address(cd[36]) != msg.sender:
                revert with 0, 'AccessControl: can only renounce roles for self'
            if roleAdmin[cd[4]][address(cd[36])].field_0:
                roleAdmin[cd[4]][address(cd[36])].field_0 = 0
                emit RoleRevoked(cd[4], address(cd[36]), msg.sender);
        else:
            if unknown_0x39df43ff(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if roleAdmin[address(msg.sender)].field_0:
                    selfdestruct(address(cd[4]))
                mem[160 len 42] = call.data[calldata.size len 42]
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if msg.sender + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[256 len 66] = call.data[calldata.size len 66]
                idx = 65
                while idx > 1:
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
            if unknown_0x46f99063(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalSent
            if unknown_0x539c868e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                mem[0] = msg.sender
                mem[32] = sha3(0)
                if roleAdmin[address(msg.sender)].field_0:
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        if roleAdmin[uint256(roleAdmin.field_256)][address(msg.sender)].field_0:
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = sha3(0)
                            if not roleAdmin[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = sha3(0)
                                roleAdmin[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = 1
                                emit RoleGranted(0, address(cd[((32 * idx) + cd[4] + 36)]), msg.sender);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[160 len 42] = call.data[calldata.size len 42]
                        mem[160 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                        mem[161 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                        idx = 41
                        s = address(msg.sender)
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 42:
                                revert with 0, 50
                            mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        if msg.sender + 10240:
                            revert with 0, 'Strings: hex length insufficient'
                        mem[224] = 66
                        mem[256 len 66] = call.data[calldata.size len 66]
                        mem[256 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                        mem[257 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                        idx = 65
                        s = uint256(roleAdmin.field_256)
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 66:
                                revert with 0, 50
                            mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        if uint256(roleAdmin.field_256) + 16384:
                            revert with 0, 'Strings: hex length insufficient'
                        mem[384] = 0x416363657373436f6e74726f6c3a206163636f756e7420000000000000000000
                        idx = 0
                        while idx < 42:
                            mem[idx + 407] = mem[idx + 160]
                            idx = idx + 32
                            continue 
                        mem[449] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                        idx = 0
                        while idx < 66:
                            mem[idx + 466] = mem[idx + 256]
                            idx = idx + 32
                            continue 
                        mem[532] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[536] = 32
                        mem[568] = 148
                        idx = 0
                        while idx < 148:
                            mem[idx + 600] = mem[idx + 384]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 148, mem[600 len 148], 0
                mem[160 len 42] = call.data[calldata.size len 42]
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if msg.sender + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[256 len 66] = call.data[calldata.size len 66]
                idx = 65
                while idx > 1:
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
            if unknown_0x5f5fc34d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ('cd', 4).length:
                    mem[160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = sub_15f1dcf9[address(cd[((32 * idx) + cd[4] + 36)])]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                return Array(len=('cd', 4).length, data=mem[160 len 32 * ('cd', 4).length])
            if uint32(call.func_hash) >> 224 != unknown_0x85e3c463(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x91c05b0b(?????):
                    if unknown_0x91d14854(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == address(cd[36])
                        return bool(roleAdmin[cd[4]][address(cd[36])].field_0)
                    if unknown_0xa217fddf(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 0
                    if unknown_0xd03bfaa2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        require ('cd', 4).length <= test266151307()
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        if roleAdmin[address(msg.sender)].field_0:
                            stor4.length = ('cd', 4).length
                            if not ('cd', 4).length:
                                idx = 0
                                while stor4.length > idx:
                                    uint256(stor4[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = cd[4] + 36
                                while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
                                    address(stor4[s]) = address(cd[idx])
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                                while stor4.length > idx:
                                    uint256(stor4[idx]) = 0
                                    idx = idx + 1
                                    continue 
                        mem[160 len 42] = call.data[calldata.size len 42]
                        idx = 41
                        s = address(msg.sender)
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 42:
                                revert with 0, 50
                            mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        if msg.sender + 10240:
                            revert with 0, 'Strings: hex length insufficient'
                        mem[256 len 66] = call.data[calldata.size len 66]
                        idx = 65
                        while idx > 1:
                            if idx >= 66:
                                revert with 0, 50
                            mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            continue 
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xd44f44d0(?????):
                            require unknown_0xd547741f(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[36] == address(cd[36])
                            if roleAdmin[roleAdmin[cd[4]].field_256][address(msg.sender)].field_0:
                                if roleAdmin[cd[4]][address(cd[36])].field_0:
                                    roleAdmin[cd[4]][address(cd[36])].field_0 = 0
                                    emit RoleRevoked(cd[4], address(cd[36]), msg.sender);
                            mem[160 len 42] = call.data[calldata.size len 42]
                            idx = 41
                            s = address(msg.sender)
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= 42:
                                    revert with 0, 50
                                mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                            if msg.sender + 10240:
                                revert with 0, 'Strings: hex length insufficient'
                            mem[256 len 66] = call.data[calldata.size len 66]
                            idx = 65
                            s = roleAdmin[cd[4]].field_256
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= 66:
                                    revert with 0, 50
                                mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                            if roleAdmin[cd[4]].field_256 + 16384:
                                revert with 0, 'Strings: hex length insufficient'
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            require ('cd', 4).length <= test266151307()
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            require cd[36] <= test266151307()
                            require cd[36] + 35 < calldata.size
                            require ('cd', 36).length <= test266151307()
                            require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                            if roleAdmin[address(msg.sender)].field_0:
                                if ('cd', 36).length != ('cd', 4).length:
                                    revert with 0, 'WL'
                                idx = 0
                                s = 0
                                while idx < ('cd', 4).length:
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    if cd[((32 * idx) + cd[36] + 36)] <= 0:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    if idx >= ('cd', 4).length:
                                        revert with 0, 50
                                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 5
                                    sub_15f1dcf9[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
                                    if idx >= ('cd', 36).length:
                                        revert with 0, 50
                                    if s > !cd[((32 * idx) + cd[36] + 36)]:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s + cd[((32 * idx) + cd[36] + 36)]
                                    continue 
                                if s:
                                    totalSent = s
                            mem[160 len 42] = call.data[calldata.size len 42]
                            idx = 41
                            s = address(msg.sender)
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= 42:
                                    revert with 0, 50
                                mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                            if msg.sender + 10240:
                                revert with 0, 'Strings: hex length insufficient'
                            mem[256 len 66] = call.data[calldata.size len 66]
                            idx = 65
                            while idx > 1:
                                if idx >= 66:
                                    revert with 0, 50
                                mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                continue 
                    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                require calldata.size - 4 >= 32
                if not roleAdmin[address(msg.sender)].field_0:
                    mem[160 len 42] = call.data[calldata.size len 42]
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 42:
                            revert with 0, 50
                        mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if msg.sender + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    mem[256 len 66] = call.data[calldata.size len 66]
                    idx = 65
                    while idx > 1:
                        if idx >= 66:
                            revert with 0, 50
                        mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        continue 
                    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                if stor4.length > test266151307():
                    revert with 0, 65
                if stor4.length:
                    mem[160 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
                idx = 0
                s = 0
                while idx < stor4.length:
                    mem[0] = 4
                    if cd[4] <= eth.balance(address(stor4[idx])):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[0] = 4
                    if cd[4] < eth.balance(address(stor4[idx])):
                        revert with 0, 17
                    if idx >= stor4.length:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = cd[4] - eth.balance(address(stor4[idx]))
                    if idx >= stor4.length:
                        revert with 0, 50
                    if s > !(cd[4] - eth.balance(address(stor4[idx]))):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + cd[4] - eth.balance(address(stor4[idx]))
                    continue 
                if s:
                    mem[(32 * stor4.length) + 164] = stor2
                    mem[(32 * stor4.length) + 196] = this.address
                    mem[(32 * stor4.length) + 228] = s
                    require ext_code.size(stor3)
                    call stor3.0x23b872dd with:
                         gas gas_remaining wei
                        args stor2, address(this.address), s
                    mem[(32 * stor4.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(32 * stor4.length) + ceil32(return_data.size) + 160] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor4.length) + ceil32(return_data.size) + 164] = s
                    require ext_code.size(stor3)
                    call stor3.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < stor4.length:
                        if idx >= stor4.length:
                            revert with 0, 50
                        if mem[(32 * idx) + 160] > 0:
                            if idx >= stor4.length:
                                revert with 0, 50
                            if idx >= stor4.length:
                                revert with 0, 50
                            call address(stor4[idx]) with:
                               value mem[(32 * idx) + 160] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= stor4.length:
                                revert with 0, 50
                            if idx >= stor4.length:
                                revert with 0, 50
                            mem[0] = address(stor4[idx])
                            mem[32] = 5
                            if sub_15f1dcf9[address(stor4[idx])] > !mem[(32 * idx) + 160]:
                                revert with 0, 17
                            sub_15f1dcf9[address(stor4[idx])] += mem[(32 * idx) + 160]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if totalSent > !s:
                        revert with 0, 17
                    totalSent += s
            else:
                require calldata.size - 4 >= 64
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                if not roleAdmin[address(msg.sender)].field_0:
                    mem[160 len 42] = call.data[calldata.size len 42]
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 42:
                            revert with 0, 50
                        mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if msg.sender + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    mem[256 len 66] = call.data[calldata.size len 66]
                    idx = 65
                    while idx > 1:
                        if idx >= 66:
                            revert with 0, 50
                        mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        continue 
                    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ('cd', 36).length:
                    mem[160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                s = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if cd[4] <= eth.balance(cd[((32 * idx) + cd[36] + 36)]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if cd[4] < eth.balance(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 17
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = cd[4] - eth.balance(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    if s > !(cd[4] - eth.balance(cd[((32 * idx) + cd[36] + 36)])):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + cd[4] - eth.balance(cd[((32 * idx) + cd[36] + 36)])
                    continue 
                if s:
                    mem[(32 * ('cd', 36).length) + 164] = stor2
                    mem[(32 * ('cd', 36).length) + 196] = this.address
                    mem[(32 * ('cd', 36).length) + 228] = s
                    require ext_code.size(stor3)
                    call stor3.0x23b872dd with:
                         gas gas_remaining wei
                        args stor2, address(this.address), s
                    mem[(32 * ('cd', 36).length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 160] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 164] = s
                    require ext_code.size(stor3)
                    call stor3.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = 0
                    while idx < ('cd', 36).length:
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        if mem[(32 * idx) + 160] > 0:
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            call address(cd[((32 * idx) + cd[36] + 36)]) with:
                               value mem[(32 * idx) + 160] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            if idx >= ('cd', 36).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 5
                            if sub_15f1dcf9[address(cd[((32 * idx) + cd[36] + 36)])] > !mem[(32 * idx) + 160]:
                                revert with 0, 17
                            sub_15f1dcf9[address(cd[((32 * idx) + cd[36] + 36)])] += mem[(32 * idx) + 160]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if totalSent > !s:
                        revert with 0, 17
                    totalSent += s
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_5f5fc34d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[(32 * idx) + 128] = sub_15f1dcf9[address(cd[((32 * idx) + cd[4] + 36)])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_d03bfaa2(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if roleAdmin[address(msg.sender)].field_0:
        stor4.length = ('cd', 4).length
        if not ('cd', 4).length:
            idx = 0
            while stor4.length > idx:
                uint256(stor4[idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[4] + 36
            while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
                address(stor4[s]) = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
            while stor4.length > idx:
                uint256(stor4[idx]) = 0
                idx = idx + 1
                continue 
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_d44f44d0(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if roleAdmin[address(msg.sender)].field_0:
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'WL'
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if cd[((32 * idx) + cd[36] + 36)] <= 0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 5
            sub_15f1dcf9[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if s > !cd[((32 * idx) + cd[36] + 36)]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + cd[((32 * idx) + cd[36] + 36)]
            continue 
        if s:
            totalSent = s
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function distribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if stor4.length > test266151307():
        revert with 0, 65
    if stor4.length:
        mem[128 len 32 * stor4.length] = call.data[calldata.size len 32 * stor4.length]
    idx = 0
    s = 0
    while idx < stor4.length:
        mem[0] = 4
        if arg1 <= eth.balance(address(stor4[idx])):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor4.length:
            revert with 0, 50
        mem[0] = 4
        if arg1 < eth.balance(address(stor4[idx])):
            revert with 0, 17
        if idx >= stor4.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = arg1 - eth.balance(address(stor4[idx]))
        if idx >= stor4.length:
            revert with 0, 50
        if s > !(arg1 - eth.balance(address(stor4[idx]))):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + arg1 - eth.balance(address(stor4[idx]))
        continue 
    if s:
        mem[(32 * stor4.length) + 132] = stor2
        mem[(32 * stor4.length) + 164] = this.address
        mem[(32 * stor4.length) + 196] = s
        require ext_code.size(stor3)
        call stor3.0x23b872dd with:
             gas gas_remaining wei
            args stor2, address(this.address), s
        mem[(32 * stor4.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(32 * stor4.length) + ceil32(return_data.size) + 128] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[(32 * stor4.length) + ceil32(return_data.size) + 132] = s
        require ext_code.size(stor3)
        call stor3.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < stor4.length:
            if idx >= stor4.length:
                revert with 0, 50
            if mem[(32 * idx) + 128] > 0:
                if idx >= stor4.length:
                    revert with 0, 50
                if idx >= stor4.length:
                    revert with 0, 50
                call address(stor4[idx]) with:
                   value mem[(32 * idx) + 128] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= stor4.length:
                    revert with 0, 50
                if idx >= stor4.length:
                    revert with 0, 50
                mem[0] = address(stor4[idx])
                mem[32] = 5
                if sub_15f1dcf9[address(stor4[idx])] > !mem[(32 * idx) + 128]:
                    revert with 0, 17
                sub_15f1dcf9[address(stor4[idx])] += mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if totalSent > !s:
            revert with 0, 17
        totalSent += s
}

function sub_85e3c463(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ('cd', 36).length:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if cd[4] <= eth.balance(cd[((32 * idx) + cd[36] + 36)]):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if cd[4] < eth.balance(cd[((32 * idx) + cd[36] + 36)]):
            revert with 0, 17
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[(32 * idx) + 128] = cd[4] - eth.balance(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if s > !(cd[4] - eth.balance(cd[((32 * idx) + cd[36] + 36)])):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + cd[4] - eth.balance(cd[((32 * idx) + cd[36] + 36)])
        continue 
    if s:
        mem[(32 * ('cd', 36).length) + 132] = stor2
        mem[(32 * ('cd', 36).length) + 164] = this.address
        mem[(32 * ('cd', 36).length) + 196] = s
        require ext_code.size(stor3)
        call stor3.0x23b872dd with:
             gas gas_remaining wei
            args stor2, address(this.address), s
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 132] = s
        require ext_code.size(stor3)
        call stor3.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if mem[(32 * idx) + 128] > 0:
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                call address(cd[((32 * idx) + cd[36] + 36)]) with:
                   value mem[(32 * idx) + 128] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 5
                if sub_15f1dcf9[address(cd[((32 * idx) + cd[36] + 36)])] > !mem[(32 * idx) + 128]:
                    revert with 0, 17
                sub_15f1dcf9[address(cd[((32 * idx) + cd[36] + 36)])] += mem[(32 * idx) + 128]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if totalSent > !s:
            revert with 0, 17
        totalSent += s
}

function sub_539c868e(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0)
    if roleAdmin[address(msg.sender)].field_0:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if roleAdmin[uint256(roleAdmin.field_256)][address(msg.sender)].field_0:
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = sha3(0)
                if not roleAdmin[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = sha3(0)
                    roleAdmin[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = 1
                    emit RoleGranted(0, address(cd[((32 * idx) + cd[4] + 36)]), msg.sender);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[128 len 42] = call.data[calldata.size len 42]
            mem[128 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            mem[129 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
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
            mem[192] = 66
            mem[224 len 66] = call.data[calldata.size len 66]
            mem[224 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            mem[225 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            idx = 65
            s = uint256(roleAdmin.field_256)
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
            if uint256(roleAdmin.field_256) + 16384:
                revert with 0, 'Strings: hex length insufficient'
            mem[352] = 0x416363657373436f6e74726f6c3a206163636f756e7420000000000000000000
            idx = 0
            while idx < 42:
                mem[idx + 375] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[417] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
            idx = 0
            while idx < 66:
                mem[idx + 434] = mem[idx + 224]
                idx = idx + 32
                continue 
            mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[504] = 32
            mem[536] = 148
            idx = 0
            while idx < 148:
                mem[idx + 568] = mem[idx + 352]
                idx = idx + 32
                continue 
            revert with 0, 32, 148, mem[568 len 148], 0
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}



}
