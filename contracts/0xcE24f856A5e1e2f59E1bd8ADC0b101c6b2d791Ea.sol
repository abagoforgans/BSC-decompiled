contract main {




// =====================  Runtime code  =====================


const ADMIN_ROLE = 0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec

const DEFAULT_ADMIN_ROLE = 0

const OWNER_ROLE = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9


mapping of struct roleAdmin;
uint8 stor1; offset 160
address owner;
uint256 stor2;
address blacklistAddress;
address settingsAddress;
address ticketTokenAddress;
uint256 sub_7d3ca50a;
uint16 sub_0c572dc5;
uint256 ticketPrice;
uint32 sub_cfbd900f;
uint32 sold; offset 32
mapping of struct sub_fa713083;

function sold() {
    return sold
}

function sub_0c572dc5(?) {
    return sub_0c572dc5
}

function ticketPrice() {
    return ticketPrice
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(arg1)].field_0)
}

function tickets(uint256 arg1) {
    require calldata.size - 4 >= 32
    return sub_fa713083[arg1].field_0, sub_fa713083[arg1].field_0, bool(sub_fa713083[arg1].field_176)
}

function paused() {
    return bool(stor1)
}

function sub_7d3ca50a(?) {
    return sub_7d3ca50a
}

function owner() {
    return owner
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function isRole(string arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    return bool(roleAdmin[arg1[all]][address(arg2)].field_0)
}

function blacklist() {
    return blacklistAddress
}

function sub_cfbd900f(?) {
    return sub_cfbd900f
}

function ticketToken() {
    return ticketTokenAddress
}

function settings() {
    return settingsAddress
}

function sub_fa713083(?) {
    require calldata.size - 4 >= 32
    return sub_fa713083[arg1].field_0, sub_fa713083[arg1].field_0, bool(sub_fa713083[arg1].field_176)
}

function close() payable {
    if roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        selfdestruct(msg.sender)
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
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
    revert with 0, 'Strings: hex length insufficient'
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x6735b3a7(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xab5b4456(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd5ed4d5a(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xd5ed4d5a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return ticketTokenAddress
                if unknown_0xe06174e4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return settingsAddress
                if unknown_0xe58378bb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                    require unknown_0xfa713083(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return sub_fa713083[arg1].field_0, sub_fa713083[arg1].field_0, bool(sub_fa713083[arg1].field_176)
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                    if not address(arg1):
                        revert with 0, 'new owner is the zero address'
                    owner = address(arg1)
                    emit OwnershipTransferred(owner, address(arg1));
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
                if not msg.sender + 10240:
                    idx = 65
                    s = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
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
                revert with 0, 'Strings: hex length insufficient'
            if unknown_0xab5b4456(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if stor1:
                    revert with 0, 'Pausable: paused'
                if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
                    revert with 0, 'only admin'
                if sub_fa713083[arg1].field_176:
                    revert with 0, 'ticket id used'
                if not sub_fa713083[arg1].field_16:
                    revert with 0, 'no ticket owner'
                sub_fa713083[arg1].field_176 = 1
                emit 0x93c5fa5f: arg1, 1, sub_fa713083[arg1].field_16, msg.sender
            if unknown_0xc41069a7(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == uint16(arg1)
                if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
                    revert with 0, 'only admin'
                sub_0c572dc5 = uint16(arg1)
            if unknown_0xc9d658f0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == address(arg3)
                if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                    revert with 0, 'only owner'
                settingsAddress = address(arg1)
                ticketTokenAddress = address(arg2)
                blacklistAddress = address(arg3)
            if unknown_0xcfbd900f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_cfbd900f
            require unknown_0xd547741f(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require arg2 == address(arg2)
            if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
                if roleAdmin[arg1][address(arg2)].field_0:
                    roleAdmin[arg1][address(arg2)].field_0 = 0
                    emit RoleRevoked(arg1, address(arg2), msg.sender);
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
            s = roleAdmin[arg1].field_256
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
            if roleAdmin[arg1].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
        if unknown_0x900fea61(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x900fea61(?????):
                if unknown_0x91d14854(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg2 == address(arg2)
                    return bool(roleAdmin[arg1][address(arg2)].field_0)
                if uint32(call.func_hash) >> 224 != unknown_0x957476af(?????):
                    if unknown_0xa217fddf(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 0
                    require unknown_0xa4b5fa56(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return blacklistAddress
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 <= test266151307()
                require arg1 + 35 < calldata.size
                if arg1.length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
                    revert with 0, 65
                require arg1 + arg1.length + 36 <= calldata.size
                require arg2 == address(arg2)
                return bool(roleAdmin[arg1[all]][address(arg2)].field_0)
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == uint16(arg1)
            require arg2 == address(arg2)
            require arg3 == bool(arg3)
            if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                revert with 0, 'only owner'
            if sub_7d3ca50a == -1:
                revert with 0, 17
            sub_7d3ca50a++
            sub_fa713083[stor6].field_0 = uint16(arg1)
            sub_fa713083[stor6].field_16 = address(arg2)
            sub_fa713083[stor6].field_176 = Mask(80, 0, bool(arg3))
            emit 0x93c5fa5f: sub_7d3ca50a, bool(arg3), address(arg2), msg.sender
        if uint32(call.func_hash) >> 224 != unknown_0x6735b3a7(?????):
            if uint32(call.func_hash) >> 224 != unknown_0x70480275(?????):
                if unknown_0x75b238fc(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec
                if unknown_0x7d3ca50a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_7d3ca50a
                require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return owner
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
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
                if not msg.sender + 10240:
                    idx = 65
                    s = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
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
                revert with 0, 'Strings: hex length insufficient'
            if roleAdmin[roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256][address(msg.sender)].field_0:
                if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(arg1)].field_0:
                    roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(arg1)].field_0 = 1
                    emit RoleGranted(0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec, address(arg1), msg.sender);
                emit AdminAdded(address(arg1));
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
            s = roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256
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
            if roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 <= test266151307()
        require arg1 + 35 < calldata.size
        if arg1.length > test266151307():
            revert with 0, 65
        if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
            revert with 0, 65
        mem[128] = arg1.length
        require arg1 + arg1.length + 36 <= calldata.size
        mem[160 len arg1.length] = arg1[all]
        mem[arg1.length + 160] = 0
        require arg2 == address(arg2)
        if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg1.length)) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if not msg.sender + 10240:
                idx = 65
                s = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + ceil32(ceil32(arg1.length)) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
            revert with 0, 'Strings: hex length insufficient'
        if roleAdmin[roleAdmin[arg1[all]].field_256][address(msg.sender)].field_0:
            if not roleAdmin[arg1[all]][address(arg2)].field_0:
                roleAdmin[arg1[all]][address(arg2)].field_0 = 1
                emit RoleGranted(sha3(arg1[all]), address(arg2), msg.sender);
            mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 160 len ceil32(arg1.length) - arg1.length]
            emit RoleAdded(sha3(mem[ceil32(ceil32(arg1.length)) + 129 len arg1.length]), address(arg2));
        mem[ceil32(ceil32(arg1.length)) + 161 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(ceil32(arg1.length)) + 257 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1[all]].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1[all]].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(ceil32(arg1.length)) + 193 len 42], 8297, mem[ceil32(ceil32(arg1.length)) + 321 len 66], 0, 0 >> 928,
                    0
    if unknown_0x2f2ff15d(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x0c572dc5(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x0c572dc5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_0c572dc5
            if unknown_0x1209b1f6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return ticketPrice
            if uint32(call.func_hash) >> 224 != unknown_0x1785f53c(?????):
                if unknown_0x248a9ca3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return roleAdmin[arg1].field_256
                require unknown_0x24d7806c(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(arg1)].field_0)
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
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
                if not msg.sender + 10240:
                    idx = 65
                    s = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
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
                revert with 0, 'Strings: hex length insufficient'
            if roleAdmin[roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256][address(msg.sender)].field_0:
                if roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(arg1)].field_0:
                    roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(arg1)].field_0 = 0
                    emit RoleRevoked(0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec, address(arg1), msg.sender);
                emit AdminRemoved(address(arg1));
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
            s = roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256
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
            if roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
        if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == Mask(32, 224, arg1)
            if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
                return True
            return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
        if pause(bool arg1) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == bool(arg1)
            if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                revert with 0, 'only owner'
            if arg1:
                if stor1:
                    revert with 0, 'Pausable: paused'
                stor1 = 1
                emit Paused(msg.sender);
            else:
                if not stor1:
                    revert with 0, 'Pausable: not paused'
                stor1 = 0
                emit Unpaused(msg.sender);
        if sold() == uint32(call.func_hash) >> 224:
            require not msg.value
            return sold
        require removeRole(string arg1, address arg2) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 <= test266151307()
        require arg1 + 35 < calldata.size
        if arg1.length > test266151307():
            revert with 0, 65
        if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
            revert with 0, 65
        mem[128] = arg1.length
        require arg1 + arg1.length + 36 <= calldata.size
        mem[160 len arg1.length] = arg1[all]
        mem[arg1.length + 160] = 0
        require arg2 == address(arg2)
        if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg1.length)) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if not msg.sender + 10240:
                idx = 65
                s = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + ceil32(ceil32(arg1.length)) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
            revert with 0, 'Strings: hex length insufficient'
        if roleAdmin[roleAdmin[arg1[all]].field_256][address(msg.sender)].field_0:
            if roleAdmin[arg1[all]][address(arg2)].field_0:
                roleAdmin[arg1[all]][address(arg2)].field_0 = 0
                emit RoleRevoked(sha3(arg1[all]), address(arg2), msg.sender);
            mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 160 len ceil32(arg1.length) - arg1.length]
            emit RoleRemoved(sha3(mem[ceil32(ceil32(arg1.length)) + 129 len arg1.length]), address(arg2));
        mem[ceil32(ceil32(arg1.length)) + 161 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(ceil32(arg1.length)) + 257 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1[all]].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1[all]].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(ceil32(arg1.length)) + 193 len 42], 8297, mem[ceil32(ceil32(arg1.length)) + 321 len 66], 0, 0 >> 928,
                    0
    if unknown_0x43d726d6(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x2f2ff15d(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg2 == address(arg2)
            if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
                if not roleAdmin[arg1][address(arg2)].field_0:
                    roleAdmin[arg1][address(arg2)].field_0 = 1
                    emit RoleGranted(arg1, address(arg2), msg.sender);
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
            s = roleAdmin[arg1].field_256
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
            if roleAdmin[arg1].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
        if unknown_0x35a61f2f(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 96
            require arg2 == uint32(arg2)
            require arg3 == uint32(arg3)
            if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                revert with 0, 'only owner'
            ticketPrice = arg1
            sub_cfbd900f = uint32(arg2)
            sold = uint32(arg3)
            emit 0x8ab9685d: arg1, arg2 << 224, uint32(arg3), msg.sender
        else:
            if unknown_0x36568abe(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg2 == address(arg2)
                if address(arg2) != msg.sender:
                    revert with 0, 'AccessControl: can only renounce roles for self'
                if roleAdmin[arg1][address(arg2)].field_0:
                    roleAdmin[arg1][address(arg2)].field_0 = 0
                    emit RoleRevoked(arg1, address(arg2), msg.sender);
            else:
                if unknown_0x3e7612df(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require arg2 == uint16(arg2)
                    require arg3 == address(arg3)
                    require arg4 == bool(arg4)
                    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                        revert with 0, 'only owner'
                    sub_fa713083[arg1].field_0 = uint16(arg2)
                    sub_fa713083[arg1].field_16 = address(arg3)
                    sub_fa713083[arg1].field_176 = Mask(80, 0, bool(arg4))
                    emit 0x93c5fa5f: arg1, bool(arg4), address(arg3), msg.sender
                else:
                    require unknown_0x3f09f195(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 <= test266151307()
                    require arg1 + 35 < calldata.size
                    if arg1.length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
                        revert with 0, 65
                    require arg1 + arg1.length + 36 <= calldata.size
                    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                        idx = 41
                        s = address(msg.sender)
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 42:
                                revert with 0, 50
                            mem[idx + ceil32(ceil32(arg1.length)) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        if not msg.sender + 10240:
                            idx = 65
                            s = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
                            while idx > 1:
                                if s % 16 >= 16:
                                    revert with 0, 50
                                if idx >= 66:
                                    revert with 0, 50
                                mem[idx + ceil32(ceil32(arg1.length)) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                        revert with 0, 'Strings: hex length insufficient'
                    if not roleAdmin[arg1[all]][address(msg.sender)].field_0:
                        roleAdmin[arg1[all]][address(msg.sender)].field_0 = 1
                        emit RoleGranted(sha3(arg1[all]), msg.sender, msg.sender);
                    roleAdmin[arg1[all]].field_256 = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
                    emit RoleAdminChanged(sha3(arg1[all]), roleAdmin[arg1[all]].field_256, 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9);
    if unknown_0x43d726d6(?????) == uint32(call.func_hash) >> 224:
        if roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
            selfdestruct(msg.sender)
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
        if not msg.sender + 10240:
            idx = 65
            s = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
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
        revert with 0, 'Strings: hex length insufficient'
    if unknown_0x4d9b8e4d(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
            revert with 0, 'only owner'
        sub_7d3ca50a = arg1
        emit 0xdbd217dd: arg1, msg.sender
    if uint32(call.func_hash) >> 224 != unknown_0x4eefee34(?????):
        if unknown_0x50b44712(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            return sub_fa713083[arg1].field_0, sub_fa713083[arg1].field_0, bool(sub_fa713083[arg1].field_176)
        require unknown_0x5c975abb(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        return bool(stor1)
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if stor1:
        revert with 0, 'Pausable: paused'
    mem[132] = msg.sender
    require ext_code.size(blacklistAddress)
    staticcall blacklistAddress.exists(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'risky caller'
    if sub_0c572dc5 != uint16(arg1):
        revert with 0, 'wrong chest'
    if sold >= sub_cfbd900f:
        revert with 0, 'sold out'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    require ext_code.size(ticketTokenAddress)
    staticcall ticketTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ticketPrice:
        revert with 0, 'KEY not approved'
    mem[(2 * ceil32(return_data.size)) + 132] = 32
    mem[(2 * ceil32(return_data.size)) + 164] = 8
    mem[(2 * ceil32(return_data.size)) + 196] = '@chestDC' << 192
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0x4f4e89ff with:
            gas gas_remaining wei
           args '@chestDC'
    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 228] = ticketPrice
    mem[(4 * ceil32(return_data.size)) + 128] = 100
    mem[(4 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 160 len 4] = unknown_0x23b872dd(?????)
    mem[(4 * ceil32(return_data.size)) + 260] = 32
    mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(ticketTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 324 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], ticketPrice, 0
    mem[(4 * ceil32(return_data.size)) + 424] = 0
    call ticketTokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], ticketPrice, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], ticketPrice, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
            if not mem[(4 * ceil32(return_data.size)) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if sold == test266151307():
        revert with 0, 17
    sold = uint32(sold + 1)
    if sub_7d3ca50a == -1:
        revert with 0, 17
    sub_7d3ca50a++
    sub_fa713083[stor6].field_0 = uint16(arg1)
    sub_fa713083[stor6].field_16 = msg.sender
    sub_fa713083[stor6].field_176 = 0
    emit 0x90ab39ce: sub_7d3ca50a, uint16(arg1), msg.sender
    stor2 = 1
    return sub_7d3ca50a
}

function sub_4d9b8e4d(?) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        revert with 0, 'only owner'
    sub_7d3ca50a = arg1
    emit 0xdbd217dd: arg1, msg.sender
}

function sub_c41069a7(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
        revert with 0, 'only admin'
    sub_0c572dc5 = uint16(arg1)
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function migrate(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        revert with 0, 'only owner'
    settingsAddress = arg1
    ticketTokenAddress = arg2
    blacklistAddress = arg3
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

function sub_35a61f2f(?) {
    require calldata.size - 4 >= 96
    require arg2 == uint32(arg2)
    require arg3 == uint32(arg3)
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        revert with 0, 'only owner'
    ticketPrice = arg1
    sub_cfbd900f = uint32(arg2)
    sold = uint32(arg3)
    emit 0x8ab9685d: arg1, arg2 << 224, uint32(arg3), msg.sender
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        revert with 0, 'only owner'
    if arg1:
        if stor1:
            revert with 0, 'Pausable: paused'
        stor1 = 1
        emit Paused(msg.sender);
    else:
        if not stor1:
            revert with 0, 'Pausable: not paused'
        stor1 = 0
        emit Unpaused(msg.sender);
}

function sub_3e7612df(?) {
    require calldata.size - 4 >= 128
    require arg2 == uint16(arg2)
    require arg3 == address(arg3)
    require arg4 == bool(arg4)
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        revert with 0, 'only owner'
    sub_fa713083[arg1].field_0 = uint16(arg2)
    sub_fa713083[arg1].field_16 = address(arg3)
    sub_fa713083[arg1].field_176 = Mask(80, 0, bool(arg4))
    emit 0x93c5fa5f: arg1, bool(arg4), address(arg3), msg.sender
}

function use(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1:
        revert with 0, 'Pausable: paused'
    if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
        revert with 0, 'only admin'
    if sub_fa713083[arg1].field_176:
        revert with 0, 'ticket id used'
    if not sub_fa713083[arg1].field_16:
        revert with 0, 'no ticket owner'
    sub_fa713083[arg1].field_176 = 1
    emit 0x93c5fa5f: arg1, 1, sub_fa713083[arg1].field_16, msg.sender
}

function sub_900fea61(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        revert with 0, 'only owner'
    if sub_7d3ca50a == -1:
        revert with 0, 17
    sub_7d3ca50a++
    sub_fa713083[stor6].field_0 = uint16(arg1)
    sub_fa713083[stor6].field_16 = address(arg2)
    sub_fa713083[stor6].field_176 = Mask(80, 0, bool(arg3))
    emit 0x93c5fa5f: sub_7d3ca50a, bool(arg3), address(arg2), msg.sender
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        if not arg1:
            revert with 0, 'new owner is the zero address'
        owner = arg1
        emit OwnershipTransferred(owner, arg1);
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
    if not msg.sender + 10240:
        idx = 65
        s = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
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
    revert with 0, 'Strings: hex length insufficient'
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function newRole(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if not roleAdmin[arg1[all]][address(msg.sender)].field_0:
        roleAdmin[arg1[all]][address(msg.sender)].field_0 = 1
        emit RoleGranted(sha3(arg1[all]), msg.sender, msg.sender);
    roleAdmin[arg1[all]].field_256 = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
    emit RoleAdminChanged(sha3(arg1[all]), roleAdmin[arg1[all]].field_256, 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9);
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
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
        revert with 0, 'Strings: hex length insufficient'
    if roleAdmin[roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256][address(msg.sender)].field_0:
        if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(arg1)].field_0:
            roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(arg1)].field_0 = 1
            emit RoleGranted(0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec, arg1, msg.sender);
        emit AdminAdded(arg1);
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
    s = roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256
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
    if roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
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
        if not msg.sender + 10240:
            idx = 65
            s = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
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
        revert with 0, 'Strings: hex length insufficient'
    if roleAdmin[roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256][address(msg.sender)].field_0:
        if roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(arg1)].field_0:
            roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(arg1)].field_0 = 0
            emit RoleRevoked(0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec, arg1, msg.sender);
        emit AdminRemoved(arg1);
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
    s = roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256
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
    if roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function addRole(string arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if roleAdmin[roleAdmin[arg1[all]].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1[all]][address(arg2)].field_0:
            roleAdmin[arg1[all]][address(arg2)].field_0 = 1
            emit RoleGranted(sha3(arg1[all]), arg2, msg.sender);
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        emit RoleAdded(sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length]), arg2);
    mem[ceil32(ceil32(arg1.length)) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg1.length)) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1[all]].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1[all]].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(ceil32(arg1.length)) + 161 len 42], 8297, mem[ceil32(ceil32(arg1.length)) + 289 len 66], 0, 0 >> 928,
                0
}

function removeRole(string arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if roleAdmin[roleAdmin[arg1[all]].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1[all]][address(arg2)].field_0:
            roleAdmin[arg1[all]][address(arg2)].field_0 = 0
            emit RoleRevoked(sha3(arg1[all]), arg2, msg.sender);
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        emit RoleRemoved(sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length]), arg2);
    mem[ceil32(ceil32(arg1.length)) + 129 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg1.length)) + 225 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1[all]].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1[all]].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(ceil32(arg1.length)) + 161 len 42], 8297, mem[ceil32(ceil32(arg1.length)) + 289 len 66], 0, 0 >> 928,
                0
}

