contract main {




// =====================  Runtime code  =====================


address owner;
address sub_48af48a5Address;
address sub_b9cfe2a8Address;
address stor3;
uint256 sub_5fc5e020;
uint256 sub_c383f77b;
uint256 sub_f434ae7d;
uint256 sub_895e8a04;
uint256 sub_bc314195;
uint256 sub_f7fd0bec;
uint256 sub_728d162f;
uint256 sub_aec4ffd5;
uint256 sub_07bce0cd;
uint256 sub_257c8be4;
uint256 stor14;
uint256 sub_c688e671;
uint256 sub_6805a07c;
mapping of struct sub_9d9c453e;
array of address sub_e5a85bf1;

function sub_07bce0cd(?) {
    return sub_07bce0cd
}

function sub_257c8be4(?) {
    return sub_257c8be4
}

function sub_48af48a5(?) {
    return sub_48af48a5Address
}

function sub_5fc5e020(?) {
    return sub_5fc5e020
}

function sub_6805a07c(?) {
    return sub_6805a07c
}

function sub_728d162f(?) {
    return sub_728d162f
}

function sub_895e8a04(?) {
    return sub_895e8a04
}

function owner() {
    return owner
}

function sub_9d9c453e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9d9c453e[arg1].field_0, 
           sub_9d9c453e[arg1].field_256,
           sub_9d9c453e[arg1].field_512,
           bool(sub_9d9c453e[arg1].field_768)
}

function sub_aec4ffd5(?) {
    return sub_aec4ffd5
}

function sub_b9cfe2a8(?) {
    return sub_b9cfe2a8Address
}

function sub_bc314195(?) {
    return sub_bc314195
}

function sub_c383f77b(?) {
    return sub_c383f77b
}

function sub_c688e671(?) {
    return sub_c688e671
}

function sub_e5a85bf1(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e5a85bf1.length
    return address(sub_e5a85bf1[arg1])
}

function sub_f434ae7d(?) {
    return sub_f434ae7d
}

function sub_f7fd0bec(?) {
    return sub_f7fd0bec
}

