contract main {




// =====================  Runtime code  =====================


const sub_bb0d82ed(?) = 0xfe129a02e2f2f8f09e3dcebbe7867f1a7c73e84cdd654b8e762ea2b765a40805

const DEFAULT_ADMIN_ROLE = 0


uint8 paused;
mapping of struct roleAdmin;
uint256 stor2;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function paused() {
    return bool(paused)
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
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

function pause() {
    if paused:
        revert with 0, 'Pausable: paused'
    if roleAdmin[0xfe129a02e2f2f8f09e3dcebbe7867f1a7c73e84cdd654b8e762ea2b765a40805][address(msg.sender)].field_0:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
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
        s = 0xfe129a02e2f2f8f09e3dcebbe7867f1a7c73e84cdd654b8e762ea2b765a40805
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

function unpause() {
    if not paused:
        revert with 0, 'Pausable: not paused'
    if roleAdmin[0xfe129a02e2f2f8f09e3dcebbe7867f1a7c73e84cdd654b8e762ea2b765a40805][address(msg.sender)].field_0:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
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
        s = 0xfe129a02e2f2f8f09e3dcebbe7867f1a7c73e84cdd654b8e762ea2b765a40805
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

function withdraw() {
    if paused:
        revert with 0, 'Pausable: paused'
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    if eth.balance(this.address) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
        revert with 0, 17
    if eth.balance(this.address) < 125 * eth.balance(this.address) / 1000:
        revert with 0, 'Address: insufficient balance'
    call 0x2ae2c5ea375acaa8f4af83ef931ea2dc7f36fe57 with:
       value 125 * eth.balance(this.address) / 1000 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
        if eth.balance(this.address) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
            revert with 0, 17
        if eth.balance(this.address) < 125 * eth.balance(this.address) / 1000:
            revert with 0, 'Address: insufficient balance'
        call 0x22e578a5e5b040d6eeddc3fb48e9525a4936e69d with:
           value 125 * eth.balance(this.address) / 1000 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Address: unable to send value, recipient may have reverted'
            if eth.balance(this.address) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
                revert with 0, 17
            if eth.balance(this.address) < 125 * eth.balance(this.address) / 1000:
                revert with 0, 'Address: insufficient balance'
            call 0x5706a40004fb8a1553703e3811391cd7059255cb with:
               value 125 * eth.balance(this.address) / 1000 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'Address: unable to send value, recipient may have reverted'
                if eth.balance(this.address) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
                    revert with 0, 17
                if eth.balance(this.address) < 125 * eth.balance(this.address) / 1000:
                    revert with 0, 'Address: insufficient balance'
                call 0x86d212b1bc0c9ed56a7eb975c3662bf49b7355ee with:
                   value 125 * eth.balance(this.address) / 1000 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'Address: unable to send value, recipient may have reverted'
                    if eth.balance(this.address) > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4f:
                        revert with 0, 17
                    if eth.balance(this.address) < 500 * eth.balance(this.address) / 1000:
                        revert with 0, 'Address: insufficient balance'
                    call 0x3aaf6b9b81e00ac041531e981dfb973d510286ac with:
                       value 500 * eth.balance(this.address) / 1000 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'Address: unable to send value, recipient may have reverted'
                    else:
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                else:
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    if eth.balance(this.address) > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4f:
                        revert with 0, 17
                    if eth.balance(this.address) < 500 * eth.balance(this.address) / 1000:
                        revert with 0, 'Address: insufficient balance'
                    call 0x3aaf6b9b81e00ac041531e981dfb973d510286ac with:
                       value 500 * eth.balance(this.address) / 1000 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
            else:
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                if eth.balance(this.address) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
                    revert with 0, 17
                if eth.balance(this.address) < 125 * eth.balance(this.address) / 1000:
                    revert with 0, 'Address: insufficient balance'
                call 0x86d212b1bc0c9ed56a7eb975c3662bf49b7355ee with:
                   value 125 * eth.balance(this.address) / 1000 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                if eth.balance(this.address) > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4f:
                    revert with 0, 17
                if eth.balance(this.address) < 500 * eth.balance(this.address) / 1000:
                    revert with 0, 'Address: insufficient balance'
                call 0x3aaf6b9b81e00ac041531e981dfb973d510286ac with:
                   value 500 * eth.balance(this.address) / 1000 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
        else:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if eth.balance(this.address) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
                revert with 0, 17
            if eth.balance(this.address) < 125 * eth.balance(this.address) / 1000:
                revert with 0, 'Address: insufficient balance'
            call 0x5706a40004fb8a1553703e3811391cd7059255cb with:
               value 125 * eth.balance(this.address) / 1000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if eth.balance(this.address) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
                revert with 0, 17
            if eth.balance(this.address) < 125 * eth.balance(this.address) / 1000:
                revert with 0, 'Address: insufficient balance'
            call 0x86d212b1bc0c9ed56a7eb975c3662bf49b7355ee with:
               value 125 * eth.balance(this.address) / 1000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if eth.balance(this.address) > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4f:
                revert with 0, 17
            if eth.balance(this.address) < 500 * eth.balance(this.address) / 1000:
                revert with 0, 'Address: insufficient balance'
            call 0x3aaf6b9b81e00ac041531e981dfb973d510286ac with:
               value 500 * eth.balance(this.address) / 1000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if eth.balance(this.address) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
            revert with 0, 17
        if eth.balance(this.address) < 125 * eth.balance(this.address) / 1000:
            revert with 0, 'Address: insufficient balance'
        call 0x22e578a5e5b040d6eeddc3fb48e9525a4936e69d with:
           value 125 * eth.balance(this.address) / 1000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if eth.balance(this.address) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
            revert with 0, 17
        if eth.balance(this.address) < 125 * eth.balance(this.address) / 1000:
            revert with 0, 'Address: insufficient balance'
        call 0x5706a40004fb8a1553703e3811391cd7059255cb with:
           value 125 * eth.balance(this.address) / 1000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if eth.balance(this.address) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
            revert with 0, 17
        if eth.balance(this.address) < 125 * eth.balance(this.address) / 1000:
            revert with 0, 'Address: insufficient balance'
        call 0x86d212b1bc0c9ed56a7eb975c3662bf49b7355ee with:
           value 125 * eth.balance(this.address) / 1000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if eth.balance(this.address) > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4f:
            revert with 0, 17
        if eth.balance(this.address) < 500 * eth.balance(this.address) / 1000:
            revert with 0, 'Address: insufficient balance'
        call 0x3aaf6b9b81e00ac041531e981dfb973d510286ac with:
           value 500 * eth.balance(this.address) / 1000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit Withdrawal(msg.sender, block.timestamp);
    stor2 = 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == Mask(32, 224, arg1)
            if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
                return True
            return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
        if unknown_0x248a9ca3(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            return roleAdmin[arg1].field_256
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
            revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
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
            if uint32(call.func_hash) >> 224 != unknown_0x3ccfd60b(?????):
                if unknown_0x3f4ba83a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if not paused:
                        revert with 0, 'Pausable: not paused'
                    if roleAdmin[0xfe129a02e2f2f8f09e3dcebbe7867f1a7c73e84cdd654b8e762ea2b765a40805][address(msg.sender)].field_0:
                        if not paused:
                            revert with 0, 'Pausable: not paused'
                        paused = 0
                        emit Unpaused(msg.sender);
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
                        s = 0xfe129a02e2f2f8f09e3dcebbe7867f1a7c73e84cdd654b8e762ea2b765a40805
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
                if unknown_0x5c975abb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(paused)
                if unknown_0x8456cb59(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if paused:
                        revert with 0, 'Pausable: paused'
                    if roleAdmin[0xfe129a02e2f2f8f09e3dcebbe7867f1a7c73e84cdd654b8e762ea2b765a40805][address(msg.sender)].field_0:
                        if paused:
                            revert with 0, 'Pausable: paused'
                        paused = 1
                        emit Paused(msg.sender);
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
                        s = 0xfe129a02e2f2f8f09e3dcebbe7867f1a7c73e84cdd654b8e762ea2b765a40805
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
                if unknown_0x91d14854(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg2 == address(arg2)
                    return bool(roleAdmin[arg1][address(arg2)].field_0)
                if unknown_0xa217fddf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0
                if unknown_0xbb0d82ed(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0xfe129a02e2f2f8f09e3dcebbe7867f1a7c73e84cdd654b8e762ea2b765a40805
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
                revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
            require not msg.value
            if paused:
                revert with 0, 'Pausable: paused'
            if stor2 == 2:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor2 = 2
            if eth.balance(this.address) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
                revert with 0, 17
            if eth.balance(this.address) < 125 * eth.balance(this.address) / 1000:
                revert with 0, 'Address: insufficient balance'
            call 0x2ae2c5ea375acaa8f4af83ef931ea2dc7f36fe57 with:
               value 125 * eth.balance(this.address) / 1000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if eth.balance(this.address) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
                revert with 0, 17
            if eth.balance(this.address) < 125 * eth.balance(this.address) / 1000:
                revert with 0, 'Address: insufficient balance'
            call 0x22e578a5e5b040d6eeddc3fb48e9525a4936e69d with:
               value 125 * eth.balance(this.address) / 1000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if eth.balance(this.address) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
                revert with 0, 17
            if eth.balance(this.address) < 125 * eth.balance(this.address) / 1000:
                revert with 0, 'Address: insufficient balance'
            call 0x5706a40004fb8a1553703e3811391cd7059255cb with:
               value 125 * eth.balance(this.address) / 1000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if eth.balance(this.address) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353f:
                revert with 0, 17
            if eth.balance(this.address) < 125 * eth.balance(this.address) / 1000:
                revert with 0, 'Address: insufficient balance'
            call 0x86d212b1bc0c9ed56a7eb975c3662bf49b7355ee with:
               value 125 * eth.balance(this.address) / 1000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            if eth.balance(this.address) > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4f:
                revert with 0, 17
            if eth.balance(this.address) < 500 * eth.balance(this.address) / 1000:
                revert with 0, 'Address: insufficient balance'
            call 0x3aaf6b9b81e00ac041531e981dfb973d510286ac with:
               value 500 * eth.balance(this.address) / 1000 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            emit Withdrawal(msg.sender, block.timestamp);
            stor2 = 1
}



}
