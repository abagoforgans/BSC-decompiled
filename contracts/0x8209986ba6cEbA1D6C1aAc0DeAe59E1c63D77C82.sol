contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 geUnlockTime;
address sub_d2c0db1eAddress;
array of struct stor4;

function owner() {
    return owner
}

function geUnlockTime() {
    return geUnlockTime
}

function sub_d2c0db1e(?) {
    return sub_d2c0db1eAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function setBNBHeroAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d2c0db1eAddress = arg1
    emit UpdatedBNBHeroAddress(arg1);
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    geUnlockTime = block.timestamp + arg1
    emit 0xfe8be007: owner, 0
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 0 days'
    emit 0xfe8be007: owner, stor1
    owner = stor1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function claimBNB(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_d2c0db1eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not allowed to call this function'
    if arg2 > eth.balance(this.address):
        revert with 0, 'Amount is exceeded'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if bool(ext_call.success) != 1:
        revert with 0, 'Transfer failed.'
}

function name() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xa69df4b5(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != name():
                if uint32(call.func_hash) >> 224 != unknown_0x48cafed3(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x62d4e0a1(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                            require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return owner
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        emit 0xfe8be007: owner, 0
                        owner = 0
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_d2c0db1eAddress = address(arg1)
                        emit UpdatedBNBHeroAddress(address(arg1));
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if sub_d2c0db1eAddress != msg.sender:
                        revert with 0, 'You are not allowed to call this function'
                    if arg2 > eth.balance(this.address):
                        revert with 0, 'Amount is exceeded'
                    call address(arg1) with:
                       value arg2 wei
                         gas gas_remaining wei
                    if bool(ext_call.success) != 1:
                        revert with 0, 'Transfer failed.'
            require not msg.value
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4.length):
                        if 31 < uint255(stor4.length) * 0.5:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor4.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                        mem[160] = 256 * stor4.length.field_8
                else:
                    if bool(stor4.length) == stor4.length.field_1 < 32:
                        revert with 0, 34
                    if stor4.length.field_1:
                        if 31 < stor4.length.field_1:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while stor4.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                        mem[160] = 256 * stor4.length.field_8
                mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                    mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor4.length):
                    if 31 < uint255(stor4.length) * 0.5:
                        mem[160] = uint256(stor4.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor4.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                    mem[160] = 256 * stor4.length.field_8
            else:
                if bool(stor4.length) == stor4.length.field_1 < 32:
                    revert with 0, 34
                if stor4.length.field_1:
                    if 31 < stor4.length.field_1:
                        mem[160] = uint256(stor4.field_0)
                        idx = 160
                        s = 0
                        while stor4.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                    mem[160] = 256 * stor4.length.field_8
            mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
            if ceil32(stor4.length.field_1) > stor4.length.field_1:
                mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 224] = 0
            return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
        if unknown_0xa69df4b5(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if stor1 != msg.sender:
                revert with 0, 'You don't have permission to unlock'
            if block.timestamp <= geUnlockTime:
                revert with 0, 'Contract is locked until 0 days'
            emit 0xfe8be007: owner, stor1
            owner = stor1
        else:
            if unknown_0xb6c52324(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return geUnlockTime
            if unknown_0xd2c0db1e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_d2c0db1eAddress
            if unknown_0xdd467064(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor1 = owner
                owner = 0
                if block.timestamp > !arg1:
                    revert with 0, 17
                geUnlockTime = block.timestamp + arg1
                emit 0xfe8be007: owner, 0
            else:
                require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(arg1):
                    revert with 0, 'Ownable: new owner is the zero address'
                emit 0xfe8be007: owner, address(arg1)
                owner = address(arg1)
}



}