function kill() {
    if block.timestamp < sub_728d162f:
    emit 0x7ff2f60a: block.timestamp, msg.sender
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args sub_48af48a5Address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    selfdestruct(sub_48af48a5Address)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x9d9c453e(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x4f91440d(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, '[lep][ownable] caller is not the owner'
                        owner = 0
                        emit OwnershipTransferred(owner, 0);
                    if unknown_0x728d162f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_728d162f
                    if unknown_0x895e8a04(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_895e8a04
                    require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return owner
                if uint32(call.func_hash) >> 224 != unknown_0x4f91440d(?????):
                    if unknown_0x5fc5e020(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_5fc5e020
                    if unknown_0x6805a07c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_6805a07c
                    require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if not sub_9d9c453e[address(arg1)].field_256:
                        return 0
                    return sub_9d9c453e[address(arg1)].field_256
                require not msg.value
                if not sub_9d9c453e[msg.sender].field_256:
                    revert with 0, '[lep][staking] you did not stake any tokens!'
                if block.timestamp < stor14:
                    revert with 0, 17
                if block.timestamp - stor14 and sub_257c8be4 > -1 / block.timestamp - stor14:
                    revert with 0, 17
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4) <= ext_call.return_data[0]:
                    if block.timestamp - stor14 <= 0:
                        if not sub_9d9c453e[msg.sender].field_768:
                            sub_9d9c453e[msg.sender].field_768 = 1
                        else:
                            sub_9d9c453e[msg.sender].field_768 = 0
                    else:
                        if sub_aec4ffd5 <= 0:
                            if not sub_9d9c453e[msg.sender].field_768:
                                sub_9d9c453e[msg.sender].field_768 = 1
                            else:
                                sub_9d9c453e[msg.sender].field_768 = 0
                        else:
                            if ext_call.return_data[0] <= 0:
                                if not sub_9d9c453e[msg.sender].field_768:
                                    sub_9d9c453e[msg.sender].field_768 = 1
                                else:
                                    sub_9d9c453e[msg.sender].field_768 = 0
                            else:
                                if sub_e5a85bf1.length:
                                    idx = 0
                                    s = (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4)
                                    t = 0
                                    while idx < sub_e5a85bf1.length:
                                        if not s:
                                            stor14 = block.timestamp
                                            if not sub_9d9c453e[msg.sender].field_768:
                                                sub_9d9c453e[msg.sender].field_768 = 1
                                            else:
                                                sub_9d9c453e[msg.sender].field_768 = 0
                                            emit 0x62f94ded: sub_f434ae7d, bool(sub_9d9c453e[msg.sender].field_768), msg.sender
                                            return bool(sub_9d9c453e[msg.sender].field_768)
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        if not sub_aec4ffd5:
                                            if s and 0 > -1 / s:
                                                revert with 0, 17
                                            if not sub_5fc5e020:
                                                revert with 0, 18
                                            if 0 / sub_5fc5e020 <= s:
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                    if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    mem[0] = address(sub_e5a85bf1[idx])
                                                    mem[32] = 17
                                                    sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                                else:
                                                    if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    mem[0] = address(sub_e5a85bf1[idx])
                                                    mem[32] = 17
                                                    sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                                    if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    sub_aec4ffd5 += 0 / sub_5fc5e020
                                                if s < 0 / sub_5fc5e020:
                                                    revert with 0, 17
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                s = s - (0 / sub_5fc5e020)
                                                t = 0 / sub_5fc5e020
                                                continue 
                                        else:
                                            if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                                revert with 0, 17
                                            if not sub_aec4ffd5:
                                                revert with 0, 18
                                            if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                                revert with 0, 17
                                            if not sub_5fc5e020:
                                                revert with 0, 18
                                            if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                    if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    mem[0] = address(sub_e5a85bf1[idx])
                                                    mem[32] = 17
                                                    sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                else:
                                                    if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    mem[0] = address(sub_e5a85bf1[idx])
                                                    mem[32] = 17
                                                    sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                    revert with 0, 17
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                                t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                continue 
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        if not sub_9d9c453e[address(stor18[idx])].field_768:
                                            if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 17
                                            sub_9d9c453e[address(stor18[idx])].field_512 += s
                                        else:
                                            if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 17
                                            sub_9d9c453e[address(stor18[idx])].field_256 += s
                                            if sub_aec4ffd5 > !s:
                                                revert with 0, 17
                                            sub_aec4ffd5 += s
                                        if s < s:
                                            revert with 0, 17
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 0
                                        t = s
                                        continue 
                                    stor14 = block.timestamp
                                if not sub_9d9c453e[msg.sender].field_768:
                                    sub_9d9c453e[msg.sender].field_768 = 1
                                else:
                                    sub_9d9c453e[msg.sender].field_768 = 0
                else:
                    if block.timestamp - stor14 <= 0:
                        if not sub_9d9c453e[msg.sender].field_768:
                            sub_9d9c453e[msg.sender].field_768 = 1
                        else:
                            sub_9d9c453e[msg.sender].field_768 = 0
                    else:
                        if sub_aec4ffd5 <= 0:
                            if not sub_9d9c453e[msg.sender].field_768:
                                sub_9d9c453e[msg.sender].field_768 = 1
                            else:
                                sub_9d9c453e[msg.sender].field_768 = 0
                        else:
                            if ext_call.return_data[0] <= 0:
                                if not sub_9d9c453e[msg.sender].field_768:
                                    sub_9d9c453e[msg.sender].field_768 = 1
                                else:
                                    sub_9d9c453e[msg.sender].field_768 = 0
                            else:
                                if sub_e5a85bf1.length:
                                    idx = 0
                                    s = ext_call.return_data[0]
                                    t = 0
                                    while idx < sub_e5a85bf1.length:
                                        if not s:
                                            stor14 = block.timestamp
                                            if not sub_9d9c453e[msg.sender].field_768:
                                                sub_9d9c453e[msg.sender].field_768 = 1
                                            else:
                                                sub_9d9c453e[msg.sender].field_768 = 0
                                            emit 0x62f94ded: sub_f434ae7d, bool(sub_9d9c453e[msg.sender].field_768), msg.sender
                                            return bool(sub_9d9c453e[msg.sender].field_768)
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        if not sub_aec4ffd5:
                                            if s and 0 > -1 / s:
                                                revert with 0, 17
                                            if not sub_5fc5e020:
                                                revert with 0, 18
                                            if 0 / sub_5fc5e020 <= s:
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                    if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    mem[0] = address(sub_e5a85bf1[idx])
                                                    mem[32] = 17
                                                    sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                                else:
                                                    if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    mem[0] = address(sub_e5a85bf1[idx])
                                                    mem[32] = 17
                                                    sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                                    if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    sub_aec4ffd5 += 0 / sub_5fc5e020
                                                if s < 0 / sub_5fc5e020:
                                                    revert with 0, 17
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                s = s - (0 / sub_5fc5e020)
                                                t = 0 / sub_5fc5e020
                                                continue 
                                        else:
                                            if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                                revert with 0, 17
                                            if not sub_aec4ffd5:
                                                revert with 0, 18
                                            if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                                revert with 0, 17
                                            if not sub_5fc5e020:
                                                revert with 0, 18
                                            if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                    if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    mem[0] = address(sub_e5a85bf1[idx])
                                                    mem[32] = 17
                                                    sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                else:
                                                    if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    mem[0] = address(sub_e5a85bf1[idx])
                                                    mem[32] = 17
                                                    sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                        revert with 0, 17
                                                    sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                    revert with 0, 17
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                                t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                continue 
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        if not sub_9d9c453e[address(stor18[idx])].field_768:
                                            if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 17
                                            sub_9d9c453e[address(stor18[idx])].field_512 += s
                                        else:
                                            if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 17
                                            sub_9d9c453e[address(stor18[idx])].field_256 += s
                                            if sub_aec4ffd5 > !s:
                                                revert with 0, 17
                                            sub_aec4ffd5 += s
                                        if s < s:
                                            revert with 0, 17
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = 0
                                        t = s
                                        continue 
                                    stor14 = block.timestamp
                                if not sub_9d9c453e[msg.sender].field_768:
                                    sub_9d9c453e[msg.sender].field_768 = 1
                                else:
                                    sub_9d9c453e[msg.sender].field_768 = 0
                emit 0x62f94ded: sub_f434ae7d, bool(sub_9d9c453e[msg.sender].field_768), msg.sender
                return bool(sub_9d9c453e[msg.sender].field_768)
            if unknown_0x2def6620(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x07bce0cd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_07bce0cd
                if uint32(call.func_hash) >> 224 != info(address arg1):
                    require unknown_0x257c8be4(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_257c8be4
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if not sub_9d9c453e[address(arg1)].field_0:
                    if not sub_9d9c453e[address(arg1)].field_256:
                        revert with 0, '[lep][staking] wallet has never staked!'
                if not sub_aec4ffd5:
                    return sub_9d9c453e[address(arg1)].field_256, 
                           sub_9d9c453e[address(arg1)].field_512,
                           sub_9d9c453e[address(arg1)].field_0,
                           bool(sub_9d9c453e[address(arg1)].field_768)
                if block.timestamp < stor14:
                    revert with 0, 17
                if block.timestamp - stor14 and sub_257c8be4 > -1 / block.timestamp - stor14:
                    revert with 0, 17
                if not sub_aec4ffd5:
                    if (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4) and 0 > -1 / (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4):
                        revert with 0, 17
                    if not sub_5fc5e020:
                        revert with 0, 18
                    if sub_9d9c453e[address(arg1)].field_512 > !(0 / sub_5fc5e020):
                        revert with 0, 17
                    return sub_9d9c453e[address(arg1)].field_256, 
                           sub_9d9c453e[address(arg1)].field_512 + (0 / sub_5fc5e020),
                           sub_9d9c453e[address(arg1)].field_0,
                           bool(sub_9d9c453e[address(arg1)].field_768)
                if sub_9d9c453e[address(arg1)].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(arg1)].field_256:
                    revert with 0, 17
                if not sub_aec4ffd5:
                    revert with 0, 18
                if (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4) and sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4):
                    revert with 0, 17
                if not sub_5fc5e020:
                    revert with 0, 18
                if sub_9d9c453e[address(arg1)].field_512 > !((block.timestamp * sub_257c8be4 * sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5) - (stor14 * sub_257c8be4 * sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5) / sub_5fc5e020):
                    revert with 0, 17
                return sub_9d9c453e[address(arg1)].field_256, 
                       sub_9d9c453e[address(arg1)].field_512 + ((block.timestamp * sub_257c8be4 * sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5) - (stor14 * sub_257c8be4 * sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5) / sub_5fc5e020),
                       sub_9d9c453e[address(arg1)].field_0,
                       bool(sub_9d9c453e[address(arg1)].field_768)
            if uint32(call.func_hash) >> 224 != unknown_0x2def6620(?????):
                if unknown_0x41c0e1b5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if block.timestamp < sub_728d162f:
                    emit 0x7ff2f60a: block.timestamp, msg.sender
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(stor3)
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_48af48a5Address, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    selfdestruct(sub_48af48a5Address)
                if unknown_0x48af48a5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_48af48a5Address
                require unknown_0x4e71d92d(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if not sub_9d9c453e[msg.sender].field_512:
                    revert with 0, '[lep][staking] you have no interest to claim!'
                if sub_9d9c453e[msg.sender].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                '[lep][staking] you have enabled restake, can't claim when restake is enabled!'
                require ext_code.size(stor3)
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_9d9c453e[msg.sender].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, '[lep][staking] token transfer failed!'
                sub_9d9c453e[msg.sender].field_512 = 0
                if sub_9d9c453e[address(msg.sender)].field_0 > !sub_9d9c453e[msg.sender].field_512:
                    revert with 0, 17
                sub_9d9c453e[msg.sender].field_0 = sub_9d9c453e[address(msg.sender)].field_0 + sub_9d9c453e[msg.sender].field_512
                emit 0x5809e350: sub_f434ae7d, msg.sender, sub_9d9c453e[msg.sender].field_512
            else:
                require not msg.value
                if block.timestamp < sub_f7fd0bec:
                    revert with 0, '[lep][staking] contract has not ended yet, be patient!'
                if not sub_9d9c453e[msg.sender].field_256:
                    revert with 0, '[lep][staking] you did not stake any tokens!'
                if block.timestamp < stor14:
                    revert with 0, 17
                if block.timestamp - stor14 and sub_257c8be4 > -1 / block.timestamp - stor14:
                    revert with 0, 17
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4) <= ext_call.return_data[0]:
                    if block.timestamp - stor14 > 0:
                        if sub_aec4ffd5 > 0:
                            if ext_call.return_data[0] > 0:
                                if sub_e5a85bf1.length:
                                    idx = 0
                                    s = (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4)
                                    t = 0
                                    while idx < sub_e5a85bf1.length:
                                        if s:
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_aec4ffd5:
                                                if s and 0 > -1 / s:
                                                    revert with 0, 17
                                                if not sub_5fc5e020:
                                                    revert with 0, 18
                                                if 0 / sub_5fc5e020 <= s:
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                                        if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        sub_aec4ffd5 += 0 / sub_5fc5e020
                                                    if s < 0 / sub_5fc5e020:
                                                        revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    s = s - (0 / sub_5fc5e020)
                                                    t = 0 / sub_5fc5e020
                                                    continue 
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                                    revert with 0, 17
                                                if not sub_aec4ffd5:
                                                    revert with 0, 18
                                                if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                                    revert with 0, 17
                                                if not sub_5fc5e020:
                                                    revert with 0, 18
                                                if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                        if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                        revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                                    t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    continue 
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_512 += s
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_256 += s
                                                if sub_aec4ffd5 > !s:
                                                    revert with 0, 17
                                                sub_aec4ffd5 += s
                                            if s < s:
                                                revert with 0, 17
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = 0
                                            t = s
                                            continue 
                                        stor14 = block.timestamp
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if sub_9d9c453e[msg.sender].field_256 > !sub_9d9c453e[msg.sender].field_512:
                                            revert with 0, 17
                                        require ext_code.size(stor3)
                                        if sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512 <= ext_call.return_data[0]:
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, '[lep][staking] token transfer failed!'
                                            if sub_9d9c453e[address(msg.sender)].field_0 > !sub_9d9c453e[msg.sender].field_512:
                                                revert with 0, 17
                                            sub_9d9c453e[msg.sender].field_0 = sub_9d9c453e[address(msg.sender)].field_0 + sub_9d9c453e[msg.sender].field_512
                                            sub_9d9c453e[msg.sender].field_256 = 0
                                            sub_9d9c453e[msg.sender].field_512 = 0
                                            if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512:
                                                revert with 0, 17
                                            sub_aec4ffd5 = sub_aec4ffd5 - sub_9d9c453e[msg.sender].field_256 - sub_9d9c453e[msg.sender].field_512
                                            if sub_6805a07c < 1:
                                                revert with 0, 17
                                            sub_6805a07c--
                                            emit 0x3bf8e204: sub_f434ae7d, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512, sub_9d9c453e[msg.sender].field_0, msg.sender
                                        else:
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, '[lep][staking] token transfer failed!'
                                            if sub_9d9c453e[address(msg.sender)].field_0 > !sub_9d9c453e[msg.sender].field_512:
                                                revert with 0, 17
                                            sub_9d9c453e[msg.sender].field_0 = sub_9d9c453e[address(msg.sender)].field_0 + sub_9d9c453e[msg.sender].field_512
                                            sub_9d9c453e[msg.sender].field_256 = 0
                                            sub_9d9c453e[msg.sender].field_512 = 0
                                            if sub_aec4ffd5 < ext_call.return_data[0]:
                                                revert with 0, 17
                                            sub_aec4ffd5 -= ext_call.return_data[0]
                                            if sub_6805a07c < 1:
                                                revert with 0, 17
                                            sub_6805a07c--
                                            emit 0x3bf8e204: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_0, msg.sender
                                    stor14 = block.timestamp
                else:
                    if block.timestamp - stor14 > 0:
                        if sub_aec4ffd5 > 0:
                            if ext_call.return_data[0] > 0:
                                if sub_e5a85bf1.length:
                                    idx = 0
                                    s = ext_call.return_data[0]
                                    t = 0
                                    while idx < sub_e5a85bf1.length:
                                        if s:
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_aec4ffd5:
                                                if s and 0 > -1 / s:
                                                    revert with 0, 17
                                                if not sub_5fc5e020:
                                                    revert with 0, 18
                                                if 0 / sub_5fc5e020 <= s:
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                                        if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        sub_aec4ffd5 += 0 / sub_5fc5e020
                                                    if s < 0 / sub_5fc5e020:
                                                        revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    s = s - (0 / sub_5fc5e020)
                                                    t = 0 / sub_5fc5e020
                                                    continue 
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                                    revert with 0, 17
                                                if not sub_aec4ffd5:
                                                    revert with 0, 18
                                                if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                                    revert with 0, 17
                                                if not sub_5fc5e020:
                                                    revert with 0, 18
                                                if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                        if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                        revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                                    t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    continue 
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_512 += s
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_256 += s
                                                if sub_aec4ffd5 > !s:
                                                    revert with 0, 17
                                                sub_aec4ffd5 += s
                                            if s < s:
                                                revert with 0, 17
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = 0
                                            t = s
                                            continue 
                                        stor14 = block.timestamp
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if sub_9d9c453e[msg.sender].field_256 > !sub_9d9c453e[msg.sender].field_512:
                                            revert with 0, 17
                                        require ext_code.size(stor3)
                                        if sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512 <= ext_call.return_data[0]:
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, '[lep][staking] token transfer failed!'
                                            if sub_9d9c453e[address(msg.sender)].field_0 > !sub_9d9c453e[msg.sender].field_512:
                                                revert with 0, 17
                                            sub_9d9c453e[msg.sender].field_0 = sub_9d9c453e[address(msg.sender)].field_0 + sub_9d9c453e[msg.sender].field_512
                                            sub_9d9c453e[msg.sender].field_256 = 0
                                            sub_9d9c453e[msg.sender].field_512 = 0
                                            if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512:
                                                revert with 0, 17
                                            sub_aec4ffd5 = sub_aec4ffd5 - sub_9d9c453e[msg.sender].field_256 - sub_9d9c453e[msg.sender].field_512
                                            if sub_6805a07c < 1:
                                                revert with 0, 17
                                            sub_6805a07c--
                                            emit 0x3bf8e204: sub_f434ae7d, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512, sub_9d9c453e[msg.sender].field_0, msg.sender
                                        else:
                                            call stor3.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, '[lep][staking] token transfer failed!'
                                            if sub_9d9c453e[address(msg.sender)].field_0 > !sub_9d9c453e[msg.sender].field_512:
                                                revert with 0, 17
                                            sub_9d9c453e[msg.sender].field_0 = sub_9d9c453e[address(msg.sender)].field_0 + sub_9d9c453e[msg.sender].field_512
                                            sub_9d9c453e[msg.sender].field_256 = 0
                                            sub_9d9c453e[msg.sender].field_512 = 0
                                            if sub_aec4ffd5 < ext_call.return_data[0]:
                                                revert with 0, 17
                                            sub_aec4ffd5 -= ext_call.return_data[0]
                                            if sub_6805a07c < 1:
                                                revert with 0, 17
                                            sub_6805a07c--
                                            emit 0x3bf8e204: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_0, msg.sender
                                    stor14 = block.timestamp
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_9d9c453e[msg.sender].field_256 > !sub_9d9c453e[msg.sender].field_512:
                    revert with 0, 17
                require ext_code.size(stor3)
                if sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512 <= ext_call.return_data[0]:
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, '[lep][staking] token transfer failed!'
                    if sub_9d9c453e[address(msg.sender)].field_0 > !sub_9d9c453e[msg.sender].field_512:
                        revert with 0, 17
                    sub_9d9c453e[msg.sender].field_0 = sub_9d9c453e[address(msg.sender)].field_0 + sub_9d9c453e[msg.sender].field_512
                    sub_9d9c453e[msg.sender].field_256 = 0
                    sub_9d9c453e[msg.sender].field_512 = 0
                    if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512:
                        revert with 0, 17
                    sub_aec4ffd5 = sub_aec4ffd5 - sub_9d9c453e[msg.sender].field_256 - sub_9d9c453e[msg.sender].field_512
                    if sub_6805a07c < 1:
                        revert with 0, 17
                    sub_6805a07c--
                    emit 0x3bf8e204: sub_f434ae7d, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512, sub_9d9c453e[msg.sender].field_0, msg.sender
                else:
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, '[lep][staking] token transfer failed!'
                    if sub_9d9c453e[address(msg.sender)].field_0 > !sub_9d9c453e[msg.sender].field_512:
                        revert with 0, 17
                    sub_9d9c453e[msg.sender].field_0 = sub_9d9c453e[address(msg.sender)].field_0 + sub_9d9c453e[msg.sender].field_512
                    sub_9d9c453e[msg.sender].field_256 = 0
                    sub_9d9c453e[msg.sender].field_512 = 0
                    if sub_aec4ffd5 < ext_call.return_data[0]:
                        revert with 0, 17
                    sub_aec4ffd5 -= ext_call.return_data[0]
                    if sub_6805a07c < 1:
                        revert with 0, 17
                    sub_6805a07c--
                    emit 0x3bf8e204: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_0, msg.sender
        else:
            if unknown_0xc648e633(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xaec4ffd5(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xaec4ffd5(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_aec4ffd5
                    if unknown_0xb9cfe2a8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_b9cfe2a8Address
                    if unknown_0xbc314195(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_bc314195
                    require unknown_0xc383f77b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_c383f77b
                if unknown_0x9d9c453e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return sub_9d9c453e[arg1].field_0, 
                           sub_9d9c453e[arg1].field_256,
                           sub_9d9c453e[arg1].field_512,
                           bool(sub_9d9c453e[arg1].field_768)
                if unknown_0xa2e62045(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if block.timestamp < stor14:
                        revert with 0, 17
                    if block.timestamp - stor14 and sub_257c8be4 > -1 / block.timestamp - stor14:
                        revert with 0, 17
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4) <= ext_call.return_data[0]:
                        if block.timestamp - stor14 > 0:
                            if sub_aec4ffd5 > 0:
                                if ext_call.return_data[0] > 0:
                                    if sub_e5a85bf1.length:
                                        idx = 0
                                        s = (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4)
                                        t = 0
                                        while idx < sub_e5a85bf1.length:
                                            if not s:
                                                stor14 = block.timestamp
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_aec4ffd5:
                                                if s and 0 > -1 / s:
                                                    revert with 0, 17
                                                if not sub_5fc5e020:
                                                    revert with 0, 18
                                                if 0 / sub_5fc5e020 <= s:
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                                        if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        sub_aec4ffd5 += 0 / sub_5fc5e020
                                                    if s < 0 / sub_5fc5e020:
                                                        revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    s = s - (0 / sub_5fc5e020)
                                                    t = 0 / sub_5fc5e020
                                                    continue 
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                                    revert with 0, 17
                                                if not sub_aec4ffd5:
                                                    revert with 0, 18
                                                if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                                    revert with 0, 17
                                                if not sub_5fc5e020:
                                                    revert with 0, 18
                                                if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                        if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                        revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                                    t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    continue 
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_512 += s
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_256 += s
                                                if sub_aec4ffd5 > !s:
                                                    revert with 0, 17
                                                sub_aec4ffd5 += s
                                            if s < s:
                                                revert with 0, 17
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = 0
                                            t = s
                                            continue 
                                        stor14 = block.timestamp
                    else:
                        if block.timestamp - stor14 > 0:
                            if sub_aec4ffd5 > 0:
                                if ext_call.return_data[0] > 0:
                                    if sub_e5a85bf1.length:
                                        idx = 0
                                        s = ext_call.return_data[0]
                                        t = 0
                                        while idx < sub_e5a85bf1.length:
                                            if not s:
                                                stor14 = block.timestamp
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_aec4ffd5:
                                                if s and 0 > -1 / s:
                                                    revert with 0, 17
                                                if not sub_5fc5e020:
                                                    revert with 0, 18
                                                if 0 / sub_5fc5e020 <= s:
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                                        if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        sub_aec4ffd5 += 0 / sub_5fc5e020
                                                    if s < 0 / sub_5fc5e020:
                                                        revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    s = s - (0 / sub_5fc5e020)
                                                    t = 0 / sub_5fc5e020
                                                    continue 
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                                    revert with 0, 17
                                                if not sub_aec4ffd5:
                                                    revert with 0, 18
                                                if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                                    revert with 0, 17
                                                if not sub_5fc5e020:
                                                    revert with 0, 18
                                                if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                        if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                            revert with 0, 17
                                                        sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                        revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                                    t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                    continue 
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_512 += s
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_256 += s
                                                if sub_aec4ffd5 > !s:
                                                    revert with 0, 17
                                                sub_aec4ffd5 += s
                                            if s < s:
                                                revert with 0, 17
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = 0
                                            t = s
                                            continue 
                                        stor14 = block.timestamp
                else:
                    require unknown_0xa5843f08(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    if owner != msg.sender:
                        revert with 0, '[lep][ownable] caller is not the owner'
                    sub_f434ae7d = arg2
                    sub_895e8a04 = block.timestamp
                    if arg2 and 24 * 3600 > -1 / arg2:
                        revert with 0, 17
                    if arg1 > !(24 * 3600 * arg2):
                        revert with 0, 17
                    sub_f7fd0bec = arg1 + (24 * 3600 * arg2)
                    if arg1 + (24 * 3600 * arg2) > -15552001:
                        revert with 0, 17
                    sub_728d162f = arg1 + (24 * 3600 * arg2) + (4320 * 24 * 3600)
                    if sub_f7fd0bec < sub_895e8a04:
                        revert with 0, 17
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    sub_07bce0cd = ext_call.return_data[0]
                    if ext_call.return_data[0] and sub_5fc5e020 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not sub_f7fd0bec - sub_895e8a04:
                        revert with 0, 18
                    if not sub_5fc5e020:
                        revert with 0, 18
                    sub_257c8be4 = ext_call.return_data[0] * sub_5fc5e020 / sub_f7fd0bec - sub_895e8a04 / sub_5fc5e020
                    stor14 = block.timestamp
            else:
                if unknown_0xe5a85bf1(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xe5a85bf1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 < sub_e5a85bf1.length
                        return address(sub_e5a85bf1[arg1])
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        if unknown_0xf434ae7d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_f434ae7d
                        require unknown_0xf7fd0bec(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_f7fd0bec
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, '[lep][ownable] caller is not the owner'
                    if not address(arg1):
                        revert with 0, '[lep][ownable] new owner is the zero address'
                    owner = address(arg1)
                    emit OwnershipTransferred(owner, address(arg1));
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xc648e633(?????):
                        if unknown_0xc688e671(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_c688e671
                        if unknown_0xd5389126(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if block.timestamp < stor14:
                                revert with 0, 17
                            if block.timestamp - stor14 < sub_bc314195:
                                return 0
                            return 1
                        require unknown_0xd80528ae(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < sub_aec4ffd5:
                            revert with 0, 17
                        return sub_07bce0cd, sub_257c8be4, ext_call.return_data[0] - sub_aec4ffd5, sub_e5a85bf1.length, sub_c688e671, stor14
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg2 == bool(arg2)
                    require arg3 == bool(arg3)
                    if block.timestamp < sub_895e8a04:
                        revert with 0, '[lep][staking] contract has not started yet!'
                    if block.timestamp > sub_f7fd0bec:
                        revert with 0, '[lep][staking] contract has ended, no more staking possible!'
                    if sub_e5a85bf1.length > sub_c688e671:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    '[lep][staking] max staking reached, no more additional wallets can join!'
                    if not arg2:
                        if arg1 < sub_c383f77b:
                            revert with 0, '[lep][staking] you can't stake less than the minimum amount!'
                        require ext_code.size(stor3)
                        staticcall stor3.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            revert with 0, '[lep][staking] you can't stake more tokens than you have approved!'
                        if ext_call.return_data[0] < arg1:
                            revert with 0, '[lep][staking] you do not have enough tokens in your wallet to stake this much!'
                        if block.timestamp < stor14:
                            revert with 0, 17
                        if block.timestamp - stor14 and sub_257c8be4 > -1 / block.timestamp - stor14:
                            revert with 0, 17
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4) <= ext_call.return_data[0]:
                            if block.timestamp - stor14 > 0:
                                if sub_aec4ffd5 > 0:
                                    if ext_call.return_data[0] > 0:
                                        if sub_e5a85bf1.length:
                                            idx = 0
                                            s = (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4)
                                            t = 0
                                            while idx < sub_e5a85bf1.length:
                                                if s:
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_aec4ffd5:
                                                        if s and 0 > -1 / s:
                                                            revert with 0, 17
                                                        if not sub_5fc5e020:
                                                            revert with 0, 18
                                                        if 0 / sub_5fc5e020 <= s:
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                                            else:
                                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                                                if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                sub_aec4ffd5 += 0 / sub_5fc5e020
                                                            if s < 0 / sub_5fc5e020:
                                                                revert with 0, 17
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            idx = idx + 1
                                                            s = s - (0 / sub_5fc5e020)
                                                            t = 0 / sub_5fc5e020
                                                            continue 
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                                            revert with 0, 17
                                                        if not sub_aec4ffd5:
                                                            revert with 0, 18
                                                        if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                                            revert with 0, 17
                                                        if not sub_5fc5e020:
                                                            revert with 0, 18
                                                        if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                            else:
                                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                                if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                            if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                                revert with 0, 17
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            idx = idx + 1
                                                            s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                                            t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                            continue 
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_512 += s
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_256 += s
                                                        if sub_aec4ffd5 > !s:
                                                            revert with 0, 17
                                                        sub_aec4ffd5 += s
                                                    if s < s:
                                                        revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    s = 0
                                                    t = s
                                                    continue 
                                                stor14 = block.timestamp
                                                require ext_code.size(stor3)
                                                call stor3.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, this.address, arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, '[lep][staking] token transfer failed!'
                                                if sub_aec4ffd5 > !arg1:
                                                    revert with 0, 17
                                                sub_aec4ffd5 += arg1
                                                if sub_9d9c453e[msg.sender].field_256:
                                                    if sub_9d9c453e[msg.sender].field_256 > !arg1:
                                                        revert with 0, 17
                                                    sub_9d9c453e[msg.sender].field_256 += arg1
                                                    if not sub_aec4ffd5:
                                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256 + arg1, 0, sub_5fc5e020, 1, msg.sender
                                                    else:
                                                        if sub_9d9c453e[msg.sender].field_256 + arg1 and sub_5fc5e020 > -1 / sub_9d9c453e[msg.sender].field_256 + arg1:
                                                            revert with 0, 17
                                                        if not sub_aec4ffd5:
                                                            revert with 0, 18
                                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256 + arg1, (sub_9d9c453e[msg.sender].field_256 * sub_5fc5e020) + (arg1 * sub_5fc5e020) / sub_aec4ffd5, sub_5fc5e020, 1, msg.sender
                                                else:
                                                    sub_9d9c453e[msg.sender].field_256 = arg1
                                                    sub_9d9c453e[msg.sender].field_768 = uint8(bool(arg3))
                                                    sub_e5a85bf1.length++
                                                    uint256(sub_e5a85bf1[sub_e5a85bf1.length]) = msg.sender or Mask(96, 160, uint256(sub_e5a85bf1[sub_e5a85bf1.length]))
                                                    if sub_6805a07c > -2:
                                                        revert with 0, 17
                                                    sub_6805a07c++
                                                    if not sub_aec4ffd5:
                                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, arg1, 0, sub_5fc5e020, 0, msg.sender
                                                    else:
                                                        if arg1 and sub_5fc5e020 > -1 / arg1:
                                                            revert with 0, 17
                                                        if not sub_aec4ffd5:
                                                            revert with 0, 18
                                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, arg1, arg1 * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                                                if sub_c688e671 < sub_e5a85bf1.length:
                                                    revert with 0, 17
                                                emit 0xf58ee64c: (sub_c688e671 - sub_e5a85bf1.length)
                                            stor14 = block.timestamp
                        else:
                            if block.timestamp - stor14 > 0:
                                if sub_aec4ffd5 > 0:
                                    if ext_call.return_data[0] > 0:
                                        if sub_e5a85bf1.length:
                                            idx = 0
                                            s = ext_call.return_data[0]
                                            t = 0
                                            while idx < sub_e5a85bf1.length:
                                                if s:
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_aec4ffd5:
                                                        if s and 0 > -1 / s:
                                                            revert with 0, 17
                                                        if not sub_5fc5e020:
                                                            revert with 0, 18
                                                        if 0 / sub_5fc5e020 <= s:
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                                            else:
                                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                                                if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                sub_aec4ffd5 += 0 / sub_5fc5e020
                                                            if s < 0 / sub_5fc5e020:
                                                                revert with 0, 17
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            idx = idx + 1
                                                            s = s - (0 / sub_5fc5e020)
                                                            t = 0 / sub_5fc5e020
                                                            continue 
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                                            revert with 0, 17
                                                        if not sub_aec4ffd5:
                                                            revert with 0, 18
                                                        if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                                            revert with 0, 17
                                                        if not sub_5fc5e020:
                                                            revert with 0, 18
                                                        if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                            else:
                                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                                if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                            if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                                revert with 0, 17
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            idx = idx + 1
                                                            s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                                            t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                            continue 
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_512 += s
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_256 += s
                                                        if sub_aec4ffd5 > !s:
                                                            revert with 0, 17
                                                        sub_aec4ffd5 += s
                                                    if s < s:
                                                        revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    s = 0
                                                    t = s
                                                    continue 
                                                stor14 = block.timestamp
                                                require ext_code.size(stor3)
                                                call stor3.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, this.address, arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, '[lep][staking] token transfer failed!'
                                                if sub_aec4ffd5 > !arg1:
                                                    revert with 0, 17
                                                sub_aec4ffd5 += arg1
                                                if sub_9d9c453e[msg.sender].field_256:
                                                    if sub_9d9c453e[msg.sender].field_256 > !arg1:
                                                        revert with 0, 17
                                                    sub_9d9c453e[msg.sender].field_256 += arg1
                                                    if not sub_aec4ffd5:
                                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256 + arg1, 0, sub_5fc5e020, 1, msg.sender
                                                    else:
                                                        if sub_9d9c453e[msg.sender].field_256 + arg1 and sub_5fc5e020 > -1 / sub_9d9c453e[msg.sender].field_256 + arg1:
                                                            revert with 0, 17
                                                        if not sub_aec4ffd5:
                                                            revert with 0, 18
                                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256 + arg1, (sub_9d9c453e[msg.sender].field_256 * sub_5fc5e020) + (arg1 * sub_5fc5e020) / sub_aec4ffd5, sub_5fc5e020, 1, msg.sender
                                                else:
                                                    sub_9d9c453e[msg.sender].field_256 = arg1
                                                    sub_9d9c453e[msg.sender].field_768 = uint8(bool(arg3))
                                                    sub_e5a85bf1.length++
                                                    uint256(sub_e5a85bf1[sub_e5a85bf1.length]) = msg.sender or Mask(96, 160, uint256(sub_e5a85bf1[sub_e5a85bf1.length]))
                                                    if sub_6805a07c > -2:
                                                        revert with 0, 17
                                                    sub_6805a07c++
                                                    if not sub_aec4ffd5:
                                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, arg1, 0, sub_5fc5e020, 0, msg.sender
                                                    else:
                                                        if arg1 and sub_5fc5e020 > -1 / arg1:
                                                            revert with 0, 17
                                                        if not sub_aec4ffd5:
                                                            revert with 0, 18
                                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, arg1, arg1 * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                                                if sub_c688e671 < sub_e5a85bf1.length:
                                                    revert with 0, 17
                                                emit 0xf58ee64c: (sub_c688e671 - sub_e5a85bf1.length)
                                            stor14 = block.timestamp
                        require ext_code.size(stor3)
                        call stor3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, '[lep][staking] token transfer failed!'
                        if sub_aec4ffd5 > !arg1:
                            revert with 0, 17
                        sub_aec4ffd5 += arg1
                        if sub_9d9c453e[msg.sender].field_256:
                            if sub_9d9c453e[msg.sender].field_256 > !arg1:
                                revert with 0, 17
                            sub_9d9c453e[msg.sender].field_256 += arg1
                            if not sub_aec4ffd5:
                                emit 0xa5cc51a9: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256 + arg1, 0, sub_5fc5e020, 1, msg.sender
                            else:
                                if sub_9d9c453e[msg.sender].field_256 + arg1 and sub_5fc5e020 > -1 / sub_9d9c453e[msg.sender].field_256 + arg1:
                                    revert with 0, 17
                                if not sub_aec4ffd5:
                                    revert with 0, 18
                                emit 0xa5cc51a9: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256 + arg1, (sub_9d9c453e[msg.sender].field_256 * sub_5fc5e020) + (arg1 * sub_5fc5e020) / sub_aec4ffd5, sub_5fc5e020, 1, msg.sender
                        else:
                            sub_9d9c453e[msg.sender].field_256 = arg1
                            sub_9d9c453e[msg.sender].field_768 = uint8(bool(arg3))
                            sub_e5a85bf1.length++
                            uint256(sub_e5a85bf1[sub_e5a85bf1.length]) = msg.sender or Mask(96, 160, uint256(sub_e5a85bf1[sub_e5a85bf1.length]))
                            if sub_6805a07c > -2:
                                revert with 0, 17
                            sub_6805a07c++
                            if not sub_aec4ffd5:
                                emit 0xa5cc51a9: sub_f434ae7d, arg1, arg1, 0, sub_5fc5e020, 0, msg.sender
                            else:
                                if arg1 and sub_5fc5e020 > -1 / arg1:
                                    revert with 0, 17
                                if not sub_aec4ffd5:
                                    revert with 0, 18
                                emit 0xa5cc51a9: sub_f434ae7d, arg1, arg1, arg1 * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < sub_c383f77b:
                            revert with 0, '[lep][staking] you can't stake less than the minimum amount!'
                        require ext_code.size(stor3)
                        staticcall stor3.0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, '[lep][staking] you can't stake more tokens than you have approved!'
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, '[lep][staking] you do not have enough tokens in your wallet to stake this much!'
                        if block.timestamp < stor14:
                            revert with 0, 17
                        if block.timestamp - stor14 and sub_257c8be4 > -1 / block.timestamp - stor14:
                            revert with 0, 17
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4) <= ext_call.return_data[0]:
                            if block.timestamp - stor14 > 0:
                                if sub_aec4ffd5 > 0:
                                    if ext_call.return_data[0] > 0:
                                        if sub_e5a85bf1.length:
                                            idx = 0
                                            s = (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4)
                                            t = 0
                                            while idx < sub_e5a85bf1.length:
                                                if s:
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_aec4ffd5:
                                                        if s and 0 > -1 / s:
                                                            revert with 0, 17
                                                        if not sub_5fc5e020:
                                                            revert with 0, 18
                                                        if 0 / sub_5fc5e020 <= s:
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                                            else:
                                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                                                if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                sub_aec4ffd5 += 0 / sub_5fc5e020
                                                            if s < 0 / sub_5fc5e020:
                                                                revert with 0, 17
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            idx = idx + 1
                                                            s = s - (0 / sub_5fc5e020)
                                                            t = 0 / sub_5fc5e020
                                                            continue 
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                                            revert with 0, 17
                                                        if not sub_aec4ffd5:
                                                            revert with 0, 18
                                                        if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                                            revert with 0, 17
                                                        if not sub_5fc5e020:
                                                            revert with 0, 18
                                                        if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                            else:
                                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                                if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                            if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                                revert with 0, 17
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            idx = idx + 1
                                                            s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                                            t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                            continue 
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_512 += s
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_256 += s
                                                        if sub_aec4ffd5 > !s:
                                                            revert with 0, 17
                                                        sub_aec4ffd5 += s
                                                    if s < s:
                                                        revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    s = 0
                                                    t = s
                                                    continue 
                                                stor14 = block.timestamp
                                                require ext_code.size(stor3)
                                                call stor3.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, this.address, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, '[lep][staking] token transfer failed!'
                                                if sub_aec4ffd5 > !ext_call.return_data[0]:
                                                    revert with 0, 17
                                                sub_aec4ffd5 += ext_call.return_data[0]
                                                if sub_9d9c453e[msg.sender].field_256:
                                                    if sub_9d9c453e[msg.sender].field_256 > !ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    sub_9d9c453e[msg.sender].field_256 += ext_call.return_data[0]
                                                    if not sub_aec4ffd5:
                                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0], 0, sub_5fc5e020, 1, msg.sender
                                                    else:
                                                        if sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0] and sub_5fc5e020 > -1 / sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if not sub_aec4ffd5:
                                                            revert with 0, 18
                                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0], (sub_9d9c453e[msg.sender].field_256 * sub_5fc5e020) + (ext_call.return_data[0] * sub_5fc5e020) / sub_aec4ffd5, sub_5fc5e020, 1, msg.sender
                                                else:
                                                    sub_9d9c453e[msg.sender].field_256 = ext_call.return_data[0]
                                                    sub_9d9c453e[msg.sender].field_768 = uint8(bool(arg3))
                                                    sub_e5a85bf1.length++
                                                    uint256(sub_e5a85bf1[sub_e5a85bf1.length]) = msg.sender or Mask(96, 160, uint256(sub_e5a85bf1[sub_e5a85bf1.length]))
                                                    if sub_6805a07c > -2:
                                                        revert with 0, 17
                                                    sub_6805a07c++
                                                    if not sub_aec4ffd5:
                                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], 0, sub_5fc5e020, 0, msg.sender
                                                    else:
                                                        if ext_call.return_data[0] and sub_5fc5e020 > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if not sub_aec4ffd5:
                                                            revert with 0, 18
                                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                                                if sub_c688e671 < sub_e5a85bf1.length:
                                                    revert with 0, 17
                                                emit 0xf58ee64c: (sub_c688e671 - sub_e5a85bf1.length)
                                            stor14 = block.timestamp
                        else:
                            if block.timestamp - stor14 > 0:
                                if sub_aec4ffd5 > 0:
                                    if ext_call.return_data[0] > 0:
                                        if sub_e5a85bf1.length:
                                            idx = 0
                                            s = ext_call.return_data[0]
                                            t = 0
                                            while idx < sub_e5a85bf1.length:
                                                if s:
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_aec4ffd5:
                                                        if s and 0 > -1 / s:
                                                            revert with 0, 17
                                                        if not sub_5fc5e020:
                                                            revert with 0, 18
                                                        if 0 / sub_5fc5e020 <= s:
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                                            else:
                                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                                                if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                sub_aec4ffd5 += 0 / sub_5fc5e020
                                                            if s < 0 / sub_5fc5e020:
                                                                revert with 0, 17
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            idx = idx + 1
                                                            s = s - (0 / sub_5fc5e020)
                                                            t = 0 / sub_5fc5e020
                                                            continue 
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                                            revert with 0, 17
                                                        if not sub_aec4ffd5:
                                                            revert with 0, 18
                                                        if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                                            revert with 0, 17
                                                        if not sub_5fc5e020:
                                                            revert with 0, 18
                                                        if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if idx >= sub_e5a85bf1.length:
                                                                revert with 0, 50
                                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                            else:
                                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                if idx >= sub_e5a85bf1.length:
                                                                    revert with 0, 50
                                                                mem[0] = address(sub_e5a85bf1[idx])
                                                                mem[32] = 17
                                                                sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                                if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                                    revert with 0, 17
                                                                sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                            if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                                revert with 0, 17
                                                            if idx == -1:
                                                                revert with 0, 17
                                                            idx = idx + 1
                                                            s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                                            t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                            continue 
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if idx >= sub_e5a85bf1.length:
                                                        revert with 0, 50
                                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_512 += s
                                                    else:
                                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                                            revert with 0, 17
                                                        if idx >= sub_e5a85bf1.length:
                                                            revert with 0, 50
                                                        mem[0] = address(sub_e5a85bf1[idx])
                                                        mem[32] = 17
                                                        sub_9d9c453e[address(stor18[idx])].field_256 += s
                                                        if sub_aec4ffd5 > !s:
                                                            revert with 0, 17
                                                        sub_aec4ffd5 += s
                                                    if s < s:
                                                        revert with 0, 17
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    s = 0
                                                    t = s
                                                    continue 
                                                stor14 = block.timestamp
                                                require ext_code.size(stor3)
                                                call stor3.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, this.address, ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, '[lep][staking] token transfer failed!'
                                                if sub_aec4ffd5 > !ext_call.return_data[0]:
                                                    revert with 0, 17
                                                sub_aec4ffd5 += ext_call.return_data[0]
                                                if sub_9d9c453e[msg.sender].field_256:
                                                    if sub_9d9c453e[msg.sender].field_256 > !ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    sub_9d9c453e[msg.sender].field_256 += ext_call.return_data[0]
                                                    if not sub_aec4ffd5:
                                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0], 0, sub_5fc5e020, 1, msg.sender
                                                    else:
                                                        if sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0] and sub_5fc5e020 > -1 / sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if not sub_aec4ffd5:
                                                            revert with 0, 18
                                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0], (sub_9d9c453e[msg.sender].field_256 * sub_5fc5e020) + (ext_call.return_data[0] * sub_5fc5e020) / sub_aec4ffd5, sub_5fc5e020, 1, msg.sender
                                                else:
                                                    sub_9d9c453e[msg.sender].field_256 = ext_call.return_data[0]
                                                    sub_9d9c453e[msg.sender].field_768 = uint8(bool(arg3))
                                                    sub_e5a85bf1.length++
                                                    uint256(sub_e5a85bf1[sub_e5a85bf1.length]) = msg.sender or Mask(96, 160, uint256(sub_e5a85bf1[sub_e5a85bf1.length]))
                                                    if sub_6805a07c > -2:
                                                        revert with 0, 17
                                                    sub_6805a07c++
                                                    if not sub_aec4ffd5:
                                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], 0, sub_5fc5e020, 0, msg.sender
                                                    else:
                                                        if ext_call.return_data[0] and sub_5fc5e020 > -1 / ext_call.return_data[0]:
                                                            revert with 0, 17
                                                        if not sub_aec4ffd5:
                                                            revert with 0, 18
                                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                                                if sub_c688e671 < sub_e5a85bf1.length:
                                                    revert with 0, 17
                                                emit 0xf58ee64c: (sub_c688e671 - sub_e5a85bf1.length)
                                            stor14 = block.timestamp
                        require ext_code.size(stor3)
                        call stor3.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, '[lep][staking] token transfer failed!'
                        if sub_aec4ffd5 > !ext_call.return_data[0]:
                            revert with 0, 17
                        sub_aec4ffd5 += ext_call.return_data[0]
                        if sub_9d9c453e[msg.sender].field_256:
                            if sub_9d9c453e[msg.sender].field_256 > !ext_call.return_data[0]:
                                revert with 0, 17
                            sub_9d9c453e[msg.sender].field_256 += ext_call.return_data[0]
                            if not sub_aec4ffd5:
                                emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0], 0, sub_5fc5e020, 1, msg.sender
                            else:
                                if sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0] and sub_5fc5e020 > -1 / sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0]:
                                    revert with 0, 17
                                if not sub_aec4ffd5:
                                    revert with 0, 18
                                emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0], (sub_9d9c453e[msg.sender].field_256 * sub_5fc5e020) + (ext_call.return_data[0] * sub_5fc5e020) / sub_aec4ffd5, sub_5fc5e020, 1, msg.sender
                        else:
                            sub_9d9c453e[msg.sender].field_256 = ext_call.return_data[0]
                            sub_9d9c453e[msg.sender].field_768 = uint8(bool(arg3))
                            sub_e5a85bf1.length++
                            uint256(sub_e5a85bf1[sub_e5a85bf1.length]) = msg.sender or Mask(96, 160, uint256(sub_e5a85bf1[sub_e5a85bf1.length]))
                            if sub_6805a07c > -2:
                                revert with 0, 17
                            sub_6805a07c++
                            if not sub_aec4ffd5:
                                emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], 0, sub_5fc5e020, 0, msg.sender
                            else:
                                if ext_call.return_data[0] and sub_5fc5e020 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not sub_aec4ffd5:
                                    revert with 0, 18
                                emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                    if sub_c688e671 < sub_e5a85bf1.length:
                        revert with 0, 17
                    emit 0xf58ee64c: (sub_c688e671 - sub_e5a85bf1.length)
}