function buyTicket(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if stor1:
        revert with 0, 'Pausable: paused'
    mem[100] = msg.sender
    require ext_code.size(blacklistAddress)
    staticcall blacklistAddress.exists(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'risky caller'
    if sub_0c572dc5 != arg1:
        revert with 0, 'wrong chest'
    if sold >= sub_cfbd900f:
        revert with 0, 'sold out'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(ticketTokenAddress)
    staticcall ticketTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ticketPrice:
        revert with 0, 'KEY not approved'
    mem[(2 * ceil32(return_data.size)) + 100] = 32
    mem[(2 * ceil32(return_data.size)) + 132] = 8
    mem[(2 * ceil32(return_data.size)) + 164] = '@chestDC' << 192
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.0x4f4e89ff with:
            gas gas_remaining wei
           args '@chestDC'
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 196] = ticketPrice
    mem[(4 * ceil32(return_data.size)) + 96] = 100
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(4 * ceil32(return_data.size)) + 228] = 32
    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(ticketTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], ticketPrice, 0
    mem[(4 * ceil32(return_data.size)) + 392] = 0
    call ticketTokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], ticketPrice, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], ticketPrice, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
            if not mem[(4 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if sold == test266151307():
        revert with 0, 17
    sold = uint32(sold + 1)
    if sub_7d3ca50a == -1:
        revert with 0, 17
    sub_7d3ca50a++
    sub_fa713083[stor6].field_0 = arg1
    sub_fa713083[stor6].field_16 = msg.sender
    sub_fa713083[stor6].field_176 = 0
    emit 0x90ab39ce: sub_7d3ca50a, arg1, msg.sender
    stor2 = 1
    return sub_7d3ca50a
}



}
