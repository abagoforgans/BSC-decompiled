contract main {




// =====================  Runtime code  =====================


const ADMIN_ROLE = 0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec

const DEFAULT_ADMIN_ROLE = 0

const OWNER_ROLE = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9


mapping of struct roleAdmin;
uint8 paused; offset 160
address owner;
uint256 stor2;
address blacklistAddress;
address ticketOfficeAddress;
address rewardTokenAddress;
address vaultAddress;
address ticketTokenAddress;
address settingsAddress;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_256)
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(arg1)].field_0)
}

function paused() {
    return bool(paused)
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

function ticketOffice() {
    return ticketOfficeAddress
}

function ticketToken() {
    return ticketTokenAddress
}

function settings() {
    return settingsAddress
}

function rewardToken() {
    return rewardTokenAddress
}

function vault() {
    return vaultAddress
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
    else:
        if unknown_0x75b238fc(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd547741f(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xe58378bb(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xe58378bb(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
                    if unknown_0xf26b854f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                            revert with 0, 'only owner'
                        if eth.balance(this.address):
                            call msg.sender with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Failed to send'
                        emit EmergencyWithdrawBNB(eth.balance(this.address));
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        if unknown_0xf7c618c1(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return rewardTokenAddress
                        require unknown_0xfbfa77cf(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return vaultAddress
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                        if not address(cd[4]):
                            revert with 0, 'new owner is the zero address'
                        owner = address(cd[4])
                        emit OwnershipTransferred(owner, address(cd[4]));
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
                if unknown_0xd547741f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    if roleAdmin[uint256(roleAdmin[cd[4]].field_256)][address(msg.sender)].field_0:
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
                    s = uint256(roleAdmin[cd[4]].field_256)
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
                    if uint256(roleAdmin[cd[4]].field_256) + 16384:
                        revert with 0, 'Strings: hex length insufficient'
                    revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                if unknown_0xd5ed4d5a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return ticketTokenAddress
                if unknown_0xe06174e4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return settingsAddress
                require unknown_0xe30ac74e(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 128
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[68] == address(cd[68])
                require cd[100] == address(cd[100])
                if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                    revert with 0, 'only owner'
                settingsAddress = address(cd[4])
                ticketOfficeAddress = address(cd[36])
                ticketTokenAddress = address(cd[68])
                blacklistAddress = address(cd[100])
            else:
                if unknown_0x957476af(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x75b238fc(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec
                    if unknown_0x8aee8127(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
                            revert with 0, 'only admin'
                        rewardTokenAddress = address(cd[4])
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    require unknown_0x91d14854(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    return bool(roleAdmin[cd[4]][address(cd[36])].field_0)
                if unknown_0x957476af(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                        revert with 0, 65
                    require cd[4] + ('cd', 4).length + 36 <= calldata.size
                    require cd[36] == address(cd[36])
                    return bool(roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]][address(cd[36])].field_0)
                if unknown_0xa217fddf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0
                if unknown_0xa4b5fa56(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return blacklistAddress
                if unknown_0xab397b46(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return ticketOfficeAddress
                require unknown_0xac2eceea(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 36).length
                require cd[36] + ('cd', 36).length + 36 <= calldata.size
                mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + 160] = 0
                require cd[68] == bool(cd[68])
                if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                    revert with 0, 'only owner'
                mem[ceil32(ceil32(('cd', 36).length)) + 129 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], mem[('cd', 36).length + 160 len ceil32(('cd', 36).length) - ('cd', 36).length]
                mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + 129] = sha3(address(cd[4]), 3)
                stor[sha3(mem[ceil32(ceil32(('cd', 36).length)) + 129 len ('cd', 36).length + 32])] = uint8(bool(cd[68]))
                emit SignatureChanged(Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length]), bool(cd[68]), address(cd[4]));
        else:
            if unknown_0x36568abe(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x1785f53c(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x1785f53c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
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
                        if roleAdmin[uint256(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256)][address(msg.sender)].field_0:
                            if roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(cd[4])].field_0:
                                roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(cd[4])].field_0 = 0
                                emit RoleRevoked(0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec, address(cd[4]), msg.sender);
                            emit AdminRemoved(address(cd[4]));
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
                        s = uint256(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256)
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
                        if uint256(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256) + 16384:
                            revert with 0, 'Strings: hex length insufficient'
                        revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                    if uint32(call.func_hash) >> 224 != unknown_0x1a86b550(?????):
                        if unknown_0x248a9ca3(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            return uint256(roleAdmin[cd[4]].field_256)
                        if unknown_0x24d7806c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return bool(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(cd[4])].field_0)
                        require unknown_0x2f2ff15d(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[36] == address(cd[36])
                        if roleAdmin[uint256(roleAdmin[cd[4]].field_256)][address(msg.sender)].field_0:
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
                        s = uint256(roleAdmin[cd[4]].field_256)
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
                        if uint256(roleAdmin[cd[4]].field_256) + 16384:
                            revert with 0, 'Strings: hex length insufficient'
                        revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[68] <= test266151307()
                    require calldata.size > cd[68] + 35
                    if ('cd', 68).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 68).length)) + 129 < 128 or ceil32(ceil32(('cd', 68).length)) + 129 > test266151307():
                        revert with 0, 65
                    require cd[68] + ('cd', 68).length + 36 <= calldata.size
                    mem[160 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + 160] = 0
                    if 65 == ('cd', 68).length:
                        if mem[192] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                            revert with 0, 'ECDSA: invalid signature 's' value'
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    if ('cd', 68).length != 64:
                        revert with 0, 'ECDSA: invalid signature length'
                    if uint255(mem[192]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    if uint8((bool(mem[192]) >> 255) + 27) != 27:
                        if uint8((bool(mem[192]) >> 255) + 27) != 28:
                            revert with 0, 'ECDSA: invalid signature 'v' value'
                    signer = erecover(cd[36], (bool(mem[192]) >> 255) + 27 << 248, mem[160], uint255(mem[192])) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not address(signer):
                        revert with 0, 'ECDSA: invalid signature'
                    return (address(signer) == address(cd[4]))
                if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == Mask(32, 224, cd[4])
                    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                        return True
                    return (Mask(32, 224, cd[4]) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
                if pause(bool arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == bool(cd[4])
                    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                        revert with 0, 'only owner'
                    if cd[4]:
                        if paused:
                            revert with 0, 'Pausable: paused'
                        paused = 1
                        emit Paused(msg.sender);
                    else:
                        if not paused:
                            revert with 0, 'Pausable: not paused'
                        paused = 0
                        emit Unpaused(msg.sender);
                if uint32(call.func_hash) >> 224 != removeRole(string arg1, address arg2):
                    require isSigned(address arg1, string arg2) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    if ('cd', 36).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 36).length
                    require cd[36] + ('cd', 36).length + 36 <= calldata.size
                    mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[('cd', 36).length + 160] = 0
                    mem[ceil32(ceil32(('cd', 36).length)) + 129 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], mem[('cd', 36).length + 160 len ceil32(('cd', 36).length) - ('cd', 36).length]
                    mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + 129] = sha3(address(cd[4]), 3)
                    mem[ceil32(ceil32(('cd', 36).length)) + 129] = bool(stor[sha3(mem[ceil32(ceil32(('cd', 36).length)) + 129 len ('cd', 36).length + 32])])
                    return memory
                      from ceil32(ceil32(('cd', 36).length)) + 129
                       len 32
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require cd[4] + ('cd', 4).length + 36 <= calldata.size
                mem[160 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                mem[('cd', 4).length + 160] = 0
                require cd[36] == address(cd[36])
                if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 42:
                            revert with 0, 50
                        mem[idx + ceil32(ceil32(('cd', 4).length)) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
                            mem[idx + ceil32(ceil32(('cd', 4).length)) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                    revert with 0, 'Strings: hex length insufficient'
                if roleAdmin[uint256(roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]].field_256)][address(msg.sender)].field_0:
                    if roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]][address(cd[36])].field_0:
                        roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]][address(cd[36])].field_0 = 0
                        emit RoleRevoked(sha3(call.data[cd[4] + 36 len ('cd', 4).length]), address(cd[36]), msg.sender);
                    mem[ceil32(ceil32(('cd', 4).length)) + 129 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 160 len ceil32(('cd', 4).length) - ('cd', 4).length]
                    emit RoleRemoved(sha3(mem[ceil32(ceil32(('cd', 4).length)) + 129 len ('cd', 4).length]), address(cd[36]));
                mem[ceil32(ceil32(('cd', 4).length)) + 161 len 42] = call.data[calldata.size len 42]
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + ceil32(ceil32(('cd', 4).length)) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if msg.sender + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[ceil32(ceil32(('cd', 4).length)) + 257 len 66] = call.data[calldata.size len 66]
                idx = 65
                s = uint256(roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]].field_256)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + ceil32(ceil32(('cd', 4).length)) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if uint256(roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]].field_256) + 16384:
                    revert with 0, 'Strings: hex length insufficient'
                revert with 0, 
                            32,
                            148,
                            'AccessControl: account ', mem[ceil32(ceil32(('cd', 4).length)) + 193 len 42], 8297, mem[ceil32(ceil32(('cd', 4).length)) + 321 len 66], 0, 0 >> 928,
                            0
            if unknown_0x660071dd(?????) > uint32(call.func_hash) >> 224:
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
                    if uint32(call.func_hash) >> 224 != unknown_0x3f09f195(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x43d726d6(?????):
                            require unknown_0x5c975abb(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return bool(paused)
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
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                        revert with 0, 65
                    require cd[4] + ('cd', 4).length + 36 <= calldata.size
                    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                        idx = 41
                        s = address(msg.sender)
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 42:
                                revert with 0, 50
                            mem[idx + ceil32(ceil32(('cd', 4).length)) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
                                mem[idx + ceil32(ceil32(('cd', 4).length)) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                        revert with 0, 'Strings: hex length insufficient'
                    if not roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]][address(msg.sender)].field_0:
                        roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]][address(msg.sender)].field_0 = 1
                        emit RoleGranted(sha3(call.data[cd[4] + 36 len ('cd', 4).length]), msg.sender, msg.sender);
                    uint256(roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]].field_256) = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
                    emit RoleAdminChanged(sha3(call.data[cd[4] + 36 len ('cd', 4).length]), uint256(roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]].field_256), 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9);
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x660071dd(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x6735b3a7(?????):
                        if unknown_0x6817031b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
                                revert with 0, 'only admin'
                            vaultAddress = address(cd[4])
                        else:
                            if uint32(call.func_hash) >> 224 != unknown_0x6ff1c9bc(?????):
                                require unknown_0x70480275(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
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
                                if roleAdmin[uint256(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256)][address(msg.sender)].field_0:
                                    if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(cd[4])].field_0:
                                        roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(cd[4])].field_0 = 1
                                        emit RoleGranted(0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec, address(cd[4]), msg.sender);
                                    emit AdminAdded(address(cd[4]));
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
                                s = uint256(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256)
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
                                if uint256(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256) + 16384:
                                    revert with 0, 'Strings: hex length insufficient'
                                revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                                revert with 0, 'only owner'
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit EmergencyWithdraw(address(cd[4]), ext_call.return_data[0]);
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + ('cd', 4).length + 36 <= calldata.size
                    mem[160 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                    mem[('cd', 4).length + 160] = 0
                    require cd[36] == address(cd[36])
                    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
                        idx = 41
                        s = address(msg.sender)
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 42:
                                revert with 0, 50
                            mem[idx + ceil32(ceil32(('cd', 4).length)) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
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
                                mem[idx + ceil32(ceil32(('cd', 4).length)) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                if not idx:
                                    revert with 0, 17
                                idx = idx - 1
                                s = Mask(252, 0, s) * 0.0625
                                continue 
                        revert with 0, 'Strings: hex length insufficient'
                    if roleAdmin[uint256(roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]].field_256)][address(msg.sender)].field_0:
                        if not roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]][address(cd[36])].field_0:
                            roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]][address(cd[36])].field_0 = 1
                            emit RoleGranted(sha3(call.data[cd[4] + 36 len ('cd', 4).length]), address(cd[36]), msg.sender);
                        mem[ceil32(ceil32(('cd', 4).length)) + 129 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 160 len ceil32(('cd', 4).length) - ('cd', 4).length]
                        emit RoleAdded(sha3(mem[ceil32(ceil32(('cd', 4).length)) + 129 len ('cd', 4).length]), address(cd[36]));
                    mem[ceil32(ceil32(('cd', 4).length)) + 161 len 42] = call.data[calldata.size len 42]
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 42:
                            revert with 0, 50
                        mem[idx + ceil32(ceil32(('cd', 4).length)) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if msg.sender + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    mem[ceil32(ceil32(('cd', 4).length)) + 257 len 66] = call.data[calldata.size len 66]
                    idx = 65
                    s = uint256(roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]].field_256)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 66:
                            revert with 0, 50
                        mem[idx + ceil32(ceil32(('cd', 4).length)) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if uint256(roleAdmin[call.data[cd[4] + 36 len ('cd', 4).length]].field_256) + 16384:
                        revert with 0, 'Strings: hex length insufficient'
                    revert with 0, 
                                32,
                                148,
                                'AccessControl: account ', mem[ceil32(ceil32(('cd', 4).length)) + 193 len 42], 8297, mem[ceil32(ceil32(('cd', 4).length)) + 321 len 66], 0, 0 >> 928,
                                0
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 36).length) + 129 < 128 or ceil32(32 * ('cd', 36).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 36).length
                require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
                s = cd[36] + 36
                t = 160
                idx = 0
                while idx < ('cd', 36).length:
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                if stor2 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor2 = 2
                if paused:
                    revert with 0, 'Pausable: paused'
                if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
                    revert with 0, 'only admin'
                require ext_code.size(ticketOfficeAddress)
                call ticketOfficeAddress.use(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(ticketOfficeAddress)
                staticcall ticketOfficeAddress.0xfa713083 with:
                        gas gas_remaining wei
                       args cd[4]
                mem[ceil32(32 * ('cd', 36).length) + 129 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not bool(ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 225 <= test266151307()):
                    revert with 0, 65
                require ext_call.return_data[0] == ext_call.return_data[30 len 2]
                mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 161] = ext_call.return_data[32]
                require ext_call.return_data[64] == bool(ext_call.return_data[64])
                mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 193] = ext_call.return_data[64]
                if ('cd', 36).length != 1:
                    revert with 0, 'wrong rewards length'
                if 0 >= ('cd', 36).length:
                    revert with 0, 50
                if mem[160] > 0:
                    if 0 >= ('cd', 36).length:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 261] = vaultAddress
                    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 293] = ext_call.return_data[44 len 20]
                    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 325] = mem[160]
                    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 225] = 100
                    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 257 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
                    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 357] = 32
                    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 389] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 421 len 128] = 0, vaultAddress, ext_call.return_data[44 len 20], mem[160], 0
                    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 521] = 0
                    call rewardTokenAddress with:
                       funct Mask(32, 224, 0, vaultAddress, ext_call.return_data[44 len 20], mem[160], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, 0, vaultAddress, ext_call.return_data[44 len 20], mem[160], 0) << 544)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require ('cd', 36).length == bool(('cd', 36).length)
                            if not ('cd', 36).length:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 453] == bool(mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 453])
                            if not mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 453]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if 0 >= ('cd', 36).length:
                        revert with 0, 50
                    emit 0xe3baed4f: cd[4], 0, mem[160], uint16(ext_call.return_data[0]), ext_call.return_data[44 len 20]
                stor2 = 1
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
        revert with 0, 'only admin'
    vaultAddress = arg1
}

function setRewardToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
        revert with 0, 'only admin'
    rewardTokenAddress = arg1
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

function emergencyWithdrawBNB() {
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        revert with 0, 'only owner'
    if eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send'
    emit EmergencyWithdrawBNB(eth.balance(this.address));
}

function migrate(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        revert with 0, 'only owner'
    settingsAddress = arg1
    ticketOfficeAddress = arg2
    ticketTokenAddress = arg3
    blacklistAddress = arg4
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        revert with 0, 'only owner'
    if arg1:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
    else:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
}

function isSigned(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = sha3(address(arg1), 3)
    mem[ceil32(ceil32(arg2.length)) + 97] = bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])])
    return memory
      from ceil32(ceil32(arg2.length)) + 97
       len 32
}

function emergencyWithdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        revert with 0, 'only owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit EmergencyWithdraw(address(arg1), ext_call.return_data[0]);
}

function setSignature(address arg1, string arg2, bool arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == arg3
    if not roleAdmin[0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9][address(msg.sender)].field_0:
        revert with 0, 'only owner'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = sha3(address(arg1), 3)
    stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])] = uint8(arg3)
    emit SignatureChanged(Array(len=arg2.length, data=arg2[all]), arg3, arg1);
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

function verify(address arg1, bytes32 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if 65 == arg3.length:
        if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg3.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[160]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[160]) >> 255) + 27) != 27:
        if uint8((bool(mem[160]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(arg2, (bool(mem[160]) >> 255) + 27 << 248, mem[128], uint255(mem[160])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    return (address(signer) == arg1)
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0:
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0:
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
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
    uint256(roleAdmin[arg1[all]].field_256) = 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9
    emit RoleAdminChanged(sha3(arg1[all]), uint256(roleAdmin[arg1[all]].field_256), 0x426270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb9);
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
    if roleAdmin[uint256(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256)][address(msg.sender)].field_0:
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
    s = uint256(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256)
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
    if uint256(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256) + 16384:
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
    if roleAdmin[uint256(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256)][address(msg.sender)].field_0:
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
    s = uint256(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256)
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
    if uint256(roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec].field_256) + 16384:
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
    if roleAdmin[uint256(roleAdmin[arg1[all]].field_256)][address(msg.sender)].field_0:
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
    s = uint256(roleAdmin[arg1[all]].field_256)
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
    if uint256(roleAdmin[arg1[all]].field_256) + 16384:
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
    if roleAdmin[uint256(roleAdmin[arg1[all]].field_256)][address(msg.sender)].field_0:
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
    s = uint256(roleAdmin[arg1[all]].field_256)
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
    if uint256(roleAdmin[arg1[all]].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(ceil32(arg1.length)) + 161 len 42], 8297, mem[ceil32(ceil32(arg1.length)) + 289 len 66], 0, 0 >> 928,
                0
}

function sub_660071dd(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not roleAdmin[0xfedf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec][address(msg.sender)].field_0:
        revert with 0, 'only admin'
    require ext_code.size(ticketOfficeAddress)
    call ticketOfficeAddress.use(uint256 arg1) with:
         gas gas_remaining wei
        args cd[4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(ticketOfficeAddress)
    staticcall ticketOfficeAddress.0xfa713083 with:
            gas gas_remaining wei
           args cd[4]
    mem[ceil32(32 * ('cd', 36).length) + 97 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 193 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = ext_call.return_data[32]
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    if ('cd', 36).length != 1:
        revert with 0, 'wrong rewards length'
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    if mem[128] > 0:
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 389 len 128] = 0, vaultAddress, ext_call.return_data[44 len 20], mem[128], 0
        call rewardTokenAddress with:
           funct Mask(32, 224, 0, vaultAddress, ext_call.return_data[44 len 20], mem[128], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, 0, vaultAddress, ext_call.return_data[44 len 20], mem[128], 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ('cd', 36).length:
                    revert with memory
                      from 128
                       len ('cd', 36).length
                revert with 0, 'SafeERC20: low-level call failed'
            if ('cd', 36).length:
                require ('cd', 36).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 421] == bool(mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 421])
                if not mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 421]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        emit 0xe3baed4f: cd[4], 0, mem[128], uint16(ext_call.return_data[0]), ext_call.return_data[44 len 20]
    stor2 = 1
}



}