function sub_d5389126(?) {
    if block.timestamp < stor14:
        revert with 0, 17
    if block.timestamp - stor14 < sub_bc314195:
        return 0
    return 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_9d9c453e[address(arg1)].field_256:
        return 0
    return sub_9d9c453e[address(arg1)].field_256
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function stats() {
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_aec4ffd5:
        revert with 0, 17
    return sub_07bce0cd, sub_257c8be4, ext_call.return_data[0] - sub_aec4ffd5, sub_e5a85bf1.length, sub_c688e671, stor14
}

function claim() {
    if not sub_9d9c453e[msg.sender].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][staking] you have no interest to claim!'
    if sub_9d9c453e[msg.sender].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[lep][staking] you have enabled restake, can't claim when restake is enabled!'
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_9d9c453e[msg.sender].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '[lep][staking] token transfer failed!'
    sub_9d9c453e[msg.sender].field_512 = 0
    if sub_9d9c453e[address(msg.sender)].field_0 > !sub_9d9c453e[msg.sender].field_512:
        revert with 0, 17
    sub_9d9c453e[msg.sender].field_0 = sub_9d9c453e[address(msg.sender)].field_0 + sub_9d9c453e[msg.sender].field_512
    emit 0x5809e350: sub_f434ae7d, msg.sender, sub_9d9c453e[msg.sender].field_512
}

function init(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][ownable] caller is not the owner'
    sub_f434ae7d = arg2
    sub_895e8a04 = block.timestamp
    if arg2 and 24 * 3600 > -1 / arg2:
        revert with 0, 17
    if arg1 > !(24 * 3600 * arg2):
        revert with 0, 17
    sub_f7fd0bec = arg1 + (24 * 3600 * arg2)
    if arg1 + (24 * 3600 * arg2) > -15552001:
        revert with 0, 17
    sub_728d162f = arg1 + (24 * 3600 * arg2) + (4320 * 24 * 3600)
    if sub_f7fd0bec < sub_895e8a04:
        revert with 0, 17
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_07bce0cd = ext_call.return_data[0]
    if ext_call.return_data[0] and sub_5fc5e020 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not sub_f7fd0bec - sub_895e8a04:
        revert with 0, 18
    if not sub_5fc5e020:
        revert with 0, 18
    sub_257c8be4 = ext_call.return_data[0] * sub_5fc5e020 / sub_f7fd0bec - sub_895e8a04 / sub_5fc5e020
    stor14 = block.timestamp
}

function info(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_9d9c453e[address(arg1)].field_0:
        if not sub_9d9c453e[address(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][staking] wallet has never staked!'
    if not sub_aec4ffd5:
        return sub_9d9c453e[address(arg1)].field_256, 
               sub_9d9c453e[address(arg1)].field_512,
               sub_9d9c453e[address(arg1)].field_0,
               bool(sub_9d9c453e[address(arg1)].field_768)
    if block.timestamp < stor14:
        revert with 0, 17
    if block.timestamp - stor14 and sub_257c8be4 > -1 / block.timestamp - stor14:
        revert with 0, 17
    if not sub_aec4ffd5:
        if (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4) and 0 > -1 / (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4):
            revert with 0, 17
        if not sub_5fc5e020:
            revert with 0, 18
        if sub_9d9c453e[address(arg1)].field_512 > !(0 / sub_5fc5e020):
            revert with 0, 17
        return sub_9d9c453e[address(arg1)].field_256, 
               sub_9d9c453e[address(arg1)].field_512 + (0 / sub_5fc5e020),
               sub_9d9c453e[address(arg1)].field_0,
               bool(sub_9d9c453e[address(arg1)].field_768)
    if sub_9d9c453e[address(arg1)].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(arg1)].field_256:
        revert with 0, 17
    if not sub_aec4ffd5:
        revert with 0, 18
    if (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4) and sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4):
        revert with 0, 17
    if not sub_5fc5e020:
        revert with 0, 18
    if sub_9d9c453e[address(arg1)].field_512 > !((block.timestamp * sub_257c8be4 * sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5) - (stor14 * sub_257c8be4 * sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5) / sub_5fc5e020):
        revert with 0, 17
    return sub_9d9c453e[address(arg1)].field_256, 
           sub_9d9c453e[address(arg1)].field_512 + ((block.timestamp * sub_257c8be4 * sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5) - (stor14 * sub_257c8be4 * sub_9d9c453e[address(arg1)].field_256 * sub_5fc5e020 / sub_aec4ffd5) / sub_5fc5e020),
           sub_9d9c453e[address(arg1)].field_0,
           bool(sub_9d9c453e[address(arg1)].field_768)
}

function update() {
    if block.timestamp < stor14:
        revert with 0, 17
    if block.timestamp - stor14 and sub_257c8be4 > -1 / block.timestamp - stor14:
        revert with 0, 17
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4) <= ext_call.return_data[0]:
        if block.timestamp - stor14 > 0:
            if sub_aec4ffd5 > 0:
                if ext_call.return_data[0] > 0:
                    if sub_e5a85bf1.length:
                        idx = 0
                        s = (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4)
                        t = 0
                        while idx < sub_e5a85bf1.length:
                            if not s:
                                stor14 = block.timestamp
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if not sub_aec4ffd5:
                                if s and 0 > -1 / s:
                                    revert with 0, 17
                                if not sub_5fc5e020:
                                    revert with 0, 18
                                if 0 / sub_5fc5e020 <= s:
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                        if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                            revert with 0, 17
                                        sub_aec4ffd5 += 0 / sub_5fc5e020
                                    if s < 0 / sub_5fc5e020:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - (0 / sub_5fc5e020)
                                    t = 0 / sub_5fc5e020
                                    continue 
                            else:
                                if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                    revert with 0, 17
                                if not sub_aec4ffd5:
                                    revert with 0, 18
                                if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                    revert with 0, 17
                                if not sub_5fc5e020:
                                    revert with 0, 18
                                if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                            revert with 0, 17
                                        sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                    if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                    t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                    continue 
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 17
                                sub_9d9c453e[address(stor18[idx])].field_512 += s
                            else:
                                if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 17
                                sub_9d9c453e[address(stor18[idx])].field_256 += s
                                if sub_aec4ffd5 > !s:
                                    revert with 0, 17
                                sub_aec4ffd5 += s
                            if s < s:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = s
                            continue 
                        stor14 = block.timestamp
    else:
        if block.timestamp - stor14 > 0:
            if sub_aec4ffd5 > 0:
                if ext_call.return_data[0] > 0:
                    if sub_e5a85bf1.length:
                        idx = 0
                        s = ext_call.return_data[0]
                        t = 0
                        while idx < sub_e5a85bf1.length:
                            if not s:
                                stor14 = block.timestamp
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if not sub_aec4ffd5:
                                if s and 0 > -1 / s:
                                    revert with 0, 17
                                if not sub_5fc5e020:
                                    revert with 0, 18
                                if 0 / sub_5fc5e020 <= s:
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                        if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                            revert with 0, 17
                                        sub_aec4ffd5 += 0 / sub_5fc5e020
                                    if s < 0 / sub_5fc5e020:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - (0 / sub_5fc5e020)
                                    t = 0 / sub_5fc5e020
                                    continue 
                            else:
                                if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                    revert with 0, 17
                                if not sub_aec4ffd5:
                                    revert with 0, 18
                                if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                    revert with 0, 17
                                if not sub_5fc5e020:
                                    revert with 0, 18
                                if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                            revert with 0, 17
                                        sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                    if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                    t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                    continue 
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 17
                                sub_9d9c453e[address(stor18[idx])].field_512 += s
                            else:
                                if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 17
                                sub_9d9c453e[address(stor18[idx])].field_256 += s
                                if sub_aec4ffd5 > !s:
                                    revert with 0, 17
                                sub_aec4ffd5 += s
                            if s < s:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = s
                            continue 
                        stor14 = block.timestamp
}

function restake() {
    if not sub_9d9c453e[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][staking] you did not stake any tokens!'
    if block.timestamp < stor14:
        revert with 0, 17
    if block.timestamp - stor14 and sub_257c8be4 > -1 / block.timestamp - stor14:
        revert with 0, 17
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4) <= ext_call.return_data[0]:
        if block.timestamp - stor14 <= 0:
            if not sub_9d9c453e[msg.sender].field_768:
                sub_9d9c453e[msg.sender].field_768 = 1
            else:
                sub_9d9c453e[msg.sender].field_768 = 0
        else:
            if sub_aec4ffd5 <= 0:
                if not sub_9d9c453e[msg.sender].field_768:
                    sub_9d9c453e[msg.sender].field_768 = 1
                else:
                    sub_9d9c453e[msg.sender].field_768 = 0
            else:
                if ext_call.return_data[0] <= 0:
                    if not sub_9d9c453e[msg.sender].field_768:
                        sub_9d9c453e[msg.sender].field_768 = 1
                    else:
                        sub_9d9c453e[msg.sender].field_768 = 0
                else:
                    if sub_e5a85bf1.length:
                        idx = 0
                        s = (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4)
                        t = 0
                        while idx < sub_e5a85bf1.length:
                            if not s:
                                stor14 = block.timestamp
                                if not sub_9d9c453e[msg.sender].field_768:
                                    sub_9d9c453e[msg.sender].field_768 = 1
                                else:
                                    sub_9d9c453e[msg.sender].field_768 = 0
                                emit 0x62f94ded: sub_f434ae7d, bool(sub_9d9c453e[msg.sender].field_768), msg.sender
                                return bool(sub_9d9c453e[msg.sender].field_768)
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if not sub_aec4ffd5:
                                if s and 0 > -1 / s:
                                    revert with 0, 17
                                if not sub_5fc5e020:
                                    revert with 0, 18
                                if 0 / sub_5fc5e020 <= s:
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                        if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                            revert with 0, 17
                                        sub_aec4ffd5 += 0 / sub_5fc5e020
                                    if s < 0 / sub_5fc5e020:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - (0 / sub_5fc5e020)
                                    t = 0 / sub_5fc5e020
                                    continue 
                            else:
                                if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                    revert with 0, 17
                                if not sub_aec4ffd5:
                                    revert with 0, 18
                                if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                    revert with 0, 17
                                if not sub_5fc5e020:
                                    revert with 0, 18
                                if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                            revert with 0, 17
                                        sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                    if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                    t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                    continue 
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 17
                                sub_9d9c453e[address(stor18[idx])].field_512 += s
                            else:
                                if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 17
                                sub_9d9c453e[address(stor18[idx])].field_256 += s
                                if sub_aec4ffd5 > !s:
                                    revert with 0, 17
                                sub_aec4ffd5 += s
                            if s < s:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = s
                            continue 
                        stor14 = block.timestamp
                    if not sub_9d9c453e[msg.sender].field_768:
                        sub_9d9c453e[msg.sender].field_768 = 1
                    else:
                        sub_9d9c453e[msg.sender].field_768 = 0
    else:
        if block.timestamp - stor14 <= 0:
            if not sub_9d9c453e[msg.sender].field_768:
                sub_9d9c453e[msg.sender].field_768 = 1
            else:
                sub_9d9c453e[msg.sender].field_768 = 0
        else:
            if sub_aec4ffd5 <= 0:
                if not sub_9d9c453e[msg.sender].field_768:
                    sub_9d9c453e[msg.sender].field_768 = 1
                else:
                    sub_9d9c453e[msg.sender].field_768 = 0
            else:
                if ext_call.return_data[0] <= 0:
                    if not sub_9d9c453e[msg.sender].field_768:
                        sub_9d9c453e[msg.sender].field_768 = 1
                    else:
                        sub_9d9c453e[msg.sender].field_768 = 0
                else:
                    if sub_e5a85bf1.length:
                        idx = 0
                        s = ext_call.return_data[0]
                        t = 0
                        while idx < sub_e5a85bf1.length:
                            if not s:
                                stor14 = block.timestamp
                                if not sub_9d9c453e[msg.sender].field_768:
                                    sub_9d9c453e[msg.sender].field_768 = 1
                                else:
                                    sub_9d9c453e[msg.sender].field_768 = 0
                                emit 0x62f94ded: sub_f434ae7d, bool(sub_9d9c453e[msg.sender].field_768), msg.sender
                                return bool(sub_9d9c453e[msg.sender].field_768)
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if not sub_aec4ffd5:
                                if s and 0 > -1 / s:
                                    revert with 0, 17
                                if not sub_5fc5e020:
                                    revert with 0, 18
                                if 0 / sub_5fc5e020 <= s:
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                        if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                            revert with 0, 17
                                        sub_aec4ffd5 += 0 / sub_5fc5e020
                                    if s < 0 / sub_5fc5e020:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - (0 / sub_5fc5e020)
                                    t = 0 / sub_5fc5e020
                                    continue 
                            else:
                                if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                    revert with 0, 17
                                if not sub_aec4ffd5:
                                    revert with 0, 18
                                if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                    revert with 0, 17
                                if not sub_5fc5e020:
                                    revert with 0, 18
                                if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                            revert with 0, 17
                                        sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                    if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                    t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                    continue 
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if idx >= sub_e5a85bf1.length:
                                revert with 0, 50
                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 17
                                sub_9d9c453e[address(stor18[idx])].field_512 += s
                            else:
                                if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                    revert with 0, 17
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                mem[0] = address(sub_e5a85bf1[idx])
                                mem[32] = 17
                                sub_9d9c453e[address(stor18[idx])].field_256 += s
                                if sub_aec4ffd5 > !s:
                                    revert with 0, 17
                                sub_aec4ffd5 += s
                            if s < s:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = 0
                            t = s
                            continue 
                        stor14 = block.timestamp
                    if not sub_9d9c453e[msg.sender].field_768:
                        sub_9d9c453e[msg.sender].field_768 = 1
                    else:
                        sub_9d9c453e[msg.sender].field_768 = 0
    emit 0x62f94ded: sub_f434ae7d, bool(sub_9d9c453e[msg.sender].field_768), msg.sender
    return bool(sub_9d9c453e[msg.sender].field_768)
}

function unstake() {
    if block.timestamp < sub_f7fd0bec:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[lep][staking] contract has not ended yet, be patient!'
    if not sub_9d9c453e[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][staking] you did not stake any tokens!'
    if block.timestamp < stor14:
        revert with 0, 17
    if block.timestamp - stor14 and sub_257c8be4 > -1 / block.timestamp - stor14:
        revert with 0, 17
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4) <= ext_call.return_data[0]:
        if block.timestamp - stor14 > 0:
            if sub_aec4ffd5 > 0:
                if ext_call.return_data[0] > 0:
                    if sub_e5a85bf1.length:
                        idx = 0
                        s = (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4)
                        t = 0
                        while idx < sub_e5a85bf1.length:
                            if s:
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                if not sub_aec4ffd5:
                                    if s and 0 > -1 / s:
                                        revert with 0, 17
                                    if not sub_5fc5e020:
                                        revert with 0, 18
                                    if 0 / sub_5fc5e020 <= s:
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        if not sub_9d9c453e[address(stor18[idx])].field_768:
                                            if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 17
                                            sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                        else:
                                            if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 17
                                            sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                            if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                revert with 0, 17
                                            sub_aec4ffd5 += 0 / sub_5fc5e020
                                        if s < 0 / sub_5fc5e020:
                                            revert with 0, 17
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s - (0 / sub_5fc5e020)
                                        t = 0 / sub_5fc5e020
                                        continue 
                                else:
                                    if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                        revert with 0, 17
                                    if not sub_aec4ffd5:
                                        revert with 0, 18
                                    if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                        revert with 0, 17
                                    if not sub_5fc5e020:
                                        revert with 0, 18
                                    if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        if not sub_9d9c453e[address(stor18[idx])].field_768:
                                            if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 17
                                            sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        else:
                                            if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 17
                                            sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                            revert with 0, 17
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                        t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        continue 
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                if not sub_9d9c453e[address(stor18[idx])].field_768:
                                    if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                        revert with 0, 17
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    mem[0] = address(sub_e5a85bf1[idx])
                                    mem[32] = 17
                                    sub_9d9c453e[address(stor18[idx])].field_512 += s
                                else:
                                    if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                        revert with 0, 17
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    mem[0] = address(sub_e5a85bf1[idx])
                                    mem[32] = 17
                                    sub_9d9c453e[address(stor18[idx])].field_256 += s
                                    if sub_aec4ffd5 > !s:
                                        revert with 0, 17
                                    sub_aec4ffd5 += s
                                if s < s:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = s
                                continue 
                            stor14 = block.timestamp
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_9d9c453e[msg.sender].field_256 > !sub_9d9c453e[msg.sender].field_512:
                                revert with 0, 17
                            require ext_code.size(stor3)
                            if sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512 <= ext_call.return_data[0]:
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, '[lep][staking] token transfer failed!'
                                if sub_9d9c453e[address(msg.sender)].field_0 > !sub_9d9c453e[msg.sender].field_512:
                                    revert with 0, 17
                                sub_9d9c453e[msg.sender].field_0 = sub_9d9c453e[address(msg.sender)].field_0 + sub_9d9c453e[msg.sender].field_512
                                sub_9d9c453e[msg.sender].field_256 = 0
                                sub_9d9c453e[msg.sender].field_512 = 0
                                if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512:
                                    revert with 0, 17
                                sub_aec4ffd5 = sub_aec4ffd5 - sub_9d9c453e[msg.sender].field_256 - sub_9d9c453e[msg.sender].field_512
                                if sub_6805a07c < 1:
                                    revert with 0, 17
                                sub_6805a07c--
                                emit 0x3bf8e204: sub_f434ae7d, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512, sub_9d9c453e[msg.sender].field_0, msg.sender
                            else:
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, '[lep][staking] token transfer failed!'
                                if sub_9d9c453e[address(msg.sender)].field_0 > !sub_9d9c453e[msg.sender].field_512:
                                    revert with 0, 17
                                sub_9d9c453e[msg.sender].field_0 = sub_9d9c453e[address(msg.sender)].field_0 + sub_9d9c453e[msg.sender].field_512
                                sub_9d9c453e[msg.sender].field_256 = 0
                                sub_9d9c453e[msg.sender].field_512 = 0
                                if sub_aec4ffd5 < ext_call.return_data[0]:
                                    revert with 0, 17
                                sub_aec4ffd5 -= ext_call.return_data[0]
                                if sub_6805a07c < 1:
                                    revert with 0, 17
                                sub_6805a07c--
                                emit 0x3bf8e204: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_0, msg.sender
                        stor14 = block.timestamp
    else:
        if block.timestamp - stor14 > 0:
            if sub_aec4ffd5 > 0:
                if ext_call.return_data[0] > 0:
                    if sub_e5a85bf1.length:
                        idx = 0
                        s = ext_call.return_data[0]
                        t = 0
                        while idx < sub_e5a85bf1.length:
                            if s:
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                if not sub_aec4ffd5:
                                    if s and 0 > -1 / s:
                                        revert with 0, 17
                                    if not sub_5fc5e020:
                                        revert with 0, 18
                                    if 0 / sub_5fc5e020 <= s:
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        if not sub_9d9c453e[address(stor18[idx])].field_768:
                                            if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 17
                                            sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                        else:
                                            if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 17
                                            sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                            if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                revert with 0, 17
                                            sub_aec4ffd5 += 0 / sub_5fc5e020
                                        if s < 0 / sub_5fc5e020:
                                            revert with 0, 17
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s - (0 / sub_5fc5e020)
                                        t = 0 / sub_5fc5e020
                                        continue 
                                else:
                                    if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                        revert with 0, 17
                                    if not sub_aec4ffd5:
                                        revert with 0, 18
                                    if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                        revert with 0, 17
                                    if not sub_5fc5e020:
                                        revert with 0, 18
                                    if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        if not sub_9d9c453e[address(stor18[idx])].field_768:
                                            if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 17
                                            sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        else:
                                            if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            mem[0] = address(sub_e5a85bf1[idx])
                                            mem[32] = 17
                                            sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                revert with 0, 17
                                            sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                            revert with 0, 17
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                        t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                        continue 
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                if idx >= sub_e5a85bf1.length:
                                    revert with 0, 50
                                if not sub_9d9c453e[address(stor18[idx])].field_768:
                                    if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                        revert with 0, 17
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    mem[0] = address(sub_e5a85bf1[idx])
                                    mem[32] = 17
                                    sub_9d9c453e[address(stor18[idx])].field_512 += s
                                else:
                                    if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                        revert with 0, 17
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    mem[0] = address(sub_e5a85bf1[idx])
                                    mem[32] = 17
                                    sub_9d9c453e[address(stor18[idx])].field_256 += s
                                    if sub_aec4ffd5 > !s:
                                        revert with 0, 17
                                    sub_aec4ffd5 += s
                                if s < s:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = 0
                                t = s
                                continue 
                            stor14 = block.timestamp
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if sub_9d9c453e[msg.sender].field_256 > !sub_9d9c453e[msg.sender].field_512:
                                revert with 0, 17
                            require ext_code.size(stor3)
                            if sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512 <= ext_call.return_data[0]:
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, '[lep][staking] token transfer failed!'
                                if sub_9d9c453e[address(msg.sender)].field_0 > !sub_9d9c453e[msg.sender].field_512:
                                    revert with 0, 17
                                sub_9d9c453e[msg.sender].field_0 = sub_9d9c453e[address(msg.sender)].field_0 + sub_9d9c453e[msg.sender].field_512
                                sub_9d9c453e[msg.sender].field_256 = 0
                                sub_9d9c453e[msg.sender].field_512 = 0
                                if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512:
                                    revert with 0, 17
                                sub_aec4ffd5 = sub_aec4ffd5 - sub_9d9c453e[msg.sender].field_256 - sub_9d9c453e[msg.sender].field_512
                                if sub_6805a07c < 1:
                                    revert with 0, 17
                                sub_6805a07c--
                                emit 0x3bf8e204: sub_f434ae7d, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512, sub_9d9c453e[msg.sender].field_0, msg.sender
                            else:
                                call stor3.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, '[lep][staking] token transfer failed!'
                                if sub_9d9c453e[address(msg.sender)].field_0 > !sub_9d9c453e[msg.sender].field_512:
                                    revert with 0, 17
                                sub_9d9c453e[msg.sender].field_0 = sub_9d9c453e[address(msg.sender)].field_0 + sub_9d9c453e[msg.sender].field_512
                                sub_9d9c453e[msg.sender].field_256 = 0
                                sub_9d9c453e[msg.sender].field_512 = 0
                                if sub_aec4ffd5 < ext_call.return_data[0]:
                                    revert with 0, 17
                                sub_aec4ffd5 -= ext_call.return_data[0]
                                if sub_6805a07c < 1:
                                    revert with 0, 17
                                sub_6805a07c--
                                emit 0x3bf8e204: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_0, msg.sender
                        stor14 = block.timestamp
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_9d9c453e[msg.sender].field_256 > !sub_9d9c453e[msg.sender].field_512:
        revert with 0, 17
    require ext_code.size(stor3)
    if sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512 <= ext_call.return_data[0]:
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '[lep][staking] token transfer failed!'
        if sub_9d9c453e[address(msg.sender)].field_0 > !sub_9d9c453e[msg.sender].field_512:
            revert with 0, 17
        sub_9d9c453e[msg.sender].field_0 = sub_9d9c453e[address(msg.sender)].field_0 + sub_9d9c453e[msg.sender].field_512
        sub_9d9c453e[msg.sender].field_256 = 0
        sub_9d9c453e[msg.sender].field_512 = 0
        if sub_aec4ffd5 < sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512:
            revert with 0, 17
        sub_aec4ffd5 = sub_aec4ffd5 - sub_9d9c453e[msg.sender].field_256 - sub_9d9c453e[msg.sender].field_512
        if sub_6805a07c < 1:
            revert with 0, 17
        sub_6805a07c--
        emit 0x3bf8e204: sub_f434ae7d, sub_9d9c453e[msg.sender].field_256 + sub_9d9c453e[msg.sender].field_512, sub_9d9c453e[msg.sender].field_0, msg.sender
    else:
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '[lep][staking] token transfer failed!'
        if sub_9d9c453e[address(msg.sender)].field_0 > !sub_9d9c453e[msg.sender].field_512:
            revert with 0, 17
        sub_9d9c453e[msg.sender].field_0 = sub_9d9c453e[address(msg.sender)].field_0 + sub_9d9c453e[msg.sender].field_512
        sub_9d9c453e[msg.sender].field_256 = 0
        sub_9d9c453e[msg.sender].field_512 = 0
        if sub_aec4ffd5 < ext_call.return_data[0]:
            revert with 0, 17
        sub_aec4ffd5 -= ext_call.return_data[0]
        if sub_6805a07c < 1:
            revert with 0, 17
        sub_6805a07c--
        emit 0x3bf8e204: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_0, msg.sender
}

function sub_c648e633(?) {
    require calldata.size - 4 >= 96
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    if block.timestamp < sub_895e8a04:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '[lep][staking] contract has not started yet!'
    if block.timestamp > sub_f7fd0bec:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[lep][staking] contract has ended, no more staking possible!'
    if sub_e5a85bf1.length > sub_c688e671:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '[lep][staking] max staking reached, no more additional wallets can join!'
    if not arg2:
        if arg1 < sub_c383f77b:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '[lep][staking] you can't stake less than the minimum amount!'
        require ext_code.size(stor3)
        staticcall stor3.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            revert with 0, '[lep][staking] you can't stake more tokens than you have approved!'
        if ext_call.return_data[0] < arg1:
            revert with 0, '[lep][staking] you do not have enough tokens in your wallet to stake this much!'
        if block.timestamp < stor14:
            revert with 0, 17
        if block.timestamp - stor14 and sub_257c8be4 > -1 / block.timestamp - stor14:
            revert with 0, 17
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4) <= ext_call.return_data[0]:
            if block.timestamp - stor14 > 0:
                if sub_aec4ffd5 > 0:
                    if ext_call.return_data[0] > 0:
                        if sub_e5a85bf1.length:
                            idx = 0
                            s = (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4)
                            t = 0
                            while idx < sub_e5a85bf1.length:
                                if s:
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_aec4ffd5:
                                        if s and 0 > -1 / s:
                                            revert with 0, 17
                                        if not sub_5fc5e020:
                                            revert with 0, 18
                                        if 0 / sub_5fc5e020 <= s:
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                                if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                    revert with 0, 17
                                                sub_aec4ffd5 += 0 / sub_5fc5e020
                                            if s < 0 / sub_5fc5e020:
                                                revert with 0, 17
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = s - (0 / sub_5fc5e020)
                                            t = 0 / sub_5fc5e020
                                            continue 
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                            revert with 0, 17
                                        if not sub_aec4ffd5:
                                            revert with 0, 18
                                        if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                            revert with 0, 17
                                        if not sub_5fc5e020:
                                            revert with 0, 18
                                        if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                    revert with 0, 17
                                                sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                revert with 0, 17
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                            t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            continue 
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_512 += s
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_256 += s
                                        if sub_aec4ffd5 > !s:
                                            revert with 0, 17
                                        sub_aec4ffd5 += s
                                    if s < s:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = s
                                    continue 
                                stor14 = block.timestamp
                                require ext_code.size(stor3)
                                call stor3.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, '[lep][staking] token transfer failed!'
                                if sub_aec4ffd5 > !arg1:
                                    revert with 0, 17
                                sub_aec4ffd5 += arg1
                                if sub_9d9c453e[msg.sender].field_256:
                                    if sub_9d9c453e[msg.sender].field_256 > !arg1:
                                        revert with 0, 17
                                    sub_9d9c453e[msg.sender].field_256 += arg1
                                    if not sub_aec4ffd5:
                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256 + arg1, 0, sub_5fc5e020, 1, msg.sender
                                    else:
                                        if sub_9d9c453e[msg.sender].field_256 + arg1 and sub_5fc5e020 > -1 / sub_9d9c453e[msg.sender].field_256 + arg1:
                                            revert with 0, 17
                                        if not sub_aec4ffd5:
                                            revert with 0, 18
                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256 + arg1, (sub_9d9c453e[msg.sender].field_256 * sub_5fc5e020) + (arg1 * sub_5fc5e020) / sub_aec4ffd5, sub_5fc5e020, 1, msg.sender
                                else:
                                    sub_9d9c453e[msg.sender].field_256 = arg1
                                    sub_9d9c453e[msg.sender].field_768 = uint8(bool(arg3))
                                    sub_e5a85bf1.length++
                                    uint256(sub_e5a85bf1[sub_e5a85bf1.length]) = msg.sender or Mask(96, 160, uint256(sub_e5a85bf1[sub_e5a85bf1.length]))
                                    if sub_6805a07c > -2:
                                        revert with 0, 17
                                    sub_6805a07c++
                                    if not sub_aec4ffd5:
                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, arg1, 0, sub_5fc5e020, 0, msg.sender
                                    else:
                                        if arg1 and sub_5fc5e020 > -1 / arg1:
                                            revert with 0, 17
                                        if not sub_aec4ffd5:
                                            revert with 0, 18
                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, arg1, arg1 * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                                if sub_c688e671 < sub_e5a85bf1.length:
                                    revert with 0, 17
                                emit 0xf58ee64c: (sub_c688e671 - sub_e5a85bf1.length)
                            stor14 = block.timestamp
        else:
            if block.timestamp - stor14 > 0:
                if sub_aec4ffd5 > 0:
                    if ext_call.return_data[0] > 0:
                        if sub_e5a85bf1.length:
                            idx = 0
                            s = ext_call.return_data[0]
                            t = 0
                            while idx < sub_e5a85bf1.length:
                                if s:
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_aec4ffd5:
                                        if s and 0 > -1 / s:
                                            revert with 0, 17
                                        if not sub_5fc5e020:
                                            revert with 0, 18
                                        if 0 / sub_5fc5e020 <= s:
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                                if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                    revert with 0, 17
                                                sub_aec4ffd5 += 0 / sub_5fc5e020
                                            if s < 0 / sub_5fc5e020:
                                                revert with 0, 17
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = s - (0 / sub_5fc5e020)
                                            t = 0 / sub_5fc5e020
                                            continue 
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                            revert with 0, 17
                                        if not sub_aec4ffd5:
                                            revert with 0, 18
                                        if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                            revert with 0, 17
                                        if not sub_5fc5e020:
                                            revert with 0, 18
                                        if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                    revert with 0, 17
                                                sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                revert with 0, 17
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                            t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            continue 
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_512 += s
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_256 += s
                                        if sub_aec4ffd5 > !s:
                                            revert with 0, 17
                                        sub_aec4ffd5 += s
                                    if s < s:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = s
                                    continue 
                                stor14 = block.timestamp
                                require ext_code.size(stor3)
                                call stor3.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, '[lep][staking] token transfer failed!'
                                if sub_aec4ffd5 > !arg1:
                                    revert with 0, 17
                                sub_aec4ffd5 += arg1
                                if sub_9d9c453e[msg.sender].field_256:
                                    if sub_9d9c453e[msg.sender].field_256 > !arg1:
                                        revert with 0, 17
                                    sub_9d9c453e[msg.sender].field_256 += arg1
                                    if not sub_aec4ffd5:
                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256 + arg1, 0, sub_5fc5e020, 1, msg.sender
                                    else:
                                        if sub_9d9c453e[msg.sender].field_256 + arg1 and sub_5fc5e020 > -1 / sub_9d9c453e[msg.sender].field_256 + arg1:
                                            revert with 0, 17
                                        if not sub_aec4ffd5:
                                            revert with 0, 18
                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256 + arg1, (sub_9d9c453e[msg.sender].field_256 * sub_5fc5e020) + (arg1 * sub_5fc5e020) / sub_aec4ffd5, sub_5fc5e020, 1, msg.sender
                                else:
                                    sub_9d9c453e[msg.sender].field_256 = arg1
                                    sub_9d9c453e[msg.sender].field_768 = uint8(bool(arg3))
                                    sub_e5a85bf1.length++
                                    uint256(sub_e5a85bf1[sub_e5a85bf1.length]) = msg.sender or Mask(96, 160, uint256(sub_e5a85bf1[sub_e5a85bf1.length]))
                                    if sub_6805a07c > -2:
                                        revert with 0, 17
                                    sub_6805a07c++
                                    if not sub_aec4ffd5:
                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, arg1, 0, sub_5fc5e020, 0, msg.sender
                                    else:
                                        if arg1 and sub_5fc5e020 > -1 / arg1:
                                            revert with 0, 17
                                        if not sub_aec4ffd5:
                                            revert with 0, 18
                                        emit 0xa5cc51a9: sub_f434ae7d, arg1, arg1, arg1 * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                                if sub_c688e671 < sub_e5a85bf1.length:
                                    revert with 0, 17
                                emit 0xf58ee64c: (sub_c688e671 - sub_e5a85bf1.length)
                            stor14 = block.timestamp
        require ext_code.size(stor3)
        call stor3.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '[lep][staking] token transfer failed!'
        if sub_aec4ffd5 > !arg1:
            revert with 0, 17
        sub_aec4ffd5 += arg1
        if sub_9d9c453e[msg.sender].field_256:
            if sub_9d9c453e[msg.sender].field_256 > !arg1:
                revert with 0, 17
            sub_9d9c453e[msg.sender].field_256 += arg1
            if not sub_aec4ffd5:
                emit 0xa5cc51a9: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256 + arg1, 0, sub_5fc5e020, 1, msg.sender
            else:
                if sub_9d9c453e[msg.sender].field_256 + arg1 and sub_5fc5e020 > -1 / sub_9d9c453e[msg.sender].field_256 + arg1:
                    revert with 0, 17
                if not sub_aec4ffd5:
                    revert with 0, 18
                emit 0xa5cc51a9: sub_f434ae7d, arg1, sub_9d9c453e[msg.sender].field_256 + arg1, (sub_9d9c453e[msg.sender].field_256 * sub_5fc5e020) + (arg1 * sub_5fc5e020) / sub_aec4ffd5, sub_5fc5e020, 1, msg.sender
        else:
            sub_9d9c453e[msg.sender].field_256 = arg1
            sub_9d9c453e[msg.sender].field_768 = uint8(bool(arg3))
            sub_e5a85bf1.length++
            uint256(sub_e5a85bf1[sub_e5a85bf1.length]) = msg.sender or Mask(96, 160, uint256(sub_e5a85bf1[sub_e5a85bf1.length]))
            if sub_6805a07c > -2:
                revert with 0, 17
            sub_6805a07c++
            if not sub_aec4ffd5:
                emit 0xa5cc51a9: sub_f434ae7d, arg1, arg1, 0, sub_5fc5e020, 0, msg.sender
            else:
                if arg1 and sub_5fc5e020 > -1 / arg1:
                    revert with 0, 17
                if not sub_aec4ffd5:
                    revert with 0, 18
                emit 0xa5cc51a9: sub_f434ae7d, arg1, arg1, arg1 * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
    else:
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < sub_c383f77b:
            revert with 0, '[lep][staking] you can't stake less than the minimum amount!'
        require ext_code.size(stor3)
        staticcall stor3.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, '[lep][staking] you can't stake more tokens than you have approved!'
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, '[lep][staking] you do not have enough tokens in your wallet to stake this much!'
        if block.timestamp < stor14:
            revert with 0, 17
        if block.timestamp - stor14 and sub_257c8be4 > -1 / block.timestamp - stor14:
            revert with 0, 17
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4) <= ext_call.return_data[0]:
            if block.timestamp - stor14 > 0:
                if sub_aec4ffd5 > 0:
                    if ext_call.return_data[0] > 0:
                        if sub_e5a85bf1.length:
                            idx = 0
                            s = (block.timestamp * sub_257c8be4) - (stor14 * sub_257c8be4)
                            t = 0
                            while idx < sub_e5a85bf1.length:
                                if s:
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_aec4ffd5:
                                        if s and 0 > -1 / s:
                                            revert with 0, 17
                                        if not sub_5fc5e020:
                                            revert with 0, 18
                                        if 0 / sub_5fc5e020 <= s:
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                                if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                    revert with 0, 17
                                                sub_aec4ffd5 += 0 / sub_5fc5e020
                                            if s < 0 / sub_5fc5e020:
                                                revert with 0, 17
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = s - (0 / sub_5fc5e020)
                                            t = 0 / sub_5fc5e020
                                            continue 
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                            revert with 0, 17
                                        if not sub_aec4ffd5:
                                            revert with 0, 18
                                        if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                            revert with 0, 17
                                        if not sub_5fc5e020:
                                            revert with 0, 18
                                        if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                    revert with 0, 17
                                                sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                revert with 0, 17
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                            t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            continue 
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_512 += s
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_256 += s
                                        if sub_aec4ffd5 > !s:
                                            revert with 0, 17
                                        sub_aec4ffd5 += s
                                    if s < s:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = s
                                    continue 
                                stor14 = block.timestamp
                                require ext_code.size(stor3)
                                call stor3.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, '[lep][staking] token transfer failed!'
                                if sub_aec4ffd5 > !ext_call.return_data[0]:
                                    revert with 0, 17
                                sub_aec4ffd5 += ext_call.return_data[0]
                                if sub_9d9c453e[msg.sender].field_256:
                                    if sub_9d9c453e[msg.sender].field_256 > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    sub_9d9c453e[msg.sender].field_256 += ext_call.return_data[0]
                                    if not sub_aec4ffd5:
                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0], 0, sub_5fc5e020, 1, msg.sender
                                    else:
                                        if sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0] and sub_5fc5e020 > -1 / sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0]:
                                            revert with 0, 17
                                        if not sub_aec4ffd5:
                                            revert with 0, 18
                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0], (sub_9d9c453e[msg.sender].field_256 * sub_5fc5e020) + (ext_call.return_data[0] * sub_5fc5e020) / sub_aec4ffd5, sub_5fc5e020, 1, msg.sender
                                else:
                                    sub_9d9c453e[msg.sender].field_256 = ext_call.return_data[0]
                                    sub_9d9c453e[msg.sender].field_768 = uint8(bool(arg3))
                                    sub_e5a85bf1.length++
                                    uint256(sub_e5a85bf1[sub_e5a85bf1.length]) = msg.sender or Mask(96, 160, uint256(sub_e5a85bf1[sub_e5a85bf1.length]))
                                    if sub_6805a07c > -2:
                                        revert with 0, 17
                                    sub_6805a07c++
                                    if not sub_aec4ffd5:
                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], 0, sub_5fc5e020, 0, msg.sender
                                    else:
                                        if ext_call.return_data[0] and sub_5fc5e020 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if not sub_aec4ffd5:
                                            revert with 0, 18
                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                                if sub_c688e671 < sub_e5a85bf1.length:
                                    revert with 0, 17
                                emit 0xf58ee64c: (sub_c688e671 - sub_e5a85bf1.length)
                            stor14 = block.timestamp
        else:
            if block.timestamp - stor14 > 0:
                if sub_aec4ffd5 > 0:
                    if ext_call.return_data[0] > 0:
                        if sub_e5a85bf1.length:
                            idx = 0
                            s = ext_call.return_data[0]
                            t = 0
                            while idx < sub_e5a85bf1.length:
                                if s:
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_aec4ffd5:
                                        if s and 0 > -1 / s:
                                            revert with 0, 17
                                        if not sub_5fc5e020:
                                            revert with 0, 18
                                        if 0 / sub_5fc5e020 <= s:
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(0 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_512 += 0 / sub_5fc5e020
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(0 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_256 += 0 / sub_5fc5e020
                                                if sub_aec4ffd5 > !(0 / sub_5fc5e020):
                                                    revert with 0, 17
                                                sub_aec4ffd5 += 0 / sub_5fc5e020
                                            if s < 0 / sub_5fc5e020:
                                                revert with 0, 17
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = s - (0 / sub_5fc5e020)
                                            t = 0 / sub_5fc5e020
                                            continue 
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 and sub_5fc5e020 > -1 / sub_9d9c453e[address(stor18[idx])].field_256:
                                            revert with 0, 17
                                        if not sub_aec4ffd5:
                                            revert with 0, 18
                                        if s and sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 > -1 / s:
                                            revert with 0, 17
                                        if not sub_5fc5e020:
                                            revert with 0, 18
                                        if s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020 <= s:
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if idx >= sub_e5a85bf1.length:
                                                revert with 0, 50
                                            if not sub_9d9c453e[address(stor18[idx])].field_768:
                                                if sub_9d9c453e[address(stor18[idx])].field_512 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_512 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            else:
                                                if sub_9d9c453e[address(stor18[idx])].field_256 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                    revert with 0, 17
                                                if idx >= sub_e5a85bf1.length:
                                                    revert with 0, 50
                                                mem[0] = address(sub_e5a85bf1[idx])
                                                mem[32] = 17
                                                sub_9d9c453e[address(stor18[idx])].field_256 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                                if sub_aec4ffd5 > !(s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020):
                                                    revert with 0, 17
                                                sub_aec4ffd5 += s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            if s < s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020:
                                                revert with 0, 17
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            s = s - (s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020)
                                            t = s * sub_9d9c453e[address(stor18[idx])].field_256 * sub_5fc5e020 / sub_aec4ffd5 / sub_5fc5e020
                                            continue 
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if idx >= sub_e5a85bf1.length:
                                        revert with 0, 50
                                    if not sub_9d9c453e[address(stor18[idx])].field_768:
                                        if sub_9d9c453e[address(stor18[idx])].field_512 > !s:
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_512 += s
                                    else:
                                        if sub_9d9c453e[address(stor18[idx])].field_256 > !s:
                                            revert with 0, 17
                                        if idx >= sub_e5a85bf1.length:
                                            revert with 0, 50
                                        mem[0] = address(sub_e5a85bf1[idx])
                                        mem[32] = 17
                                        sub_9d9c453e[address(stor18[idx])].field_256 += s
                                        if sub_aec4ffd5 > !s:
                                            revert with 0, 17
                                        sub_aec4ffd5 += s
                                    if s < s:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = 0
                                    t = s
                                    continue 
                                stor14 = block.timestamp
                                require ext_code.size(stor3)
                                call stor3.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, this.address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, '[lep][staking] token transfer failed!'
                                if sub_aec4ffd5 > !ext_call.return_data[0]:
                                    revert with 0, 17
                                sub_aec4ffd5 += ext_call.return_data[0]
                                if sub_9d9c453e[msg.sender].field_256:
                                    if sub_9d9c453e[msg.sender].field_256 > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    sub_9d9c453e[msg.sender].field_256 += ext_call.return_data[0]
                                    if not sub_aec4ffd5:
                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0], 0, sub_5fc5e020, 1, msg.sender
                                    else:
                                        if sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0] and sub_5fc5e020 > -1 / sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0]:
                                            revert with 0, 17
                                        if not sub_aec4ffd5:
                                            revert with 0, 18
                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0], (sub_9d9c453e[msg.sender].field_256 * sub_5fc5e020) + (ext_call.return_data[0] * sub_5fc5e020) / sub_aec4ffd5, sub_5fc5e020, 1, msg.sender
                                else:
                                    sub_9d9c453e[msg.sender].field_256 = ext_call.return_data[0]
                                    sub_9d9c453e[msg.sender].field_768 = uint8(bool(arg3))
                                    sub_e5a85bf1.length++
                                    uint256(sub_e5a85bf1[sub_e5a85bf1.length]) = msg.sender or Mask(96, 160, uint256(sub_e5a85bf1[sub_e5a85bf1.length]))
                                    if sub_6805a07c > -2:
                                        revert with 0, 17
                                    sub_6805a07c++
                                    if not sub_aec4ffd5:
                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], 0, sub_5fc5e020, 0, msg.sender
                                    else:
                                        if ext_call.return_data[0] and sub_5fc5e020 > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if not sub_aec4ffd5:
                                            revert with 0, 18
                                        emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
                                if sub_c688e671 < sub_e5a85bf1.length:
                                    revert with 0, 17
                                emit 0xf58ee64c: (sub_c688e671 - sub_e5a85bf1.length)
                            stor14 = block.timestamp
        require ext_code.size(stor3)
        call stor3.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '[lep][staking] token transfer failed!'
        if sub_aec4ffd5 > !ext_call.return_data[0]:
            revert with 0, 17
        sub_aec4ffd5 += ext_call.return_data[0]
        if sub_9d9c453e[msg.sender].field_256:
            if sub_9d9c453e[msg.sender].field_256 > !ext_call.return_data[0]:
                revert with 0, 17
            sub_9d9c453e[msg.sender].field_256 += ext_call.return_data[0]
            if not sub_aec4ffd5:
                emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0], 0, sub_5fc5e020, 1, msg.sender
            else:
                if sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0] and sub_5fc5e020 > -1 / sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0]:
                    revert with 0, 17
                if not sub_aec4ffd5:
                    revert with 0, 18
                emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], sub_9d9c453e[msg.sender].field_256 + ext_call.return_data[0], (sub_9d9c453e[msg.sender].field_256 * sub_5fc5e020) + (ext_call.return_data[0] * sub_5fc5e020) / sub_aec4ffd5, sub_5fc5e020, 1, msg.sender
        else:
            sub_9d9c453e[msg.sender].field_256 = ext_call.return_data[0]
            sub_9d9c453e[msg.sender].field_768 = uint8(bool(arg3))
            sub_e5a85bf1.length++
            uint256(sub_e5a85bf1[sub_e5a85bf1.length]) = msg.sender or Mask(96, 160, uint256(sub_e5a85bf1[sub_e5a85bf1.length]))
            if sub_6805a07c > -2:
                revert with 0, 17
            sub_6805a07c++
            if not sub_aec4ffd5:
                emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], 0, sub_5fc5e020, 0, msg.sender
            else:
                if ext_call.return_data[0] and sub_5fc5e020 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not sub_aec4ffd5:
                    revert with 0, 18
                emit 0xa5cc51a9: sub_f434ae7d, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] * sub_5fc5e020 / sub_aec4ffd5, sub_5fc5e020, 0, msg.sender
    if sub_c688e671 < sub_e5a85bf1.length:
        revert with 0, 17
    emit 0xf58ee64c: (sub_c688e671 - sub_e5a85bf1.length)
}



}
